import 'package:flutter/material.dart';
import 'package:mvvm/utils/routes/routes_name.dart';
import 'package:mvvm/utils/utils.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Center(
      child: InkWell(
          // onTap: () => Navigator.pushNamed(context, RoutesName.home),
          onTap: () {
            Utils.flushBarErrorMessage("message", BuildContext,
                context); // Utils.toastMessage("you clicked on go to home screen");
          },
          child: Text("go to home screen")),
    ));
  }
}
