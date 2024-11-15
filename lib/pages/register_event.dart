import 'package:flutter/material.dart';
import 'package:kang_sampah/pages/register_successful.dart';

class RegisterEvent extends StatefulWidget {
  const RegisterEvent({super.key});

  @override
  State<RegisterEvent> createState() => _RegisterEventState();
}

class _RegisterEventState extends State<RegisterEvent> {

  final _formKey = GlobalKey<FormState>();

  String _namaEvent = '';
  String _namaPenanggungJawab = '';
  String _noTelp = '';
  String _email = '';
  String _alamatEvent = '';
  String _tanggalEvent = '';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Mitra Event'),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Form(
            key: _formKey,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text('Nama Event'),
                TextFormField(
                  decoration: const InputDecoration(
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(8)),
                    ),
                    fillColor: Color(0xffFAFAFA),
                    filled: true,
                  ),
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'Nama Event tidak boleh kosong';
                    }
                    return null;
                  },
                  onSaved: (value) {
                    _namaEvent = value!;
                  },
                ),
                SizedBox(height: 10.0,),
                Text('Nama Penanggung Jawab'),
                TextFormField(
                  decoration: const InputDecoration(
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(8)),
                    ),
                    fillColor: Color(0xffFAFAFA),
                    filled: true,
                  ),
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'Nama Penanggung Jawab tidak boleh kosong';
                    }
                    return null;
                  },
                  onSaved: (value) {
                    _namaPenanggungJawab = value!;
                  },
                ),
                SizedBox(height: 10.0,),
                Text('No. Telp'),
                TextFormField(
                  decoration: const InputDecoration(
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(8)),
                    ),
                    fillColor: Color(0xffFAFAFA),
                    filled: true,
                  ),
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'No. Telp tidak boleh kosong';
                    }
                    return null;
                  },
                  onSaved: (value) {
                    _noTelp = value!;
                  },
                ),
                SizedBox(height: 10.0,),
                Text('Email'),
                TextFormField(
                  decoration: const InputDecoration(
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(8)),
                    ),
                    fillColor: Color(0xffFAFAFA),
                    filled: true,
                  ),
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'Email tidak boleh kosong';
                    }
                    return null;
                  },
                  onSaved: (value) {
                    _email = value!;
                  },
                ),
                SizedBox(height: 10.0,),
                Text('Alamat Event'),
                TextFormField(
                  decoration: const InputDecoration(
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(8)),
                    ),
                    fillColor: Color(0xffFAFAFA),
                    filled: true,
                  ),
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'Alamat Event tidak boleh kosong';
                    }
                    return null;
                  },
                  onSaved: (value) {
                    _alamatEvent = value!;
                  },
                ),
                SizedBox(height: 10.0,),
                Text('Tanggal Event'),
                TextFormField(
                  decoration: const InputDecoration(
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(8)),
                  ),
                  fillColor: Color(0xffFAFAFA),
                  filled: true,
                  ),
                  readOnly: true,
                  onTap: () async {
                  DateTime? pickedDate = await showDatePicker(
                    context: context,
                    initialDate: DateTime.now(),
                    firstDate: DateTime(2024),
                    lastDate: DateTime(2050),
                  );
                  if (pickedDate != null) {
                    setState(() {
                    _tanggalEvent = "${pickedDate.day}/${pickedDate.month}/${pickedDate.year}";
                    });
                  }
                  },
                  controller: TextEditingController(text: _tanggalEvent),
                  validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Tanggal Event tidak boleh kosong';
                  }
                  return null;
                  },
                ),
                SizedBox(height: 10.0,),
                ElevatedButton(
                  style: ButtonStyle(
                    backgroundColor: WidgetStateProperty.all(Color(0xff769F99)),
                    padding: WidgetStateProperty.all(EdgeInsets.all(8)),
                    minimumSize: WidgetStateProperty.all(Size(double.infinity, 40)),
                    maximumSize: WidgetStateProperty.all(Size(double.infinity, 40)),
                  ),
                  onPressed: () {
                    if (_formKey.currentState!.validate()) {
                      _formKey.currentState!.save();
                      Navigator.pop(context);
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => const RegisterSuccessful(jenisMitra: 'Mitra Event')),
                      );
                    }
                  },
                  child: const Text('Kirim Formulir Request', style: TextStyle(color: Colors.white),),
                )
              ],
            )
          ),
        ),
      )
    );
  }
}