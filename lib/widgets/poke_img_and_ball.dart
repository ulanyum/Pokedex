import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:pokedex/constant/ui_helper.dart';
import 'package:pokedex/model/pokemon_model.dart';

class PokeImageAndBall extends StatelessWidget {
  final PokemonModel pokemon;
  const PokeImageAndBall({super.key, required this.pokemon});
  @override
  Widget build(BuildContext context) {
    String pokeballImageUrl = 'images/pokeball.png';

    return Stack(
      children: [
        Align(
          alignment: Alignment.bottomRight,
          child: Image.asset(pokeballImageUrl, 
          width: UIHelper.CalculatePokeImgAndBallSize(),
          height: UIHelper.CalculatePokeImgAndBallSize(),
          fit: BoxFit.fitWidth,),
        ),
        Align(
          alignment: Alignment.bottomRight,
          child: Hero(
            tag: pokemon.id!,
            child: CachedNetworkImage(imageUrl:pokemon.img ?? 'http://www.serebii.net/pokemongo/pokemon/007.png',
            errorWidget: (context, url, error) => Icon(Icons.error),
            width: UIHelper.CalculatePokeImgAndBallSize(),
            height: UIHelper.CalculatePokeImgAndBallSize(),
            placeholder:(context, url) => CircularProgressIndicator(),
            fit: BoxFit.fitWidth,),
          ),
        )
      ,
      ],
    );
  }
}
