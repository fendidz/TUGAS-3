import 'package:flutter/material.dart';
import 'package:pertemuan5/LAYOUT/MODEL/Getnews.dart';

class Detailnewspage extends StatelessWidget{

  final Getnews getnews;

  const Detailnewspage({Key? key, required this.getnews}) : super(key: key);

  @override
  Widget build(BuildContext context){
    return Scaffold (
      appBar: AppBar(
        title: const Text('Detail Page'),
        centerTitle: true,
        backgroundColor: Colors.cyan,
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Card(
              elevation: 4, // Efek bayangan Card
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(16.0), // Sudut Card melengkung
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  // Header dengan ikon dan judul
                  Container(
                    padding: const EdgeInsets.all(16.0),
                    decoration: BoxDecoration(
                      color: Colors.cyan, // Warna background header
                      borderRadius: const BorderRadius.only(
                        topLeft: Radius.circular(16.0),
                        topRight: Radius.circular(16.0),
                      ),
                    ),
                    child: Row(
                      children: [
                        const Icon(
                          Icons.article,
                          color: Colors.white,
                          size: 28,
                        ),
                        const SizedBox(width: 10),
                        Expanded(
                          child: Text(
                            getnews.title,
                            style: const TextStyle(
                              color: Colors.white,
                              fontSize: 18,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),

                  // Konten utama
                  Padding(
                    padding: const EdgeInsets.all(16.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        // ID Berita
                        Row(
                          children: [
                            const Icon(Icons.info_outline, color: Colors.cyan),
                            const SizedBox(width: 10),
                            Text(
                              'ID: ${getnews.id}',
                              style: const TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ],
                        ),
                        const Divider(), // Garis pemisah
                        const SizedBox(height: 10),

                        // Body Berita
                        const Text(
                          'Deskripsi Berita:',
                          style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.bold,
                            color: Colors.cyan,
                          ),
                        ),
                        const SizedBox(height: 8),
                        Text(
                          getnews.body,
                          style: const TextStyle(
                            fontSize: 14,
                            height: 1.5, // Spasi antar baris
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}