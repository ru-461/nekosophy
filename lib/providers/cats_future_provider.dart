import 'package:nekosophy/models/cat.dart';
import 'package:nekosophy/repository/cat_repository.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'cats_future_provider.g.dart';

@riverpod
Future<List<Cat>> catsFutureProvider(CatsFutureProviderRef ref) {
  final catRepository = CatRepository();
  return catRepository.fetchCats();
}
