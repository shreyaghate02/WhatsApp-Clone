import 'package:flutter/material.dart';
import './select_contact.dart';
import 'home.dart';
import '../call_list/select_call_contact.dart';

buildFloatingActionButton(BuildContext context, TabController tabController) {
  if (getIsChatList(tabController)) {
    return FloatingActionButton(
      onPressed: () {
        Navigator.of(context).push(MaterialPageRoute(builder: (_) {
          return SelectContact();
        }));
      },
      child: Icon(
        Icons.message,
      ),
    );
  } else if (getIsCallList(tabController)) {
    return FloatingActionButton(
      onPressed: () {
        Navigator.of(context).push(MaterialPageRoute(builder: (_) {
          return SelectCallContact();
        }));
      },
      child: Icon(
        Icons.add_call,
      ),
    );
  }

  return null;
}
