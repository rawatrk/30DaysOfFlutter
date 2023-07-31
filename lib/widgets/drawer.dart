import 'package:flutter/material.dart';

class MyDrawer extends StatelessWidget {
  const MyDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    final imageUrl = 'https://w0.peakpx.com/wallpaper/228/4/HD-wallpaper-goku-ultra-instinct-anime-dbs-dragonballsuper-goku.jpg';
    
    return Drawer(
      child: Container(
        color: Colors.purple,
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
            DrawerHeader(
                padding: EdgeInsets.zero,
                child: UserAccountsDrawerHeader(
                  margin: EdgeInsets.zero,
                  accountName: Text('Ritesh'),
                  accountEmail: Text('abc@gmail.com'),
                  currentAccountPicture: CircleAvatar(
                    backgroundImage: NetworkImage(imageUrl),
                  ),
              )
            ),
            ListTile(
              leading: Icon(Icons.home, color: Colors.white),
              title: Text(
                'Home',
                textScaleFactor: 1.5,
                style: TextStyle(color: Colors.white)
              ),
            ),
            ListTile(
              leading: Icon(Icons.account_box, color: Colors.white),
              title: Text(
                  'Profile',
                  textScaleFactor: 1.5,
                  style: TextStyle(color: Colors.white)
              ),
            ),
            ListTile(
              leading: Icon(Icons.settings, color: Colors.white),
              title: Text(
                  'Settings',
                  textScaleFactor: 1.5,
                  style: TextStyle(color: Colors.white)
              ),
            )
          ],
        ),
      ),
    );
  }
}
