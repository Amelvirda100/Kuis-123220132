import 'package:flutter/material.dart';
import 'package:kuis_f_ril/model/phone_model.dart';
import 'package:url_launcher/url_launcher.dart';

class DetailPage extends StatefulWidget {
  final int index;
  const DetailPage({super.key, required this.index});

  @override
  State<DetailPage> createState() => _DetailPageState();
}

class _DetailPageState extends State<DetailPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "          Detail Produk",
          style: TextStyle(color: Colors.black),
        ),
        backgroundColor: Colors.white,
        elevation: 0,
        leading: IconButton(
          icon: Icon(Icons.arrow_back, color: Colors.black),
          onPressed: () {
            // Kembali ke HomePage
            Navigator.popUntil(context, (route) => route.isFirst);
          },
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            /// Gambar Produk
            Container(
              width: double.infinity,
              height: 250,
              color: Colors.grey[300],
              child: phones[widget.index].websiteUrl.isNotEmpty
                  ? Image.network(phones[widget.index].websiteUrl,
                      width: double.infinity, fit: BoxFit.contain)
                  : SizedBox(),
            ),

            /// Informasi Produk
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  /// Nama dan Harga Produk
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Expanded(
                        child: Text(
                          phones[widget.index].model,
                          style: TextStyle(
                              fontSize: 20, fontWeight: FontWeight.bold),
                        ),
                      ),
                      Text(
                        "Rp ${phones[widget.index].price[0]}",
                        style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                            color: Colors.green),
                      ),
                    ],
                  ),
                  SizedBox(height: 10),

                  Text(
                    "${phones[widget.index].brand}",
                    style: const TextStyle(fontSize: 12, color: Colors.grey),
                  ),

                  /// Detail Produk
                  Text("Memori: ${phones[widget.index].memory}",
                      style: TextStyle(fontSize: 16)),
                  Text("Processor: ${phones[widget.index].processor}",
                      style: TextStyle(fontSize: 16)),
                  Text("Baterai: ${phones[widget.index].batteryCapacity}",
                      style: TextStyle(fontSize: 16)),
                  Text("Warna: ${phones[widget.index].colors}",
                      style: TextStyle(fontSize: 16)),
                  Text(
                      "Size: ${phones[widget.index].size[0]} cm | ${phones[widget.index].size[1]} mm  ",
                      style: TextStyle(fontSize: 16)),
                  SizedBox(height: 10),
                  Text("Storage:", style: TextStyle(fontSize: 16)),
                  SizedBox(height: 5),
                  Wrap(
                    spacing: 8,
                    children: phones[widget.index]
                        .storage
                        .map((storage) => Container(
                              padding: EdgeInsets.symmetric(
                                  vertical: 6, horizontal: 12),
                              decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(8),
                                border: Border.all(color: Colors.black54),
                              ),
                              child: Text(
                                  storage.toString(), // Mengubah int ke String
                                  style: TextStyle(
                                      fontSize: 14, color: Colors.black)),
                            ))
                        .toList(),
                  ),

                  ElevatedButton(
                      onPressed: () async {
                        await launchUrl(
                            Uri.parse(phones[widget.index].websiteUrl));
                      },
                      child: Text("Go to website"))
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
