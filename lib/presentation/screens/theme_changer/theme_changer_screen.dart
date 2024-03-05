import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:widgets_app/presentation/providers/theme_provider.dart';

class ThemeChangerScreen extends ConsumerWidget {
  static const String routeName = 'theme_changer_screen';

  const ThemeChangerScreen({super.key});

  @override
  Widget build(BuildContext context, ref) {
    final bool isDark = ref.watch(themeProvider);

    return Scaffold(
      appBar: AppBar(
        title: const Text('Cambiar tema'),
        actions: [
          IconButton(
              onPressed: () {
                ref.read(themeProvider.notifier).update((state) => !state);
              },
              icon: Icon(!isDark
                  ? Icons.light_mode_outlined
                  : Icons.dark_mode_outlined)),
        ],
      ),
      body: const _ThemeChangerView(),
    );
  }
}

class _ThemeChangerView extends ConsumerWidget {
  const _ThemeChangerView();

  @override
  Widget build(BuildContext context, ref) {
    final List<Color> colorList = ref.watch(colorListProvider);
    final int selectedColor = ref.watch(selectedColorProvider);

    return ListView.builder(
      itemCount: colorList.length,
      itemBuilder: (context, index) {
        final color = colorList[index];
        return RadioListTile(
          title: Text(
            'Color $index',
            style: TextStyle(color: color),
          ),
          subtitle: Text(
            '${color.value}',
          ),
          activeColor: color,
          value: index,
          groupValue: selectedColor,
          onChanged: (value) {
            ref.read(selectedColorProvider.notifier).state = index;

            ///TODO: Notifier to change the theme
          },
        );
      },
    );
  }
}

class ConsumeWidget {}
