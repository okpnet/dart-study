import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_study_1/services/ISerivce.dart';
import 'package:flutter_study_1/services/static_service_factory.dart';

/// Factory class to manage provider instances
/// This class allows you to register, retrieve, and check for providers by type
/// It uses a map to store providers, where the key is the provider type
/// and the value is the provider instance
/// It provides methods to check if a provider exists, try to get a provider, and get a provider by type
class StaticProviderFactory{
  // Singleton instance of ProviderFactory
  static StaticProviderFactory? _instance;
  // Map to hold providers
  final Map<Type, dynamic> _providers = {};

  // Private constructor to prevent instantiation
  factory StaticProviderFactory(StaticServiceFactory initilaizeService) {
    _instance??=StaticProviderFactory._internal(initilaizeService);
    return _instance!;
  }
  // Internal constructor for initialization
  StaticProviderFactory._internal(StaticServiceFactory initilaizeService) {
    //add initial providers here
    //example:
    initilaizeService.registerService(_register);
  }
  // Method to register a provider
  bool has<T>() {
    return _providers.containsKey(T);
  }
  // Method to try to get a provider
  (bool , Provider<T>?) tryGet<T>() {
    if (_providers.containsKey(T)) {
      return (true, _providers[T] as Provider<T>);
    }
    return (false, null);
  }
  // Method to get a provider by type
  Provider<T> get<T>() {
    if (_providers.containsKey(T)) {
      return _providers[T] as Provider<T>;
    } else {
      throw Exception('Provider for type $T not found');
    }
  }

  // Method to initialize providers
  void _register<T extends IService>(T service){
    if (_providers.containsKey(T)) {
      throw Exception('Provider for type $T already exists');
    }
    _providers[T]=Provider((ref)=>service);
  }
}