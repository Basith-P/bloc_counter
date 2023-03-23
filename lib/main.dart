import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'app.dart';
import 'counter_observer.dart';
import 'theme/cubit/theme_cubit.dart';

void main() {
  Bloc.observer = const CounterObserver();
  runApp(BlocProvider(
    create: (context) => ThemeCubit(),
    child: const CounterApp(),
  ));
}
