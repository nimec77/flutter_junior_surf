import 'package:faker/faker.dart' show Faker;
import 'package:flutter_junior_surf/users/data/pods/address_pod.dart';
import 'package:flutter_junior_surf/users/data/pods/company_pod.dart';
import 'package:flutter_junior_surf/users/data/pods/geo_pod.dart';
import 'package:flutter_junior_surf/users/data/pods/user_pod.dart';

class UserHelper {
  UserHelper({int? seed}) : faker = Faker(seed: seed);

  final Faker faker;
  int _id = 0;

  String get randomGeo =>
      ((faker.randomGenerator.boolean() ? 1 : -1) * faker.randomGenerator.decimal()).toStringAsFixed(4);

  UserPod fakeUserPod() {
    final address = Address(
      street: faker.address.streetName(),
      suite: faker.address.streetAddress(),
      city: faker.address.city(),
      zipcode: faker.address.zipCode(),
      geo: Geo(lat: randomGeo, lng: randomGeo),
    );
    final company = Company(
      name: faker.company.name(),
      catchPhrase: faker.lorem.sentence(),
      bs: faker.company.position(),
    );
    return UserPod(
      id: ++_id,
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
