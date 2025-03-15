class PhoneModel {
  String model;
  String brand;
  List<int> storage; // List of available storage options (GB)
  int memory; // RAM in GB
  String processor;
  int batteryCapacity; // Battery in mAh
  List<String> colors;
  List<double> size; // [height, width] in inches or mm
  List<double> price; // Corresponding prices for each storage option
  String imageUrl; // URL for product image
  String websiteUrl; // Official website or store link

  PhoneModel({
    required this.model,
    required this.brand,
    required this.storage,
    required this.memory,
    required this.processor,
    required this.batteryCapacity,
    required this.colors,
    required this.size,
    required this.price,
    required this.imageUrl,
    required this.websiteUrl,
  }) : assert(storage.length == price.length,
            "Storage and Price lists must have the same length.");
}

List<PhoneModel> phones = [
  PhoneModel(
    model: 'Galaxy S25 Ultra',
    brand: 'Samsung',
    storage: [256, 512, 1024],
    memory: 12,
    processor: 'Exynos 2500',
    batteryCapacity: 5000,
    colors: ['Phantom Black', 'Phantom Silver', 'Burgundy'],
    size: [163.4, 78.1],
    price: [1199.99, 1299.99, 1499.99],
    imageUrl:
        'https://static.promediateknologi.id/crop/0x0:0x0/750x500/webp/photo/p1/835/2025/01/23/samsung-4212723969.jpg',
    websiteUrl: 'https://www.samsung.com/galaxy-s25-ultra/',
  ),
  PhoneModel(
    model: 'iPhone 16 Pro Max',
    brand: 'Apple',
    storage: [256, 512, 1024],
    memory: 8,
    processor: 'A18 Bionic',
    batteryCapacity: 4352,
    colors: ['Graphite', 'Gold', 'Silver', 'Sierra Blue'],
    size: [160.8, 78.1],
    price: [1099.00, 1199.00, 1399.00],
    imageUrl:
        'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQadTDv0M8kkFRsMgvMiL_jr1p92mbCfAkXwA&s',
    websiteUrl: 'https://www.apple.com/iphone-16-pro/',
  ),
  PhoneModel(
    model: 'Xiaomi 15',
    brand: 'Xiaomi',
    storage: [128, 256, 512],
    memory: 12,
    processor: 'Snapdragon 8 Gen 3',
    batteryCapacity: 5000,
    colors: ['Black', 'White', 'Aurora'],
    size: [162.5, 74.8],
    price: [699.99, 749.99, 849.99],
    imageUrl:
        'https://awsimages.detik.net.id/community/media/visual/2024/10/29/xiaomi-15-pro_169.webp?w=1200',
    websiteUrl: 'https://www.mi.com/id/product/xiaomi-15-pro/',
  ),
  PhoneModel(
    model: 'P60 Pro',
    brand: 'Huawei',
    storage: [256, 512],
    memory: 8,
    processor: 'Kirin 9900',
    batteryCapacity: 4500,
    colors: ['Black', 'Silver', 'Green'],
    size: [158.2, 72.6],
    price: [899.99, 999.99],
    imageUrl:
        'https://asset.kompas.com/crops/X5Y0dfpWmzVMUMjEEVUvRClLrZs=/29x26:604x409/1200x800/data/photo/2023/03/24/641d07c4375f4.jpg',
    websiteUrl: 'https://consumer.huawei.com/en/phones/p60-pro/',
  ),
  PhoneModel(
    model: 'Find X8 Pro',
    brand: 'Oppo',
    storage: [256, 512],
    memory: 12,
    processor: 'Snapdragon 8 Gen 3',
    batteryCapacity: 4500,
    colors: ['Glossy Black', 'Glaze Blue'],
    size: [163.6, 74.0],
    price: [799.99, 899.99],
    imageUrl:
        'https://static.promediateknologi.id/crop/0x0:0x0/750x500/webp/photo/p1/76/2024/11/15/671ae74d8dc6e-1132883362.png',
    websiteUrl:
        'https://www.oppo.com/en/smartphones/series-find-x/find-x8-pro/',
  ),
  PhoneModel(
    model: 'Vivo X100 Pro',
    brand: 'Vivo',
    storage: [256, 512],
    memory: 12,
    processor: 'Snapdragon 8 Gen 3',
    batteryCapacity: 4700,
    colors: ['Cosmic Black', 'Aurora Dawn'],
    size: [164.5, 75.2],
    price: [849.99, 949.99],
    imageUrl:
        'https://cdn-brilio-net.akamaized.net/news/2023/04/04/252529/1200xauto-intip-bocoran-5-fitur-kamera-vivo-x100-pro-plus-bisa-atur-apertur-secara-manual-dan-lebih-luwes-230404z.jpg',
    websiteUrl: 'https://www.vivo.com/id/products/param/x100pro',
  ),
  PhoneModel(
    model: 'Galaxy Z Fold 6',
    brand: 'Samsung',
    storage: [256, 512, 1024],
    memory: 12,
    processor: 'Exynos 2500',
    batteryCapacity: 4400,
    colors: ['Phantom Black', 'Green', 'Beige'],
    size: [158.2, 67.1],
    price: [1799.99, 1899.99, 2099.99],
    imageUrl:
        'https://static.promediateknologi.id/crop/0x0:0x0/0x0/webp/photo/p2/84/2024/07/10/New-Project-40-287020379.png',
    websiteUrl: 'https://www.samsung.com/id/smartphones/galaxy-z-fold6/',
  ),
  PhoneModel(
    model: 'iPhone 16',
    brand: 'Apple',
    storage: [128, 256, 512],
    memory: 6,
    processor: 'A18 Bionic',
    batteryCapacity: 2227,
    colors: ['Black', 'White', 'Red'],
    size: [131.5, 64.2],
    price: [699.00, 749.00, 849.00],
    imageUrl:
        'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQMtQF304Fldh2EiIptPQgA7H0khBInpBRo6w&s',
    websiteUrl: 'https://www.apple.com/iphone-16/',
  ),
  PhoneModel(
    model: 'Redmi Note 14',
    brand: 'Xiaomi',
    storage: [64, 128, 256],
    memory: 6,
    processor: 'MediaTek Dimensity 1200',
    batteryCapacity: 5000,
    colors: ['Onyx Gray', 'Glacier Blue', 'Gradient Bronze'],
    size: [161.9, 75.4],
    price: [199.99, 249.99, 299.99],
    imageUrl:
        'https://static.promediateknologi.id/crop/0x0:0x0/0x0/webp/photo/p2/92/2024/10/23/WhatsApp-Image-2024-10-23-at-214039_15e1aefb-4069926644.jpg',
    websiteUrl: 'https://www.mi.co.id/id/product/redmi-note-14/',
  ),
  PhoneModel(
    model: 'Mate 50 Pro',
    brand: 'Huawei',
    storage: [256, 512],
    memory: 8,
    processor: 'Kirin 9000',
    batteryCapacity: 4400,
    colors: ['Mystic Silver', 'Black', 'White'],
    size: [162.9, 75.5],
    price: [999.99, 1099.99],
    imageUrl:
        'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTqhg2fzsWm88bas_w-8CdbfFZ-4WVWc1czaQ&s',
    websiteUrl: 'https://consumer.huawei.com/en/phones/mate50-pro/',
  ),
];
