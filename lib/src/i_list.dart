part of 'i_collection.dart';

/// Immutable List.
class IList<E> extends _ICollection<List<E>>
    with
        _ImmutableIterableMixin<E, List<E>>,
        _ImmutableListMixin<E>,
        _MutableWithThrowListMixin<E> {
  /// Creates an IList instance from [source].
  /// Use only if you are sure that the [source] will not be modified in the future.
  @literal
  const IList(List<E> source) : super(source);

  /// Creates an empty IList instance.
  @literal
  const IList.empty() : super(const []);

  /// Creates an IList instance from [source] by copying it.
  IList.of(Iterable<E> source) : super(List.of(source));
}

mixin _ImmutableListMixin<E> on _ICollection<List<E>> implements List<E> {
  @override
  List<E> operator +(List<E> other) => _source + other;

  @override
  E operator [](int index) => _source[index];

  @override
  Map<int, E> asMap() => _source.asMap();

  @override
  List<R> cast<R>() => _source.cast();

  @override
  Iterable<E> getRange(int start, int end) => _source.getRange(start, end);

  @override
  int indexOf(E element, [int start = 0]) => _source.indexOf(element, start);

  @override
  int indexWhere(bool Function(E element) test, [int start = 0]) =>
      _source.indexWhere(test, start);

  @override
  int lastIndexOf(E element, [int start]) =>
      _source.lastIndexOf(element, start);

  @override
  int lastIndexWhere(bool Function(E element) test, [int start]) =>
      _source.lastIndexWhere(test, start);

  @override
  Iterable<E> get reversed => _source.reversed;

  @override
  List<E> sublist(int start, [int end]) => _source.sublist(start, end);
}

mixin _MutableWithThrowListMixin<E> implements List<E> {
  @alwaysThrows
  R _throw<R>() {
    throw UnsupportedError('IList<$E> cannot be modified.');
  }

  @override
  set first(E value) => _throw();

  @override
  set last(E value) => _throw();

  @override
  set length(int newLength) => _throw();

  @override
  void operator []=(int index, E value) => _throw();

  @override
  void add(E value) => _throw();

  @override
  void addAll(Iterable<E> iterable) => _throw();

  @override
  void clear() => _throw();

  @override
  void fillRange(int start, int end, [E fillValue]) => _throw();

  @override
  void insert(int index, E element) => _throw();

  @override
  void insertAll(int index, Iterable<E> iterable) => _throw();

  @override
  bool remove(Object value) => _throw();

  @override
  E removeAt(int index) => _throw();

  @override
  E removeLast() => _throw();

  @override
  void removeRange(int start, int end) => _throw();

  @override
  void removeWhere(bool Function(E element) test) => _throw();

  @override
  void replaceRange(int start, int end, Iterable<E> replacement) => _throw();

  @override
  void retainWhere(bool Function(E element) test) => _throw();

  @override
  void setAll(int index, Iterable<E> iterable) => _throw();

  @override
  void setRange(int start, int end, Iterable<E> iterable,
          [int skipCount = 0]) =>
      _throw();

  @override
  void shuffle([Random random]) => _throw();

  @override
  void sort([int Function(E a, E b) compare]) => _throw();
}
