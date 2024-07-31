import 'package:mangueweb/modules/application/gateway/telemetry/factory.dart';
import 'package:mangueweb/modules/application/use_case/telemetry/powertrain/read_powertrain_telemetry.dart';

ReadPowertrainTelemetryByHttpUseCase instaceOfReadPowertrainByHttpTelemetryUseCase() => ReadPowertrainTelemetryByHttpUseCase(instaceOfPowertrainHttpGateway());