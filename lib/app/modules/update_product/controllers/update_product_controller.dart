import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class UpdateProductController extends GetxController {
  late TextEditingController cNpm;
  late TextEditingController cNama;
  late TextEditingController cAlamat;
  late TextEditingController cProgramStudi;
  late TextEditingController cJk;

  FirebaseFirestore firestore = FirebaseFirestore.instance;

  Future<DocumentSnapshot<Object?>> getData(String id) async {
    DocumentReference docRef = firestore.collection("products").doc(id);

    return docRef.get();
  }

  void updateProduct(String npm, String nama, String alamat,
      String program_studi, String jenis_kelamin, String id) async {
    DocumentReference productById = firestore.collection("products").doc(id);
    try {
      await productById.update({
        "npm": npm,
        "nama": nama,
        "alamat": alamat,
        "program_studi": program_studi,
        "jk": jenis_kelamin,
      });

      Get.defaultDialog(
        title: "Berhasil",
        middleText: "Berhasil Mengubah Data Produk",
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
        },
        textConfirm: "OK",
      );
    } catch (e) {
      print(e);
      Get.defaultDialog(
        title: "Terjadi Kesalahan",
        middleText: "Gagal Menambahkan Produk",
      );
    }
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
    cNpm.dispose();
    cNama.dispose();
    cAlamat.dispose();
    cProgramStudi.dispose();
    cJk.dispose();
    super.onClose();
  }
}
