import 'package:flutter/material.dart';
import 'package:world_watch/pages/choose_location.dart';
import 'package:world_watch/pages/home.dart';
import 'package:world_watch/pages/loading.dart';


void main() {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(MaterialApp(
    
    initialRoute: '/',
      routes: {
        '/': (context)=>Loading(),
        '/home': (context)=>Home(),
        '/location': (context)=>ChooseLocation(),
      },
  ));
}


