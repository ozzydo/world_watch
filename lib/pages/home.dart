import 'package:flutter/material.dart';
import 'package:world_watch/routes.dart';
import 'package:number_text_input_formatter/number_text_input_formatter.dart';

class Home extends StatefulWidget {
  const Home({super.key});


  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
            title: const Text(
              "RimWorld Schedule App",
            style: TextStyle(color: Colors.white),
              ),
            centerTitle: true,
            backgroundColor: Colors.grey[900],
            iconTheme: const IconThemeData(color: Colors.white),
          ),
      drawer: Drawer(
        child: ListView(
            padding: const EdgeInsets.all(2),
            children: [
              DrawerHeader(
                decoration: BoxDecoration(
                  color: Colors.grey[800],
                ),
                child: const Center(
                  child: Text("RimWorld",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 30,
                    ),
                  ),
                ),
              ),
              ListTile(
                title: const Text('Enter a Pawn'),
                onTap: () {
                  Navigator.pushNamed(context, AppRoutes.skills);
                // Update the state of the app.
                // ...
                },
              ),
              ListTile(
                title: const Text('Skills'),
                onTap: () {
                // Update the state of the app.
                // ...
                },
              ),
              ListTile(
                title: const Text('Table of Jobs'),
                onTap: () {
                // Update the state of the app.
                // ...
                },
              ),
            ],
          ),
      ),    
      body: const SafeArea(
        child: Padding(
                      padding: EdgeInsets.all(8.0),
                      child: TextField(

                        keyboardType: TextInputType.number,
                      ),
                    ),
        ),
    );
  }
}