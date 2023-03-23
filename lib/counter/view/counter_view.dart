import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../theme/cubit/theme_cubit.dart';
import '../cubit/counter_cubit.dart';

class CounterView extends StatelessWidget {
  const CounterView({super.key});

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;
    return Scaffold(
      appBar: AppBar(title: const Text('Counter'), centerTitle: true),
      body: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            BlocBuilder<CounterCubit, int>(
              builder: (context, state) {
                return Text('$state', style: textTheme.displayMedium);
              },
            ),
            const SizedBox(height: 8),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                FloatingActionButton(
                  key: const Key('counterView_decrement_floatingActionButton'),
                  child: const Icon(Icons.remove_rounded),
                  onPressed: () => context.read<CounterCubit>().decrement(),
                ),
                const SizedBox(width: 8),
                FloatingActionButton(
                  key: const Key('counterView_reset_floatingActionButton'),
                  child: const Icon(Icons.refresh_rounded),
                  onPressed: () => context.read<CounterCubit>().reset(),
                ),
                const SizedBox(width: 8),
                FloatingActionButton(
                  key: const Key('counterView_increment_floatingActionButton'),
                  child: const Icon(Icons.add_rounded),
                  onPressed: () => context.read<CounterCubit>().increment(),
                ),
              ],
            )
          ],
        ),
      ),
      //change theme mode in floating action button
      floatingActionButton: FloatingActionButton(
        key: const Key('counterView_theme_floatingActionButton'),
        child: const Icon(Icons.brightness_6_rounded),
        onPressed: () {
          final themeMode = context.read<ThemeCubit>().state.themeMode;
          if (themeMode != ThemeMode.dark) {
            context.read<ThemeCubit>().changeTheme(ThemeMode.light);
          } else {
            context.read<ThemeCubit>().changeTheme(ThemeMode.dark);
          }
        },
      ),
    );
  }
}
