import 'package:flutter/material.dart';
import 'package:logger/logger.dart';
import 'package:nekosophy/repository/cat_repository.dart';
import 'package:nekosophy/repository/meigen_repository.dart';

final logger = Logger();

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  String catImageUrl = 'https://cdn2.thecatapi.com/images/9sk.jpg';
  String meigen = '';
  String auther = '';

  final _catRepository = CatRepository();
  final _meigenRepository = MeigenRepository();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Padding(
            padding: const EdgeInsets.all(20),
            child: Image.network(catImageUrl),
          ),
          Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Column(
                children: [
                  Text(
                    meigen,
                    style: const TextStyle(
                        fontSize: 20, fontWeight: FontWeight.bold),
                    textAlign: TextAlign.center,
                  ),
                  const SizedBox(height: 10.0),
                  Text(
                    'by $auther',
                    style: const TextStyle(
                        fontSize: 14.0, fontStyle: FontStyle.italic),
                  ),
                ],
              )),
          IconButton(
              onPressed: () async {
                // Cat
                final catList = await _catRepository.fetchCats();
                final catData = catList.first;

                // Meigen
                final meigenList = await _meigenRepository.fetchMeigens();
                final meigenData = meigenList.first;

                // 画像
                setState(() {
                  // 画像を更新
                  catImageUrl = catData.url;
                  // 名言を更新
                  meigen = meigenData.meigen;
                  auther = meigenData.auther;
                });
              },
              icon: const Icon(Icons.refresh))
        ],
      ),
    ));
  }
}
