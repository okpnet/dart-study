import 'package:flutter_study_1/services/ISerivce.dart';

abstract class StaticServiceFactory{
  //example of how to register a service
  //register(TestService());
  void registerService<T extends IService>(void Function<T extends IService> (T) register) ;
}