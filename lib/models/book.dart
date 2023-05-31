class Book {
  int? bookId;
  String? name;
  String? author;
  int? votes;
  String? cover;
  String? url;

  Book({this.bookId, this.name, this.author, this.votes, this.cover, this.url});

  Book.fromJson(Map<String, dynamic> json) {
    bookId = json['book_id'];
    name = json['name'];
    author = json['author'];
    votes = json['votes'];
    cover = json['cover'];
    url = json['url'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['book_id'] = this.bookId;
    data['name'] = this.name;
    data['author'] = this.author;
    data['votes'] = this.votes;
    data['cover'] = this.cover;
    data['url'] = this.url;
    return data;
  }
}