class SignupWithEmailAndPasswordFailure {
  final String message;

  SignupWithEmailAndPasswordFailure(
      [this.message = "An Unknown error occured"]);

  factory SignupWithEmailAndPasswordFailure.code(String code) {
    switch (code) {
      case 'weak-password':
        return SignupWithEmailAndPasswordFailure(
            'Please Enter a stronger password');

      case 'invalid-email':
        return SignupWithEmailAndPasswordFailure('Please Enter a valid email');

      case 'email-already-in-use':
        return SignupWithEmailAndPasswordFailure(
            'An account already exists for that email');

      case 'operation-not-allowed':
        return SignupWithEmailAndPasswordFailure(
            'Operation is not allowed. Please contact support');

      case 'user-disabled':
        return SignupWithEmailAndPasswordFailure(
            'This user has been disabled. Please contact support');

      default:
        return SignupWithEmailAndPasswordFailure();
    }
  }
}
