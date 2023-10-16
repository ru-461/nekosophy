import 'package:nekosophy/models/cat.dart';
import 'package:nekosophy/repository/cat_repository.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'cat_future_provider.g.dart';

@riverpod
Future<List<Cat>> catFuture(CatFutureRef ref) {
  final repository = CatRepository();
  return repository.fetchCats();
}
