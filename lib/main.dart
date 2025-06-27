import 'package:flutter/material.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'app_config.dart';

Future<void> main() async {
  const flavor = String.fromEnvironment('FLAVOR', defaultValue: 'prod');

  final envFile = AppConfig.envFileForFlavor(flavor);
  await dotenv.load(fileName: envFile);

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {

    return MaterialApp(
      title: AppConfig.name,
      home: Scaffold(
        appBar: AppBar(title: Text('Ambiente: ${AppConfig.flavor}')),
        body: Center(child: Text('API: ${AppConfig.apiUrl}')),
      ),
    );
  }
}