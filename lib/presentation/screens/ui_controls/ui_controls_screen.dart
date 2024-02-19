import 'package:flutter/material.dart';

class UiControlsScreen extends StatelessWidget {
  static const String routeName = 'ui_controls_screen';

  const UiControlsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('UI Controls'),
      ),
      body: const _UiControlsView(),
    );
  }
}

enum Transportation { car, bike, boat, plane }

class _UiControlsView extends StatefulWidget {
  const _UiControlsView();

  @override
  State<_UiControlsView> createState() => _UiControlsViewState();
}

class _UiControlsViewState extends State<_UiControlsView> {
  bool isDeveloperMode = true;
  Transportation selectedTransportation = Transportation.car;
  bool wantsBreakfast = false;
  bool wantsLunch = false;
  bool wantsDinner = false;

  @override
  Widget build(BuildContext context) {
    return ListView(
      physics: const ClampingScrollPhysics(),
      children: [
        SwitchListTile(
          value: isDeveloperMode,
          title: const Text('Developer mode'),
          subtitle: const Text('Enable developer mode'),
          onChanged: (value) {
            setState(() {
              isDeveloperMode = !isDeveloperMode;
            });
          },
        ),
        ExpansionTile(
          title: const Text('Transportation'),
          subtitle: const Text('Select your transportation'),
          children: [
            RadioListTile(
              title: const Text('By Car'),
              subtitle: const Text('Travel by car'),
              value: Transportation.car,
              groupValue: selectedTransportation,
              onChanged: (value) => setState(() {
                selectedTransportation = Transportation.car;
              }),
            ),
            RadioListTile(
              title: const Text('By Bike'),
              subtitle: const Text('Travel by bike'),
              value: Transportation.bike,
              groupValue: selectedTransportation,
              onChanged: (value) => setState(() {
                selectedTransportation = Transportation.bike;
              }),
            ),
            RadioListTile(
              title: const Text('By Boat'),
              subtitle: const Text('Travel by boat'),
              value: Transportation.boat,
              groupValue: selectedTransportation,
              onChanged: (value) => setState(() {
                selectedTransportation = Transportation.boat;
              }),
            ),
            RadioListTile(
              title: const Text('By Plane'),
              subtitle: const Text('Travel by plane'),
              value: Transportation.plane,
              groupValue: selectedTransportation,
              onChanged: (value) => setState(() {
                selectedTransportation = Transportation.plane;
              }),
            ),
          ],
        ),
        CheckboxListTile(
          title: const Text('Breakfast?'),
          value: wantsBreakfast,
          onChanged: (value) {
            setState(() {
              wantsBreakfast = !wantsBreakfast;
            });
          },
        ),
        CheckboxListTile(
          title: const Text('Lunch?'),
          value: wantsLunch,
          onChanged: (value) {
            setState(() {
              wantsLunch = !wantsLunch;
            });
          },
        ),
        CheckboxListTile(
          title: const Text('Dinner?'),
          value: wantsDinner,
          onChanged: (value) {
            setState(() {
              wantsDinner = !wantsDinner;
            });
          },
        )
      ],
    );
  }
}
