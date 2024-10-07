import 'package:flutter/material.dart';

class NavBar extends StatelessWidget {
  const NavBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: <Widget>[
          const UserAccountsDrawerHeader(
            accountName: Text(
              'AAAAAA',
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            accountEmail: Text('DFSDF'),
            currentAccountPicture: CircleAvatar(
              backgroundColor: Colors.white,
              child: Text("CBHCBV"),
            ),
            decoration: BoxDecoration(
              color: Color(0xFF121b21),
            ),
          ),
          ListTile(
            leading: const Icon(Icons.book),
            title: const Text('Mis favoritos'),
            onTap: () {
              Navigator.pushNamed(context, '/homePage');
            },
          ),
          ListTile(
            leading: const Icon(Icons.library_books),
            title: const Text('Historial'),
            onTap: () {
              Navigator.pushNamed(context, '/UserRecord');
            },
          ),
          const Divider(),
          ListTile(
            leading: const Icon(Icons.settings),
            title: const Text('Configuración'),
            onTap: () {
              //Navigator.pushNamed(context, '/settings');
            },
          ),
          ListTile(
            leading: const Icon(Icons.help),
            title: const Text('Ayuda'),
            onTap: () {
              //Navigator.pushNamed(context, '/help');
            },
          ),
          ListTile(
            leading: const Icon(Icons.logout),
            title: const Text('Cerrar Sesión'),
            onTap: () {
              Navigator.pushNamed(context, '/loginPage');
            },
          ),
        ],
      ),
    );
  }
}
