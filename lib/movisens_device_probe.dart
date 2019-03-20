part of movisens;

UserData userData = UserData(100, 180, Gender.male, 25, SensorLocation.chest,
    '88:6B:0F:CD:E7:F2', 'Sensor 02655');
Movisens _movisens = new Movisens(userData);

class MovisensProbe extends StreamProbe {
  static Stream<String> _stream;
  UserData userData;

  String address = 'unknown', name = 'unknown';
  int weight, height, age;

  MovisensProbe() : super(_movisenStream);

  // MovisensProbe(Stream<String> stream) : super(_stream);

  @override
  void onInitialize(Measure measure) {
    assert(measure is MovisensMeasure);
    MovisensMeasure m = measure as MovisensMeasure;

     userData = UserData(100, 180, Gender.male, 25, SensorLocation.chest,
        '88:6B:0F:CD:E7:F2', 'Sensor 02655');
     
     print("inside measure");

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
}

Stream<MovisensDatum> get _movisenStream =>
    _movisens.movisensStream.map((event) => MovisensDatum.fromMap(event));
