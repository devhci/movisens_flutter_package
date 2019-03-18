part  of movisens;

class MovisensProbe extends StreamProbe{

  Movisens _movisens;
  static  Stream<Datum> _subscription;

  MovisensProbe(Stream<Datum> stream) : super(_movisensStream);


  @override
  void initialize(Measure measure){

    super.onInitialize(measure);
    address = '88:6B:0F:CD:E7:F2';// ECG4

    name = 'Sensor 02655';
    weight = 100;
    height = 180;
    age = 25;

    UserData userData = new UserData(
        weight, height, Gender.male, age, SensorLocation.chest, address, name);

    _movisens = new Movisens(userData);

    try {
      _subscription = _movisens.movisensStream.listen(onData);
    } on MovisensException catch (exception) {
      print(exception);
    }

  }

 /* MovisensProbe() : super(_movisensStream);*/


  Stream<Datum> get _movisensStream =>  _movisens.movisensStream;



  void onData(Datum d)

  {



  }

}










