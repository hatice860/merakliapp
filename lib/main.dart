import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'package:flutter_merakli/firebase_options.dart';
import 'package:flutter_merakli/view/login/splash_view.dart';
import 'package:flutter_merakli/view/profile/help_view.dart';
import 'package:flutter_merakli/view/profile/know_yourself_view.dart';
import 'package:flutter_merakli/view/profile/notification_view.dart';
import 'package:flutter_merakli/view/profile/profile_settings_view.dart';

import 'package:flutter_merakli/view/profile/profile_view.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(options: DefaultFirebaseOptions.currentPlatform);
  runApp(const ProviderScope(child: MyApp()));
  SystemChrome.setEnabledSystemUIMode(SystemUiMode.manual,
      overlays: [SystemUiOverlay.bottom]);
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    const ColorScheme myColorScheme = ColorScheme.light(
      primary: Color(0xFF258086),
      secondary: Color(0xFFAABBCC),
    );

    final ThemeData myTheme = ThemeData.from(
      colorScheme: myColorScheme,
    );
    return MaterialApp(
        debugShowCheckedModeBanner: false, theme: myTheme, home: ProfileView());
  }
}
