part of 'i_collection.dart';

/// Iterable Extension.
extension IterableExtension<E> on Iterable<E> {
  /// Calls [IList.of] constructor.
  IList<E> toIList() => IList.of(this);

  /// Calls [ISet.of] constructor.
  ISet<E> toISet() => ISet.of(this);
}

mixin _ImmutableIterableMixin<E, I extends Iterable<E>> on _ICollection<I>
    implements Iterable<E> {
  @override
  bool any(bool Function(E element) test) => _source.any(test);

  @override
  Iterable<R> cast<R>() => _source.cast();

  @override
  bool contains(Object element) => _source.contains(element);

  @override
  E elementAt(int index) => _source.elementAt(index);

  @override
  bool every(bool Function(E element) test) => _source.every(test);

  @override
  Iterable<T> expand<T>(Iterable<T> Function(E element) f) => _source.expand(f);

  @override
  E get first => _source.first;

  @override
  E firstWhere(bool Function(E element) test, {E Function() orElse}) =>
      _source.firstWhere(test, orElse: orElse);

  @override
  T fold<T>(T initialValue, T Function(T previousValue, E element) combine) =>
      _source.fold(initialValue, combine);

  @override
  Iterable<E> followedBy(Iterable<E> other) => _source.followedBy(other);

  @override
  void forEach(void Function(E element) f) => _source.forEach(f);

  @override
  bool get isEmpty => _source.isEmpty;

  @override
  bool get isNotEmpty => _source.isNotEmpty;

  @override
  Iterator<E> get iterator => _source.iterator;

  @override
  String join([String separator = '']) => _source.join(separator);

  @override
  E get last => _source.last;

  @override
  E lastWhere(bool Function(E element) test, {E Function() orElse}) =>
      _source.lastWhere(test, orElse: orElse);

  @override
  int get length => _source.length;

  @override
  Iterable<T> map<T>(T Function(E e) f) => _source.map(f);

  @override
  E reduce(E Function(E value, E element) combine) => _source.reduce(combine);

  @override
  E get single => _source.single;

  @override
  E singleWhere(bool Function(E element) test, {E Function() orElse}) =>
      _source.singleWhere(test, orElse: orElse);

  @override
  Iterable<E> skip(int count) => _source.skip(count);

  @override
  Iterable<E> skipWhile(bool Function(E value) test) => _source.skipWhile(test);

  @override
  Iterable<E> take(int count) => _source.take(count);

  @override
  Iterable<E> takeWhile(bool Function(E value) test) => _source.takeWhile(test);

  @override
  List<E> toList({bool growable = true}) => _source.toList();

  @override
  Set<E> toSet() => _source.toSet();

  @override
  Iterable<E> where(bool Function(E element) test) => _source.where(test);

  @override
  Iterable<T> whereType<T>() => _source.whereType();
}
