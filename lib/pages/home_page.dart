

import 'package:flutter/material.dart';
import 'package:pokedex/widgets/app_title.dart';
import 'package:pokedex/widgets/pokemon_list.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {


  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body:SafeArea(
          top: true,
          child: Column(
            children: [
              AppTitle(),
              Expanded(child: PokemonList()),
            ],
          ),
        ) );
  }
}
