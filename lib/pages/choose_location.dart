import 'package:flutter/material.dart';

class ChooseLocation extends StatefulWidget {
  const ChooseLocation({Key? key}) : super(key: key);

  @override
  State<ChooseLocation> createState() => _ChooseLocationState();
}

class _ChooseLocationState extends State<ChooseLocation> {
  // function that simulates a delay
  void getData(){
    Future.delayed(Duration(seconds: 3), (){
      print('Done');   // prints 'Done' after 3 seconds
    });
    print('statement');
  }
  @override
  void initState() {
    super.initState();
    getData();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[200],
      appBar: AppBar(
        backgroundColor: Colors.blue[900],
        title: Text('Find location'),
        centerTitle: true,
        elevation: 0,
      ),
      body: ElevatedButton(
        onPressed: () {
          setState(() {
          });
        },
        child: Text('Counter value'),
      ),
    );
  }
}
