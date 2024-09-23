import 'package:flexify/pages/home.dart';
import 'package:flexify/pages/videocall.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class Messages extends StatefulWidget {
  const Messages({super.key});

  @override
  State<Messages> createState() => _MessagesState();
}

class _MessagesState extends State<Messages> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
            leading: GestureDetector(
              onTap: () => {
                Navigator.pushReplacement(context,
                    MaterialPageRoute(builder: (context) {
                  return HomePage();
                }))
              },
              child: Container(
                  padding: const EdgeInsets.all(10),
                  child: SvgPicture.asset(
                      'assets/svg/arrow-left-svgrepo-com.svg')),
            ),
            centerTitle: true,
            title: Text('Messages'),
            actions: [
          GestureDetector(
            onTap: () => {
              Navigator.pushReplacement(context,
                  MaterialPageRoute(builder: (context) {
                return VideoCall();
              }))
            },
            child: Container(
                padding: const EdgeInsets.all(5),
                margin: const EdgeInsets.only(right: 15),
                child:
                    SvgPicture.asset('assets/svg/video-call-svgrepo-com.svg')),
          )
        ]));
  }
}
