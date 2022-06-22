import 'package:get/get.dart';
import '../data/models/personel.dart';
import '../data/repository/personel_repository.dart';

class PersonalController extends GetxController {
  final _personalList = <Personal>[].obs;
  final PersonalRepository _personelRepository = PersonalRepository();

  List<Personal> get personalList => _personalList;
  set personalList(value) => _personalList.value = value;


  @override
  void onReady() async {
   await getPerson();
  }

  Future<void> getPerson() async {
    _personalList.value = await _personelRepository.callPerson();
  }
}
