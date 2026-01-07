import 'package:flutter/material.dart';
import 'package:food_delivery_app/components/my_drawer_tile.dart';
import 'package:food_delivery_app/pages/settings_page.dart';
import 'package:food_delivery_app/services/auth/auth_service.dart';

class MyDrawer extends StatelessWidget {
  const MyDrawer({super.key});

  void logout() {
    final authService = AuthService();
    authService.signOut();
  }

  @override
  Widget build(BuildContext context) {
    return Drawer(
      backgroundColor: Theme.of(context).colorScheme.surface,
      child: Padding(
        padding: const EdgeInsets.fromLTRB(25, 100.0, 25, 25),
        child: Column(
          children: [
            // app logo
            Icon(
              Icons.lock_open_rounded,
              size: 40,
              color: Theme.of(context).colorScheme.inversePrimary,
            ),
            SizedBox(height: 25),
            Divider(color: Theme.of(context).colorScheme.secondary),

            // home list tile
            MyDrawerTile(
              text: 'Home',
              icon: Icons.home,
              onTap: () => Navigator.pop(context),
            ),

            // settings list tile
            MyDrawerTile(
              text: 'Settings',
              icon: Icons.settings,
              onTap: () {
                Navigator.pop(context);
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const SettingsPage()),
                );
              },
            ),

            const Spacer(),
            // logout list tile
            MyDrawerTile(
              text: 'Logout',
              icon: Icons.logout,
              onTap: () {
                logout();
                Navigator.pop(context);
              },
            ),
          ],
        ),
      ),
    );
  }
}
