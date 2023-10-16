import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:nekosophy/models/cat.dart';
import 'package:nekosophy/repository/cat_repository.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'cat_future_provider.g.dart';

@riverpod
Future<List<Cat>> catFutureProvider(Ref ref) {
  final repository = CatRepository();
  return repository.fetchCats();
}
