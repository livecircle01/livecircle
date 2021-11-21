import 'package:stats/stats.dart';

void main() {
  List<int> dataAngka = [3, 18, 45, 16, 2, 5, 7, 9, 10, 1, 16, 11, 4, 8, 11, 16, 32, 56];
  int index = 0;
  int maxData = dataAngka.length;

  // sudah bagus memanfaatkan fungsi sort
  //mengurutkan ke terbesar
  dataAngka.sort();
  print(dataAngka);

  // tidak diperlukan
  // dataAngka.sort((a, b) => a.compareTo(b));
  // print(dataAngka);

  // langsung buat ke list saja
  //mengurutkan ke terkecil
  final reverseValue = dataAngka.reversed.toList();
  print(reverseValue);

  // tidak diperlukan
  // dataAngka.sort((b, a) => a.compareTo(b));
  // print(dataAngka);

  // bisa pakai package stats
  //MEAN
  // final mean = dataAngka.reduce((a, b) => a + b) / dataAngka.length;
  // print(mean);
  print(Stats.fromData(dataAngka).average);

  // ini blm sampai jawabannya
  // MODUS
  var map = Map();

  dataAngka.forEach((element) {
    if (!map.containsKey(element)) {
      map[element] = 1;
    } else {
      map[element] += 1;
    }
  });

  // jangan langsung di print butuh tambahan step seperti berikut
  // print(map);

  List keyData = map.keys.toList();
  List valueData = map.values.toList();

  print("\nExtract Data Map");
  print("Nilai : $keyData");
  print("Banyak : $valueData");
  print("\n--------------------------\nKESIMPULAN\n");

  int maksimalData = valueData[0];

  for (var i = 0; i < valueData.length; i++) {
    if (valueData[i] > maksimalData) {
      maksimalData = valueData[i];
    }
  }

  int totalMaksimalData = 0;
  for (var item in valueData) {
    if (item == maksimalData) {
      totalMaksimalData++;
    }
  }

  maksimalData = valueData[0];
  int indexMaksimalData = 0;

  if (totalMaksimalData != 1) {
    print("TIDAK ADA MODUS");
  } else {
    for (var i = 0; i < valueData.length; i++) {
      if (valueData[i] > maksimalData) {
        maksimalData = valueData[i];
        indexMaksimalData = i;
      }
    }

    print(
      "Nilai yang sering muncul : ${keyData[indexMaksimalData]}\nSebanyak : ${valueData[indexMaksimalData]} x",
    );
  }

  // bisa pakai package stats
  //MEDIAN
  // final median;

  // int middle = dataAngka.length ~/ 2;

  // if (dataAngka.length % 2 == 1) {
  //   median = dataAngka[middle];
  // } else {
  //   median = ((dataAngka[middle - 1] + dataAngka[middle]) / 2.0).round();
  // }

  // return print(median);
  print(Stats.fromData(dataAngka).median);
}
    


//Buatlah function untuk :
//1. Mengurutkan dari nilai terkecil ke terbesar
//2. Mengurutkan dari nilai terbesar ke terkecil
//3. Mencari rata-rata dari data-data tersebut (mean)
//4. Mencari nilai tengah (median)
//5. Mencari nilai yang sering muncul (modus)

//Jalankan setiap function pada void main( ) , lalu print hasil jawabannya.


//Ketentuan :
//1. Buat tugas pada Flutter Project di bagian widget_test.dart
//2. Kaitkan dengan Github
//3. Tugas diupload pada github masing-masing
//4. Pengumpulan tugas berupa link github tersebut
//Class comments  