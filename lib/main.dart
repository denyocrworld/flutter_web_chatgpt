import 'package:google_fonts/google_fonts.dart';
import 'package:landing_page/state_util.dart';
import 'package:flutter/material.dart';

import 'module/home/view/home_view.dart';

/*
!Kelas Online /w DenyOcr
! Start Minggu ini!!!
? Buka: capekngoding.com
? Buka: tinyurl.com/gabung-dong

-----
! LIVE Malam Ini:
10:20 - Selesai
- Membuat Landing Page di Web dengan Flutter + CHAT GPT
-----
*/

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      navigatorKey: Get.navigatorKey,
      theme: ThemeData(
        primaryColor: Colors.blue[900],
        fontFamily: GoogleFonts.openSans().fontFamily,
        appBarTheme: AppBarTheme(
          backgroundColor: Colors.blue[900],
        ),
        textTheme: TextTheme(
          headlineLarge: GoogleFonts.montserrat(
            fontSize: 92,
            fontWeight: FontWeight.w300,
            letterSpacing: -1.5,
            color: Colors.black,
          ),
          headlineMedium: GoogleFonts.montserrat(
            fontSize: 57,
            fontWeight: FontWeight.w300,
            letterSpacing: -0.5,
            color: Colors.black,
          ),
          headlineSmall: GoogleFonts.montserrat(
            fontSize: 46,
            fontWeight: FontWeight.w400,
            color: Colors.black,
          ),
          displayLarge: GoogleFonts.openSans(
            fontSize: 16,
            fontWeight: FontWeight.w400,
            letterSpacing: 0.5,
            color: Colors.black,
          ),
          displayMedium: GoogleFonts.openSans(
            fontSize: 14,
            fontWeight: FontWeight.w400,
            letterSpacing: 0.25,
            color: Colors.black,
          ),
        ),
        colorScheme:
            ColorScheme.fromSwatch().copyWith(secondary: Colors.blueAccent),
      ),
      debugShowCheckedModeBanner: false,
      home: const HomeView(),
    );
  }
}
