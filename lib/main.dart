import 'package:flutter/material.dart';

void main(){
  runApp(MyApp());
}

class MyApp extends StatelessWidget{
  @override
  Widget build(BuildContext context){
    return MaterialApp(
      title: 'Qr Code Reader',
      
      //Dark theme para celulares com dark mode nativo
      //darkTheme: ThemeData.dark(),

      //Dark theme para celulares sem suporte para dark mode nativo
      theme: ThemeData(
        brightness: Brightness.dark,
        //accentColor: Colors.white,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: Scaffold(
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ElevatedButton.icon(
                style: ElevatedButton.styleFrom(
                  primary: Colors.tealAccent,
                  onPrimary: Colors.black,
                  padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 20),
                ),
                label: const Text('Ler QR Code'),
                icon: const Icon(Icons.qr_code_2),
                onPressed: () { 
                  print('Botão QR Code precionado');
                }
              ),

              ElevatedButton.icon(
                style: ElevatedButton.styleFrom(
                  primary: Colors.tealAccent,
                  onPrimary: Colors.black,
                  padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 20),
                ),
                label: const Text('Ler codigo de barras'),
                icon: const Icon(Icons.qr_code_2),
                onPressed: () { 
                  print('Botão Código de barra precionado precionado');
                }
              )
            ],
          ),
        ),
      )
    );
  }
  
}