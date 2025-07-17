class LoginUserModel{
  String? email;
  String? password;

  LoginUserModel({this.email, this.password});

  Map<String, dynamic> toJson() {
    return {
      'email': email,
      'password': password,
    };
  }

  factory LoginUserModel.fromJson(Map<String, dynamic> json) {
    return LoginUserModel(
      email: json['email'],
      password: json['password'],
    );
  }
}