part of 'i_collection.dart';

class ISet<E> extends _ICollection<Set<E>>
    with
        _ImmutableIterableMixin<E, Set<E>>,
        _ImmutableSetMixin<E>,
        _MutableWithThrowSetMixin<E> {
  @literal
  const ISet(Set<E> source) : super(source);

  ISet.of(Iterable<E> source) : super(Set.of(source));
}

mixin _ImmutableSetMixin<E> on _ICollection<Set<E>> implements Set<E> {
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

mixin _MutableWithThrowSetMixin<E> implements Set<E> {
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
