import 'package:flutter/material.dart';
import 'package:webifypro/centeredView.dart';
import 'package:webifypro/widgets/aboutUs.dart';
import 'package:webifypro/widgets/addHomeImage.dart';
import 'package:webifypro/widgets/customAppBar.dart';
import 'package:webifypro/widgets/footer.dart';
import 'package:webifypro/widgets/getStartButton.dart';

import '../constanst.dart';
import '../widgets/addWelcomeText.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    double height = getHeight(context);
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 100,
        flexibleSpace: CustomAppBar(),
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              CenteredView(
                child: Row(
                  children: [
                    Column(
                      children: [
                        addWelcomeText(),
                        SizedBox(
                          height: 30,
                        ),
                        GetStartButton(),
                      ],
                    ),
                    SizedBox(
                      width: 50,
                    ),
                    addHomeImage(),
                  ],
                ),
              ),
              AboutUs(),
              SizedBox(
                height: 30,
              ),
              Footer(),
            ],
          ),
        ),
      ),
    );
  }
}
