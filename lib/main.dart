import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:responsive_ui/ProviderScreens/data_add_screen.dart';
import 'package:responsive_ui/demo_screen.dart';
import 'package:responsive_ui/google_map_sample.dart';
import 'package:responsive_ui/provider/data_add_provider.dart';
import 'package:responsive_ui/provider/increment_provider.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(
          create: (context) => IncrementProvider(),
        ),
        ChangeNotifierProvider(
          create: (context) => DataAddProvider(),
        ),
      ],
      child: MaterialApp(
        title: 'Flutter Demo',
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
          useMaterial3: true,
          iconTheme: const IconThemeData(color: Colors.white),
        ),
        home: const MapSample(),
      ),
    );
  }
}
