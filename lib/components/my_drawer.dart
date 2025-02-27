import 'package:flutter/material.dart';
import 'package:socialnetworkflutter/components/my_drawer_tile.dart';
import 'package:socialnetworkflutter/pages/settings_page.dart';

// drawer widget which is acessible from the left side of the screen
// it contains: home, profile, search, settings, logout

class MyDrawer extends StatelessWidget {
  const MyDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      backgroundColor: Theme.of(context).colorScheme.surface,
      child: SafeArea(
        child: Column(
          children: [
            //app logo
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 50.0),
              child: Icon(
                Icons.person,
                size: 72,
                color: Theme.of(context).colorScheme.primary,
              ),
            ),

            //dividerline
            Divider(
              indent: 25,
              endIndent: 25,
              color: Theme.of(context).colorScheme.primary,
            ),

            //home
            MyDrawerTile(
              title: "H O M E",
              icon: Icons.home,
              onTap: () {
                //menu drawer since we are already in the home page
                Navigator.pop(context);
              },
            ),

            //settings
            MyDrawerTile(
              title: "S E T T I N G S",
              icon: Icons.settings,
              onTap: () {
                //pop drawer menu
                Navigator.pop(context);

                //navigate to settings page
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => SettingsPage()),
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
