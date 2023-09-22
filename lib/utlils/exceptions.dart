class FirebaseErrorMapper {
  static mapErrorMessage(error) {
    switch (error.code) {
      case "invalid-email":
        return "Invalid Email!";
      case "wrong-password":
        return "Wrong Password";
      case "user-not-found":
        return "User with this email doesn't exist.";
      case "user-disabled":
        return "User with this email has been disabled.";
      case "too-many-requests":
        return "Too many requests";
      case "":
        return "Signing in with Email and Password is not enabled.";
      default:
        return "An undefined Error happened.";
    }
  }
}

// // Usage example:
// try {
//   // Firebase authentication code that may throw an exception
// } catch (error) {
//   const errorMessage = FirebaseErrorMapper.mapErrorMessage(error);
//   console.log(errorMessage);
// }
