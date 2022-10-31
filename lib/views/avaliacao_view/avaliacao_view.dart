// ignore_for_file: use_key_in_widget_constructors

import 'package:app_maromba/models/avaliacao.dart';
import 'package:app_maromba/models_views/avaliacao_store.dart';
import 'package:app_maromba/views/avaliacao_view/avaliacaoAdd_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';

class AvaliacaoPage extends StatefulWidget {
  @override
  State<AvaliacaoPage> createState() => _AvaliacaoPageState();
}

class _AvaliacaoPageState extends State<AvaliacaoPage> {
  AvaliacaoStore avaliacaoStore = AvaliacaoStore();

  @override
  Widget build(BuildContext context) {
    //FUNCAO PARA ADICIONAR AVALIACAO A LISTA DE AVALIACOES

    //TIRAR DUVIDA------------------------------------------
    void addAvaliacaoData() {
      setState(() {
      });
    }
    //TIRAR DUVIDA------------------------------------------

    //FUNCAO QUE EXIBE TELA DE ADICIONAR AVALIACOES
    void showAvaliacoesAdd() {
      showDialog(
        context: context,
        builder: (_) {
          return AlertDialog(
            //CHAMA A FUNCAO QUE MOSTRA O QUE TERÁ NA TELA DE ADICONAR AVALIACOES

            //TIRAR DUVIDA------------------------------------------
            content: avaliacaoAdd(addAvaliacaoData),
            //TIRAR DUVIDA------------------------------------------

            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(10),
            ),
          );
        },
      );
    }

    return Scaffold(
      //BARRA DE NAVEGACAO AVALIACOES
      appBar: AppBar(
        title: const Text('Avaliação Fisica'),
      ),
      //CORPO AVALIACOES
      body: Observer(
        builder: (_) {
          if (avaliacaoStore.isCarregando) {
            return const Center(
              child: SizedBox(
                  width: 100, height: 100, child: CircularProgressIndicator()),
            );
          }
           return SizedBox(
            height: MediaQuery.of(context).size.height * 0.75,
            //CONTAINER CRIA LISTA DE AVALICOES
            child: ListView.builder(
              itemCount: avaliacaoStore.listDeAvalicao.length,
              itemBuilder: (context, index) {
                final avaliacao = avaliacaoStore.listDeAvalicao[index];
                return Card(
                  margin: const EdgeInsets.all(4),
                  elevation: 8,
                  child: ListTile(
                    //CONTAINER QUE EXIBE PESO
                    title: Text(
                      avaliacao.peso,
                      style: const TextStyle(
                        fontSize: 22,
                        color: Colors.purpleAccent,
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                    //CONTAINER QUE EXIBE DATA
                    trailing: Text(
                      avaliacao.data,
                      style: const TextStyle(
                        fontSize: 14,
                        color: Colors.purpleAccent,
                        fontWeight: FontWeight.w400,
                      ),
                      /*Colocar um botao de excluir aqui---
                        onPressed: () async {
                                      avaliacaoStore.excluirAvaliacao(avaliacao);
                                    }
                      //--------------------*/
                    ),
                  ),
                );
              },
            ),
          );
        },
      ),
      //CONTAINER COM BOTAO QUE CHAMA FUNCAO ADICIONAR AVALIACOES
      floatingActionButton: FloatingActionButton(
        onPressed: showAvaliacoesAdd,
        child: const Icon(Icons.add),
      ),
    );
  }
}
