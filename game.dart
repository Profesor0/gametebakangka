
import 'dart:io';
import 'package:meta/meta.dart';
import 'dart:math';

class game {
  bool check = false;

  dynamic looping({angkatebakan, randomnumber, value}) {
    print("* Range angka adalah dari 0 - 9");
    print(" ");
    print("Masukkan tebakkanmu: ");
    angkatebakan = int.tryParse(stdin.readLineSync());


    if (randomnumber != angkatebakan) {
      print("TEBAKANMU SALAH!");
      value = false;
    } else {
      print("YEY TEBAKANMU BENAR");
      value = true;
    }
    check = value;
  }


  void menu(randomnumber) {
    print(" ");
    print(
        "angka kunci yang diambil sistem saat ini: " + randomnumber.toString());
    print(
        "game dalam tahap uji coba jadi angka kunci ditunjukan untuk tujuan testing");
    print("");
    print("=======================================");
    print("SELAMAT DATANG DI GAME TEBAK ANGKA");
    print("========================================");

    print("NOTE");
    print("* System Akan Mengambil angka acak kedalam system \n"
        "* Silahkan tebak angka yang mungkin muncul");
  }
}