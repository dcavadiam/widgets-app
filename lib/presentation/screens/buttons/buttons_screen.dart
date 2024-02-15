import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class ButtonsScreen extends StatelessWidget {
  static const String routeName = 'buttons_screen';

  const ButtonsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Buttons'),
        ),
        body: const _ButtonsView(),
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            context.pop();
          },
          child: const Icon(Icons.arrow_back_ios_new_rounded),
        ));
  }
}

class _ButtonsView extends StatelessWidget {
  const _ButtonsView();

  @override
  Widget build(BuildContext context) {
    final color = Theme.of(context).colorScheme;

    return SizedBox(
      width: double.infinity,
      child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 20),
          child: Wrap(
            spacing: 10,
            alignment: WrapAlignment.center,
            children: [
              ElevatedButton(
                onPressed: () {},
                child: const Text('Elevated Button'),
              ),
              const ElevatedButton(
                onPressed: null,
                child: Text('Elevated Button'),
              ),
              ElevatedButton.icon(
                  onPressed: () {},
                  icon: const Icon(Icons.access_alarm_rounded),
                  label: const Text('Elevated Icon')),
              FilledButton(
                  onPressed: () {}, child: const Text('Filled Button')),
              FilledButton.icon(
                  onPressed: () {},
                  icon: const Icon(Icons.palette_outlined),
                  label: const Text('Filled Icon')),
              OutlinedButton(
                  onPressed: () {}, child: const Text('Outlined Button')),
              OutlinedButton.icon(
                  onPressed: () {},
                  icon: const Icon(Icons.face_retouching_natural_outlined),
                  label: const Text('Outlined Icon')),
              TextButton(onPressed: () {}, child: const Text('Text Button')),
              TextButton.icon(
                  onPressed: () {},
                  icon: const Icon(Icons.accessibility_new_rounded),
                  label: const Text('Text Icon')),

              //TODO: Add custom button

              IconButton(
                  onPressed: () {}, icon: const Icon(Icons.dashboard_outlined)),
              IconButton(
                  onPressed: () {},
                  icon: const Icon(Icons.dashboard_outlined),
                  style: ButtonStyle(
                    backgroundColor: MaterialStateProperty.all(color.primary),
                    iconColor: MaterialStateProperty.all(Colors.white),
                  )),
            ],
          )),
    );
  }
}
