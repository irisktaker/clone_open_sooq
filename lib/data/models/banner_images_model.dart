class CategoriesModel {
  final String image, name;
  bool badge;

  CategoriesModel(
      {required this.image, required this.name, this.badge = false});
}
