import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:reportes/provider/providers.dart';

import 'screens/application_screen.dart';

void main() {
  runApp(MultiProvider(
    providers: [
      ChangeNotifierProvider(create: (_) => ReportProvider()),
      ChangeNotifierProvider(create: (_) => PaginationProvider()),
    ],
    child: const App(),
  ));
}

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primarySwatch: Colors.yellow,
      ),
      debugShowCheckedModeBanner: false,
      title: 'Reportes',
      home: const ApplicationScreen(),
    );
  }
}
