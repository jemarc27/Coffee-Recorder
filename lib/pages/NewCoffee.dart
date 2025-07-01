import 'package:flutter/material.dart';

class AddCoffee extends StatefulWidget {
  const AddCoffee({super.key});

  @override
  State<AddCoffee> createState() => _AddCoffeeState();
}

class _AddCoffeeState extends State<AddCoffee> {
  final _formKey = GlobalKey<FormState>();
  String _coffeeName = '';
  int _cups = 0;
  bool _hasSugar = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xFF7C9082),
      ),
      body: Container(
        margin: EdgeInsets.all(20),
        child: Form(
          key: _formKey,
          child: Column(
            children: [
              Text('ADD COFFEE', style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
              SizedBox(height: 10),

              /// Name and Cups side-by-side
              Row(
                children: [
                  /// Coffee Name Field
                  Container(
                    width: 150,
                    child: TextFormField(
                      decoration: InputDecoration(
                        labelText: 'Name',
                        border: OutlineInputBorder(),
                        focusedBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: Colors.teal),
                          borderRadius: BorderRadius.circular(14),
                        ),
                      ),
                      onChanged: (value) => _coffeeName = value,
                      validator: (value) {
                        if (value == null || value.isEmpty) {
                          return 'Enter coffee name';
                        }
                        return null;
                      },
                    ),
                  ),
                  SizedBox(width: 20),

                  /// Number of Cups Field
                  Container(
                    width: 150,
                    child: TextFormField(
                      keyboardType: TextInputType.number,
                      decoration: InputDecoration(
                        labelText: 'Cups',
                        border: OutlineInputBorder(),
                        focusedBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: Colors.teal),
                          borderRadius: BorderRadius.circular(14),
                        ),
                      ),
                      onChanged: (value) {
                        _cups = int.tryParse(value) ?? 0;
                      },
                      validator: (value) {
                        if (value == null || value.isEmpty) {
                          return 'Enter cups';
                        }
                        if (int.tryParse(value) == null) {
                          return 'Invalid number';
                        }
                        return null;
                      },
                    ),
                  ),
                ],
              ),

              SizedBox(height: 10),

              /// Sugar Checkbox
              Row(
                children: [
                  Checkbox(
                    value: _hasSugar,
                    onChanged: (bool? value) {
                      setState(() {
                        _hasSugar = value ?? false;
                      });
                    },
                  ),
                  Text('Has Sugar'),
                ],
              ),

              SizedBox(height: 13),

              /// Save Button
              FilledButton(
                onPressed: () {
                  if (_formKey.currentState!.validate()) {
                    ScaffoldMessenger.of(context).showSnackBar(
                      SnackBar(
                        content: Text('Saved: $_coffeeName, $_cups cups, Sugar: $_hasSugar'),
                      ),
                    );
                    print('The form is validated');
                  }
                },
                style: FilledButton.styleFrom(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(6),
                  ),
                  minimumSize: Size(double.infinity, 50),
                ),
                child: Text('Save'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
