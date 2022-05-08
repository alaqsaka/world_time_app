import 'package:flutter/material.dart';

class ChooseLocation extends StatefulWidget {
  const ChooseLocation({Key? key}) : super(key: key);

  @override
  State<ChooseLocation> createState() => _ChooseLocationState();
}

class _ChooseLocationState extends State<ChooseLocation> {

  // asynchronus
  void getData () async {
    // simulate network request for a username
    String agent = await Future.delayed(Duration(seconds: 3), () {
      return 'yoru';
    });

    String role = await Future.delayed(Duration(seconds: 2), () {
      return 'duelist';
    });

    print('$agent - $role');
  }

  int counter = 0;

  @override
  void initState() {
    super.initState();
    print('InitState function ran');
    getData();
  }

  @override
  Widget build(BuildContext context) {
    print('build function ran');
    return Scaffold(
      backgroundColor: Colors.grey[200],
      appBar: AppBar(
        backgroundColor: Colors.blue[900],
        title: Text('Choose Location'),
        centerTitle: true,
        elevation: 0,
      ),
      body: RaisedButton(
          onPressed: () {
            setState(() {
              counter +=1;
            });
      },child: Text('counter $counter')),
    );
  }
}
