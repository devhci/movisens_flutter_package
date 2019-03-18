part  of movisens;

class MovisensProbe extends StreamProbe{




  MovisensProbe(StreamSubscription<dynamic> stream) : super(_subscription);

  Movisens _movisens;
 static   StreamSubscription<String> _subscription;
  String address = 'unknown', name = 'unknown';
  int weight, height, age;


  address = '88:6B:0F:CD:E7:F2';// ECG4

  name = 'Sensor 02655';
  weight = 100;
  height = 180;
  age = 25;

  void onInitialize() {


    UserData userData = new UserData(
        weight, height, Gender.male, age, SensorLocation.chest, address, name);




  }


  StreamSubscription<dynamic> startListening() {

    //address = '88:6B:0F:82:1D:33';// move4



    try {
      _subscription = _movisens.movisensStream.listen(onData);
    } on MovisensException catch (exception) {
      print(exception);
    }
    return _subscription;
  }



}




String  onData(d) {


  print(" onData_flutter: "+ "$d");

  return d;

}

