import * as firebase from "@firebase/testing";
import { firestore } from "@firebase/testing";
import * as fs from "fs";

const projectId = "daily-test";
const rulesFilePath = "firestore.rules";

const _createApp = (auth?: object): firestore.Firestore => {
  return firebase
    .initializeTestApp({ projectId: projectId, auth: auth })
    .firestore();
};

const createGuestApp = (): firestore.Firestore => {
  return _createApp();
};

type Auth = {
  uid: string;
  email_verified: boolean;
};

const createMemberApp = ({
  uid,
  email_verified,
}: Auth): firestore.Firestore => {
  return _createApp({ uid: uid, email_verified: email_verified });
};

const createAdminApp = (): firestore.Firestore => {
  return firebase.initializeAdminApp({ projectId: projectId }).firestore();
};

const usersRef = (db: firestore.Firestore) => db.collection("users");
const projectsRef = (db: firestore.Firestore, uid: string) =>
  usersRef(db).doc(uid).collection("projects");
const tasksRef = (db: firestore.Firestore, uid: string) =>
  usersRef(db).doc(uid).collection("tasks");
const timeEntriesRef = (db: firestore.Firestore, uid: string) =>
  usersRef(db).doc(uid).collection("time_entries");
const minutelyDesktopActivitiesRef = (db: firestore.Firestore, uid: string) =>
  usersRef(db).doc(uid).collection("minutely_desktop_activities");
const notificationSettingsRef = (db: firestore.Firestore) => 
  db.collection("notification_settings");
const googleCalendarSettingsRef = (db: firestore.Firestore) => 
  db.collection("google_calendar_settings");

// TODO: 共通化
type User = {
  uid: string;
  admin: boolean;
  deactivate: firestore.Timestamp | null;
};

const admin: User = {
  uid: "admin",
  admin: true,
  deactivate: null,
};

const user: User = {
  uid: "member_deactivated_null",
  admin: false,
  deactivate: null,
};

const stranger: User = {
  uid: "stranger",
  admin: false,
  deactivate: null,
};

type TestProps = {
  owner: User;
  db: firestore.Firestore;
  create: boolean;
  update: boolean;
  remove: boolean;
  get: boolean;
  list: boolean;
};

const firebaseAssert = (succeeds: boolean, pr: Promise<any>): any => {
  return succeeds ? firebase.assertSucceeds(pr) : firebase.assertFails(pr);
};

const testProjects = async (props: TestProps) => {
  const { owner, db, create, update, remove, get, list } = props;
  const adminApp = createAdminApp();
  await usersRef(adminApp).doc(owner.uid).set(owner);
  const project = projectsRef(adminApp, owner.uid).doc();
  await project.set({});
  const projects = projectsRef(db, owner.uid);
  const projectRef = projects.doc(project.id);
  await firebaseAssert(list, projects.get());
  await firebaseAssert(get, projectRef.get());
  await firebaseAssert(create, projects.doc().set({}));
  await firebaseAssert(update, projectRef.update({}));
  await firebaseAssert(remove, projectRef.delete());
};

const testTasks = async (props: TestProps) => {
  const { owner, db, create, update, remove, get, list } = props;
  const adminApp = createAdminApp();
  await usersRef(adminApp).doc(owner.uid).set(owner);
  const task = tasksRef(adminApp, owner.uid).doc();
  await task.set({});
  const tasks = tasksRef(db, owner.uid);
  const taskRef = tasks.doc(task.id);
  await firebaseAssert(list, tasks.get());
  await firebaseAssert(get, taskRef.get());
  await firebaseAssert(create, tasks.doc().set({}));
  await firebaseAssert(update, taskRef.update({}));
  await firebaseAssert(remove, taskRef.delete());
};

const testTimeEntries = async (props: TestProps) => {
  const { owner, db, create, update, remove, get, list } = props;
  const adminApp = createAdminApp();
  await usersRef(adminApp).doc(owner.uid).set(owner);
  const entry = timeEntriesRef(adminApp, owner.uid).doc();
  await entry.set({});
  const entries = timeEntriesRef(db, owner.uid);
  const entryRef = entries.doc(entry.id);
  await firebaseAssert(list, entries.get());
  await firebaseAssert(get, entryRef.get());
  await firebaseAssert(create, entries.doc().set({}));
  await firebaseAssert(update, entryRef.update({}));
  await firebaseAssert(remove, entryRef.delete());
};

const testMinutelyDesktopActivities = async (props: TestProps) => {
  const { owner, db, create, update, remove, get, list } = props;
  const adminApp = createAdminApp();
  await usersRef(adminApp).doc(owner.uid).set(owner);
  const activity = minutelyDesktopActivitiesRef(adminApp, owner.uid).doc();
  await activity.set({});
  const activities = minutelyDesktopActivitiesRef(db, owner.uid);
  const activityRef = activities.doc(activity.id);
  await firebaseAssert(list, activities.get());
  await firebaseAssert(get, activityRef.get());
  await firebaseAssert(create, activities.doc().set({}));
  await firebaseAssert(update, activityRef.update({}));
  await firebaseAssert(remove, activityRef.delete());
};

type TestSettingsProps = TestProps & {
  id: string;
}

const testNotificationSettings = async (props: TestSettingsProps) => {
  const { id, owner, db, create, update, remove, get, list } = props;
  const adminApp = createAdminApp();
  await usersRef(adminApp).doc(owner.uid).set(owner);
  const settings = notificationSettingsRef(db);
  const settingRef = settings.doc(id);
  await firebaseAssert(create, settings.doc(id).set({}));
  await firebaseAssert(get, settingRef.get());
  await firebaseAssert(list, settings.get());
  await firebaseAssert(update, settingRef.update({}));
  await firebaseAssert(remove, settingRef.delete());
};

const testGoogleCalendarSettings = async (props: TestSettingsProps) => {
  const { id, owner, db, create, update, remove, get, list } = props;
  const adminApp = createAdminApp();
  await usersRef(adminApp).doc(owner.uid).set(owner);
  const settings = googleCalendarSettingsRef(db);
  const settingRef = settings.doc(id);
  await firebaseAssert(create, settings.doc(id).set({}));
  await firebaseAssert(get, settingRef.get());
  await firebaseAssert(list, settings.get());
  await firebaseAssert(update, settingRef.update({}));
  await firebaseAssert(remove, settingRef.delete());
};

describe("firestore rules", () => {
  beforeAll(async () => {
    await firebase.loadFirestoreRules({
      projectId: projectId,
      rules: fs.readFileSync(rulesFilePath, "utf8"),
    });
  });

  afterEach(async () => {
    await firebase.clearFirestoreData({ projectId: projectId });
  });

  afterAll(async () => {
    await Promise.all(firebase.apps().map((app) => app.delete()));
  });

  describe("projects", () => {
    test("guest cannot read and write", async () => {
      await testProjects({
        owner: user,
        db: createGuestApp(),
        create: false,
        update: false,
        remove: false,
        get: false,
        list: false,
      });
    });

    test("owner can read and write", async () => {
      const owner = user;
      await usersRef(createAdminApp()).doc(owner.uid).set(owner);
      await testProjects({
        owner: owner,
        db: createMemberApp({ uid: owner.uid, email_verified: true }),
        create: true,
        update: true,
        remove: true,
        get: true,
        list: true,
      });
    });

    test("email unverified owner cannot read and write", async () => {
      const owner = user;
      await usersRef(createAdminApp()).doc(owner.uid).set(owner);
      await testProjects({
        owner: owner,
        db: createMemberApp({ uid: owner.uid, email_verified: false }),
        create: false,
        update: false,
        remove: false,
        get: false,
        list: false,
      });
    });

    test("admin can only read", async () => {
      const owner = user;
      const adminApp = createAdminApp();
      await usersRef(adminApp).doc(admin.uid).set(admin);
      await usersRef(adminApp).doc(owner.uid).set(owner);
      await testProjects({
        owner: owner,
        db: createMemberApp({ uid: admin.uid, email_verified: true }),
        create: false,
        update: false,
        remove: false,
        get: true,
        list: true,
      });
    });
  });

  describe("tasks", () => {
    test("guest cannot read and write", async () => {
      await testTasks({
        owner: user,
        db: createGuestApp(),
        create: false,
        update: false,
        remove: false,
        get: false,
        list: false,
      });
    });

    test("owner can read and write", async () => {
      const owner = user;
      await usersRef(createAdminApp()).doc(owner.uid).set(owner);
      await testTasks({
        owner: owner,
        db: createMemberApp({ uid: owner.uid, email_verified: true }),
        create: true,
        update: true,
        remove: true,
        get: true,
        list: true,
      });
    });

    test("email unverified owner cannot read and write", async () => {
      const owner = user;
      await usersRef(createAdminApp()).doc(owner.uid).set(owner);
      await testTasks({
        owner: owner,
        db: createMemberApp({ uid: owner.uid, email_verified: false }),
        create: false,
        update: false,
        remove: false,
        get: false,
        list: false,
      });
    });

    test("admin can only read", async () => {
      const owner = user;
      const adminApp = createAdminApp();
      await usersRef(adminApp).doc(admin.uid).set(admin);
      await usersRef(adminApp).doc(owner.uid).set(owner);
      await testTasks({
        owner: owner,
        db: createMemberApp({ uid: admin.uid, email_verified: true }),
        create: false,
        update: false,
        remove: false,
        get: true,
        list: true,
      });
    });
  });

  describe("time_entries", () => {
    test("guest cannot read and write", async () => {
      await testTimeEntries({
        owner: user,
        db: createGuestApp(),
        create: false,
        update: false,
        remove: false,
        get: false,
        list: false,
      });
    });

    test("owner can read and write", async () => {
      const owner = user;
      await usersRef(createAdminApp()).doc(owner.uid).set(owner);
      await testTimeEntries({
        owner: owner,
        db: createMemberApp({ uid: owner.uid, email_verified: true }),
        create: true,
        update: true,
        remove: true,
        get: true,
        list: true,
      });
    });

    test("email unverified owner cannot read and write", async () => {
      const owner = user;
      await usersRef(createAdminApp()).doc(owner.uid).set(owner);
      await testTimeEntries({
        owner: owner,
        db: createMemberApp({ uid: owner.uid, email_verified: false }),
        create: false,
        update: false,
        remove: false,
        get: false,
        list: false,
      });
    });

    test("admin can only read", async () => {
      const owner = user;
      const adminApp = createAdminApp();
      await usersRef(adminApp).doc(admin.uid).set(admin);
      await usersRef(adminApp).doc(owner.uid).set(owner);
      await testTimeEntries({
        owner: owner,
        db: createMemberApp({ uid: admin.uid, email_verified: true }),
        create: false,
        update: false,
        remove: false,
        get: true,
        list: true,
      });
    });
  });

  describe("minutely_desktop_activities", () => {
    test("guest cannot read and write", async () => {
      await testMinutelyDesktopActivities({
        owner: user,
        db: createGuestApp(),
        create: false,
        update: false,
        remove: false,
        get: false,
        list: false,
      });
    });

    test("owner can read and create", async () => {
      const owner = user;
      await usersRef(createAdminApp()).doc(owner.uid).set(owner);
      await testMinutelyDesktopActivities({
        owner: owner,
        db: createMemberApp({ uid: owner.uid, email_verified: true }),
        create: true,
        update: false,
        remove: false,
        get: true,
        list: true,
      });
    });

    test("email unverified owner cannot read and write", async () => {
      const owner = user;
      await usersRef(createAdminApp()).doc(owner.uid).set(owner);
      await testMinutelyDesktopActivities({
        owner: owner,
        db: createMemberApp({ uid: owner.uid, email_verified: false }),
        create: false,
        update: false,
        remove: false,
        get: false,
        list: false,
      });
    });

    test("admin can only read", async () => {
      const owner = user;
      const adminApp = createAdminApp();
      await usersRef(adminApp).doc(admin.uid).set(admin);
      await usersRef(adminApp).doc(owner.uid).set(owner);
      await testMinutelyDesktopActivities({
        owner: owner,
        db: createMemberApp({ uid: admin.uid, email_verified: true }),
        create: false,
        update: false,
        remove: false,
        get: true,
        list: true,
      });
    });
  });

  describe('notification_settings', () => {
    test("guest cannot read and write", async () => {
      await testNotificationSettings({
        id: user.uid,
        owner: user,
        db: createGuestApp(),
        create: false,
        update: false,
        remove: false,
        get: false,
        list: false,
      });
    });

    test('owner can only get and write', async () => {
      const owner = user;
      await testNotificationSettings({
        id: owner.uid,
        owner: owner,
        db: createMemberApp({ uid: owner.uid, email_verified: true }),
        create: true,
        update: true,
        remove: true,
        get: true,
        list: false,
      });
    });


    test('user cannot read and write another user\'s settings ', async () => {
      const owner = user;
      await testNotificationSettings({
        id: stranger.uid,
        owner: owner,
        db: createMemberApp({ uid: owner.uid, email_verified: true }),
        create: false,
        update: false,
        remove: false,
        get: false,
        list: false,
      });
    });
  })

  describe('google_calendar_settings', () => {
    test("guest cannot read and write", async () => {
      await testGoogleCalendarSettings({
        id: user.uid,
        owner: user,
        db: createGuestApp(),
        create: false,
        update: false,
        remove: false,
        get: false,
        list: false,
      });
    });

    test('owner can only get and write', async () => {
      const owner = user;
      await testGoogleCalendarSettings({
        id: owner.uid,
        owner: owner,
        db: createMemberApp({ uid: owner.uid, email_verified: true }),
        create: true,
        update: true,
        remove: true,
        get: true,
        list: false,
      });
    });


    test('user cannot read and write another user\'s settings ', async () => {
      const owner = user;
      await testGoogleCalendarSettings({
        id: stranger.uid,
        owner: owner,
        db: createMemberApp({ uid: owner.uid, email_verified: true }),
        create: false,
        update: false,
        remove: false,
        get: false,
        list: false,
      });
    });
  })
});
