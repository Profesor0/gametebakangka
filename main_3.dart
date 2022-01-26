
import 'dart:io';
import 'package:meta/meta.dart';
import 'dart:math';

import 'game.dart';


void main(List<String> arguments) async {

   int angkatebakan;
   int num;
 game newgame = game();
 Random random = Random();
 int randomnumber = random.nextInt(10);
 bool checker;

 newgame.menu(randomnumber);
 do {
    newgame.looping(randomnumber: randomnumber,angkatebakan: angkatebakan);
    if(newgame.check == true){
      print("MAU MAIN LAGI ?");
      print("   ");
      print("1. IYA DONG");
      print("2. GA DULU DEH");
      print("  ");
      num = int.tryParse(stdin.readLineSync());
        if(num == 1){
          newgame.check = false;
          randomnumber = random.nextInt(10);
          print(" ");
          print("angka kunci yang diambil sistem saat ini: "+randomnumber.toString());
          print("game dalam tahap uji coba jadi angka kunci ditunjukan untuk tujuan testing");
          print(" ");
        }else {
          newgame.check = true;
          print("TERIMA KASIH TELAH BERMAIN");
        }

    }
 }while(newgame.check == false);
}


