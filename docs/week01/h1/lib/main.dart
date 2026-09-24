import 'package:week1/menu_item.dart';

void main() {
  final nasgor = MenuItem('Nasi Goreng', 15000, 8);
  final mie = MenuItem('Mie Ayam', 13000, 5);
  final sate = MenuItem('Sate Ayam', 25000, 0);
  final menu = [nasgor, mie, sate];


  print('${nasgor.name} — Rp ${nasgor.price} (${nasgor.stock} tersedia)');
  print('Dengan pajak: Rp ${nasgor.hargaPajak()}');


  print(infoDiskon(10));
  print(infoDiskon(null));


  final namaMenu = menu.map((m) => m.name).toList();
  print(namaMenu);


  final murah = menu.where((m) => m.price < 20000).toList();
  murah.sort((a, b) => a.price.compareTo(b.price));
  print(murah.map((m) => '${m.name}: Rp ${m.price}').join('\n'));

  final restokSemua = menu.map((m) => m.copyWith(stock: m.stock + 10)).toList();
  print('Stok lama: ${menu.map((m) => m.stock).toList()}');
  print('Stok baru: ${restokSemua.map((m) => m.stock).toList()}');


  final total = menu.map((m) => m.price).fold<int>(0, (sum, harga) => sum + harga);
  print('Total harga semua menu: Rp $total');
  print('Ada yang habis? ${menu.any((m) => !m.tersedia)}');
}