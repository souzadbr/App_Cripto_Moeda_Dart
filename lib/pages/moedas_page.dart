import 'package:flutter/material.dart';
import 'package:flutter_aula_1/repository/moeda_repository.dart';
import 'package:intl/intl.dart';


class MoedasPage extends StatelessWidget {
  const MoedasPage({super.key});

  @override
  Widget build(BuildContext context) {

    final tabela = MoedaRepository.tabela;
    NumberFormat real = NumberFormat.currency(locale: "pt_BR", name: "R\$");
    return Scaffold(
      appBar: AppBar(
        title: Text("Cripto Moedas"),
      ),
      body: ListView.separated(
        itemBuilder: (BuildContext context, int moeda) {
          return ListTile(
            leading: SizedBox(
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
          );
        }, 
        padding: EdgeInsets.all(16),
        separatorBuilder: (_, __)=> Divider(), 
        itemCount: tabela.length,
        ));
  }
}