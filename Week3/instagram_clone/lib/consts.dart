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
    FeedData(0, "gdsc", "https://picsum.photos/id/237/200/300", "Sinchon, Seoul",
            235,
            "https://picsum.photos/id/237/200/300",
            "hi, desc",
            [
                Comment(2, "yhm", "comment comment"),
                Comment(2, "kju", "sgsagd"),
                Comment(2, "hym", "sagd")
            ]
    ),
    FeedData(0, "abc", "https://picsum.photos/id/238/200/300", "Sinchon, Seoul",
            235,
            "https://picsum.photos/id/239/200/300",
            "hi, desc",
            [
                Comment(2, "cba", "sagdsfdg"),
                Comment(2, "eee", "asdfsdgvdfabfdagafdgadfgadfg"),
                Comment(2, "sfsfsefs", "sfvasdgvagvargaergasdgadgadfg")
            ]
    ),
];