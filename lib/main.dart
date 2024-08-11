import 'package:flutter/material.dart';
import 'package:inastagram/pages/login/login_page.dart';
import 'package:inastagram/theme/theme.dart';

import 'pages/main_page/main_page.dart';
import 'spotify_profile.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,

      theme: myTheme(),
      home:  SpotifyProfile(),
    );
  }
}
