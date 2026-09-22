import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

import '../models/coffee.dart';

class CoffeeDetailScreen extends StatelessWidget {
  const CoffeeDetailScreen({super.key, required this.coffee});

  final Coffee coffee;

  @override
  Widget build(BuildContext context) {
    final dateFormat = DateFormat('d MMMM yyyy', 'th');
    return Scaffold(
      appBar: AppBar(title: const Text('รายละเอียดกาแฟ')),
      body: ListView(
        padding: const EdgeInsets.all(20),
        children: [
          Container(
            height: 210,
            decoration: BoxDecoration(color: const Color(0xffead7c0), borderRadius: BorderRadius.circular(20)),
            child: const Icon(Icons.coffee, size: 110, color: Color(0xff6f4e37)),
          ),
          const SizedBox(height: 20),
          Text(coffee.name, style: Theme.of(context).textTheme.headlineSmall?.copyWith(fontWeight: FontWeight.bold)),
          Text('คะแนน ${coffee.rating.toStringAsFixed(1)} / 5.0', style: TextStyle(color: Colors.grey.shade700)),
          const Divider(height: 32),
          _DetailRow(label: 'รหัสกาแฟ', value: coffee.id),
          _DetailRow(label: 'แหล่งที่มา', value: coffee.origin),
          _DetailRow(label: 'ระดับการคั่ว', value: coffee.roastLevel),
          _DetailRow(label: 'โน้ตรสชาติ', value: coffee.flavorNotes),
          _DetailRow(label: 'วิธีชง', value: coffee.brewMethod),
          _DetailRow(label: 'คะแนน', value: '${coffee.rating.toStringAsFixed(1)} / 5.0'),
          _DetailRow(label: 'วันที่บันทึก', value: dateFormat.format(coffee.favoriteDate)),
        ],
      ),
    );
  }
}

class _DetailRow extends StatelessWidget {
  const _DetailRow({required this.label, required this.value});

  final String label;
  final String value;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 16),
      child: Row(crossAxisAlignment: CrossAxisAlignment.start, children: [
        SizedBox(width: 120, child: Text(label, style: TextStyle(color: Colors.grey.shade600))),
        Expanded(child: Text(value, style: const TextStyle(fontWeight: FontWeight.w600))),
      ]),
    );
  }
}