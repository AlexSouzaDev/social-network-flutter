import 'package:flutter/material.dart';

/// A custom tile for each item in the settings page.

class MySettingsTile extends StatelessWidget {
  final String title;
  final Widget action;

  const MySettingsTile({super.key, required this.title, required this.action});

  // build of UI
  @override
  Widget build(BuildContext context) {
    // list tile
    return Container(
      decoration: BoxDecoration(
        //color
        color: Theme.of(context).colorScheme.secondary,

        //border radius
        borderRadius: BorderRadius.circular(12),
      ),

      //padding outside
      margin: const EdgeInsets.only(left: 25, right: 25, top: 10),

      //padding inside
      padding: const EdgeInsets.all(25),

      //row
      child: Row(
        children: [
          //title text
          Text(title, style: TextStyle(fontWeight: FontWeight.bold)),

          //action
          action,
        ],
      ),
    );
  }
}
