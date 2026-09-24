class MenuItem {
  MenuItem(this.name, this.price, this.stock);

  final String name;
  final int price;
  final int stock;

  bool get tersedia => stock > 0;

  int hargaPajak() => (price * 1.11).round();

  MenuItem copyWith({int? stock}) => MenuItem(name, price, stock ?? this.stock);
}

String infoDiskon(int? persen) =>
    persen == null ? 'Tanpa diskon' : 'Diskon $persen%';