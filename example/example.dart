import 'package:flutter/material.dart';

void main() async {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Simpe_TimeLine',
      home:
          CustomeTimeline(itemCount: 3, label: 'label', labelData: 'labelData'),
    );
  }
}

class CustomeTimeline extends StatelessWidget {
  final int itemCount;
  Widget? nodeWidget;
  double? nodewidth;
  double? nodeHeight;
  Color? nodeColor;

  Widget? lineWidget;
  double? lineHeight;
  double? linewidth;
  Color? lineColor;
  MainAxisAlignment? mainAxisAlignment;
  CrossAxisAlignment? crossAxisAlignment;

  final String label;

  final String labelData;
  final TextStyle? labelTextStyle;
  final TextStyle? labelDataTextStyle;
  CustomeTimeline({
    Key? key,
    required this.itemCount,
    required this.label,
    required this.labelData,
    this.labelTextStyle,
    this.labelDataTextStyle,
    this.nodeWidget,
    this.nodeHeight,
    this.nodewidth,
    this.nodeColor,
    this.lineWidget,
    this.lineHeight,
    this.linewidth,
    this.lineColor,
    this.mainAxisAlignment,
    this.crossAxisAlignment,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: ListView.builder(
          shrinkWrap: true,
          itemCount: itemCount,
          itemBuilder: (context, index) => Row(
            crossAxisAlignment: crossAxisAlignment ?? CrossAxisAlignment.start,
            mainAxisAlignment: mainAxisAlignment ?? MainAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 8.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    nodeWidget ??
                        Container(
                          width: nodewidth ?? 50,
                          height: nodeHeight ?? 50,
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            color: nodeColor ?? Colors.black,
                          ),
                        ),
                    index == itemCount - 1
                        ? const SizedBox()
                        : lineWidget ??
                            Container(
                              margin: const EdgeInsets.only(left: 22.0),
                              alignment: Alignment.center,
                              height: lineHeight ?? 60,
                              width: linewidth ?? 5,
                              decoration: BoxDecoration(
                                color: lineColor ?? Colors.black,
                              ),
                            ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 20.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      label,
                      style: labelTextStyle ??
                          const TextStyle(
                            fontSize: 18,
                            color: Colors.black,
                          ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 2.0),
                      child: Text(
                        labelData,
                        overflow: TextOverflow.clip,
                        style: labelDataTextStyle ??
                            const TextStyle(
                              fontSize: 18,
                              color: Colors.black,
                            ),
                      ),
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
