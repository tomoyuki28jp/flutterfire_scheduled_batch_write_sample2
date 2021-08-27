import 'package:freezed_annotation/freezed_annotation.dart';

part 'application_history.freezed.dart';
part 'application_history.g.dart';

@freezed
abstract class ApplicationHistory with _$ApplicationHistory {
  const factory ApplicationHistory(
      {required String applicationId,
      required String applicationName,
      required int durationMilliseconds,
      required int sessionCount,
      String? color}) = _ApplicationHistory;

  factory ApplicationHistory.fromJson(Map<String, dynamic> json) =>
      _$ApplicationHistoryFromJson(json);
}
