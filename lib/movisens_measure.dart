part of movisens;


@JsonSerializable(fieldRename: FieldRename.snake, includeIfNull: false)
class MovisensMeasure extends Measure{


  String address = 'unknown', deviceName = 'unknown';
  int weight, height, age;
  Gender gender;

  String get getAddress => address;

  MovisensMeasure(MeasureType type,

      {name,enabled,this.address,this.deviceName,this.height,this.weight})
      : super(type,name:name,enabled:enabled);


  static Function get fromJsonFunction => _$MovisensMeasureFromJson;
  factory MovisensMeasure.fromJson(Map<String, dynamic> json) =>
      FromJsonFactory.fromJson(
          json[Serializable.CLASS_IDENTIFIER].toString(), json);
  Map<String, dynamic> toJson() => _$MovisensMeasureToJson(this);


}

