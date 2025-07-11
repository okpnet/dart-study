// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_setting.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_UserSetting _$UserSettingFromJson(Map<String, dynamic> json) => _UserSetting(
  thema: json['thema'] as String,
  recordPerPage: (json['recordPerPage'] as num).toInt(),
);

Map<String, dynamic> _$UserSettingToJson(_UserSetting instance) =>
    <String, dynamic>{
      'thema': instance.thema,
      'recordPerPage': instance.recordPerPage,
    };
