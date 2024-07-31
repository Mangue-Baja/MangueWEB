import 'package:mangueweb/modules/domain/Entity/telemetry/powertrain.dart';

abstract class ReadPowertrainTelemetryUseCase {
  Future<List<Powertrain>> execute();
}
