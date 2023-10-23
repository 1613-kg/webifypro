import 'package:flutter/material.dart';
import 'package:webifypro/centeredView.dart';
import 'package:webifypro/widgets/about_us_info_text.dart';

class AboutUs extends StatelessWidget {
  const AboutUs({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
        color: Colors.grey.shade100,
        child: CenteredView(
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  AboutUsInfoText(
                      title:
                          "Get Professional Quality Design and Copy with AI-Powered Website Builder",
                      content:
                          "No design or writing skills? No problem. Our AI website builder creates professional-quality designs and copy that perfectly align with your brand. Say goodbye to the hassle of website creation and let AI do the work.",
                      points: [
                        "No design or copywriting skills",
                        "Industry leading design and copy",
                        "Fast and easy website creation"
                      ]),
                  ImageForInfo(),
                ],
              ),
              SizedBox(
                height: 25,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  ImageForInfo(),
                  AboutUsInfoText(
                      title: "title", content: "content", points: ["points"]),
                ],
              ),
              SizedBox(
                height: 25,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  AboutUsInfoText(
                      title: "title", content: "content", points: ["points"]),
                  ImageForInfo(),
                ],
              ),
              SizedBox(
                height: 25,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  ImageForInfo(),
                  AboutUsInfoText(
                      title: "title", content: "content", points: ["points"]),
                ],
              ),
            ],
          ),
        ));
  }

  Widget ImageForInfo() {
    return Material(
      elevation: 5,
      child: Container(
        height: 350,
        width: 300,
        child: Image.asset(
          "assets/images/home.jpg",
          fit: BoxFit.cover,
        ),
      ),
    );
  }
}
