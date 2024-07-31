class Powertrain {
  final double speed;
  final double rpm;
  final PowertrainTemperature temperature;
  final double? timestamp;

  Powertrain(
      {required this.speed,
      required this.rpm,
      required this.temperature,
      this.timestamp});

  factory Powertrain.fromJson(Map<String, dynamic> json) {
    return Powertrain(
        speed: json['speed'] as double,
        rpm: json['rpm'] as double,
        temperature: PowertrainTemperature(
            engine: json['temperature']['engine'] as double,
            cvt: json['temperature']['cvt'] as double),
        timestamp: json['timestamp'] as double?);
  }
}

class PowertrainTemperature {
  final double engine;
  final double cvt;

  PowertrainTemperature({required this.engine, required this.cvt});
}
