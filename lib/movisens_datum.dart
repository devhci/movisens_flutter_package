part of movisens;

class MovisensDatum extends CARPDatum{

  //

  static const DataFormat CARP_DATA_FORMAT = DataFormat(NameSpace.CARP, MovisensSamplingPackage.MOVISENS);
  DataFormat get format => CARP_DATA_FORMAT;

  String movisens_data;



}




class MovisensStatus{
  String _connectionStatus;

  String _timestamp;


  MovisensStatus(this._connectionStatus,this._timestamp);

}

class MovisensMet {
  String _met;

  String _timestamp;

  MovisensMet(this._met,this._timestamp);


}


/// Metabolic buffered level, holds met level values for a sedentary, light and moderate state.
class MovisensMetLevel {

  String _metLevel;

  String _timestamp;

  MovisensMetLevel(this._metLevel,this._timestamp);


}


/// Informs if Signal is ok for HRV calculation
class MovisensIsHrvValid {

  String _isHrvValid;

  String _timestamp;

  MovisensIsHrvValid(this._isHrvValid,this._timestamp);


}

/// Body the body position Json
class MovisensBodyPosition {

  String _bodyPosition;


  String _timestamp;

  MovisensBodyPosition(this._bodyPosition,this._timestamp);

}

/// Returns 3D movement Acceleration Json
class MovisensMovementAcceleration {
     String _movementAcceleration;
     String _timestamp;

  MovisensMovementAcceleration(this._movementAcceleration, this._timestamp);

}


///StepCount Json
class MovisensStepCount {

  String _stepCount;
  String _timestamp;
  MovisensStepCount(this._stepCount,this._timestamp);


}

class MovisensTapMarker {

  String _tapMarker;
  String _timestamp;

  MovisensTapMarker(this._tapMarker,this._timestamp);

}

class MovisensBatteryLevel {

  String _batteryLeve;

  String _timestamp;
  MovisensBatteryLevel(this._batteryLeve,this._timestamp);

}

class MovisensHR
{

  String _hrJson;
  String _timestamp;
  MovisensHR(this._hrJson,this._timestamp);


}


class MovisensHRV
{
  String _hrv;

  String _timestamp;
  MovisensHRV(this._hrv,this._timestamp);

}


