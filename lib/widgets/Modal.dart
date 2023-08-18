import 'package:Test/theme.dart';
import 'package:flutter/material.dart';

class Modal extends StatefulWidget {

  const Modal({Key? key}) : super(key: key);

  @override
  _Modal createState() => _Modal();
}

class _Modal extends State<Modal> {
  var pageController = PageController();

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Theme.of(context).scaffoldBackgroundColor
      ),
      padding: EdgeInsets.only(top: 70, left: 20, right: 20, bottom: 30),
      child: Column(
        children: [
          Container(
            height: 30,
            child: Stack(
              fit: StackFit.expand,
              alignment: Alignment.topLeft,
              children: [
                Positioned(
                  child: Text("Demo modal",
                    style: nunitoTextStyle.copyWith(fontSize: 18, fontWeight: FontWeight.w500, height: 1.7),
                    textAlign: TextAlign.center
                  )
                ),
              ],
            )
          ),
          Expanded(
              child: PageView(
                physics: NeverScrollableScrollPhysics(),
                padEnds: false,
                children: [
                  Form(
                      child: Column(
                          children: [
                            SingleChildScrollView(
                              padding: EdgeInsets.only(top: 50),
                              child: Column(
                                children: [
                                  Container(
                                    width: 200,
                                    height: 200,
                                    color: Colors.grey.shade300,
                                    alignment: Alignment.center,
                                    child: Text("Demo content"),
                                  ),
                                  const SizedBox(height: 130),
                                  TextFormField(
                                    autofocus: true,
                                    textAlign: TextAlign.center
                                  )
                                ],
                              ),
                            ),
                            Spacer(),
                            Container(
                              padding: EdgeInsets.only(bottom: 30),
                              child: TextButton(
                                child: Text("Done"),
                                style: TextButton.styleFrom(
                                    backgroundColor: Colors.black,
                                    foregroundColor: Colors.white,
                                    padding: EdgeInsets.symmetric(horizontal: 40, vertical: 15),
                                    textStyle: TextStyle(fontSize: 16),
                                    disabledBackgroundColor: Colors.grey.shade400
                                ),
                                onPressed: () async {
                                  Navigator.pop(context);
                                },
                              ),
                            )
                          ]
                      )
                  )
                ],
                controller: pageController,
              )
          )
        ],
      )
    );
  }
}