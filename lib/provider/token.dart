class Token {
  String usertoken;
  String refreshtoken;

  Token({required this.usertoken, required this.refreshtoken});
  void updaterefreshtoken(String token) {
    refreshtoken = token;
  }
  void updateusertoken(String token) {
    usertoken = token;
  }
}
