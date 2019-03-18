part of movisens;


@JsonSerializable(fieldRename: FieldRename.snake, includeIfNull: false)
class MovisensMeasure extends Measure{


  MovisensMeasure(MeasureType type,

      {name,enabled})
      : super(type);


  static Function get fromJsonFunction => _$MovisensMeasureFromJson;
  factory MovisensMeasure.fromJson(Map<String, dynamic> json) =>
      FromJsonFactory.fromJson(
          json[Serializable.CLASS_IDENTIFIER].toString(), json);
  Map<String, dynamic> toJson() => _$MovisensMeasureToJson(this);


}

