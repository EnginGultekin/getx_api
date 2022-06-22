


import '../models/personel.dart';
import '../provider/personel_provider.dart';

class PersonalRepository {

  final PersonalProvider _personelProvider = PersonalProvider();

  Future<List<Personal>> callPerson() async {
    List<Personal> personList = [];

    try {
      final response = await _personelProvider.callPerson();
      if (response.statusCode == 200) {
        var result = response.body;
        for (var element in result) {
          personList.add(personalFromJson(element));
          print(personList.length);
        }
      } else {
        print(response.statusCode);
      }
    } catch (e) {
      print(e.toString());
    }

    return personList;
  }


}

