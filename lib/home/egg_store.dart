import 'package:mobx/mobx.dart';

part 'egg_store.g.dart';

class EggStore = EggStoreBase with _$EggStore;

abstract class EggStoreBase with Store {
  @observable
  bool shake = false;

  @observable
  int countTap = 0;

  @action
  tapEgg() {
    shake = true;
    countTap += 1;
    if (countTap > 12) countTap = 0;
    Future.delayed(const Duration(seconds: 1), (() => shake = false));
  }
}
