import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:world_watch/routes.dart';
import 'package:number_text_input_formatter/number_text_input_formatter.dart';
import 'package:syncfusion_flutter_xlsio/xlsio.dart' hide Row,Border,Column;
import 'package:path_provider/path_provider.dart';
import 'package:open_file/open_file.dart';
import 'dart:io';
import 'package:excel/excel.dart';

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

List<String> rowdetail = [];


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
    
    var file =
    "storage/emulated/0/Android/data/com.xxxx.xxxx/files/Download/Input.xlsx";
    var bytes = File(file).readAsBytesSync();
    var excel = Excel.decodeBytes(bytes);

    for (var table in excel.tables.keys) {
      for (var row in excel.tables[table]!.rows) {
        rowdetail.add(row.value);
      }
    }
    
    
    
    
    
    print("I was here");
  }



}