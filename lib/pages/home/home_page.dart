import 'package:e_commerce_app/widgets/filter_button.dart';
import 'package:e_commerce_app/widgets/product_card.dart';
import 'package:e_commerce_app/widgets/search_input.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.shade100,
      body: SingleChildScrollView(
        padding: EdgeInsets.only(top: MediaQuery.of(context).padding.top),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20.0),
              child: Row(
                children: [
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Text(
                          "Hello Emmanuel,",
                          style: TextStyle(
                            fontSize: 18.0,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        Text(
                          "Whats are you buying today?",
                          style: TextStyle(
                            color: Colors.black.withOpacity(0.5),
                            fontSize: 16.0,
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                      ],
                    ),
                  ),
                  IconButton(
                    padding: EdgeInsets.zero,
                    onPressed: () {},
                    icon: Container(
                        width: 48.0,
                        height: 48.0,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(24.0),
                          border: Border.all(
                            color: Colors.black.withOpacity(0.5),
                            width: 0.5,
                          ),
                        ),
                        child: const Icon(Icons.shopping_basket_outlined)),
                  )
                ],
              ),
            ),
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 20.0, vertical: 24.0),
              child: SearchInput(),
            ),
            const SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              padding: EdgeInsets.only(left: 20.0, right: 8.0),
              child: Row(
                children: [
                  FilterButton(label: "All", icon: Icons.smartphone),
                  FilterButton(
                    label: "Computers",
                    icon: Icons.desktop_mac_outlined,
                  ),
                  FilterButton(label: "Headsets", icon: Icons.headset),
                  FilterButton(label: "Laptops", icon: Icons.computer),
                  FilterButton(label: "Speakers", icon: Icons.speaker),
                  FilterButton(label: "Others", icon: Icons.more_horiz),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(
                left: 20.0,
                right: 8.0,
                top: 24.0,
                bottom: 12.0,
              ),
              child: Row(
                children: [
                  const Expanded(
                    child: Text(
                      "Trending sales",
                      style: TextStyle(
                        fontSize: 20.0,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  TextButton(
                    onPressed: () {},
                    child: const Text(
                      "See all",
                      style: TextStyle(
                        color: Colors.blueAccent,
                      ),
                    ),
                  )
                ],
              ),
            ),
            SizedBox(
              width: double.infinity,
              height: 300.0,
              child: ListView.separated(
                scrollDirection: Axis.horizontal,
                padding: const EdgeInsets.symmetric(horizontal: 20.0),
                itemBuilder: (ctx, index) => const ProductCard(),
                separatorBuilder: (ctx, index) => const SizedBox(width: 16.0),
                itemCount: 10,
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(
                left: 20.0,
                right: 8.0,
                top: 24.0,
                bottom: 12.0,
              ),
              child: Row(
                children: [
                  const Expanded(
                    child: Text(
                      "Recently viewed",
                      style: TextStyle(
                        fontSize: 20.0,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  TextButton(
                    onPressed: () {},
                    child: const Text(
                      "See all",
                      style: TextStyle(
                        color: Colors.blueAccent,
                      ),
                    ),
                  )
                ],
              ),
            ),
            SizedBox(
              width: double.infinity,
              height: 300.0,
              child: ListView.separated(
                scrollDirection: Axis.horizontal,
                padding: const EdgeInsets.symmetric(horizontal: 20.0),
                itemBuilder: (ctx, index) => const ProductCard(),
                separatorBuilder: (ctx, index) => const SizedBox(width: 16.0),
                itemCount: 10,
              ),
            )
          ],
        ),
      ),
    );
  }
}
