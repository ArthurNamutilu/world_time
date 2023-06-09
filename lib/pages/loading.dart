import 'package:flutter/material.dart';
import 'package:http/http.dart';
import 'dart:io';

class Loading extends StatefulWidget {
  const Loading({Key? key}) : super(key: key);

  @override
  State<Loading> createState() => _LoadingState();
}

class _LoadingState extends State<Loading> {

  void getData() async {
    // using http package to make network request to get some data
    // getting handshake error check internet connection
    Response response = await get(Uri.parse('https://jsonplaceholder.typicode.com/todos/1'));
    print(response.body);
   // print('hey there');

  }
  @override
  void initState() {
    super.initState();
    getData();
  }

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Text('Loading Screen'),
    );
  }
}
