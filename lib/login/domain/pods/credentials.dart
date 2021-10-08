class Credentials {
  const Credentials({required this.email, required this.password});

  final String email;
  final String password;
}

class EmptyCredentials implements Credentials {
  const EmptyCredentials();

  @override
  String get email => '';

  @override
  String get password => '';

}