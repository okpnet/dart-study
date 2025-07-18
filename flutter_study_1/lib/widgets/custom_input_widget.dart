import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_study_1/Dtos/login_user_model.dart';
import 'package:flutter_study_1/main.dart';

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
    var serviece=ref.watch(myProvider);
    userModel=serviece.create<LoginUserModel>();
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
                userModel.email = value; // Assuming email is the first field
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