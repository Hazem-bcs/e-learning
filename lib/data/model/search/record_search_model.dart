class SearchDataModel {
  String text;

  SearchDataModel({required this.text});

  static List<SearchDataModel> fromJsonToModel(List<dynamic> response) {
    return response.map((data) {
      return SearchDataModel(
        text: data['search_text'],
      );
    }).toList();
  }
}
