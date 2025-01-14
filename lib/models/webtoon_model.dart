class WebtoonModel {
  // late final String title, thumb, id;
  final String title, thumb, id;

  // WebtoonModel({
  //   // 위 변수 선언 중 final String title, thumb, id; 과 함께 사용할 수 있음.
  //   required this.title,
  //   required this.thumb,
  //   required this.id,
  // });

  // WebtoonModel(Map<String, dynamic> json) {
  //   // 위 변수 선언 중 late final~ 과 함께 사용할 수 있음.
  //   title = json['title'];
  //   thumb = json['thumb'];
  //   id = json['id'];
  // }

  WebtoonModel.fromJson(Map<String, dynamic> json)
      // 위 변수 선언 중 final String title, thumb, id; 과 함께 사용할 수 있음.
      : title = json['title'],
        thumb = json['thumb'],
        id = json['id'];
}
