import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/add_product_controller.dart';

class AddProductView extends GetView<AddProductController> {
  const AddProductView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Add Product'),
        centerTitle: true,
        backgroundColor: Colors.red[800],
      ),
      body: Padding(
        padding: EdgeInsets.all(8),
        child: Column(
          children: [
            TextField(
              controller: controller.cNpm,
              autocorrect: false,
              textInputAction: TextInputAction.next,
              decoration: InputDecoration(labelText: "NPM Mahasiswa"),
            ),
            SizedBox(
              height: 10,
            ),
            TextField(
              controller: controller.cNama,
              textInputAction: TextInputAction.done,
              keyboardType: TextInputType.number,
              decoration: InputDecoration(labelText: "Nama Mahasiswa"),
            ),
            SizedBox(
              height: 10,
            ),
            TextField(
              controller: controller.cAlamat,
              textInputAction: TextInputAction.done,
              keyboardType: TextInputType.number,
              decoration: InputDecoration(labelText: "Alamat"),
            ),
            SizedBox(
              height: 10,
            ),
            TextField(
              controller: controller.cProgramStudi,
              textInputAction: TextInputAction.done,
              keyboardType: TextInputType.number,
              decoration: InputDecoration(labelText: "Program Studi"),
            ),
            SizedBox(
              height: 10,
            ),
            TextField(
              controller: controller.cJk,
              textInputAction: TextInputAction.done,
              keyboardType: TextInputType.number,
              decoration: InputDecoration(labelText: "Jenis Kelamin"),
            ),
            SizedBox(
              height: 10,
            ),
            ElevatedButton(
              onPressed: () => controller.addProduct(
                controller.cNpm.text,
                controller.cNama.text,
                controller.cAlamat.text,
                controller.cProgramStudi.text,
                controller.cJk.text,
              ),
              child: Text("Simpan"),
            ),
          ],
        ),
      ),
    );
  }
}
