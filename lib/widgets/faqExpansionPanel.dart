import 'package:flutter/material.dart';
import 'package:devtogether/design/colors.dart';
import '../data/Faq.dart';

class FaqExpansionPanel extends StatefulWidget implements PreferredSizeWidget {
  const FaqExpansionPanel({Key? key}) : super(key: key);

  @override
  _FaqExpansionPanelState createState() => _FaqExpansionPanelState();

  @override
  Size get preferredSize => throw UnimplementedError();
}

class _FaqExpansionPanelState extends State<FaqExpansionPanel> {
  @override
  Widget build(BuildContext context) {
    return ListView(
      physics: NeverScrollableScrollPhysics(), // 스크롤 비활성화
      shrinkWrap: true, // 내용물만큼만 공간 차지
      children: list.asMap().entries.map<Widget>((entry) {
        final index = entry.key;
        final faq = entry.value;
        return Card(
          margin: EdgeInsets.symmetric(vertical: 8.0, horizontal: 16.0),
          elevation: 4,
          child: CustomExpansionPanel(
            animationDuration: Duration(milliseconds: 700),
            headerBuilder: (BuildContext context, bool isExpanded) {
              return ListTile(
                title: Text(
                  'Q. ${faq.header}',
                  style: TextStyle(fontSize: 17, color: ColorStyles.textBlackColor),
                ),
              );
            },
            body: Padding(
              padding: EdgeInsets.all(16.0),
              child: Text(
                'A. ${faq.body}',
                style: TextStyle(fontSize: 15, color: ColorStyles.textBodyColor),
              ),
            ),
            isExpanded: faq.expanded,
            onExpansionChanged: (bool expanding) {
              setState(() {
                list[index].expanded = expanding;
              });
            },
          ),
        );
      }).toList(),
    );
  }

  @override
  Size get preferredSize => throw UnimplementedError();
}

class CustomExpansionPanel extends StatefulWidget {
  final Widget Function(BuildContext, bool) headerBuilder;
  final Widget body;
  final bool isExpanded;
  final ValueChanged<bool>? onExpansionChanged;
  final Duration animationDuration;

  const CustomExpansionPanel({
    Key? key,
    required this.headerBuilder,
    required this.body,
    required this.isExpanded,
    this.onExpansionChanged,
    this.animationDuration = const Duration(milliseconds: 200),
  }) : super(key: key);

  @override
  _CustomExpansionPanelState createState() => _CustomExpansionPanelState();
}

class _CustomExpansionPanelState extends State<CustomExpansionPanel> with SingleTickerProviderStateMixin {
  late AnimationController _controller;
  late Animation<double> _heightFactor;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
      vsync: this,
      duration: widget.animationDuration,
    );
    _heightFactor = _controller.drive(CurveTween(curve: Curves.fastOutSlowIn));
    if (widget.isExpanded) {
      _controller.value = 1.0;
    }
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  void _handleTap(bool expanded) {
    if (widget.onExpansionChanged != null) {
      widget.onExpansionChanged!(expanded);
    }
    if (expanded) {
      _controller.forward();
    } else {
      _controller.reverse();
    }
  }

  @override
  Widget build(BuildContext context) {
    return AnimatedBuilder(
      animation: _controller.view,
      builder: (context, child) {
        return Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            InkWell(
              onTap: () => _handleTap(!widget.isExpanded),
              child: Container(
                width: double.infinity,
                child: widget.headerBuilder(context, widget.isExpanded),
              ),
            ),
            ClipRect(
              child: Align(
                heightFactor: _heightFactor.value,
                child: child,
              ),
            ),
          ],
        );
      },
      child: widget.body,
    );
  }
}
