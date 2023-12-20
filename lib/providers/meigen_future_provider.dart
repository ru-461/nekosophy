import 'package:nekosophy/models/meigen.dart';
import 'package:nekosophy/repository/meigen_repository.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'meigen_future_provider.g.dart';

@riverpod
Future<List<Meigen>> menegenFuture(MenegenFutureRef ref) {
  final meigenRepository = MeigenRepository();
  return meigenRepository.fetchMeigens();
}
