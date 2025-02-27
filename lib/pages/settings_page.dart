import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:socialnetworkflutter/themes/theme_provider.dart';

// settings page
// blocked users, account settings, about us

class SettingsPage extends StatelessWidget {
  const SettingsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.surface,

      //app bar
      appBar: AppBar(
        title: Text("S E T T I N G S"),
        foregroundColor: Theme.of(context).colorScheme.onSurface,
      ),

      body: Column(
        children: [
          //lightmode
          ListTile(
            title: Text("Light Mode"),
            trailing: CupertinoSwitch(
              onChanged:
                  (value) =>
                      Provider.of<ThemeProvider>(
                        context,
                        listen: false,
                      ).toggleTheme(),
              value: Provider.of<ThemeProvider>(context).isLightMode,
            ),
          ),
        ],
      ),
    );
  }
}
