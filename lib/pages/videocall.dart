import 'package:flexify/pages/messages.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class VideoCall extends StatefulWidget {
  const VideoCall({super.key});

  @override
  State<VideoCall> createState() => _VideoCallState();
}

class _VideoCallState extends State<VideoCall> {
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
                  return Messages();
                }))
              },
              child: Container(
                  padding: const EdgeInsets.all(10),
                  child: SvgPicture.asset(
                      'assets/svg/arrow-left-svgrepo-com.svg')),
            ),
            centerTitle: true,
            title: Text('Video Call')),
        body: SafeArea(
            child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
              ElevatedButton(
                onPressed: _joinMeeting,
                child: Text('Join Video Call'),
              ),
            ])));
  }
}
