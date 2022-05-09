import 'package:flutter/material.dart';
import 'package:world_time/services/world_time.dart';


class Loading extends StatefulWidget {
  const Loading({Key? key}) : super(key: key);

  @override
  State<Loading> createState() => _LoadingState();
}

class _LoadingState extends State<Loading> {

  String time = 'loading';

  void setupWorldTime() async {
    print(time);
    WorldTime instance = WorldTime(location: 'jakarta', flag: 'indonesia.png', url: '/asia/jakarta');
    await instance.getTime();
    print(instance.time);
    setState(() {
      time = instance.time;
    });
  }


  int counter = 0;

  @override
  void initState() {
    super.initState();
    print('InitState function ran');
    setupWorldTime();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.all(50.0),
        child: Text(time),
      ),
    );
  }
}
