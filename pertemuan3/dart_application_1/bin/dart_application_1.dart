import 'dart:io';

void panggil_predikat(var nilai) {
  if (nilai == 'A') {
    print('Bagus');
  } else if (nilai == 'B') {
    print('Baik');
  } else if (nilai == 'C') {
    print('Cukup');
  } else if (nilai == 'D') {
    print('Kurang');
  } else if (nilai == 'E') {
    print('Sangat Kurang');
  }
}

void main() {
  var nilai = 90;
  if (nilai >= 81 && nilai <= 100) {
    print('A');
    panggil_predikat('A');
  } else if (nilai >= 76 && nilai <= 80) {
    print('B');
    panggil_predikat('B');
  } else if (nilai >= 71 && nilai <= 75) {
    print('C');
    panggil_predikat('C');
  } else if (nilai >= 66 && nilai <= 70) {
    print('D');
    panggil_predikat('D');
  } else if (nilai <= 66) {
    print('E');
    panggil_predikat('E');
  }
  sidePyramid();
}

void sidePyramid() {
  for (int i = 1; i < 10; i++) {
    if (i < 5) {
      for (int j = 1; j <= i; j++) {
        stdout.write('🤗');
      }
    } else {
      for (int j = 10; j > i; j--) {
        stdout.write('🤗');
      }
    }
    print('');
  }
}
 