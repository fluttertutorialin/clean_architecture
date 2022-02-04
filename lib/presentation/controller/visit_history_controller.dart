import 'package:get/get.dart';
import 'package:intl/intl.dart';

class VisitHistoryController extends GetxController{
  String startDateTime = DateFormat('dd-MM-yyyy').format(DateTime.now());
  String endDateTime = DateFormat('dd-MM-yyyy').format(DateTime.now());

}