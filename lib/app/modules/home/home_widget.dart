import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:pokedex/app/modules/cards_generations/general_generation.dart';
import 'package:pokedex/app/modules/components/widgets/card_generations.dart';

class HomePageWidget extends StatefulWidget {
  final String title;
  const HomePageWidget({
    Key? key,
    this.title = 'Pokedex',
  }) : super(key: key);

  @override
  State<HomePageWidget> createState() => _HomePageWidgetState();
}

class _HomePageWidgetState extends State<HomePageWidget> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: GridView.count(
        padding: const EdgeInsets.all(8),
        crossAxisCount: 2,
        mainAxisSpacing: 10,
        children: [
          CardGeneration(
            title: 'All Generations',
            ontap: () {
              Modular.to.push(
                MaterialPageRoute(builder: (context) => const GeneralGeneration()),
              );
            },
          ),
          CardGeneration(
            title: 'First Generations',
            ontap: () {},
          ),
          CardGeneration(
            title: 'Second Generations',
            ontap: () {},
          ),
          CardGeneration(
            title: 'Third Generations',
            ontap: () {},
          ),
          CardGeneration(
            title: 'Fourth Generations',
            ontap: () {},
          ),
          CardGeneration(
            title: 'Fifth Generations',
            ontap: () {},
          ),
        ],
      ),
    );
  }
}
