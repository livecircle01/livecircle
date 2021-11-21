void main() {
  List dataAngka = [
    3,
    18,
    45,
    16,
    2,
    5,
    7,
    9,
    10,
    1,
    16,
    11,
    4,
    8,
    11,
    16,
    32,
    56
  ];
  int index = 0;
  int maxData = dataAngka.length;

  //mengurutkan ke terbesar
  dataAngka.sort();
  print(dataAngka);

  dataAngka.sort((a, b) => a.compareTo(b));
  print(dataAngka);

  //mengurutkan ke terkecil
  final reverseValue = dataAngka.reversed;
  print(reverseValue);
  dataAngka.sort((b, a) => a.compareTo(b));
  print(dataAngka);

  //MEAN
  final mean = dataAngka.reduce((a, b) => a + b) / dataAngka.length;
  print(mean);

  // MODUS
  var map = Map();

  dataAngka.forEach((element) {
    if (!map.containsKey(element)) {
      map[element] = 1;
    } else {
      map[element] += 1;
    }
  });

  print(map);

  //MEDIAN
  final median;

  int middle = dataAngka.length ~/ 2;

  if (dataAngka.length % 2 == 1) {
    median = dataAngka[middle];
  } else {
    median = ((dataAngka[middle - 1] + dataAngka[middle]) / 2.0).round();
  }

  return print(median);
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