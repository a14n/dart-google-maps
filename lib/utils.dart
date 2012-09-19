class _Constant<T> {
  static findIn(Object value, List<_Constant> elements) {
    final matchingElements = elements.filter((e) => e.value == value);
    if (matchingElements.length === 1) {
      return matchingElements.iterator().next();
    } else {
      return null;
    }
  }

  final T value;

  const _Constant.fromValue(T this.value);
}

Object _transformIfNotNull(Object nullable, Object transform(Object)) {
  return nullable === null ? null : transform(nullable);
}