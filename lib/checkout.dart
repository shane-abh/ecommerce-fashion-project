import 'package:fashion_ecommerce_project/products_page.dart';
import 'package:flutter/material.dart';

class CheckoutPage extends StatefulWidget {
  const CheckoutPage({super.key});

  @override
  CheckoutPageState createState() => CheckoutPageState();
}

class CheckoutPageState extends State<CheckoutPage> {
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  final TextEditingController _firstNameController = TextEditingController();
  final TextEditingController _lastNameController = TextEditingController();
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _deliveryAddressController =
      TextEditingController();
  final TextEditingController _cityController = TextEditingController();
  final TextEditingController _postalCodeController = TextEditingController();
  final TextEditingController _cardNameController = TextEditingController();
  final TextEditingController _cardNumberController = TextEditingController();
  final TextEditingController _expiryController = TextEditingController();
  final TextEditingController _cvcController = TextEditingController();

  String? _validateField(String? value, String fieldName) {
    if (value == null || value.isEmpty) {
      return 'Please enter $fieldName';
    }
    return null;
  }

  String? _validateEmail(String? value) {
    if (value == null || value.isEmpty) {
      return 'Please enter an email';
    } else if (!RegExp(r'^[\w-\.]+@([\w-]+\.)+[\w-]{2,4}$').hasMatch(value)) {
      return 'Please enter a valid email';
    }
    return null;
  }

  String? _validateCardNumber(String? value) {
    if (value == null || value.isEmpty) {
      return 'Please enter a card number';
    } else if (value.length != 16) {
      return 'Card number must be 16 digits';
    }
    return null;
  }

  String? _validateExpiry(String? value) {
    if (value == null || value.isEmpty) {
      return 'Please enter expiry date';
    } else if (value.length != 5) {
      return 'Enter in MM/YY format';
    } else {
      final parts = value.split('/');
      if (parts.length != 2) {
        return 'Enter in MM/YY format';
      }
      final month = int.tryParse(parts[0]);
      final year = int.tryParse(parts[1]);
      if (month == null ||
          year == null ||
          month < 1 ||
          month > 12 ||
          year < 0) {
        return 'Enter valid expiry date (MM/YY)';
      }
    }
    return null;
  }

  String? _validateCVC(String? value) {
    if (value == null || value.isEmpty) {
      return 'Please enter CVC';
    } else if (value.length != 3) {
      return 'CVC must be 3 digits';
    }
    return null;
  }

  void _placeOrder() {
    if (_formKey.currentState!.validate()) {
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(
          content: Text(
            'Order Placed Successfully',
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
          duration: Duration(seconds: 5),
          backgroundColor: Color(0xFFFA6E20),
        ),
      );
      Navigator.pop(context);
      Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => ProductsPage()),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Checkout'),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(20.0),
        child: Form(
          key: _formKey,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text(
                'Shipping Details',
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
              const SizedBox(height: 10),
              Row(
                children: [
                  Expanded(
                    child: TextFormField(
                      controller: _firstNameController,
                      decoration:
                          const InputDecoration(labelText: 'First Name'),
                      validator: (value) => _validateField(value, 'First Name'),
                    ),
                  ),
                  const SizedBox(width: 10),
                  Expanded(
                    child: TextFormField(
                      controller: _lastNameController,
                      decoration: const InputDecoration(labelText: 'Last Name'),
                      validator: (value) => _validateField(value, 'Last Name'),
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 10),
              TextFormField(
                controller: _emailController,
                decoration: const InputDecoration(labelText: 'Email'),
                validator: _validateEmail,
              ),
              TextFormField(
                controller: _deliveryAddressController,
                decoration:
                    const InputDecoration(labelText: 'Delivery Address'),
                validator: (value) => _validateField(value, 'Delivery Address'),
              ),
              Row(
                children: [
                  Expanded(
                    child: TextFormField(
                      controller: _cityController,
                      decoration: const InputDecoration(labelText: 'City'),
                      validator: (value) => _validateField(value, 'City'),
                    ),
                  ),
                  const SizedBox(width: 10),
                  Expanded(
                    child: TextFormField(
                      controller: _postalCodeController,
                      decoration:
                          const InputDecoration(labelText: 'Postal Code'),
                      validator: (value) =>
                          _validateField(value, 'Postal Code'),
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 20),
              const Text(
                'Payment Method',
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
              const SizedBox(height: 10),
              TextFormField(
                controller: _cardNameController,
                decoration: const InputDecoration(labelText: 'Card Name'),
                validator: (value) => _validateField(value, 'Card Name'),
              ),
              TextFormField(
                controller: _cardNumberController,
                decoration: const InputDecoration(labelText: 'Card Number'),
                validator: _validateCardNumber,
                keyboardType: TextInputType.number,
              ),
              Row(
                children: [
                  Expanded(
                    child: TextFormField(
                      controller: _expiryController,
                      decoration:
                          const InputDecoration(labelText: 'Expiry (MM/YY)'),
                      validator: _validateExpiry,
                      keyboardType: TextInputType.number,
                    ),
                  ),
                  const SizedBox(width: 10),
                  Expanded(
                    child: TextFormField(
                      controller: _cvcController,
                      decoration: const InputDecoration(labelText: 'CVC'),
                      validator: _validateCVC,
                      keyboardType: TextInputType.number,
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 40),
              SizedBox(
                width: double.infinity,
                child: ElevatedButton(
                  onPressed: _placeOrder,
                  style: ButtonStyle(
                    backgroundColor: MaterialStateProperty.all<Color>(
                        const Color(0xFFFA6E20)),
                  ),
                  child: const Text(
                    'Place Order',
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 16,
                        fontWeight: FontWeight.bold),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
