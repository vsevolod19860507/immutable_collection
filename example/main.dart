import 'dart:collection';

import 'package:immutable_collection/immutable_collection.dart';

void main() {
  // ***************************************************************************
  // IList<E>
  // ***************************************************************************
  print('IList<E>');
  final list = [1, 2, 3];
  final ilist1 = IList(list);
  final ilist2 = IList.of(list);
  final ilist3 = list.toIList();
  print(ilist1); // [1, 2, 3]
  print(ilist2); // [1, 2, 3]
  print(ilist3); // [1, 2, 4]
  list.addAll([3, 4]);
  print(ilist1); // [1, 2, 3, 3, 4]
  print(ilist2); // [1, 2, 3]
  print(ilist3); // [1, 2, 3]
  print(ilist1 is List<int>); // true
  print(list is IList<int>); // false
  // ilist1.addAll([1]); // Error: IList<int> cannot be modified.
  print(ilist1.hashCode); // 866065003
  print(ilist2.hashCode); // 2074905355
  print(ilist3.hashCode); // 2074905355
  print(ilist1 == ilist2); // false
  print(ilist1 == ilist3); // false
  print(ilist2 == ilist3); // true

  // ***************************************************************************
  // ISet<E>
  // ***************************************************************************
  print('\nISet<E>');
  final set = HashSet.of({1, 2, 3});
  final iset1 = ISet(set);
  final iset2 = ISet.of(set);
  final iset3 = set.toISet();
  print(iset1); // {1, 2, 3}
  print(iset2); // {1, 2, 3}
  print(iset3); // {1, 2, 3}
  set.addAll({3, 4});
  print(iset1); // {1, 2, 3, 4}
  print(iset2); // {1, 2, 3}
  print(iset3); // {1, 2, 3}
  print(iset1 is HashSet<int>); // true
  print(set is ISet<int>); // false
  // iset1.addAll({1}); // Error: ISet<int> cannot be modified.
  print(iset1.hashCode); // 1143481854
  print(iset2.hashCode); // 2135037147
  print(iset3.hashCode); // 2135037147
  print(iset1 == iset2); // false
  print(iset1 == iset3); // false
  print(iset2 == iset3); // true

  // ***************************************************************************
  // IMap<K, V>
  // ***************************************************************************
  print('\nIMap<K, V>');
  final map = HashMap.of({1: 1, 2: 1, 3: 1});
  final imap1 = IMap(map);
  final imap2 = IMap.of(map);
  final imap3 = map.toIMap();
  print(imap1); // {1: 1, 2: 1, 3: 1}
  print(imap2); // {1: 1, 2: 1, 3: 1}
  print(imap3); // {1: 1, 2: 1, 3: 1}
  map.addAll({3: 1, 4: 1});
  print(imap1); // {1: 1, 2: 1, 3: 1, 4: 1}
  print(imap2); // {1: 1, 2: 1, 3: 1}
  print(imap3); // {1: 1, 2: 1, 3: 1}
  print(imap1 is HashMap<int, int>); // true
  print(map is IMap<int, int>); // false
  // imap1.addAll({1: 1}); // Error: IMap<int, int> cannot be modified.
  print(imap1.hashCode); // 1852417392
  print(imap2.hashCode); // 1377167605
  print(imap3.hashCode); // 1377167605
  print(imap1 == imap2); // false
  print(imap1 == imap3); // false
  print(imap2 == imap3); // true
}
