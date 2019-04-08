part of movisens;


class MovisensProbe extends StreamProbe {

  UserData userData;
  Movisens _movisens;

/*
  String address = 'unknown', name = 'unknown';
  int weight, height, age;*/

  MovisensProbe() : super();

  // MovisensProbe(Stream<String> stream) : super(_stream);

  @override
  void onInitialize(Measure measure) {
    assert(measure is MovisensMeasure);
    MovisensMeasure m = measure as MovisensMeasure;

  /* UserData  userData = UserData(100, 180, Gender.male, 25, SensorLocation.chest,
        '88:6B:0F:CD:E7:F2', 'Sensor 02655');*/

    UserData  userData = UserData(m.weight, m.height, m.gender, m.age, m.sensorLocation,
        m.address, m.deviceName);
     
     print("inside probe");
    _movisens = new Movisens(userData);


  /* userData = new UserData(m.weight, m.height, m.gender, m.age,
      SensorLocation.chest, m.address, m.name);
*/
    //_movisens = new Movisens(userData);

    /* try {
      _stream = _movisens.movisensStream;
    } on MovisensException catch (exception) {
      print(exception);
    }

    _stream.map((event)=>MovisensDatum.fromString((event)));

  }*/

/*F<StreamSubscription<String>> getDatum() async => _stream.listen(onData);*/

/*Future<Stream<MovisensDatum>> get _movsensStream async => _stream;*/
  }


  Stream<MovisensDatum> get stream =>
      _movisens.movisensStream.map((event) => MovisensDatum.fromMap(event));


}

