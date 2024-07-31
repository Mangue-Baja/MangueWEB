import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:mangueweb/modules/domain/Entity/telemetry/powertrain.dart';
import 'package:mangueweb/modules/domain/gateway/http.dart';
import 'package:mangueweb/modules/domain/gateway/telemetry/powertrain_gateway.dart';

class PowertrainHttpGateway implements PowertrainGateway {
  final HttpGateway _engine;

  PowertrainHttpGateway(this._engine);

  @override
  Future<List<Powertrain>> getPowertrain() async {
    final response = await _engine.get('telemetry/powertrain') as http.Response;

    debugPrint(response.body);

    final List<Powertrain> list = List.empty();

    list.add(Powertrain(
        speed: 100,
        rpm: 100,
        temperature: PowertrainTemperature(engine: 100, cvt: 100)));

    return list;
  }
}
