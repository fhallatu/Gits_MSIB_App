class Phone {
  String name = '';
  String image = '';
  int? harga;
  String? warna;
  int? index;

  Phone({
    required this.image,
    required this.name,
    this.harga,
    this.warna,
  });
}

List<Phone> phone = <Phone>[
  Phone(
      image: 'assets/images/apple_ipad_pro.png',
      name: 'Apple Ipad Pro (Gen 3) 11 inch',
      harga: 15999000,
      warna: 'Space Grey'),
  Phone(
      image: 'assets/images/samsung_galaxy_A72.png',
      name: 'Samsung Galaxy A72',
      harga: 6399000,
      warna: 'Awasome Black'),
  Phone(image: 'assets/images/white.png', name: '')
];
