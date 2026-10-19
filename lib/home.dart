
import 'package:flutter/material.dart';
import 'package:flutterapp/Components/big_card.dart';
import 'package:flutterapp/main.dart';
import 'package:provider/provider.dart';

class HomePage extends StatelessWidget{


  @override
  Widget build(BuildContext context) {
   var appState = context.watch<MainAppState>();

   return Scaffold(
    body: SafeArea(
      child: Column(
    
      children: [
        Text("Uma palavra em Ingles"),

        BigCard(appState: appState),
      
        ElevatedButton(
          onPressed: appState.gerarNovaPalavra,
           child: Text("Próxima palavra")
          
        ),
      ],
    ),
   ),
   );
  }
}

