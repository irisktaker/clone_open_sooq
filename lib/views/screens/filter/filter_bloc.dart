class CitiesModule {
  String name;
  CitiesModule({required this.name});
}

class FilterBloc {
  List<CitiesModule> jordanCitiesList = [
    CitiesModule(name: "All"),
    CitiesModule(name: "Amman"),
    CitiesModule(name: "Zarqa"),
    CitiesModule(name: "Irbid"),
    CitiesModule(name: "Russeifa"),
    CitiesModule(name: "Al-Quwaysimah"),
    CitiesModule(name: "Wadi as-Ser"),
    CitiesModule(name: "Tila al-Ali"),
    CitiesModule(name: "Khuraybat as-Suq"),
    CitiesModule(name: "Aqaba"),
    CitiesModule(name: "as-Salt"),
    CitiesModule(name: "Ar Ramtha"),
    CitiesModule(name: "Madaba"),
    CitiesModule(name: "al-Jubayhah"),
    CitiesModule(name: "al-Baq'a"),
    CitiesModule(name: "Suwaylih"),
    CitiesModule(name: "Mafraq"),
    CitiesModule(name: "Sahab"),
    CitiesModule(name: "Muhayyam Hatin"),
    CitiesModule(name: "Ayn al-Basha"),
    CitiesModule(name: "Umm Qushayr"),
  ];
}
