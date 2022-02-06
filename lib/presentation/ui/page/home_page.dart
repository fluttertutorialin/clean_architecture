/*
Developer: Lakhani kamlesh
Create Date: 24-11-21 3:41
*/

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'page.dart';
import '../../controller/controller.dart';
import '../../../core/assets/assets.dart';

class HomePage extends GetView<HomeController> {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: NestedScrollView(
            floatHeaderSlivers: true,
            headerSliverBuilder: (context, innerBoxIsScrolled) {
              return [
                SliverOverlapAbsorber(
                    handle: NestedScrollView.sliverOverlapAbsorberHandleFor(
                        context),
                    sliver: SliverSafeArea(
                        top: false,
                        sliver: SliverAppBar(
                            title: Row(children: [
                              Wrap(children: [
                                Text('Total ',
                                    style: context.textTheme.headline1!.merge(
                                        const TextStyle(
                                            fontSize: 14,
                                            color: Colors.white))),
                                Obx(() => Text(
                                    '${controller.selectTotalRecord}'
                                        .padLeft(2, '0'),
                                    style: context.textTheme.headline5!.merge(
                                        const TextStyle(
                                            fontSize: 14,
                                            color: Colors.white)))),
                                Obx(() => Text(
                                    ' ${controller.selectTabName!.toLowerCase()} ',
                                    style: context.textTheme.caption!.merge(
                                        const TextStyle(
                                            fontSize: 14,
                                            color: Colors.white)))),
                                Text('${'available'.tr}.',
                                    style: context.textTheme.headline1!.merge(
                                        const TextStyle(
                                            fontSize: 14, color: Colors.white)))
                              ])
                            ]),
                            backgroundColor: Get.theme.primaryColor,
                            floating: true,
                            pinned: true,
                            snap: true,
                            leading: IconButton(
                                icon: const Icon(arrowLefAndroidIcon),
                                onPressed: () => Get.back()),
                            automaticallyImplyLeading: true,
                            forceElevated: innerBoxIsScrolled,
                            elevation: 0,
                            bottom: _buildHomeTabBar())))
              ];
            },
            body: Column(children: [
              Container(
                  margin: const EdgeInsets.all(10),
                  child: CupertinoSearchTextField(
                      onSubmitted: (value) {},
                      onSuffixTap: () {},
                      borderRadius: BorderRadius.circular(30),
                      padding: const EdgeInsets.symmetric(
                          horizontal: 5, vertical: 8),
                      suffixInsets: const EdgeInsets.only(right: 10),
                      prefixInsets:
                          const EdgeInsets.only(top: 10, bottom: 6, left: 10),
                      placeholderStyle:
                          const TextStyle(fontSize: 16, color: Colors.black45),
                      style: const TextStyle(fontSize: 16),
                      placeholder: 'Search')),
              Expanded(
                  child: TabBarView(
                      controller: controller.tabController,
                      children: [PickUpPage(), ReturnPage()]))
            ])));
  }

  _buildHomeTabBar() {
    return TabBar(
        controller: controller.tabController,
        indicator: const UnderlineTabIndicator(
            insets: EdgeInsets.symmetric(horizontal: 12),
            borderSide: BorderSide(
                color: Color(0xffFFFFFF),
                width: 2.0,
                style: BorderStyle.solid)),
        indicatorPadding: const EdgeInsets.only(left: 1, right: 1),
        tabs: ['Pick up', 'Return'].map((e) => Tab(child: Text(e))).toList(),
        labelColor: const Color(0xffFFFFFF),
        unselectedLabelColor: Colors.white70,
        labelStyle: Get.textTheme.headline1!.copyWith(fontSize: 16));
  }
}
