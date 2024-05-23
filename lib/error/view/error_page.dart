import 'package:flutter/material.dart';
import 'package:strawberry/l10n/l10n.dart';

class ErrorPage extends StatelessWidget {
  const ErrorPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(context.l10n.errorAppBarTitle),
      ),
    );
  }
}
