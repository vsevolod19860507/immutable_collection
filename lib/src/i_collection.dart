import 'dart:collection';
import 'dart:math';

import 'package:meta/meta.dart';
import 'package:collection/collection.dart';

part 'i_iterable.dart';
part 'i_list.dart';
part 'i_set.dart';
part 'i_map.dart';

@immutable
abstract class _ICollection<T> {
  final T _source;

  @literal
  const _ICollection(this._source) : assert(_source != null);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash([runtimeType.hashCode, this]);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        identical(runtimeType, other.runtimeType) &&
            const DeepCollectionEquality().equals(this, other);
  }

  @override
  String toString() => _source.toString();
}
