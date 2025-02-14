import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class SearchField extends StatelessWidget {
  final TextEditingController controller;
  final Function(String) onChanged;
  final Function() onTapSearch;

  const SearchField({
    super.key,
    required this.onChanged,
    required this.onTapSearch,
    required this.controller,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(
        top: 40.0,
        left: 20.0,
        right: 20.0,
      ),
      child: Container(
        decoration: BoxDecoration(
          boxShadow: [
            BoxShadow(
              color: Colors.black.withOpacity(0.1),
              offset: const Offset(0, 5),
              blurRadius: 10,
              spreadRadius: 1,
            ),
          ],
        ),
        child: TextField(
          controller: controller,
          decoration: InputDecoration(
            contentPadding: const EdgeInsets.only(
              left: 29.0,
              right: 25.0,
              top: 15.0,
              bottom: 15.0,
            ),
            border: OutlineInputBorder(
              borderSide: BorderSide.none,
              borderRadius: BorderRadius.circular(30.0),
            ),
            filled: true,
            hintStyle: TextStyle(color: Colors.grey[400]),
            hintText: "Поиск",
            fillColor: Colors.white,
            suffixIcon: Padding(
              padding: const EdgeInsets.only(right: 20.0),
              child: IconButton(
                icon: SvgPicture.asset('assets/icons/Search.svg'),
                onPressed: onTapSearch,
              ),
            ),
          ),
          onChanged: onChanged,
        ),
      ),
    );
  }
}
