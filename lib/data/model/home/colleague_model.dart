class ColleagueModel {
  int colleagueId;
  String colleagueName;
  String? image;

  ColleagueModel({
    required this.colleagueId,
    required this.colleagueName,
    this.image,
  });

  static List<ColleagueModel> fromJsonToModel(List<dynamic> response) {
    return response.map((data) {
      return ColleagueModel(
        colleagueId: data['colleague_id'],
        colleagueName: data['colleague_name'],
        image: data['image'],
      );
    }).toList();
  }
}
