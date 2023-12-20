import 'package:nekosophy/repository/cat_repository.dart';
import 'package:nekosophy/repository/meigen_repository.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'future_privider.g.dart';

@riverpod
Future<List> future(FutureRef ref) async {
  final catRepository = CatRepository();
  final meigenRepository = MeigenRepository();

  // 待機
  final results = await Future.wait(
      [catRepository.fetchCats(), meigenRepository.fetchMeigens()]);

  return results;
}
