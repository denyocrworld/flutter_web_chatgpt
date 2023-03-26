import 'package:flutter/material.dart';
import 'package:landing_page/core.dart';
import 'package:landing_page/module/home/widget/feature_section.dart';
import 'package:landing_page/module/home/widget/footer.dart';
import 'package:landing_page/module/home/widget/header.dart';
import 'package:landing_page/module/home/widget/headline.dart';
import 'package:landing_page/module/home/widget/post_card.dart';
import 'package:landing_page/module/home/widget/pricing_table_section.dart';
import 'package:landing_page/module/home/widget/testimonial_section.dart';
import '../controller/home_controller.dart';

class HomeView extends StatefulWidget {
  const HomeView({Key? key}) : super(key: key);

  Widget build(context, HomeController controller) {
    controller.view = this;

    return Scaffold(
      body: SingleChildScrollView(
        controller: ScrollController(),
        child: Container(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            children: [
              Header(),
              const SizedBox(
                height: 20.0,
              ),
              const Headline(),
              const SizedBox(
                height: 20.0,
              ),
              const Text(
                'Jobs',
                style: TextStyle(
                  fontSize: 32.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
              GridView.builder(
                padding: EdgeInsets.zero,
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  childAspectRatio: 1 / 1.1,
                  crossAxisCount: 3,
                  mainAxisSpacing: 10,
                  crossAxisSpacing: 10,
                ),
                itemCount: controller.posts.length,
                shrinkWrap: true,
                physics: const ScrollPhysics(),
                itemBuilder: (BuildContext context, int index) {
                  var item = controller.posts[index];
                  return PostCard(
                    photo: item["photo"],
                    title: item["title"],
                    category: item["category"],
                    createdAt: item["created_at"],
                  );
                },
              ),
              const SizedBox(
                height: 20.0,
              ),
              const FeaturesSection(),
              const SizedBox(
                height: 20.0,
              ),
              const TestimonialSection(),
              const SizedBox(
                height: 20.0,
              ),
              const PricingTableSection(),
              const SizedBox(
                height: 20.0,
              ),
              const Footer(),
            ],
          ),
        ),
      ),
    );
  }

  @override
  State<HomeView> createState() => HomeController();
}
