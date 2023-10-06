class Feed {
  String message = "";
  String name = "";
  String username = "";
  String date = "";
  String comments = "";

  updateName(String newName) {
    return name = newName;
  }

  Feed(
      {required this.message,
      required this.name,
      required this.username,
      required this.date,
      required this.comments});
}
