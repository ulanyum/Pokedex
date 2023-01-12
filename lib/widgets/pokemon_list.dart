import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:pokedex/model/pokemon_model.dart';
import 'package:pokedex/services/pokedex_api.dart';
import 'package:pokedex/widgets/pokelist_items.dart';

class PokemonList extends StatefulWidget {
  const PokemonList({super.key});

  @override
  State<PokemonList> createState() => _PokemonListState();
}

class _PokemonListState extends State<PokemonList> {
  late Future<List<PokemonModel>> _pokemonList;

  @override
  void initState() {
    _pokemonList = PokeApi.getPokemonData();
  }

  Widget build(BuildContext context) {
    return FutureBuilder<List<PokemonModel>>(
        future: _pokemonList,
        builder: (context, snapshot) {
          if (snapshot.hasData) {
            List<PokemonModel> _listem = snapshot.data!;

            return GridView.builder(
              itemCount: _listem.length,
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: ScreenUtil().orientation==Orientation.portrait ? 2 :3), 
                itemBuilder: (context, index) => PokeListItem(pokemon: _listem[index]),
                );
          } else if (snapshot.hasError) {
            return Center(
              child: Text("Hata Geldi"),
            );
          } else {
            return const Center(child: CircularProgressIndicator());
          }
        });
  }
}
