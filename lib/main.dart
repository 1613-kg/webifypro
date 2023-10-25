import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:webifypro/screens/home_page.dart';
import 'package:webifypro/screens/landing_page.dart';
import 'package:webifypro/services/providers/edit_panel_provider.dart';
import 'package:webifypro/services/providers/image_provider.dart';

import 'package:webifypro/services/providers/text_provider.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (_) => TextProvider()),
        ChangeNotifierProvider(create: (_) => EditPanelProvider()),
        ChangeNotifierProvider(create: (_) => ProductImageProvider()),
      ],
      child: MaterialApp(
        title: 'Flutter Demo',
        theme: ThemeData(
          colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
          useMaterial3: true,
        ),
        debugShowCheckedModeBanner: false,
        home: LandingPage(),
      ),
    );
  }
}
