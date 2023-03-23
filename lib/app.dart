import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'counter/view/counter_page.dart';
import 'theme/cubit/theme_cubit.dart';

class CounterApp extends StatelessWidget {
  const CounterApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Counter App',
      theme: ThemeData.light(useMaterial3: true),
      darkTheme: ThemeData.dark(useMaterial3: true),
      themeMode: context.watch<ThemeCubit>().state.themeMode,
      debugShowCheckedModeBanner: false,
      home: const CounterPage(),
    );
  }
}
