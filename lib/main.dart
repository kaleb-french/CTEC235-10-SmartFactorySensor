import 'dart:async';
import 'dart:math';

void main() async{
  final controller = StreamController<double>();
  String data = await fetchSensorMetadata();
  print(data);

  controller.stream.listen((temperature){
    double tempInF = temperature * 1.8 + 32;

    if(temperature > 35.0){
      print("High Temperature Warning : ");
      print("${temperature}C");
      print("${tempInF}F");
    }else{
      print("Temperature ${temperature}C");
    }
  });

  await for (double temp in temperatureStream()){
    controller.add(temp);
  }

  await controller.close();
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