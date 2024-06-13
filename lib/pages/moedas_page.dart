import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_aula_1/models/moeda.dart';
import 'package:flutter_aula_1/repository/moeda_repository.dart';
import 'package:intl/intl.dart';


class MoedasPage extends StatefulWidget {
  const MoedasPage({super.key});

  @override
  State<MoedasPage> createState() => _MoedasPageState();
}

class _MoedasPageState extends State<MoedasPage> {

    final tabela = MoedaRepository.tabela;
    final NumberFormat real = NumberFormat.currency(locale: "pt_BR", name: "R\$");
    List<Moeda> selecionadas = [];
     
    appBarDinamica() {
      if(selecionadas.isEmpty) {
        return AppBar(
        title: Text("Cripto Moedas")
      );
      } else {
        return AppBar(
          leading: IconButton(
            icon: Icon(Icons.arrow_back),
            onPressed: () {
              //acao de cancelar
              setState(() {
                selecionadas = []; 
              });
            },
        ),
        title: Text("${selecionadas.length} selecionadas"),
      ); 
      } 
    }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appBarDinamica(),
      body: ListView.separated(
        itemBuilder: (BuildContext context, int moeda) {
          return ListTile(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.all(Radius.circular(12))
              ),
            leading: (selecionadas.contains(tabela[moeda]))
            ? CircleAvatar(
              child: Icon(Icons.check),
            )
            : SizedBox(
              child: Image.asset(tabela [moeda].icone),
              width: 40,
              ),
            title: Text(
              tabela [moeda].nome,
              style: TextStyle(
                fontSize: 17,
                fontWeight: FontWeight.w500,
                color: Color.fromRGBO(42, 42, 137, 0.957), 
              ),
              ), 
            trailing: Text(
              real.format(tabela[moeda].preco),
              style: TextStyle(
                fontSize: 14,
              ),
            ),
            selected: selecionadas.contains(tabela[moeda]),
            selectedTileColor: Color.fromRGBO(85, 123, 153, 100),
            onLongPress: () {
              setState(() {
                (selecionadas.contains(tabela[moeda])) 
                ? selecionadas.remove(tabela[moeda])
                : selecionadas.add(tabela[moeda]);
              }); 
            },
          );
        }, 
        padding: EdgeInsets.all(16),
        separatorBuilder: (_, __)=> Divider(), 
        itemCount: tabela.length,
        
        ));
  }
}