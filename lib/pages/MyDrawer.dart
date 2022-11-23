import 'package:counter_7/main.dart';
import 'package:counter_7/model/mywatchlist.dart';
import 'package:flutter/material.dart';
import 'package:counter_7/pages/tambahbudget.dart';
import 'package:counter_7/pages/databudget.dart';
import 'package:counter_7/pages/MyWatchlistPage.dart';

// Refactor
class MyDrawer extends StatelessWidget {
  const MyDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Column(
        children: [
          // Menambahkan clickable menu
          ListTile(
            title: const Text('counter_7'),
            onTap: () {
              // Route menu ke halaman utama
              Navigator.pushReplacement(
                context,
                MaterialPageRoute(builder: (context) => const MyHomePage()),
              );
            },
          ),
          ListTile(
            title: const Text('Tambah Budget'),
            onTap: () {
              // Route menu ke halaman form
              Navigator.pushReplacement(
                context,
                MaterialPageRoute(builder: (context) => const MyTambahBudget()),
              );
            },
          ),
          ListTile(
            title: const Text('Data Budget'),
            onTap: () {
              // Route menu ke halaman form
              Navigator.pushReplacement(
                context,
                MaterialPageRoute(
                    builder: (context) => const MyDataBudgetPage()),
              );
            },
          ),
          ListTile(
            title: const Text('My Watchlist'),
            onTap: () {
              // Route menu ke halaman to do
              Navigator.pushReplacement(
                context,
                MaterialPageRoute(
                    builder: (context) => const MyWatchlistPage()),
              );
            },
          ),
        ],
      ),
    );
  }
}
