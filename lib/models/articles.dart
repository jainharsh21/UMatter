class Articles {
  String articleID;
  String title;
  String text;
  String catering;
  String topicType;
  String userID;

  Articles(String articleID, String title, String text, String catering,
      String topicType, String userID) {
    this.articleID = articleID;
    this.title = title;
    this.text = text;
    this.catering = catering;
    this.topicType = topicType;
    this.userID = userID;
  }

  Articles.fromJson(Map json)
      : articleID = json['_id'],
        title = json['title'],
        text = json['text'],
        catering = json['catering'],
        topicType = json['topicType'],
        userID = json['userID'];

  Map toJson() {
    return {
      '_id': articleID,
      'title': title,
      'text': text,
      'catering': catering,
      'topicType': topicType,
      'userID': userID
    };
  }
}
