import 'package:flutter/material.dart';

import '../models/partner.dart';
import './retro_button.dart';

class PartnerListTile extends StatelessWidget {
  final Partner partner;

  PartnerListTile({this.partner});

  Widget build(context) => ListTile(
      leading: Icon(Icons.fastfood),
      title: Text(partner.name),
      subtitle: Text(partner.details),
      trailing: RetroButton(title: "CLAIM", onPressed: null));
}
