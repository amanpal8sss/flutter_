import 'package:flutter/material.dart';
import 'package:pob_ui/screens/pob/pob_page/pob_list.dart';
import 'package:pob_ui/screens/pob/pob_page/pob_new_page.dart';

import '../screens/pob/pob_page/pob_page.dart';


const pob = PobList();
const pobDetail = PobPage();
const pobNew = PobNewPage();


const pobPageRoute = "/";
const pobDetailPageRoute = "/pobDetail";
const newPobPageRoute = "/pobNew";

final Map<String, Widget Function(BuildContext)> appRoutes = {
 pobPageRoute: (_) => pob,
 pobDetailPageRoute: (_) => pobDetail,
 newPobPageRoute: (_) => pobNew,
};