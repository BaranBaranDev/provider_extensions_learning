import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:provider_extensions_learning/state/is_visible.dart';
import 'package:provider_extensions_learning/view/HomePage.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(
          create: (context) => IsVisible(), // provideri kullandığım classı da haberdar ettim
        )
      ],
      child: MaterialApp(theme: ThemeData(), home: const HomePageView()),
    );
  }
}


//