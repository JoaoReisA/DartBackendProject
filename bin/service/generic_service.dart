abstract class GenericService<T> {
  T findOne(int id);
  List<T> findALl();
  bool save(T value);
  bool delete(int id);
}
