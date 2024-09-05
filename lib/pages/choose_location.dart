import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:world_watch/routes.dart';
import 'package:number_text_input_formatter/number_text_input_formatter.dart';
import 'package:syncfusion_flutter_xlsio/xlsio.dart' hide Row,Border,Column;
import 'package:path_provider/path_provider.dart';
import 'package:open_file/open_file.dart';
import 'dart:io';

class ChooseLocation extends StatefulWidget {
  const ChooseLocation({super.key});

  @override
  State<ChooseLocation> createState() => _ChooseLocationState();
}






class _ChooseLocationState extends State<ChooseLocation> {

double _currentSliderValueSho=0;
double _currentSliderValueMel=0;
double _currentSliderValueCon=0;
double _currentSliderValueMin=0;
double _currentSliderValueCoo=0;
double _currentSliderValuePla=0;
double _currentSliderValueAni=0;
double _currentSliderValueCra=0;
double _currentSliderValueArt=0;
double _currentSliderValueMed=0;
double _currentSliderValueSoc=0;
double _currentSliderValueInt=0;

int ShoVal=0;

String NameOfPawn="Ozzy";


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[200],
      appBar: AppBar(
        backgroundColor: Colors.grey[900],
        title: const Text("Enter a Pawn",
        style: TextStyle(color: Colors.white),),
        centerTitle: true,
        elevation: 2,
        iconTheme: const IconThemeData(color: Colors.white),
      ),
      body: Expanded(
        child: SingleChildScrollView(
          child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 10),
                  child: TextField(
                    onChanged: (text) {
                      setState(() {
                        NameOfPawn = text;
                        
                      });
                      print(text);
                      print(NameOfPawn);
                    },
                    obscureText: false,
                     decoration: const InputDecoration(
                      border: OutlineInputBorder(),
                      labelText: 'Enter Name',
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 10),
                  child: Container(
                    decoration: BoxDecoration(
                      border: Border.all(width: 1.5, color: Colors.grey),
                      borderRadius: BorderRadius.circular(3),
                    ),
                    child: Row(
                      children: [
                        SizedBox(
                          width: 80,
                          child: const Padding(
                            padding: EdgeInsets.symmetric(vertical: 15, horizontal: 10),
                            child: Text("Shooting"),
                          ),
                        ),                   
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: SizedBox(
                            width: 50,
                            child: TextField(
                              onChanged: (value) {
                                if(value!=""){
                                  setState(() {
                                    ShoVal= int.parse(value);
                                  print(ShoVal);
                                  });

                                  
                                }
                              else{
                                  print("empty");
                                }
                              },
                              keyboardType: TextInputType.number,
                            ),
                          ),
                        ),
                        
                        Padding(
                          padding: const EdgeInsets.fromLTRB(10,0,0,0),
                          child: Row(
                            children: [
                              SizedBox(
                                width: 30,
                                child: Image.asset("assets/fire.png")
                                ),
                              SizedBox(                         
                                width: 200,
                                child: Slider(
                                  value: _currentSliderValueSho,
                                  max: 2,
                                  divisions: 2,
                                  label: _currentSliderValueSho.round().toString(),
                                  onChanged: (double value) {
                                    setState(() {
                                      _currentSliderValueSho = value;
                                      print(_currentSliderValueSho);
                                    });
                                  },
                                ),
                              ),
                            ],
                          ),
                        ),
                        
                      ],
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 10),
                  child: Container(
                    decoration: BoxDecoration(
                      border: Border.all(width: 1.5, color: Colors.grey),
                      borderRadius: BorderRadius.circular(3),
                    ),
                    child: Row(
                      children: [
                        SizedBox(
                          width: 80,
                          child: const Padding(
                            
                            padding: EdgeInsets.symmetric(vertical: 15, horizontal: 10),
                            child: Text("Melee"),
                          ),
                        ),                   
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: SizedBox(
                            width: 50,
                            child: TextField(
                              onChanged: (value) {
                                if(value!=""){
                                  int MelVal= int.parse(value);
                                  print(MelVal);
                                }
                              else{
                                  print("empty");
                                }
                              },
                              keyboardType: TextInputType.number,
                            ),
                          ),
                        ),
                        
                        Padding(
                          padding: const EdgeInsets.fromLTRB(10,0,0,0),
                          child: Row(
                            children: [
                              SizedBox(
                                width: 30,
                                child: Image.asset("assets/fire.png")
                                ),
                              SizedBox(                         
                                width: 200,
                                child: Slider(
                                  value: _currentSliderValueMel,
                                  max: 2,
                                  divisions: 2,
                                  label: _currentSliderValueMel.round().toString(),
                                  onChanged: (double value) {
                                    setState(() {
                                      _currentSliderValueMel = value;
                                      print(_currentSliderValueMel);
                                    });
                                  },
                                ),
                              ),
                            ],
                          ),
                        ),
                        
                      ],
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 10),
                  child: Container(
                    decoration: BoxDecoration(
                      border: Border.all(width: 1.5, color: Colors.grey),
                      borderRadius: BorderRadius.circular(3),
                    ),
                    child: Row(
                      children: [
                        SizedBox(
                          width: 80,
                          child: const Padding(
                            padding: EdgeInsets.symmetric(vertical: 15, horizontal: 10),
                            child: Text("Constru."),
                          ),
                        ),                   
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: SizedBox(
                            width: 50,
                            child: TextField(
                              onChanged: (value) {
                                if(value!=""){
                                  int ConVal= int.parse(value);
                                  print(ConVal);
                                }
                              else{
                                  print("empty");
                                }
                              },
                              keyboardType: TextInputType.number,
                            ),
                          ),
                        ),
                        
                        Padding(
                          padding: const EdgeInsets.fromLTRB(10,0,0,0),
                          child: Row(
                            children: [
                              SizedBox(
                                width: 30,
                                child: Image.asset("assets/fire.png")
                                ),
                              SizedBox(                         
                                width: 200,
                                child: Slider(
                                  value: _currentSliderValueCon,
                                  max: 2,
                                  divisions: 2,
                                  label: _currentSliderValueCon.round().toString(),
                                  onChanged: (double value) {
                                    setState(() {
                                      _currentSliderValueCon = value;
                                      print(_currentSliderValueCon);
                                    });
                                  },
                                ),
                              ),
                            ],
                          ),
                        ),
                        
                      ],
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 10),
                  child: Container(
                    decoration: BoxDecoration(
                      border: Border.all(width: 1.5, color: Colors.grey),
                      borderRadius: BorderRadius.circular(3),
                    ),
                    child: Row(
                      children: [
                        SizedBox(
                          width: 80,
                          child: const Padding(
                            padding: EdgeInsets.symmetric(vertical: 15, horizontal: 10),
                            child: Text("Mining"),
                          ),
                        ),                   
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: SizedBox(
                            width: 50,
                            child: TextField(
                              onChanged: (value) {
                                if(value!=""){
                                  int MinVal= int.parse(value);
                                  print(MinVal);
                                }
                              else{
                                  print("empty");
                                }
                              },
                              keyboardType: TextInputType.number,
                            ),
                          ),
                        ),
                        
                        Padding(
                          padding: const EdgeInsets.fromLTRB(10,0,0,0),
                          child: Row(
                            children: [
                              SizedBox(
                                width: 30,
                                child: Image.asset("assets/fire.png")
                                ),
                              SizedBox(                         
                                width: 200,
                                child: Slider(
                                  value: _currentSliderValueMin,
                                  max: 2,
                                  divisions: 2,
                                  label: _currentSliderValueMin.round().toString(),
                                  onChanged: (double value) {
                                    setState(() {
                                      _currentSliderValueMin = value;
                                      print(_currentSliderValueMin);
                                    });
                                  },
                                ),
                              ),
                            ],
                          ),
                        ),
                        
                      ],
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 10),
                  child: Container(
                    decoration: BoxDecoration(
                      border: Border.all(width: 1.5, color: Colors.grey),
                      borderRadius: BorderRadius.circular(3),
                    ),
                    child: Row(
                      children: [
                        SizedBox(
                          width: 80,
                          child: const Padding(
                            padding: EdgeInsets.symmetric(vertical: 15, horizontal: 10),
                            child: Text("Cooking"),
                          ),
                        ),                   
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: SizedBox(
                            width: 50,
                            child: TextField(
                              onChanged: (value) {
                                if(value!=""){
                                  int CooVal= int.parse(value);
                                  print(CooVal);
                                }
                              else{
                                  print("empty");
                                }
                              },
                              keyboardType: TextInputType.number,
                            ),
                          ),
                        ),
                        
                        Padding(
                          padding: const EdgeInsets.fromLTRB(10,0,0,0),
                          child: Row(
                            children: [
                              SizedBox(
                                width: 30,
                                child: Image.asset("assets/fire.png")
                                ),
                              SizedBox(                         
                                width: 200,
                                child: Slider(
                                  value: _currentSliderValueCoo,
                                  max: 2,
                                  divisions: 2,
                                  label: _currentSliderValueCoo.round().toString(),
                                  onChanged: (double value) {
                                    setState(() {
                                      _currentSliderValueCoo = value;
                                      print(_currentSliderValueCoo);
                                    });
                                  },
                                ),
                              ),
                            ],
                          ),
                        ),
                        
                      ],
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 10),
                  child: Container(
                    decoration: BoxDecoration(
                      border: Border.all(width: 1.5, color: Colors.grey),
                      borderRadius: BorderRadius.circular(3),
                    ),
                    child: Row(
                      children: [
                        SizedBox(
                          width: 80,
                          child: const Padding(
                            padding: EdgeInsets.symmetric(vertical: 15, horizontal: 10),
                            child: Text("Plants"),
                          ),
                        ),                   
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: SizedBox(
                            width: 50,
                            child: TextField(
                              onChanged: (value) {
                                if(value!=""){
                                  int PlaVal= int.parse(value);
                                  print(PlaVal);
                                }
                              else{
                                  print("empty");
                                }
                              },
                              keyboardType: TextInputType.number,
                            ),
                          ),
                        ),
                        
                        Padding(
                          padding: const EdgeInsets.fromLTRB(10,0,0,0),
                          child: Row(
                            children: [
                              SizedBox(
                                width: 30,
                                child: Image.asset("assets/fire.png")
                                ),
                              SizedBox(                         
                                width: 200,
                                child: Slider(
                                  value: _currentSliderValuePla,
                                  max: 2,
                                  divisions: 2,
                                  label: _currentSliderValuePla.round().toString(),
                                  onChanged: (double value) {
                                    setState(() {
                                      _currentSliderValuePla = value;
                                      print(_currentSliderValuePla);
                                    });
                                  },
                                ),
                              ),
                            ],
                          ),
                        ),
                        
                      ],
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 10),
                  child: Container(
                    decoration: BoxDecoration(
                      border: Border.all(width: 1.5, color: Colors.grey),
                      borderRadius: BorderRadius.circular(3),
                    ),
                    child: Row(
                      children: [
                        SizedBox(
                          width: 80,
                          child: const Padding(
                            padding: EdgeInsets.symmetric(vertical: 15, horizontal: 10),
                            child: Text("Animal"),
                          ),
                        ),                   
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: SizedBox(
                            width: 50,
                            child: TextField(
                              onChanged: (value) {
                                if(value!=""){
                                  int AniVal= int.parse(value);
                                  print(AniVal);
                                }
                              else{
                                  print("empty");
                                }
                              },
                              keyboardType: TextInputType.number,
                            ),
                          ),
                        ),
                        
                        Padding(
                          padding: const EdgeInsets.fromLTRB(10,0,0,0),
                          child: Row(
                            children: [
                              SizedBox(
                                width: 30,
                                child: Image.asset("assets/fire.png")
                                ),
                              SizedBox(                         
                                width: 200,
                                child: Slider(
                                  value: _currentSliderValueAni,
                                  max: 2,
                                  divisions: 2,
                                  label: _currentSliderValueAni.round().toString(),
                                  onChanged: (double value) {
                                    setState(() {
                                      _currentSliderValueAni = value;
                                      print(_currentSliderValueAni);
                                    });
                                  },
                                ),
                              ),
                            ],
                          ),
                        ),
                        
                      ],
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 10),
                  child: Container(
                    decoration: BoxDecoration(
                      border: Border.all(width: 1.5, color: Colors.grey),
                      borderRadius: BorderRadius.circular(3),
                    ),
                    child: Row(
                      children: [
                        SizedBox(
                          width: 80,
                          child: const Padding(
                            padding: EdgeInsets.symmetric(vertical: 15, horizontal: 10),
                            child: Text("Crafting"),
                          ),
                        ),                   
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: SizedBox(
                            width: 50,
                            child: TextField(
                              onChanged: (value) {
                                if(value!=""){
                                  int CraVal= int.parse(value);
                                  print(CraVal);
                                }
                              else{
                                  print("empty");
                                }
                              },
                              keyboardType: TextInputType.number,
                            ),
                          ),
                        ),
                        
                        Padding(
                          padding: const EdgeInsets.fromLTRB(10,0,0,0),
                          child: Row(
                            children: [
                              SizedBox(
                                width: 30,
                                child: Image.asset("assets/fire.png")
                                ),
                              SizedBox(                         
                                width: 200,
                                child: Slider(
                                  value: _currentSliderValueCra,
                                  max: 2,
                                  divisions: 2,
                                  label: _currentSliderValueCra.round().toString(),
                                  onChanged: (double value) {
                                    setState(() {
                                      _currentSliderValueCra = value;
                                      print(_currentSliderValueCra);
                                    });
                                  },
                                ),
                              ),
                            ],
                          ),
                        ),
                        
                      ],
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 10),
                  child: Container(
                    decoration: BoxDecoration(
                      border: Border.all(width: 1.5, color: Colors.grey),
                      borderRadius: BorderRadius.circular(3),
                    ),
                    child: Row(
                      children: [
                        SizedBox(
                          width: 80,
                          child: const Padding(
                            padding: EdgeInsets.symmetric(vertical: 15, horizontal: 10),
                            child: Text("Artistic"),
                          ),
                        ),                   
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: SizedBox(
                            width: 50,
                            child: TextField(
                              onChanged: (value) {
                                if(value!=""){
                                  int ArtVal= int.parse(value);
                                  print(ArtVal);
                                }
                              else{
                                  print("empty");
                                }
                              },
                              keyboardType: TextInputType.number,
                            ),
                          ),
                        ),
                        
                        Padding(
                          padding: const EdgeInsets.fromLTRB(10,0,0,0),
                          child: Row(
                            children: [
                              SizedBox(
                                width: 30,
                                child: Image.asset("assets/fire.png")
                                ),
                              SizedBox(                         
                                width: 200,
                                child: Slider(
                                  value: _currentSliderValueArt,
                                  max: 2,
                                  divisions: 2,
                                  label: _currentSliderValueArt.round().toString(),
                                  onChanged: (double value) {
                                    setState(() {
                                      _currentSliderValueArt = value;
                                      print(_currentSliderValueArt);
                                    });
                                  },
                                ),
                              ),
                            ],
                          ),
                        ),
                        
                      ],
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 10),
                  child: Container(
                    decoration: BoxDecoration(
                      border: Border.all(width: 1.5, color: Colors.grey),
                      borderRadius: BorderRadius.circular(3),
                    ),
                    child: Row(
                      children: [
                        SizedBox(
                          width: 80,
                          child: const Padding(
                            padding: EdgeInsets.symmetric(vertical: 15, horizontal: 10),
                            child: Text("Medical"),
                          ),
                        ),                   
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: SizedBox(
                            width: 50,
                            child: TextField(
                              onChanged: (value) {
                                if(value!=""){
                                  int MedVal= int.parse(value);
                                  print(MedVal);
                                }
                              else{
                                  print("empty");
                                }
                              },
                              keyboardType: TextInputType.number,
                            ),
                          ),
                        ),
                        
                        Padding(
                          padding: const EdgeInsets.fromLTRB(10,0,0,0),
                          child: Row(
                            children: [
                              SizedBox(
                                width: 30,
                                child: Image.asset("assets/fire.png")
                                ),
                              SizedBox(                         
                                width: 200,
                                child: Slider(
                                  value: _currentSliderValueMed,
                                  max: 2,
                                  divisions: 2,
                                  label: _currentSliderValueMed.round().toString(),
                                  onChanged: (double value) {
                                    setState(() {
                                      _currentSliderValueMed = value;
                                      print(_currentSliderValueMed);
                                    });
                                  },
                                ),
                              ),
                            ],
                          ),
                        ),
                        
                      ],
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 10),
                  child: Container(
                    decoration: BoxDecoration(
                      border: Border.all(width: 1.5, color: Colors.grey),
                      borderRadius: BorderRadius.circular(3),
                    ),
                    child: Row(
                      children: [
                        SizedBox(
                          width: 80,
                          child: const Padding(
                            padding: EdgeInsets.symmetric(vertical: 15, horizontal: 10),
                            child: Text("Social"),
                          ),
                        ),                   
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: SizedBox(
                            width: 50,
                            child: TextField(
                              onChanged: (value) {
                                if(value!=""){
                                  int SocVal= int.parse(value);
                                  print(SocVal);
                                }
                              else{
                                  print("empty");
                                }
                              },
                              keyboardType: TextInputType.number,
                            ),
                          ),
                        ),
                        
                        Padding(
                          padding: const EdgeInsets.fromLTRB(10,0,0,0),
                          child: Row(
                            children: [
                              SizedBox(
                                width: 30,
                                child: Image.asset("assets/fire.png")
                                ),
                              SizedBox(                         
                                width: 200,
                                child: Slider(
                                  value: _currentSliderValueSoc,
                                  max: 2,
                                  divisions: 2,
                                  label: _currentSliderValueSoc.round().toString(),
                                  onChanged: (double value) {
                                    setState(() {
                                      _currentSliderValueSoc = value;
                                      print(_currentSliderValueSoc);
                                    });
                                  },
                                ),
                              ),
                            ],
                          ),
                        ),
                        
                      ],
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 10),
                  child: Container(
                    decoration: BoxDecoration(
                      border: Border.all(width: 1.5, color: Colors.grey),
                      borderRadius: BorderRadius.circular(3),
                    ),
                    child: Row(
                      children: [
                        SizedBox(
                          width: 80,
                          child: const Padding(
                            padding: EdgeInsets.symmetric(vertical: 15, horizontal: 10),
                            child: Text("Intellect."),
                          ),
                        ),                   
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: SizedBox(
                            width: 50,
                            child: TextField(
                              onChanged: (value) {
                                if(value!=""){
                                  int IntVal= int.parse(value);
                                  print(IntVal);
                                }
                              else{
                                  print("empty");
                                }
                              },
                              keyboardType: TextInputType.number,
                            ),
                          ),
                        ),
                        
                        Padding(
                          padding: const EdgeInsets.fromLTRB(10,0,0,0),
                          child: Row(
                            children: [
                              SizedBox(
                                width: 30,
                                child: Image.asset("assets/fire.png")
                                ),
                              SizedBox(                         
                                width: 200,
                                child: Slider(
                                  value: _currentSliderValueInt,
                                  max: 2,
                                  divisions: 2,
                                  label: _currentSliderValueInt.round().toString(),
                                  onChanged: (double value) {
                                    setState(() {
                                      _currentSliderValueInt = value;
                                      print(_currentSliderValueInt);
                                    });
                                  },
                                ),
                              ),
                            ],
                          ),
                        ),
                        
                      ],
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.fromLTRB(0,10,0,20),
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.blue,                     
                    ),
                    onPressed: createExcel,
                    child: Text("Save Pawn",
                      style: TextStyle(color: Colors.white),
                    ),
                  ),
                ),
              ],
            ),
        ),
      ),
      
    );
  }

  Future<void> createExcel() async{

    final Workbook workbook = Workbook();
    final Worksheet sheet = workbook.worksheets[0];
    sheet.getRangeByIndex(1,1).setText(NameOfPawn);
    final List<int> bytes=workbook.saveAsStream();
    
    workbook.dispose();

    final String path = (await getApplicationSupportDirectory()).path;
    final String fileName = "$path/Output.xlsx";
    final File file = File(fileName);
    await file.writeAsBytes(bytes, flush: true);
    //OpenFile.open(fileName);
    print("I was here");
  }



}