// ignore_for_file: prefer_const_declarations

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Mydrawer extends StatelessWidget {
  const Mydrawer({super.key});

  @override
  Widget build(BuildContext context) {
    final imageUrl =
        "https://scontent.fixj2-1.fna.fbcdn.net/v/t1.6435-9/108142809_128845582225115_2782647942161768078_n.jpg?_nc_cat=109&ccb=1-7&_nc_sid=5f2048&_nc_ohc=Dvt4kuaTYrYQ7kNvgE2qGRY&_nc_ht=scontent.fixj2-1.fna&oh=00_AYBXmAhaV2DAvD9b3G0OuSOic92PdFtmo6FEFa02208kmw&oe=6677952C";
    return Drawer(
      child: Container(
        color: Color.fromARGB(255, 115, 233, 119),
        child: ListView(
          children: [
            DrawerHeader(
                padding: EdgeInsets.zero,
                child: UserAccountsDrawerHeader(
                  accountName: Text("Raman Kumar"),
                  accountEmail: Text("ramankumar25@gmail.com"),
                  currentAccountPicture: CircleAvatar(
                    backgroundImage: NetworkImage(imageUrl),
                  )
                ),
                ),

                ListTile(leading:
                 Icon(CupertinoIcons.profile_circled,
                 color: Colors.white,
                ),
                title: Text("Profile",
                textScaleFactor: 1.2,
                style: TextStyle(color: Colors.white,
                // fontSize:18,
                fontWeight: FontWeight.bold),
                ),
                ),
                ListTile(leading:
                 Icon(CupertinoIcons.home,
                 color: Colors.white,
                ),
                title: Text("Home",
                textScaleFactor: 1.2,
                style: TextStyle(color: Colors.white,
                // fontSize:18,
                fontWeight: FontWeight.bold),
                ),
                ),
              ListTile(leading:
                 Icon(CupertinoIcons.settings,
                 color: Colors.white,
                ),
                title: Text("Settings",
                textScaleFactor: 1.2,
                style: TextStyle(color: Colors.white,
                // fontSize:18,
                fontWeight: FontWeight.bold),
                ),
                ),

          ],
        ),
      ),
    );
  }
}
