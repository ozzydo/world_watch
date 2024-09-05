import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:world_watch/pages/home.dart';
import 'package:world_watch/routes.dart';

class Loading extends StatefulWidget {
  const Loading({super.key});


  @override
  State<Loading> createState() => _LoadingState();
}


class _LoadingState extends State<Loading> {

  @override
  void a() async{
    Future.delayed(const Duration(seconds: 1), () {
      Navigator.pushReplacementNamed(context, AppRoutes.home);
    });   
  }

  @override
  void initState() {
    super.initState();
    a();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: SpinKitRotatingCircle(
          color: Colors.grey[900],
          size: 150.0,
        ),
      ),
    );
  }
  
}