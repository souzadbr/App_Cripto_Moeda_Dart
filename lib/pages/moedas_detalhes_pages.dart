import "package:flutter/material.dart";
import "package:flutter_aula_1/models/moeda.dart";

class MoedasDetalhesPages extends StatefulWidget {

  Moeda moeda; 

  MoedasDetalhesPages({Key? key, required this.moeda}) : super(key : key);

  @override
  State<MoedasDetalhesPages> createState() => _MoedasDetalhesPagesState();
}

class _MoedasDetalhesPagesState extends State<MoedasDetalhesPages> {
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.moeda.nome), 
      ),
      body: Column(
        children: [
          Row(
            children: [
              SizedBox(child: Image.asset(widget.moeda.icone), 
              width: 50,)
            ],
          ),
        ],
      ),
    );
  }
}