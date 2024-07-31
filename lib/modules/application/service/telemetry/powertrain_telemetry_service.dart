import 'package:mangueweb/modules/application/use_case/telemetry/powertrain/read_powertrain_telemetry.dart';
import 'package:mangueweb/modules/domain/Entity/telemetry/powertrain.dart';
import 'package:mangueweb/modules/domain/service/telemetry/powertrain_service.dart';

class PowertrainHttpService extends PowertrainService {

  final ReadPowertrainTelemetryByHttpUseCase _read;

  PowertrainHttpService(this._read);

  @override
  Future<List<Powertrain>> readPowertrainTelemetry() async {
    return await this._read.execute();
  }

}