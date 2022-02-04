import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:line_icons/line_icons.dart';

typedef CategoryHeaderTapCallback = Function(bool shouldOpenList);
typedef SoldAvailableCallBack = Function();

class CategoryListItem extends StatefulWidget {
  const CategoryListItem(
      {Key? key,
      this.restorationId,
      this.initiallyExpanded = false,
      this.onTapEdit,
      this.onTapSold,
      this.onTapAvailable})
      : super(key: key);

  final String? restorationId;
  final bool initiallyExpanded;
  final CategoryHeaderTapCallback? onTapEdit;
  final SoldAvailableCallBack? onTapSold, onTapAvailable;

  @override
  _CategoryListItemState createState() => _CategoryListItemState();
}

class _CategoryListItemState extends State<CategoryListItem>
    with SingleTickerProviderStateMixin {
  static final Animatable<double> _easeInTween =
      CurveTween(curve: Curves.easeIn);
  static const _expandDuration = Duration(milliseconds: 200);
  late AnimationController _controller;
  late Animation<double> _childrenHeightFactor;
  late Animation<double> _headerChevronOpacity;
  late Animation<EdgeInsetsGeometry> _headerMargin;
  late Animation<EdgeInsetsGeometry> _childrenPadding;
  late Animation<BorderRadius?> _headerBorderRadius;

  @override
  void initState() {
    super.initState();

    _controller = AnimationController(duration: _expandDuration, vsync: this);
    _controller.addStatusListener((status) {
      setState(() {});
    });

    _childrenHeightFactor = _controller.drive(_easeInTween);
    _headerChevronOpacity = _controller.drive(_easeInTween);

    _headerMargin = EdgeInsetsGeometryTween(
            begin: const EdgeInsets.fromLTRB(16, 8, 16, 8),
            end: EdgeInsets.zero)
        .animate(_controller);
    _childrenPadding = EdgeInsetsGeometryTween(
            begin: const EdgeInsets.symmetric(horizontal: 16),
            end: EdgeInsets.zero)
        .animate(_controller);
    _headerBorderRadius = BorderRadiusTween(
            begin: BorderRadius.circular(10), end: BorderRadius.zero)
        .animate(_controller);

    if (widget.initiallyExpanded) {
      _controller.value = 1.0;
    }
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  bool? _shouldOpenList() {
    switch (_controller.status) {
      case AnimationStatus.completed:
      case AnimationStatus.forward:
        return false;
      case AnimationStatus.dismissed:
      case AnimationStatus.reverse:
        return true;
    }
  }

  void _handleTap() {
    if (_shouldOpenList()!) {
      _controller.forward();
    } else {
      _controller.reverse();
    }
  }

  Widget _buildHeaderWithChildren(BuildContext context, Widget? child) {
    return Column(mainAxisSize: MainAxisSize.max, children: [
      _CategoryHeader(
          margin: _headerMargin.value,
          borderRadius: _headerBorderRadius.value,
          chevronOpacity: _headerChevronOpacity.value,
          onTapEdit: _handleTap,
          onTapSold: widget.onTapSold,
          onTapAvailable: widget.onTapAvailable),
      Padding(
          padding: _childrenPadding.value,
          child: ClipRect(
              child: Align(
                  heightFactor: _childrenHeightFactor.value, child: child)))
    ]);
  }

  @override
  Widget build(BuildContext context) {
    return AnimatedBuilder(
        animation: _controller.view,
        builder: _buildHeaderWithChildren,
        child: _shouldOpenList()!
            ? null
            : _ExpandedCategoryDemos(categoryId: 1, category: 'Name'));
  }
}

class _ExpandedCategoryDemos extends StatelessWidget {
  _ExpandedCategoryDemos({
    Key? key,
    this.category,
    required this.categoryId,
  }) : super(key: key);

  final String? category;
  final int categoryId;

  final TextEditingController _controller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Column(
        key: ValueKey('${category}DemoList'),
        children: [_buildNewTaskField(context), const SizedBox(height: 12)]);
  }

  Widget _buildNewTaskField(BuildContext context) {
    return Container(
        padding: const EdgeInsets.only(top: 5, bottom: 5, left: 15, right: 15),
        child: TextField(
            controller: _controller,
            style: Get.textTheme.bodyText1!.copyWith(fontSize: 15),
            decoration: InputDecoration(
                border: UnderlineInputBorder(
                    borderSide:
                        BorderSide(color: Get.theme.primaryColor, width: 1)),
                enabledBorder: const UnderlineInputBorder(
                    borderSide: BorderSide(color: Colors.grey, width: 1)),
                errorBorder: UnderlineInputBorder(
                    borderSide:
                        BorderSide(color: Get.theme.primaryColor, width: 1)),
                focusedBorder: UnderlineInputBorder(
                    borderSide:
                        BorderSide(color: Get.theme.primaryColor, width: 1)),
                hintText: 'Edit price',
                hintStyle: Get.textTheme.headline4!.merge(
                    const TextStyle(fontSize: 15, color: Colors.black54)),
                prefixIconConstraints:
                    const BoxConstraints(maxHeight: 35, maxWidth: 40),
                prefixIcon: const SizedBox(
                    width: 25, child: Icon(LineIcons.edit, size: 20)),
                suffixIconConstraints:
                    const BoxConstraints(maxHeight: 16, maxWidth: 51)),
            onSubmitted: (input) async {
              if (input != '') {
                _controller.text = '';
              }
            }));
  }
}

class _CategoryHeader extends StatelessWidget {
  const _CategoryHeader({
    Key? key,
    this.margin,
    this.borderRadius,
    this.chevronOpacity,
    this.onTapEdit,
    this.onTapSold,
    this.onTapAvailable,
    this.icon,
  }) : super(key: key);

  final EdgeInsetsGeometry? margin;
  final BorderRadiusGeometry? borderRadius;
  final double? chevronOpacity;
  final GestureTapCallback? onTapEdit, onTapSold, onTapAvailable;
  final Icon? icon;

  @override
  Widget build(BuildContext context) {
    return Container(
        decoration: const BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.only(
                topLeft: Radius.circular(10),
                topRight: Radius.circular(10),
                bottomLeft: Radius.circular(10),
                bottomRight: Radius.circular(10)),
            boxShadow: [
              BoxShadow(
                  color: Color(0xA3CAC9C9),
                  spreadRadius: 0.1,
                  blurRadius: 0.1,
                  offset: Offset(0, 0.5))
            ]),
        margin: margin,
        child: Material(
            shape: RoundedRectangleBorder(borderRadius: borderRadius!),
            color: const Color(0xFFFFFFFF), //Colors.green.withOpacity(0.1),
            clipBehavior: Clip.antiAlias,
            child: Row(children: [
              const Icon(LineIcons.checkSquare, size: 20, color: Colors.green)
                  .paddingAll(3.0),
              const SizedBox(width: 7.0),
              Expanded(
                  child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                    Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text('Android - MI A2',
                              style: context.textTheme.bodyText1!
                                  .copyWith(fontSize: 16)),
                          Column(
                              crossAxisAlignment: CrossAxisAlignment.end,
                              children: [
                                Text('3 Dec | 3 days',
                                    style: context.textTheme.caption!
                                        .copyWith(fontSize: 12)),
                                Text('Rs 8000',
                                    style: context.textTheme.headline3!
                                        .copyWith(fontSize: 14))
                              ])
                        ]),
                    Row(children: [
                      Text('12/12',
                          style: context.textTheme.bodyText1!
                              .copyWith(fontSize: 14)),
                      const SizedBox(width: 5.0),
                      Text('Black',
                          style: context.textTheme.bodyText1!
                              .copyWith(fontSize: 14))
                    ]),
                    const SizedBox(height: 3.0),
                    Row(children: [
                      Text('Grade',
                          style: context.textTheme.caption!
                              .copyWith(fontSize: 14)),
                      const SizedBox(width: 5.0),
                      Text('A',
                          style: context.textTheme.headline5!
                              .copyWith(fontSize: 16))
                    ]),
                    const SizedBox(height: 10.0),
                    Row(mainAxisAlignment: MainAxisAlignment.end, children: [
                      InkWell(
                          child: Container(
                              width: 80,
                              padding: const EdgeInsets.only(
                                  top: 3, bottom: 3, right: 5, left: 5),
                              decoration: BoxDecoration(
                                  color: Colors.red.withOpacity(0.1),
                                  border: Border.all(
                                      color: Colors.red.withOpacity(0.4)),
                                  borderRadius: const BorderRadius.all(
                                      Radius.circular(15))),
                              child: Text('SOLD',
                                  textAlign: TextAlign.center,
                                  style: Get.textTheme.bodyText1!.copyWith(
                                      fontSize: 12, color: Colors.red))),
                          onTap: onTapSold),
                      const SizedBox(width: 10.0),
                      InkWell(
                          borderRadius: BorderRadius.circular(15),
                          onTap: onTapAvailable,
                          child: Container(
                              width: 85,
                              padding: const EdgeInsets.only(
                                  top: 3, bottom: 3, right: 5, left: 5),
                              decoration: BoxDecoration(
                                  color: Colors.green.withOpacity(0.1),
                                  border: Border.all(
                                      color: Colors.green.withOpacity(0.4)),
                                  borderRadius: const BorderRadius.all(
                                      Radius.circular(15))),
                              child: Text('AVAILABLE',
                                  textAlign: TextAlign.center,
                                  style: context.textTheme.bodyText1!.copyWith(
                                      fontSize: 12, color: Colors.green)))),
                      const SizedBox(width: 10.0),
                      InkWell(
                          child: Container(
                              width: 85,
                              padding: const EdgeInsets.only(
                                  top: 3, bottom: 3, right: 5, left: 5),
                              decoration: BoxDecoration(
                                  color: Colors.grey.withOpacity(0.1),
                                  border: Border.all(
                                      color: Colors.grey.withOpacity(0.4)),
                                  borderRadius: const BorderRadius.all(
                                      Radius.circular(15))),
                              child: Text('EDIT',
                                  textAlign: TextAlign.center,
                                  style: Get.textTheme.bodyText1!
                                      .copyWith(fontSize: 12))),
                          onTap: onTapEdit)
                    ])
                  ]))
            ]).paddingOnly(left: 5, right: 10, top: 10, bottom: 10)));
  }
}
