class AlbumModel {
  final int userId, id;
  final String title;

  AlbumModel({
    required this.userId,
    required this.id,
    required this.title,
  });

  factory AlbumModel.fromJson(Map<String, dynamic> jsondata) {
    return AlbumModel(
      userId: jsondata['userId'],
      id: jsondata['id'],
      title: jsondata['title'],
    );
  }
}
