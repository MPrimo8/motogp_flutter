import 'package:flutter/material.dart';

class MotoGPDrawer extends StatelessWidget{
  const MotoGPDrawer({super.key});

  @override
  Widget build(BuildContext context){
    return Drawer(
      width: 200,
      backgroundColor: Colors.black45,
      child: ListView(
        padding: EdgeInsets.zero,
        children: const [
          DrawerHeader(
              child: Image(image: AssetImage('assets/images/logoGP.png'))),
          ListTile(
            title: Text('Profile'),
            textColor: Colors.white,
          ),
          ListTile(
            title: Text('Calendar'),
            textColor: Colors.white,
          ),
          ListTile(
            title: Text('Settings'),
            textColor: Colors.white,
          )
        ],
      ),
    );
  }
}