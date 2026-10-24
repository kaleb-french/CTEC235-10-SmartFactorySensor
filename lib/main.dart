
import 'dart:math';

void main() async{
  String data = await fetchSensorMetadata();
  print(data);

  await for(double temperature in temperatureStream()){
    double tempInF = temperature * 1.8 + 32;

    if(temperature > 35.0){
      print("High Temperature Warning : ");
      print("${temperature}C");
      print("${tempInF}F");
    }else{
      print("Temperature ${temperature}C");
    }
  }
}

Future<String> fetchSensorMetadata() async {
  await Future.delayed(Duration(seconds: 2));
  return "Sensor ID: 402 | Location: Warehouse-A";
}

Stream<double> temperatureStream() async*{
  final random = Random();

  for (int i = 0; i < 5; i++) {
    double temperature = 20.0 + random.nextDouble() * 22.0;
    yield temperature;
    await Future.delayed(const Duration(seconds: 1));
  }
}