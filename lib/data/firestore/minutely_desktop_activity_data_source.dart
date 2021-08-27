import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:daily_page/data/firestore/firestore_collection_path.dart';
import 'package:daily_page/data/model/minutely_desktop_activity.dart';
import 'package:flutter/foundation.dart';

CollectionReference<MinutelyDesktopActivity> _minutelyDesktopActivitiesRef(
        String uid) =>
    FirebaseFirestore.instance
        .collection(FirestoreCollectionPath.minutelyDesktopActivities(uid))
        .withConverter<MinutelyDesktopActivity>(
            fromFirestore: (snapshots, _) =>
                MinutelyDesktopActivity.fromJson(snapshots.data()!),
            toFirestore: (model, _) => model.toJson()
              ..addAll(
                  <String, Object>{'created': FieldValue.serverTimestamp()}));

Future<void> addMinutelyDesktopActivities(
    String uid, Map<DateTime, MinutelyDesktopActivity> activities) {
  final collectionRef = _minutelyDesktopActivitiesRef(uid);
  final batch = FirebaseFirestore.instance.batch();
  activities.forEach((min, activity) {
    final docRef = collectionRef.doc(min.toUtc().toIso8601String());
    batch.set(docRef, activity);
    debugPrint('add min activity: $min');
  });
  return batch.commit();
}
