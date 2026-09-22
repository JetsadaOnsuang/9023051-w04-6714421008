import 'package:flutter/material.dart';

import '../data/coffee_data.dart';
import '../models/coffee.dart';
import 'coffee_detail_screen.dart';

class CoffeeListScreen extends StatelessWidget {
  const CoffeeListScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Coffee Collection', style: TextStyle(fontWeight: FontWeight.bold)),
        actions: [IconButton(onPressed: () {}, icon: const Icon(Icons.search), tooltip: 'ค้นหา')],
      ),
      body: ListView.builder(
        padding: const EdgeInsets.fromLTRB(16, 12, 16, 24),
        itemCount: coffeeCollection.length,
        itemBuilder: (context, index) => _CoffeeCard(coffee: coffeeCollection[index]),
      ),
    );
  }
}

class _CoffeeCard extends StatelessWidget {
  const _CoffeeCard({required this.coffee});

  final Coffee coffee;

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: const EdgeInsets.only(bottom: 12),
      child: ListTile(
        contentPadding: const EdgeInsets.all(12),
        leading: CircleAvatar(
          radius: 32,
          backgroundColor: const Color(0xffead7c0),
          child: const Icon(Icons.coffee, size: 32, color: Color(0xff6f4e37)),
        ),
        title: Text(coffee.name, style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 17)),
        subtitle: Padding(
          padding: const EdgeInsets.only(top: 6),
          child: Text('${coffee.origin} • ${coffee.roastLevel} roast\n⭐ ${coffee.rating.toStringAsFixed(1)}'),
        ),
        isThreeLine: true,
        trailing: const Icon(Icons.chevron_right),
        onTap: () => Navigator.push(context, MaterialPageRoute(builder: (_) => CoffeeDetailScreen(coffee: coffee))),
      ),
    );
  }
}