import "package:flutter/material.dart";
import "package:flutter/services.dart";
import "package:flutter_aula_1/models/moeda.dart";
import "package:intl/intl.dart";

class MoedasDetalhesPages extends StatefulWidget {

  Moeda moeda; 

  MoedasDetalhesPages({Key? key, required this.moeda}) : super(key : key);

  @override
  State<MoedasDetalhesPages> createState() => _MoedasDetalhesPagesState();
}

class _MoedasDetalhesPagesState extends State<MoedasDetalhesPages> {
  NumberFormat real = NumberFormat.currency(locale: "pt_BR", name: "R\$");
  final _form = GlobalKey<FormState>();
  final _valor = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.moeda.nome), 
      ),
      body: Column(
        children: [
          Padding(
            padding: EdgeInsets.only(bottom: 24),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                SizedBox(
                  child: Image.asset(widget.moeda.icone), 
                  width: 50,
                ),
                Container(width: 10),
                Text(
                  real.format(widget.moeda.preco),
                  style: TextStyle(
                    fontSize: 26,
                    fontWeight: FontWeight.w600,
                    letterSpacing: -1,
                    color: Colors.grey[800],
                  ),
                )
            ],
          )
          ),
          Form(
          key: _form,
          child: TextFormField(
            controller: _valor,
            style: TextStyle (fontSize: 22),
            decoration: InputDecoration(
             border: OutlineInputBorder(),
             labelText: "Valor",
             prefixIcon: Icon(Icons.monetization_on_outlined), 
             suffix: Text(
              "reais",
              style: TextStyle(fontSize: 14),
             )
            ),
            keyboardType: TextInputType.number,
            inputFormatters: [FilteringTextInputFormatter.digitsOnly],
            validator: (value) {
              if(value.isEmpty) {
                return "Informe valor da compra";
              } else if (double.parse(value) < 50) {
                return "Compra minina é de R\$ 50 reais";
              }
            },
            )
          )
        ],
      ),
    );
  }
}