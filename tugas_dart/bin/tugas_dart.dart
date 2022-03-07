import 'dart:io';

//Link Github:https://github.com/JHanov/DartTugas
void main(List<String> arguments) {
  print("input angka");
  String? angka = stdin.readLineSync();
  int a = int.parse(angka!);

  int temp = 0;
  for (int i = 0; i <= (a / 2).ceil(); i++) {
    //ceil untuk pembulatan
    for (int j = i; j < (a / 2).ceil(); i++) {
      if (i != 0) {
        stdout.write("*");
      }
    }

    for (int k = 0; k < i; k++) {
      stdout.write(temp);
      if (k + 1 != i) {
        stdout.write(" ");
      }
    }

    for (int l = i; l < (a / 2).ceil(); l++) {
      if (i != 0) {
        stdout.write("*");
      }
    }
    print("");
    temp++;
  }
  for (int i = (a / 2).floor(); i > 0; i--) {
    for (int j = (a / 2).floor(); j >= i; j--) {
      if (i != 0) {
        stdout.write("*");
      }
    }
    for (int j = 0; j < i; j++) {
      stdout.write(temp);
      if (j + 1 != i) {
        stdout.write(" ");
      }
    }
    for (int j = (a / 2).floor(); j >= i; j--) {
      if (i != 0) {
        stdout.write("*");
      }
    }
    print("");
    temp++;
  }
  print("");
  //no 2
  int start = 1;
  int end = a;
  for (int i = 0; i < a; i++) {
    for (int j = a - 1; j >= 0; j--) {
      if (j < i) {
        stdout.write(" ");
      } else {
        stdout.write(start);
        start += 1;
      }
      if (start > a) {
        start = 1;
      }
    }
    for (int z = 0; z < a; z++) {
      if (z < i) {
        stdout.write(" ");
      } else {
        stdout.write(end);
        end--;
      }
      if (end == 0) {
        end = a;
      }
    }
    print("");
  }
}
