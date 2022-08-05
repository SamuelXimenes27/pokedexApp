import 'package:flutter/material.dart';
import 'package:pokedex/app/modules/components/api/api_service.dart';
import 'package:pokedex/app/modules/components/api/poke_model.dart';

class GeneralGeneration extends StatefulWidget {
  const GeneralGeneration({Key? key}) : super(key: key);

  @override
  State<GeneralGeneration> createState() => _GeneralGenerationState();
}

class _GeneralGenerationState extends State<GeneralGeneration> {
  late List<PokeModel>? _pokeModel = [];

  @override
  void initState() {
    super.initState();
    _getData();
  }

  void _getData() async {
    _pokeModel = (await ApiService().getPokemons())!;
    Future.delayed(const Duration(seconds: 1)).then((value) => setState(
          () {},
        ));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('All Generations'),
      ),
      body: _pokeModel == null || _pokeModel!.isEmpty
          ? const Center(
              child: CircularProgressIndicator(),
            )
          : ListView.builder(
              itemCount: 2,
              itemBuilder: (context, index) {
                debugPrint(_pokeModel![index].pokedex.toString());
                return Center(
                  child: Card(
                    child: Row(
                      children: [
                        Text(_pokeModel![index].pokemon.toString()),
                        Text(_pokeModel![index].pokedex.toString()),
                      ],
                    ),
                  ),
                );
              },
            ),
    );
  }
}
