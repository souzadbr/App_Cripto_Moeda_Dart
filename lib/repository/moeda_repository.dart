// classe resposavel posteriomente em se conectar com fontes de dados, 
// que podems er uma API externa por exemplo ou banco de dados 
//vamos trabalhar nesse momento com dados estáticos, uma lista de moedas

import 'package:flutter_aula_1/models/moeda.dart';

class MoedaRepository {
  static List<Moeda> tabela = [
    Moeda(
      icone: "images/bitcoin.png", 
      nome: "Bitcoin", 
      preco: 163603.00, 
      sigla: "BTC"),
      Moeda(
      icone: "images/cardano.png", 
      nome: "Cardano", 
      preco: 6.32, 
      sigla: "ADA"),
      Moeda(
      icone: "images/etherum.jpg", 
      nome: "Ethereum", 
      preco: 9716.00, 
      sigla: "ETM"),
      Moeda(
      icone: "images/litecoin.png", 
      nome: "Litecoin", 
      preco: 669.93, 
      sigla: "LTC"),
      Moeda(
      icone: "images/usd.png", 
      nome: "USD Coin", 
      preco: 5.02, 
      sigla: "USDC"),
      Moeda(
      icone: "images/xrp.png", 
      nome: "XRP", 
      preco: 3.34, 
      sigla: "XRP"),
  ];
}

