import 'dart:io';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_pdfview/flutter_pdfview.dart';
import 'package:path_provider/path_provider.dart';
import 'package:http/http.dart' as http;

class PdfScreen extends StatefulWidget {
  @override
  _PdfScreenState createState() => _PdfScreenState();
}

class _PdfScreenState extends State<PdfScreen> {
  String assetPDFPath ='';
  String urlPDFPath = "";
  
  @override
  void initState(){
    super.initState();
    getFileFromAsset("pdf/mypdf.pdf").then((f){
        setState(() {
          assetPDFPath = f.path; 
          print(assetPDFPath);
        });
    });
     getFileFromUrl("Url here").then((f){
        setState(() {
          urlPDFPath = f.path; 
          print(urlPDFPath);
        });
    });
  }

Future<File>getFileFromAsset(String asset) async{
  try{
   var data = await rootBundle.load(asset);
   var bytes = data.buffer.asUint8List();
   var dir = await getApplicationDocumentsDirectory();
   File file = File("${dir.path}/mypdf.pdf");

   File assetFile = await file.writeAsBytes(bytes);
   return assetFile;
  }catch(e){
    throw Exception("Error loading pdf");
  }
}


Future<File>getFileFromUrl(String url) async{
  try{
   var data = await http.get(url);
   var bytes = data.bodyBytes;
   var dir = await getApplicationDocumentsDirectory();
   File file = File("${dir.path}/mypdf.pdf");

   File urlFile = await file.writeAsBytes(bytes);
   return urlFile;
  }catch(e){
    throw Exception("Error loading url pdf");
  }
}


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Pdf Reader"),
        centerTitle: true,
      ),

      body: Center(
        child: Builder(
          builder: (context)=>Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              RaisedButton(
                color: Colors.blue,
                child: Text("Open from url"),
                onPressed: (){
                   if(urlPDFPath!=null) {}
                },
              ),
               RaisedButton(
                color: Colors.redAccent
                child: Text("Open from asset"),
                onPressed: (){
                   if(assetPDFPath!=null) {
                     Navigator.of(context).push(MaterialPageRoute(builder: 
                    (BuildContext context)=>PdfView(path: assetPDFPath,)));
                   }
                },
              )
            ],
          ),
        ),
      ),
      
    );
  }
}

class PdfView extends StatefulWidget {
  final String path;
  PdfView({Key key, this.path}): super(key:key);
  @override
  _PdfViewState createState() => _PdfViewState();
}

class _PdfViewState extends State<PdfView> {
  bool pdfReady = false;
  int _totalPages = 0;
  int _currentPage = 0;
  PDFViewController _pdfViewController;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: <Widget>[
          PDFView(
            filePath: widget.path,
            autoSpacing: true,
            enableSwipe: true,
            swipeHorizontal: true,
            onError: (e){
              print(e);
            },
            onRender: (_pages){
               setState(() {
                 _totalPages =_pages;
                 pdfReady  = false;
               });
              
            },
            onViewCreated: (PDFViewController vc){
              _pdfViewController = vc;
            },
            onPageChanged: (int page, int total){
              setState(() {
                
              });
            },
            onPageError: (page,e){

            },
          ),
          !pdfReady ? Center(
            child: CircularProgressIndicator(),
          ):Offstage()
        ],
      ),
    
    );
  }
}