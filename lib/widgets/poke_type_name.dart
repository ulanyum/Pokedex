import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:pokedex/constant/constans.dart';
import 'package:pokedex/constant/ui_helper.dart';
import 'package:pokedex/model/pokemon_model.dart';

class PokemonType extends StatelessWidget {
  final PokemonModel pokemon;

  const PokemonType({super.key, required this.pokemon});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 0.05.sh),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Expanded(child: Text(pokemon.name ?? '', style: Constants.getPokemonNameTextStyle())),
              Text(
                "#${pokemon.num}",
                style: Constants.getPokemonNameTextStyle(),
              )
            ],
          ),
          SizedBox(
            height: 0.02.sh,
          ),
          Chip(
              label: Text(
            pokemon.type?.join(' , ') ?? '',
            style: Constants.getTypeChipTextStyle(),
          ))
        ],
      ),
    );
    
  }
}
