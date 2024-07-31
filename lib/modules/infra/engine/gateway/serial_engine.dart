import 'package:flutter_libserialport/flutter_libserialport.dart';

SerialPort libSerialPortGatewayEngine(String name) {
  return SerialPort(name);
}
