import 'package:flutter/material.dart';
import 'package:flutter_proj/models/phone.dart';
import 'package:flutter_proj/models/phone_data.dart';

class AddPhoneScreen extends StatefulWidget {
  const AddPhoneScreen({super.key});

  @override
  _AddPhoneScreenState createState() => _AddPhoneScreenState();
}

class _AddPhoneScreenState extends State<AddPhoneScreen> {
  final TextEditingController _brandController = TextEditingController();
  final TextEditingController _modelController = TextEditingController();
  final TextEditingController _priceController = TextEditingController();

  void _addPhone() {
    final String brand = _brandController.text;
    final String model = _modelController.text;
    final double price = double.tryParse(_priceController.text) ?? 0;

    if (brand.isNotEmpty && model.isNotEmpty && price > 0) {
      // Add the new phone to the global list
      addPhoneToInventory(Phone(brand: brand, model: model, price: price));

      // Clear the input fields
      _brandController.clear();
      _modelController.clear();
      _priceController.clear();

      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(content: Text('Phone Added Successfully!')),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Add a New Phone'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            TextField(
              controller: _brandController,
              decoration: const InputDecoration(labelText: 'Brand'),
            ),
            TextField(
              controller: _modelController,
              decoration: const InputDecoration(labelText: 'Model'),
            ),
            TextField(
              controller: _priceController,
              decoration: const InputDecoration(labelText: 'Price'),
              keyboardType: TextInputType.number,
            ),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: _addPhone,
              child: const Text('Add Phone'),
            ),
          ],
        ),
      ),
    );
  }
}