import 'package:flutter/material.dart';
import 'package:flutter_login/flutter_login.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Stack(
          children: [
            Align(
              alignment: Alignment.center,
              child: FlutterLogin(
                // title: 'Create',
                logo: AssetImage('assets/images/logo.png'),
                // logo: Image.asset("assets/images/logo.png"),
                // logoTag: "",
                userType: LoginUserType.email,
                loginAfterSignUp: true,
                loginProviders: [
                  LoginProvider(
                    callback: () {},
                    animated: true,
                    button: Buttons.google,
                    label: "Sing up with Google",
                  ),
                  LoginProvider(
                    callback: () {},
                    animated: true,
                    button: Buttons.facebook,
                    label: "Sing up with Facebook",
                  ),
                ],
                onLogin: (p0) {
                  Navigator.pushReplacementNamed(context, 'intro');
                },
                onRecoverPassword: (p0) {},
                onSignup: (p0) {},
                // savedEmail: "hk47@gmail.com",
                // savedPassword: "123456789",

              ),
            ),
            Align(
              alignment: Alignment.topLeft,
              child: Container(
                height: 200,
                width: 200,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.only(bottomRight: Radius.circular(500),),
                    color: Colors.white38
                ),
              ),
            ),
            Align(
              alignment: Alignment.topRight,
              child: Container(
                height: 200,
                width: 200,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.only(bottomLeft: Radius.circular(500),),
                    color: Colors.white38
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
