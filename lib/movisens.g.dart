// GENERATED CODE - DO NOT MODIFY BY HAND

part of movisens;

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

MovisensMeasure _$MovisensMeasureFromJson(Map<String, dynamic> json) {
  return MovisensMeasure(
      json['type'] == null
          ? null
          : MeasureType.fromJson(json['type'] as Map<String, dynamic>),
      name: json['name'],
      enabled: json['enabled'])
    ..c__ = json['c__'] as String
    ..configuration = (json['configuration'] as Map<String, dynamic>)
        ?.map((k, e) => MapEntry(k, e as String));
}

Map<String, dynamic> _$MovisensMeasureToJson(MovisensMeasure instance) {
  var val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('c__', instance.c__);
  writeNotNull('type', instance.type);
  writeNotNull('name', instance.name);
  writeNotNull('enabled', instance.enabled);
  writeNotNull('configuration', instance.configuration);
  return val;
}
