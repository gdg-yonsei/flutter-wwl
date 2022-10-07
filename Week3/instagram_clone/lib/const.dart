class FeedData {
  int id;
  String name;
  String profileImgUrl;
  String region;
  int likes;
  String imgUrl;
  String description;
  List<Comment> comments;

  FeedData(this.id, this.name, this.profileImgUrl, this.region, this.likes,
      this.imgUrl, this.description, this.comments);
}

class Comment {
  int id;
  String name;
  String comment;

  Comment(this.id, this.name, this.comment);
}

final List<FeedData> feedListData = [
  FeedData(0, "gdsc", "", "Sinchon, Seoul", 235, "", "hi, desc", []),
  FeedData(0, "gdsc", "", "Sinchon, Seoul", 235, "", "hi, desc", []),
];
