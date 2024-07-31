
import 'package:mangueweb/modules/application/controller/telemetry/powertrain_controller.dart';
import 'package:mangueweb/modules/application/service/telemetry/factory.dart';

PowertrainController instaceOfPowertrainController() => PowertrainController(instaceOfPowertrainHttpService());