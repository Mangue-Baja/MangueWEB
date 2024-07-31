import 'package:mangueweb/modules/application/service/telemetry/powertrain_telemetry_service.dart';
import 'package:mangueweb/modules/application/use_case/telemetry/factory.dart';

PowertrainHttpService instaceOfPowertrainHttpService() => PowertrainHttpService(instaceOfReadPowertrainByHttpTelemetryUseCase());