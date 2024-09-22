import 'package:flexify/pages/login.dart';
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

  void _joinMeeting() async {
    ScaffoldMessenger.of(context)
        .showSnackBar(SnackBar(content: Text('Jitsi Here')));
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
          title: Text('Video Call')),
      body: Center(
        child: ElevatedButton(
          onPressed: _joinMeeting,
          child: Text('Join Video Call'),
        ),
      ),
    );
  }
}
