
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_study_1/Dtos/login_user_model.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';


final loginViewModelProvicer=StateNotifierProvider<LoginViewModel,LoginUserModel>((ref){
  return LoginViewModel();
});

class LoginViewModel extends StateNotifier<LoginUserModel> {
  LoginViewModel():super(LoginUserModel());
}