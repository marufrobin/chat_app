class UserData {
  int id;
  String firstName;
  String lastName;
  String imageName;
  UserData(this.id, this.firstName, this.lastName, this.imageName);

  static List<UserData> userList() {
    return [
      UserData(1, "Maruf", "Robin", "images/face1.png"),
      UserData(2, "Maruf", "Robin", "images/face2.png"),
      UserData(3, "Maruf", "Robin", "images/face3.png"),
      UserData(4, "Maruf", "Robin", "images/face4.png"),
      UserData(5, "Maruf", "Robin", "images/face5.png"),
      UserData(6, "Maruf", "Robin", "images/face6.png")
    ];
  }
}
