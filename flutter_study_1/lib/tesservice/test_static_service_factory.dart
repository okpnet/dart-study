
import 'package:flutter_study_1/services/ISerivce.dart';
import 'package:flutter_study_1/services/static_service_factory.dart';
import 'package:flutter_study_1/tesservice/model_factory.dart';

class TestStaticServiceFactory extends StaticServiceFactory {
  // Example of how to register a service
  @override
  void registerService<T extends IService>(void Function<T extends IService> (T) register) {
    register(ModelFactory());
  }
}