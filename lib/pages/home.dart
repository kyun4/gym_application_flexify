import 'package:flexify/pages/login.dart';
import 'package:flexify/pages/messages.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:permission_handler/permission_handler.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

Future<void> requestPermissions() async {
  await [Permission.camera, Permission.microphone].request();
} // requestPermissions()

class _HomePageState extends State<HomePage> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          leading: GestureDetector(
            onTap: () => {
              Navigator.pushReplacement(context,
                  MaterialPageRoute(builder: (context) {
                return Login();
              }))
            },
            child: Container(
                padding: const EdgeInsets.all(10),
                child:
                    SvgPicture.asset('assets/svg/arrow-left-svgrepo-com.svg')),
          ),
          centerTitle: true,
          title: Text(
            'Welcome',
          ),
          actions: [
            GestureDetector(
              onTap: () => {
                Navigator.pushReplacement(context,
                    MaterialPageRoute(builder: (context) {
                  return Messages();
                }))
              },
              child: Container(
                  margin: const EdgeInsets.only(right: 18),
                  child: SvgPicture.asset(
                      'assets/svg/messages-dots-svgrepo-com.svg',
                      height: 30)),
            )
          ]),
      body: Center(child: Container()),
    );
  }
}
