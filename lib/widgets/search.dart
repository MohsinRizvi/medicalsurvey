import "package:flutter/material.dart";
import 'package:etiqh/theme/theme.dart';

class search extends StatefulWidget {
  @override
  _searchState createState() => _searchState();
}

class _searchState extends State<search> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 75,
      // margin: EdgeInsets.symmetric(horizontal: 40.0),
      // margin: const EdgeInsets.only(top: 30.0, bottom: 40.0),
      child: Padding(
        padding: const EdgeInsets.fromLTRB(14.0, 8.0, 14.0, 8.0),
        child: Material(
          borderRadius: BorderRadius.circular(40.0),
          color: Colors.grey.withOpacity(0.2),
          elevation: 0.0,
          child: Padding(
            padding: const EdgeInsets.only(
              left: 2.0,
            ),
            child: ListTile(
              title: TextField(
                keyboardType: TextInputType.text,
                decoration: InputDecoration(
                    focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(
                          color: Colors.grey.withOpacity(0.0), width: 2.0),
                    ),
                    labelText: 'Search',
                    labelStyle: TextStyle(
                      color: MyColors.primaryColor,
                    ),
                    hintText: "Search",
                    border: InputBorder.none),
                // validator: (value) {
                //   if (value.isEmpty) {
                //     return "The search field cannot be empty";
                //   } else if (value.length < 1) {
                //     return "1 characters at least ";
                //   }
                //   return null;
                // },
              ),
              trailing: IconButton(
                icon: Icon(
                  Icons.search,
                  color: MyColors.primaryColor,
                  size: 20,
                ),
                onPressed: () {},
              ),
            ),
          ),
        ),
      ),
    );
  }
}
