import 'package:flexify/components/buttonCustom.dart';
import 'package:flexify/components/textfieldCustom.dart';
import 'package:flexify/pages/home.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class Login extends StatefulWidget {
  const Login({super.key});

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
            leading: Container(),
            centerTitle: true,
            title: Text(''),
            actions: []),
        body: SafeArea(
            child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
              Center(
                  child: Container(
                      height: 55,
                      margin: const EdgeInsets.only(top: 45, bottom: 20),
                      child: Image.asset('assets/icon/flexifylogo1.png'))),
              Center(
                child: Text('Flexify',
                    style:
                        TextStyle(fontSize: 24, fontWeight: FontWeight.bold)),
              ),
              const Center(
                  child: Text('We Train you Flex',
                      style: TextStyle(fontSize: 14))),
              const SizedBox(height: 30),
              const TextFieldCustomPrimary(
                  hintText: 'Email/Username',
                  prefixIcon: 'assets/svg/email-18-svgrepo-com.svg',
                  suffixIcon: '',
                  isObscureText: false),
              const TextFieldCustomPrimary(
                  hintText: 'Password',
                  prefixIcon: 'assets/svg/lock-alt-svgrepo-com.svg',
                  suffixIcon: '',
                  isObscureText: true),
              GestureDetector(
                  onTap: () => {
                        Navigator.pushReplacement(context,
                            MaterialPageRoute(builder: (context) {
                          return HomePage();
                        }))
                      },
                  child: const ButtonCustomPrimary(buttonText: 'Submit'))
            ])));
  }
}
