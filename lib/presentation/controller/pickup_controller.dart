/*
Developer: Lakhani kamlesh
Create Date: 24-11-21 3:41

UPDATE DETAIL
- 24-11-21 03:41 (Lakhani kamlesh)
  - PICK UP CONTROLLER CREATE AND CALLING THE API.
*/

import 'package:get/get.dart';
import '../../domain/repository/get_storage_repository.dart';

class PickUpController extends GetxController {
  //Constructor
  final GetStorageRepository _getStorageRepository;

  PickUpController(this._getStorageRepository);
}
