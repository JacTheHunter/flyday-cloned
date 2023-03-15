extension AddOrRemove<E> on List<E> {
  void addOrRemove(E item) {
    if (contains(item)) {
      remove(item);
    } else {
      add(item);
    }
  }
}
