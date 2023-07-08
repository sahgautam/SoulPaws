class User {
  String id;
  String name;
  String email;
  String password;

  User({
    required this.id,
    required this.name,
    required this.email,
    required this.password,
  });

  void changePassword(String currentPassword, String newPassword) {
    if (password == currentPassword) {
      password = newPassword;
      print('Password changed successfully.');
    } else {
      print('Invalid current password. Password change failed.');
    }
  }
}
