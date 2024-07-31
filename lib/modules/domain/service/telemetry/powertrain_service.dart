import 'package:mangueweb/modules/domain/Entity/telemetry/powertrain.dart';

abstract class PowertrainService {
  Future<List<Powertrain>> readPowertrainTelemetry();
}
