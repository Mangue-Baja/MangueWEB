import 'package:mangueweb/modules/domain/Entity/telemetry/powertrain.dart';

abstract class PowertrainGateway {
  Future<List<Powertrain>> getPowertrain();
}
