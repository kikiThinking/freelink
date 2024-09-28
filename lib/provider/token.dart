class Token {
  late String usertoken;
  late String refreshtoken;

  Token({required this.usertoken, required this.refreshtoken});

  void updaterefreshtoken(String token) {
    refreshtoken = token;
  }

  void updateusertoken(String token) {
    usertoken = token;
  }
}
