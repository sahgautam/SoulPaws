class User {
  String userId;
  String name;
  // Other user properties

  User({
    required this.userId,
    required this.name,
    // Other user property assignments
  });
}

class PetShopApp {
  User? currentUser;

  void login(String userId, String name) {
    // Perform login logic, such as validating user credentials
    currentUser = User(userId: userId, name: name);
    print('Login successful. Welcome, ${currentUser!.name}!');
  }

  void logout() {
    if (currentUser != null) {
      print('Logging out ${currentUser!.name}...');
      currentUser = null;
      print('Logout successful.');
    } else {
      print('No user is currently logged in.');
    }
  }
}

void main() {
  PetShopApp petShopApp = PetShopApp();

  petShopApp.login('123', 'John Doe');
  // Perform actions as a logged-in user

  petShopApp.logout();
}
