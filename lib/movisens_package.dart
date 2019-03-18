part of movisens;

/// A Calculator.
class MovisensSamplingPackage implements SamplingPackage{


  static const String MOVISENS = "movisens";




  @override
  // TODO: implement common
  SamplingSchema get common => null;

  @override
  Probe create(String type) {
    // TODO: implement create
    return null;
  }

  @override
  // TODO: implement dataTypes
  List<String> get dataTypes => null;

  @override
  // TODO: implement light
  SamplingSchema get light => null;

  @override
  // TODO: implement minimum
  SamplingSchema get minimum => null;

  @override
  // TODO: implement normal
  SamplingSchema get normal => null;

  @override
  void onRegister() {
    // TODO: implement onRegister

    FromJsonFactory.registerFromJsonFunction(
        "MovisensMeasure", MovisensMeasure.fromJsonFunction);



  }



}

