part of 'i_collection.dart';

/// Immutable Set.
class ISet<E> extends _ICollection<HashSet<E>>
    with
        _ImmutableIterableMixin<E, HashSet<E>>,
        _ImmutableHashSetMixin<E>,
        _MutableWithThrowHashSetMixin<E> {
  /// Creates an ISet instance from [source].
  /// Use only if you are sure that the [source] will not be modified in the future.
  @literal
  const ISet(HashSet<E> source) : super(source);

  /// Creates an empty ISet instance.
  ISet.empty() : super(HashSet.of({}));

  /// Creates an ISet instance from [source] by copying it.
  ISet.of(Iterable<E> source) : super(HashSet.of(source));
}

mixin _ImmutableHashSetMixin<E> on _ICollection<HashSet<E>>
    implements HashSet<E> {
  @override
  Set<R> cast<R>() => _source.cast();

  @override
  bool containsAll(Iterable<Object> other) => _source.containsAll(other);

  @override
  Set<E> difference(Set<Object> other) => _source.difference(other);

  @override
  Set<E> intersection(Set<Object> other) => _source.intersection(other);

  @override
  E lookup(Object object) => _source.lookup(object);

  @override
  Set<E> union(Set<E> other) => _source.union(other);
}

mixin _MutableWithThrowHashSetMixin<E> implements HashSet<E> {
  @alwaysThrows
  R _throw<R>() {
    throw UnsupportedError('ISet<$E> cannot be modified.');
  }

  @override
  bool add(E value) => _throw();

  @override
  void addAll(Iterable<E> elements) => _throw();

  @override
  void clear() => _throw();

  @override
  bool remove(Object value) => _throw();

  @override
  void removeAll(Iterable<Object> elements) => _throw();

  @override
  void removeWhere(bool Function(E element) test) => _throw();

  @override
  void retainAll(Iterable<Object> elements) => _throw();

  @override
  void retainWhere(bool Function(E element) test) => _throw();
}
