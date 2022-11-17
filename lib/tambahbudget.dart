import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:counter_7/budget.dart';
import 'package:counter_7/MyDrawer.dart';

class MyTambahBudget extends StatefulWidget {
  const MyTambahBudget({super.key});

  @override
  State<MyTambahBudget> createState() => _MyTambahBudgetState();
}

class _MyTambahBudgetState extends State<MyTambahBudget> {
  final _formKey = GlobalKey<FormState>();
  String _judulData = "";
  var _nominalData;
  String jenisBudget = 'Pemasukan';
  List<String> listJenisBudget = ['Pemasukan', 'Pengeluaran'];

  @override
  Widget build(BuildContext context) {
    // var _controller;
    return Scaffold(
      appBar: AppBar(
        title: const Text('Tambah Budget'),
      ),
      drawer: const MyDrawer(),
      body: Form(
        key: _formKey,
        child: SingleChildScrollView(
          child: Container(
            padding: const EdgeInsets.all(20.0),
            // color: const Color.fromARGB(223, 22, 22, 213),
            child: Column(
              children: [
                Padding(
                  // Menggunakan padding sebesar 8 pixels
                  padding: const EdgeInsets.all(8.0),
                  child: TextFormField(
                    decoration: InputDecoration(
                      hintText: "Contoh: Iphone 12",
                      labelText: "Judul",
                      // Menambahkan icon agar lebih intuitif
                      icon: const Icon(Icons.title),
                      // Menambahkan circular border agar lebih rapi
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(5.0),
                      ),
                    ),
                    // Menambahkan behavior saat nama diketik
                    onChanged: (String? value) {
                      setState(() {
                        _judulData = value!;
                      });
                    },
                    // Menambahkan behavior saat data disimpan
                    onSaved: (String? value) {
                      setState(() {
                        _judulData = value!;
                      });
                    },
                    // Validator sebagai validasi form
                    validator: (String? value) {
                      if (value == null || value.isEmpty) {
                        return 'Nama lengkap tidak boleh kosong!';
                      }
                      return null;
                    },
                  ),
                ),
                Padding(
                  // Menggunakan padding sebesar 8 pixels
                  padding: const EdgeInsets.all(8.0),
                  child: TextFormField(
                    decoration: InputDecoration(
                      hintText: "Contoh: 12000000",
                      labelText: "Nominal",
                      // Menambahkan icon agar lebih intuitif
                      icon: const Icon(Icons.title),
                      // Menambahkan circular border agar lebih rapi
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(5.0),
                      ),
                    ),
                    keyboardType: TextInputType.number,
                    inputFormatters: <TextInputFormatter>[
                      FilteringTextInputFormatter.digitsOnly
                    ],
                    // Menambahkan behavior saat nama diketik
                    onChanged: (String? value) {
                      setState(() {
                        _nominalData = value!;
                      });
                    },
                    // Menambahkan behavior saat data disimpan
                    onSaved: (String? value) {
                      setState(() {
                        _nominalData = value!;
                      });
                    },
                    // Validator sebagai validasi form
                    validator: (String? value) {
                      if (value == null || value.isEmpty) {
                        return 'Nominal tidak boleh kosong!';
                      }
                      return null;
                    },
                  ),
                ),
                ListTile(
                    leading: const Icon(Icons.class_),
                    title: Padding(
                      padding: const EdgeInsets.all(5.0),
                      child: DropdownButton(
                        value: jenisBudget,
                        icon: const Icon(Icons.keyboard_arrow_down),
                        items: listJenisBudget.map((String items) {
                          return DropdownMenuItem(
                            value: items,
                            child: Text(items),
                          );
                        }).toList(),
                        onChanged: (String? newValue) {
                          setState(() {
                            jenisBudget = newValue!;
                          });
                        },
                      ),
                    )),
              ],
            ),
          ),
        ),
      ),
      floatingActionButton:
          Row(mainAxisAlignment: MainAxisAlignment.center, children: [
        Padding(
          padding: const EdgeInsets.only(left: 32.0),
          child: FloatingActionButton.extended(
            tooltip: 'Tambah',
            hoverElevation: 50,
            label: const Text('Tambah'),
            icon: const Icon(Icons.thumb_up),
            onPressed: () {
              if (_formKey.currentState!.validate()) {
                var temp = Budget(_judulData, _nominalData, jenisBudget);
                ListBudget.list.add(temp);
                showDialog(
                  context: context,
                  builder: (context) {
                    return Dialog(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                      elevation: 15,
                      child: Container(
                        child: ListView(
                          padding: const EdgeInsets.only(top: 20, bottom: 20),
                          shrinkWrap: true,
                          children: <Widget>[
                            // const Center(child: Text('Informasi Data')),

                            // TODO: Munculkan informasi yang didapat dari form
                            const Center(
                              child: Text(
                                "Data telah tersimpan",
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 15,
                                ),
                              ),
                            ),
                            const SizedBox(height: 20),
                            TextButton(
                              onPressed: () {
                                Navigator.pop(context);
                              },
                              child: const Text('Kembali'),
                            ),
                          ],
                        ),
                      ),
                    );
                  },
                );
              }
            },
          ),
        ),
      ]),
    );
  }
}
