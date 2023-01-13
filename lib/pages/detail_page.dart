import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';

import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:pokedex/widgets/poke_information.dart';
import 'package:pokedex/widgets/poke_type_name.dart';

import '../constant/ui_helper.dart';
import '../model/pokemon_model.dart';

class DetailPage extends StatelessWidget {
  final PokemonModel pokemon;

  const DetailPage({Key? key, required this.pokemon}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    String pokeballImageUrl = 'images/pokeball.png';
    return ScreenUtil().orientation == Orientation.portrait
        ? _buildPortraitBody(context, pokeballImageUrl)
        : _buildLandscapeBody(context, pokeballImageUrl);
  }

  Scaffold _buildLandscapeBody(BuildContext context, String pokeballImageUrl) {
    return Scaffold(
      backgroundColor: UIHelper.getColorFromType(pokemon.type![0]),
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: UIHelper.getDefaultPadding(),
              child: IconButton(
                  iconSize: 30,
                  onPressed: () {
                    Navigator.of(context).pop();
                  },
                  icon:  Icon(Icons.arrow_back_ios)),
            ),
            Expanded(
              child: Row(
                children: [
                  Expanded(
                    flex: 3,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        PokemonType(pokemon: pokemon),
                        Expanded(
                          child: Hero(
                            tag: pokemon.id!,
                            child: CachedNetworkImage(
                              imageUrl: pokemon.img ?? '',
                              height: 0.4.sh,
                              fit: BoxFit.fitHeight,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Expanded(
                      flex: 5,
                      child: Padding(
                        padding: UIHelper.getDefaultPadding(),
                        child: PokemonInfo(pokemon: pokemon),
                      )),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Scaffold _buildPortraitBody(BuildContext context, String pokeballImageUrl) {
    return Scaffold(
      backgroundColor: UIHelper.getColorFromType(pokemon.type![0]),
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: UIHelper.getDefaultPadding(),
              child: IconButton(
                  iconSize: 30,
                  onPressed: () {
                    Navigator.of(context).pop();
                  },
                  icon:  Icon(Icons.arrow_back_ios)),
            ),
            PokemonType(pokemon: pokemon),
            SizedBox(
              height: 20.h,
            ),
            Expanded(
                child: Stack(children: [Positioned(child: Image.asset(pokeballImageUrl, height: 0.15.sh, fit: BoxFit.fitHeight), right: 0,top: 0, ),
                Positioned(
                  bottom: 0,
                  left: 0,
                  right: 0,
                  top: 0.12.sh,
                  child: PokemonInfo(pokemon: pokemon),
                ),
               Align( alignment: Alignment.topCenter, child: Hero( tag: pokemon.id!,child: CachedNetworkImage(imageUrl: pokemon.img ?? '',height: 0.25.sh, fit: BoxFit.fitHeight, ), ),)
              ],
            )),
          ],
        ),
      ),
    );
  }
} // we
