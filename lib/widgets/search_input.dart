import 'package:flutter/material.dart';

class SearchInput extends StatelessWidget {
  const SearchInput({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      alignment: Alignment.centerLeft,
      height: 48.0,
      decoration: BoxDecoration(
        color: Colors.grey.shade200,
        borderRadius: BorderRadius.circular(24.0),
      ),
      child: Stack(
        children: [
          const SizedBox(
            width: 56.0,
            height: 48.0,
            child: Icon(
              Icons.search,
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 48.0),
            child: TextField(
              decoration: InputDecoration(
                border: InputBorder.none,
                hintText: "Search products",
                hintStyle: TextStyle(
                  color: Colors.black.withOpacity(0.3),
                  fontSize: 14.0,
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
