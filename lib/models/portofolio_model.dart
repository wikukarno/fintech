class PortofolioModel {
  int? id;
  String? title;
  String? kategori;
  String? thumbnail;
  String? published;

  PortofolioModel({
    this.id,
    this.title,
    this.kategori,
    this.thumbnail,
    this.published,
  });

  PortofolioModel.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    title = json['title'];
    kategori = json['kategori'];
    thumbnail = json['thumbnail'];
    published = json['published'];
  }

  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'title': title,
      'kategori': kategori,
      'thumbnail': thumbnail,
      'published': published,
    };
  }
}
