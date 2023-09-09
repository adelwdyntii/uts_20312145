import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class AddProductController extends GetxController {
  late TextEditingController cNpm;
  late TextEditingController cNama;
  late TextEditingController cAlamat;
  late TextEditingController cProgramStudi;
  late TextEditingController cJk;

  FirebaseFirestore firestore = FirebaseFirestore.instance;

  void addProduct(String npm, String nama, String alamat, String program_studi,
      String jenis_kelamin) async {
    CollectionReference products = firestore.collection("products");

    try {
      await products.add({
        "npm": npm,
        "nama": nama,
        "alamat": alamat,
        "program_studi": program_studi,
        "jk": jenis_kelamin,
      });
      Get.defaultDialog(
          title: "Berhasil",
          middleText: "Berhasil menyimpan data product",
          onConfirm: () {
            cNpm.clear();
            cNama.clear();
            cAlamat.clear();
            cProgramStudi.clear();
            cJk.clear();
            Get.back();
            Get.back();
            Get.back();
            Get.back();
            Get.back();
            textConfirm:
            "OK";
          });
    } catch (e) {}
  }

  @override
  void onInit() {
    // TODO: implement onInit
    cNpm = TextEditingController();
    cNama = TextEditingController();
    cAlamat = TextEditingController();
    cProgramStudi = TextEditingController();
    cJk = TextEditingController();
    super.onInit();
  }

  @override
  void onClose() {
    // TODO: implement onClose
    cNpm = TextEditingController();
    cNama = TextEditingController();
    cAlamat = TextEditingController();
    cProgramStudi = TextEditingController();
    cJk = TextEditingController();
    super.onClose();
  }
}
