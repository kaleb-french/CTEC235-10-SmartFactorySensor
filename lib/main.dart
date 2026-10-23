
void main() async{
  String data = await fetchSensorMetadata();
  print(data);
  var data2 = fetchSensorMetadata();
  print(data2);
}

Future<String> fetchSensorMetadata() async {
  Future.delayed(Duration(seconds: 2));
  return "Sensor ID: 402 | Location: Warehouse-A";
}