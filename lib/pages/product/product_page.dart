import 'package:flutter/material.dart';

class ProductPage extends StatelessWidget {
  const ProductPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Expanded(
            child: SingleChildScrollView(
              padding: EdgeInsets.only(top: MediaQuery.of(context).padding.top),
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20.0),
                    child: Row(
                      children: [
                        IconButton(
                          padding: EdgeInsets.zero,
                          onPressed: () {
                            Navigator.of(context).pop();
                          },
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
                              child: const Icon(Icons.arrow_back)),
                        ),
                        const Expanded(
                          child: Center(
                            child: Text(
                              "Product details",
                              style: TextStyle(
                                fontSize: 18.0,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
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
                              child:
                                  const Icon(Icons.shopping_basket_outlined)),
                        )
                      ],
                    ),
                  ),
                  const SizedBox(height: 24.0),
                  Container(
                    width: double.infinity,
                    height: 320.0,
                    decoration: BoxDecoration(
                      image: const DecorationImage(
                        image: AssetImage("assets/products/iphone.png"),
                        fit: BoxFit.contain,
                      ),
                      color: Colors.blueGrey.shade50,
                    ),
                    child: const Stack(
                      children: [],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(20.0),
                    child: Column(
                      children: [
                        Row(
                          children: [
                            const Expanded(
                              child: Text(
                                "Iphone 14 Pro",
                                style: TextStyle(
                                  fontSize: 22.0,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ),
                            IconButton(
                              onPressed: () {},
                              icon: const Icon(Icons.favorite),
                            )
                          ],
                        ),
                        Row(
                          children: [
                            Icon(
                              Icons.star_rounded,
                              color: Colors.yellowAccent.shade700,
                            ),
                            const SizedBox(width: 4.0),
                            const Text("4.8"),
                            Padding(
                              padding: const EdgeInsets.symmetric(
                                horizontal: 8.0,
                              ),
                              child: Container(
                                width: 1.0,
                                height: 14.0,
                                color: Colors.black.withOpacity(0.2),
                              ),
                            ),
                            const Text(
                              "193 reviews",
                              style: TextStyle(
                                color: Colors.blue,
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                          ],
                        ),
                        const SizedBox(height: 16.0),
                        const Text(
                          "Featuring the Always-On display, the first-ever 48MP camera on iPhone, Crash Detection, Emergency SOS via satellite, and an innovative new way to receive notifications and activities with the Dynamic Island.",
                        ),
                        const SizedBox(height: 16.0),
                        Row(
                          children: [
                            const Expanded(
                              child: Text(
                                "\$999.99",
                                style: TextStyle(
                                  fontSize: 20.0,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ),
                            IconButton(
                              padding: EdgeInsets.zero,
                              onPressed: () {},
                              icon: Container(
                                width: 36.0,
                                height: 36.0,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(18.0),
                                  border: Border.all(
                                    color: Colors.blue,
                                    width: 1,
                                  ),
                                ),
                                child: const Icon(
                                  Icons.remove,
                                  color: Colors.blue,
                                ),
                              ),
                            ),
                            Container(
                              padding: const EdgeInsets.symmetric(
                                horizontal: 8.0,
                              ),
                              child: const Text(
                                "1",
                                style: TextStyle(
                                  fontSize: 18.0,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ),
                            IconButton(
                              padding: EdgeInsets.zero,
                              onPressed: () {},
                              icon: Container(
                                width: 36.0,
                                height: 36.0,
                                decoration: const BoxDecoration(
                                  color: Colors.blue,
                                  borderRadius: BorderRadius.all(
                                    Radius.circular(18.0),
                                  ),
                                ),
                                child: const Icon(
                                  Icons.add,
                                  color: Colors.white,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                  Divider(
                    color: Colors.black.withOpacity(0.15),
                  ),
                  Container(
                    width: double.infinity,
                    padding: const EdgeInsets.symmetric(
                      horizontal: 20.0,
                      vertical: 16.0,
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Text(
                          "Promo code",
                          style: TextStyle(
                            fontSize: 14.0,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        const SizedBox(height: 8.0),
                        Container(
                          width: double.infinity,
                          height: 56.0,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(8.0),
                            border: Border.all(
                              color: Colors.black.withOpacity(0.3),
                              width: 0.5,
                            ),
                          ),
                          child: Stack(
                            children: [
                              TextField(
                                decoration: InputDecoration(
                                  border: InputBorder.none,
                                  contentPadding: const EdgeInsets.only(
                                    top: 2.0,
                                    left: 20.0,
                                    right: 20.0,
                                  ),
                                  hintText: "Enter promo code",
                                  hintStyle: TextStyle(
                                    color: Colors.black.withOpacity(0.5),
                                    fontSize: 14.0,
                                  ),
                                ),
                              ),
                              Positioned(
                                right: 0.0,
                                top: 0.0,
                                bottom: 0.0,
                                child: InkWell(
                                  onTap: () {
                                    print("Apply code");
                                  },
                                  child: Container(
                                    padding: const EdgeInsets.symmetric(
                                      horizontal: 16.0,
                                    ),
                                    child: const Center(
                                      child: Text(
                                        "Apply code",
                                        style: TextStyle(
                                          color: Colors.blue,
                                          fontWeight: FontWeight.bold,
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        )
                      ],
                    ),
                  )
                ],
              ),
            ),
          ),
          Container(
            decoration: BoxDecoration(
              border: Border(
                top: BorderSide(
                  color: Colors.black.withOpacity(0.15),
                ),
              ),
            ),
            child: Padding(
              padding: const EdgeInsets.only(
                top: 20.0,
                left: 20.0,
                right: 20.0,
                bottom: 32.0,
              ),
              child: InkWell(
                onTap: () {
                  print("Add item to bag");
                },
                radius: 28.0,
                child: Container(
                  padding: const EdgeInsets.symmetric(
                    horizontal: 24.0,
                  ),
                  height: 56.0,
                  decoration: BoxDecoration(
                    color: Colors.blue,
                    borderRadius: BorderRadius.circular(28.0),
                  ),
                  child: Row(
                    children: [
                      const Icon(
                        Icons.shopping_bag_outlined,
                        color: Colors.white,
                        size: 20.0,
                      ),
                      const SizedBox(width: 8.0),
                      const Text(
                        "Add item to bag",
                        style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      const Spacer(),
                      Container(
                        width: 1.0,
                        height: 20.0,
                        color: Colors.white.withOpacity(0.5),
                      ),
                      const Spacer(),
                      const Text(
                        "\$999.99",
                        style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
