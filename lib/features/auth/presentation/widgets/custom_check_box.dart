// ignore_for_file: library_private_types_in_public_api

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:sausau/core/resources/values_manager.dart';

class MyCustomCheckBox extends StatefulWidget {
  final bool value;
  final ValueChanged<bool> onChanged;
  final Color checkedIconColor;
  final Color checkedFillColor;
  final IconData checkedIcon;
  final Color uncheckedIconColor;
  final Color uncheckedFillColor;
  final IconData uncheckedIcon;
  final double? borderWidth;
  final double? checkBoxSize;
  final bool shouldShowBorder;
  final Color? borderColor;
  final double? borderRadius;
  final double? splashRadius;
  final Color? splashColor;
  final String? tooltip;
  final MouseCursor? mouseCursors;

  const MyCustomCheckBox({
    Key? key,
    required this.value,
    required this.onChanged,
    this.checkedIconColor = Colors.white,
    this.checkedFillColor = Colors.teal,
    this.checkedIcon = Icons.check,
    this.uncheckedIconColor = Colors.white,
    this.uncheckedFillColor = Colors.white,
    this.uncheckedIcon = Icons.close,
    this.borderWidth,
    this.checkBoxSize,
    this.shouldShowBorder = false,
    this.borderColor,
    this.borderRadius,
    this.splashRadius,
    this.splashColor,
    this.tooltip,
    this.mouseCursors,
  }) : super(key: key);

  @override
  _MyCustomCheckBoxState createState() => _MyCustomCheckBoxState();
}

class _MyCustomCheckBoxState extends State<MyCustomCheckBox> {
  late bool _checked;
  late CheckStatus _status;

  @override
  void initState() {
    super.initState();
    _init();
  }

  @override
  void didUpdateWidget(MyCustomCheckBox oldWidget) {
    super.didUpdateWidget(oldWidget);
    _init();
  }

  void _init() {
    _checked = widget.value;
    if (_checked) {
      _status = CheckStatus.checked;
    } else {
      _status = CheckStatus.unchecked;
    }
  }

  Widget _buildIcon() {
    late Color fillColor;
    late Color iconColor;
    late IconData iconData;

    switch (_status) {
      case CheckStatus.checked:
        fillColor = widget.checkedFillColor;
        iconColor = widget.checkedIconColor;
        iconData = widget.checkedIcon;
        break;
      case CheckStatus.unchecked:
        fillColor = widget.uncheckedFillColor;
        iconColor = widget.uncheckedIconColor;
        iconData = widget.uncheckedIcon;
        break;
    }

    return Container(
      height: 19.h,
      width: 19.h,
      padding: EdgeInsets.zero,
      decoration: BoxDecoration(
        color: fillColor,
        borderRadius:
            BorderRadius.all(Radius.circular(widget.borderRadius ?? 6)),
        border: Border.all(
          color: widget.shouldShowBorder
              ? (widget.borderColor ?? Colors.teal.withOpacity(0.6))
              : (!widget.value
                  ? (widget.borderColor ?? Colors.teal.withOpacity(0.6))
                  : Colors.transparent),
          width: widget.shouldShowBorder ? widget.borderWidth ?? 2.0 : 1.0,
        ),
      ),
      child: Icon(
        iconData,
        color: iconColor,
        size: widget.checkBoxSize ?? 15,
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return IconButton(
      alignment: Alignment.centerLeft,
      padding: const EdgeInsets.only(left: AppPadding.p4),
      icon: _buildIcon(),
      onPressed: () => widget.onChanged(!_checked),
      splashRadius: widget.splashRadius,
      splashColor: widget.splashColor,
      tooltip: widget.tooltip,
      mouseCursor: widget.mouseCursors ?? SystemMouseCursors.click,
    );
  }
}

enum CheckStatus {
  checked,
  unchecked,
}
