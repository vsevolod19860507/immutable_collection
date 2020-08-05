part of 'i_collection.dart';

class IMap<K, V> extends _ICollection<Map<K, V>>
    with _ImmutableMapMixin<K, V>, _MutableWithThrowMapMixin<K, V> {
  @literal
  const IMap(Map<K, V> source) : super(source);

  IMap.of(Map<K, V> source) : super(Map.of(source));
}

extension IIMapExtension<K, V> on Map<K, V> {
  IMap<K, V> toIMap() => IMap.of(this);
}

mixin _ImmutableMapMixin<K, V> on _ICollection<Map<K, V>> implements Map<K, V> {
  @override
  V operator [](Object key) => _source[key];

  @override
  Map<RK, RV> cast<RK, RV>() => _source.cast();

  @override
  bool containsKey(Object key) => _source.containsKey(key);

  @override
  bool containsValue(Object value) => containsValue(value);

  @override
  Iterable<MapEntry<K, V>> get entries => _source.entries;

  @override
  void forEach(void Function(K key, V value) f) => _source.forEach(f);

  @override
  bool get isEmpty => _source.isEmpty;

  @override
  bool get isNotEmpty => _source.isNotEmpty;

  @override
  Iterable<K> get keys => _source.keys;

  @override
  int get length => _source.length;

  @override
  Map<K2, V2> map<K2, V2>(MapEntry<K2, V2> Function(K key, V value) f) =>
      _source.map(f);

  @override
  Iterable<V> get values => _source.values;
}

mixin _MutableWithThrowMapMixin<K, V> implements Map<K, V> {
  @alwaysThrows
  R _throw<R>() {
    throw UnsupportedError('IMap<$K, $V> cannot be modified.');
  }

  @override
  void operator []=(K key, V value) => _throw();

  @override
  void addAll(Map<K, V> other) => _throw();

  @override
  void addEntries(Iterable<MapEntry<K, V>> newEntries) => _throw();

  @override
  void clear() => _throw();

  @override
  V putIfAbsent(K key, V Function() ifAbsent) => _throw();

  @override
  V remove(Object key) => _throw();

  @override
  void removeWhere(bool Function(K key, V value) predicate) => _throw();

  @override
  V update(K key, V Function(V value) update, {V Function() ifAbsent}) =>
      _throw();

  @override
  void updateAll(V Function(K key, V value) update) => _throw();
}
