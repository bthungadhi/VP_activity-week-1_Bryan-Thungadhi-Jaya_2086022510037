import 'package:flutter/material.dart';
import 'package:warung_digital/core/widgets/price_tag.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(                          // the Material page skeleton
      appBar: AppBar(title: const Text('Warung Digital')),
      body: ListView(
        children: const [
          ListTile(title: Text('Nasi Goreng'), trailing: PriceTag(amount: 25000)),
          ListTile(title: Text('Mie Ayam'),    trailing: PriceTag(amount: 15000)),
          ListTile(title: Text('Bakso'),       trailing: PriceTag(amount: 12000)),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: const Icon(Icons.add),
      ),
    );
  }
}
