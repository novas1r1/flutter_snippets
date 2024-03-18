class Wrapped<T> {
  final T value;

  const Wrapped.value(this.value);
}

/* example */
Test copyWithNull({
    Wrapped<String?>? value,
}) {
  return Test(
    value: value != null ? value.value : this.value,
  );
}
