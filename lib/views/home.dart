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

  void _reflesh() async {
    // Cat
    final catList = await _catRepository.fetchCats();
    final catData = catList.first;
    logger.d(catData);

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
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  width: 400,
                  height: 450,
                  padding: const EdgeInsets.symmetric(vertical: 5.0),
                  child: Padding(
                      padding: const EdgeInsets.all(20.0),
                      child: Image.network(catImageUrl)),
                ),
                Container(
                  padding: const EdgeInsets.symmetric(vertical: 5.0),
                  child: Padding(
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
                ),
                Container(
                  padding: const EdgeInsets.symmetric(vertical: 20.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      IconButton(
                        onPressed: _reflesh,
                        icon: const Icon(Icons.thumb_up_outlined),
                        iconSize: 30.0,
                        tooltip: 'Good',
                      ),
                      const SizedBox(width: 20.0),
                      IconButton(
                        onPressed: _reflesh,
                        icon: const Icon(Icons.thumb_down_outlined),
                        iconSize: 30.0,
                        tooltip: 'Bad',
                      ),
                    ],
                  ),
                ),
              ],
            )));
  }
}
