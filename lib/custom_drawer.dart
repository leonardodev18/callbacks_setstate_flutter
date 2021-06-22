import 'package:flutter/material.dart';

class CustomDrawer extends StatelessWidget {
  final int page;
  final Function(int) onTap;

  const CustomDrawer({Key? key, required this.page, required this.onTap})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Column(
        children: [
          UserAccountsDrawerHeader(
            accountName: Text('Leonardo'),
            accountEmail: Text('leonardoh.deandrade@gmail.com'),
            currentAccountPicture: CircleAvatar(
              backgroundImage: NetworkImage(
                  'https://media-exp3.licdn.com/dms/image/C4D03AQEzVMWhUH7FNg/profile-displayphoto-shrink_200_200/0/1616675788503?e=1629936000&v=beta&t=s1sNXkwqrQEz2mJyOWbCrYV-ZR7ZrtMJMRREbksb-18'),
            ),
          ),
          ListTile(
            selected: page == 0,
            title: Text('Vermelho'),
            onTap: () {
              onTap(0);
            },
          ),
          ListTile(
            selected: page == 1,
            title: Text('Azul'),
            onTap: () {
              onTap(1);
            },
          ),
          ListTile(
            selected: page == 2,
            title: Text('Verde'),
            onTap: () {
              onTap(2);
            },
          ),
          ListTile(
            selected: page == 2,
            title: Text('Rosa'),
            onTap: () {
              onTap(3);
            },
          ),
        ],
      ),
    );
  }
}
