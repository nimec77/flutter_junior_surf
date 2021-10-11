import 'package:faker/faker.dart' show Faker;
import 'package:flutter_junior_surf/users/data/pods/address_pod.dart';
import 'package:flutter_junior_surf/users/data/pods/company_pod.dart';
import 'package:flutter_junior_surf/users/data/pods/geo_pod.dart';
import 'package:flutter_junior_surf/users/data/pods/user_pod.dart';

class UserHelper {
  UserHelper({int? seed}) : faker = Faker(seed: seed);

  final Faker faker;
  int _id = 1;

  UserPod fakeUserPod() {
    final geo = Geo(
      lat: faker.randomGenerator.decimal().toString(),
      lng: faker.randomGenerator.decimal().toString(),
    );
    final address = Address(
      street: faker.address.streetName(),
      suite: faker.address.streetAddress(),
      city: faker.address.city(),
      zipcode: faker.address.zipCode(),
      geo: geo,
    );
    final company = Company(
      name: faker.company.name(),
      catchPhrase: faker.company.position(),
      bs: faker.company.suffix(),
    );
    return UserPod(
      id: _id++,
      username: faker.person.name(),
      email: faker.internet.email(),
      address: address,
      phone: faker.phoneNumber.us(),
      website: faker.internet.httpsUrl(),
      company: company,
    );
  }

  List<UserPod> fakeUsersPod(int length) {
    return List.generate(length, (_) => fakeUserPod());
  }
}
