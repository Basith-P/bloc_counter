import 'package:flutter/material.dart';

import 'counter/view/counter_page.dart';

class CounterApp extends MaterialApp {
  const CounterApp({super.key}) : super(home: const CounterPage());

  @override
  bool get debugShowCheckedModeBanner => false;

  @override
  // get theme mode from theme cubit
  ThemeMode get themeMode => ThemeMode.system;

  @override
  ThemeData? get theme => ThemeData.light(useMaterial3: true);

  @override
  ThemeData? get darkTheme => ThemeData.dark(useMaterial3: true);
}
