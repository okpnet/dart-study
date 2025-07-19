
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_study_1/Dtos/login_user_model.dart';
import 'package:flutter_study_1/main.dart';
import 'package:flutter_study_1/tesservice/model_factory.dart';
import 'package:flutter_study_1/viewModel/login_view_model.dart';

class CustomInputWidget extends ConsumerStatefulWidget
{
  const CustomInputWidget({super.key});
  @override
  _CustomInputWidgetState createState() => _CustomInputWidgetState();

}

class _CustomInputWidgetState extends ConsumerState<CustomInputWidget> {
  LoginUserModel userModel = LoginUserModel();
  
  @override
  Widget build(BuildContext context) {
    //サービスから取得
    //var result=services.get<ModelFactory>();
    //var serviece=ref.watch(result);
    //userModel=serviece.create<LoginUserModel>();
    
    var model=ref.watch(loginViewModelProvicer);
    debugPrint('CustomInputWidget: userModel.email=${model}');
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Expanded(
          child:TextField(
            decoration: InputDecoration(
              labelText: 'Email',
              border: OutlineInputBorder(),
            ),
            onChanged: (value) {
              // Handle text input changes
              setState(() {
                model.email= value; // Assuming email is the first field
                debugPrint('Email changed: ${value}');
              });
            },
          ),
          ),

        SizedBox(width: 20),
        ElevatedButton(
            onPressed: () {
              // Handle button press
            },
            child: Text('Submit'),
          ),
      ],
    );
  }
}