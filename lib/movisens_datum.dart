part of movisens;

class MovisensDatum extends CARPDatum{

  //

  static const DataFormat CARP_DATA_FORMAT = DataFormat(NameSpace.CARP, MovisensSamplingPackage.MOVISENS);
  DataFormat get format => CARP_DATA_FORMAT;


}

