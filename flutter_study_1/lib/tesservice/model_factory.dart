import 'package:flutter_study_1/Dtos/login_user_model.dart';
import 'package:flutter_study_1/services/ISerivce.dart';

abstract class IModelFactory {
  T create<T>();
}

class ModelFactory implements IModelFactory ,IService {
  @override
  T create<T>() {
    if (T == LoginUserModel) {
      return LoginUserModel(email: "xxxx@ooo.net",password: "pwd") as T;
    }
    throw Exception('Model not found');
  }
}