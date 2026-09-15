import 'package:flutter/material.dart';

class FormWidget extends StatefulWidget {
  const FormWidget({super.key});

  @override
  State<FormWidget> createState() => _FormWidgetState();
}

class _FormWidgetState extends State<FormWidget> {
  final _formKey = GlobalKey<FormState>();
  final TextEditingController _namaController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Interactive & Form')),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Form(
          key: _formKey,
          child: Column(
            children: [
              TextFormField(
                controller: _namaController,
                decoration: const InputDecoration(labelText: 'Nama Lengkap'),
                validator: (value) {
                  return value!.isEmpty ? 'Nama tidak boleh kosong' : null;
                },
              ),
              const SizedBox(height: 20),

              ElevatedButton(
                onPressed: () {
                  if (_formKey.currentState!.validate()) {
                    showDialog(
                      context: context,
                      builder: (context) => AlertDialog(
                        title: const Text('Sukses'),
                        content: Text('Nama Anda: ${_namaController.text}'),
                        actions: [
                          TextButton(
                            onPressed: () => Navigator.pop(context),
                            child: const Text('OK'),
                          ),
                        ],
                      ),
                    );
                  }
                },
                child: const Text('Submit Data'),
              ),
              const SizedBox(height: 20),

              GestureDetector(
                onTap: () {
                  showModalBottomSheet(
                    context: context, 
                    builder: (context) => Padding(
                      padding: EdgeInsets.all(20),
                      child: Text('Ini Bottom Sheet dari GestureDetecctor!')
                    ),
                  );
                },
                child: const Text(
                  'Klik untuk Info Bottom Sheet',
                  style: TextStyle(
                    color: Colors.blue,
                    decoration: TextDecoration.underline,
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