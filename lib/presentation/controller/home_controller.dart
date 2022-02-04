/*
Developer: Lakhani kamlesh
Create Date: 24-11-21 3:41
*/

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'total_record_controller.dart';
import '../../domain/repository/get_storage_repository.dart';

class HomeController extends GetxController with GetSingleTickerProviderStateMixin{
  static HomeController get to => Get.find();

  //Constructor
  final GetStorageRepository _getStorageRepository;
  HomeController(this._getStorageRepository);

  late final TabController tabController;

  final RxString _selectTabNameRx = 'pickUp'.tr.obs;
  get selectTabName => _selectTabNameRx.value;

  final RxInt _selectTotalRecordRx = 0.obs;
  get selectTotalRecord => _selectTotalRecordRx.value;

  @override
  void onInit() {
    super.onInit();
    tabController = TabController(length: 2, vsync: this);

    tabController.addListener(_tabSelection);
  }

  _tabSelection() {
    switch (tabController.index) {
      case 0:
        selectTotalRecordGet(0);
        _selectTabNameRx.value = 'pickUp'.tr;
        break;
      case 1:
        selectTotalRecordGet(1);
        _selectTabNameRx.value = 'return'.tr;
        break;
      case 2:
        selectTotalRecordGet(2);
        _selectTabNameRx.value = 'postpone'.tr;
        break;
    }
  }

  selectTotalRecordGet(int index) {
    _selectTotalRecordRx.value = TotalRecordController.to.selectTabTotalData[index];
  }
}
