import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:logger/logger.dart';
import 'package:nekosophy/models/cat.dart';
import 'package:nekosophy/models/meigen.dart';
import 'package:nekosophy/providers/future_privider.dart';

final logger = Logger();

class Home extends ConsumerWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    // Ref
    final future = ref.watch(futureProvider);

    return Scaffold(
        body: Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        future.when(
            data: (data) {
              final cat = data[0][0] as Cat;
              final meigen = data[1][0] as Meigen;
              final auther = meigen.auther;

              return Content(cat: cat, meigen: meigen, auther: auther);
            },
            error: (error, stack) {
              return Text(error.toString());
            },
            loading: () => const CircularProgressIndicator()),
        Container(
          padding: const EdgeInsets.symmetric(vertical: 20.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              IconButton(
                onPressed: () => ref.refresh(futureProvider),
                icon: const Icon(Icons.thumb_up_outlined),
                iconSize: 30.0,
                tooltip: 'Good',
              ),
              const SizedBox(width: 20.0),
              IconButton(
                onPressed: () => ref.refresh(futureProvider),
                icon: const Icon(Icons.thumb_down_outlined),
                iconSize: 30.0,
                tooltip: 'Bad',
              ),
            ],
          ),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Positioned(
              child: IconButton(
                  onPressed: () => ref.refresh(futureProvider),
                  icon: const Icon(Icons.save_alt)),
            )
          ],
        )
      ],
    ));
  }
}

class Content extends StatelessWidget {
  const Content({
    super.key,
    required this.cat,
    required this.meigen,
    required this.auther,
  });

  final Cat cat;
  final Meigen meigen;
  final String auther;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          width: 400,
          height: 300,
          padding: const EdgeInsets.symmetric(vertical: 5.0),
          child: Padding(
              padding: const EdgeInsets.all(20.0),
              child: Image.network(cat.url)),
        ),
        Container(
          padding: const EdgeInsets.symmetric(vertical: 5.0),
          child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Column(
                children: [
                  Text(
                    meigen.meigen,
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
      ],
    );
  }
}
