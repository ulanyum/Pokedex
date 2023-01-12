import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:pokedex/constant/constans.dart';
import 'package:pokedex/constant/ui_helper.dart';

class AppTitle extends StatefulWidget {
  const AppTitle({super.key});

  @override
  State<AppTitle> createState() => _AppTitleState();
}

class _AppTitleState extends State<AppTitle> {
  

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: UIHelper.getAppTittleWidgetHeight(),
      child: Stack(
        children: [
          Align(
            alignment: Alignment.centerLeft,
            child: Padding(
              padding: UIHelper.getDefaultPadding(),
              child: Text(Constants.title,style: Constants.getTitleTextStyle(),),
            )),
          Align(
            alignment: Alignment.centerRight,
            child: Image.asset(
              Constants.pokeballImageUrl, width: UIHelper.getAppBarImageWidth(), fit: BoxFit.fitWidth,
            ),
          )
        ],
      ),
    );
  }
}
