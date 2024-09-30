
import 'package:flutter/material.dart';
import 'package:flutter_proj/models/phone.dart';
import 'package:flutter_proj/screens/phone_details_screen.dart';

class PhoneListScreen extends StatelessWidget {
  final List<Phone> phones = [
    Phone(brand: "Apple", model: "iPhone 12", price: 999.99),
    Phone(brand: "Samsung", model: "Galaxy S21", price: 799.99),
    // Example data
  ];

  PhoneListScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Phone List'),
      ),
      body: ListView.builder(
        itemCount: phones.length,
        itemBuilder: (context, index) {
          final phone = phones[index];
          return ListTile(
            title: Text('${phone.brand} - ${phone.model}'),
            subtitle: Text('\$${phone.price.toStringAsFixed(2)}'),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => PhoneDetailsScreen(phone: phone),
                ),
              );
            },
          );
        },
      ),
    );
  }
}