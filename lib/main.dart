import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:pokedex/pages/home_page.dart';
import 'package:pokedex/widgets/app_title.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: Size(1284, 2778),
      builder: (context, child) =>  MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Pokedex',
        theme: ThemeData.dark().copyWith(
          textTheme: GoogleFonts.latoTextTheme()
        ),
        
        home: const HomePage(),
      ),
    );
  }
}

  

