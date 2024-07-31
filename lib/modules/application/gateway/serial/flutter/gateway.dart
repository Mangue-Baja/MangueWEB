import 'dart:typed_data';
import 'dart:convert';

import 'package:flutter_libserialport/flutter_libserialport.dart';
import 'package:mangueweb/modules/domain/gateway/serial.dart';

class FlutterSerialPortGateway implements SerialPortGateway {
  final SerialPort engine;

  FlutterSerialPortGateway(this.engine);

  void _openConnection() {
    engine.openReadWrite();
  }

  @override
  String read(int bytes) {
    _openConnection();

    Uint8List buffer = engine.read(bytes);

    return buffer.toString();
  }

  @override
  int write(String data) {
    _openConnection();

    Uint8List buffer = utf8.encode(data);
    int amoutOfBytesWritten = engine.write(buffer);

    return amoutOfBytesWritten;
  }
}
