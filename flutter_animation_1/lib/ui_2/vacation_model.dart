
class VacationModel {
  String url;
  String name;
  VacationModel(this.url, this.name);

  static List<VacationModel> generate() {
    return [
      VacationModel("assets/images/1.jpg", "Japan"),
      VacationModel("assets/images/2.jpg", "Franch"),
      VacationModel("assets/images/3.jpg", "Paris"),
      VacationModel("assets/images/4.jpg", "London"),
      VacationModel("assets/images/5.jpg", "China"),
    ];
  }
}
