import "package:flutter/material.dart";
import 'package:PereaWidgets/Inicio.dart';
import "package:PereaWidgets/AspectRatio.dart";
import 'package:PereaWidgets/AutoComplete.dart';
import 'package:PereaWidgets/BackdropFilter.dart';
import 'package:PereaWidgets/Banner.dart';
import 'package:PereaWidgets/baseline.dart';
import 'package:PereaWidgets/Block.dart';
import 'package:PereaWidgets/button.dart';
import 'package:PereaWidgets/bottomSheet.dart';
import 'package:PereaWidgets/Builder.dart';
import 'package:PereaWidgets/appbar.dart';

void main() => runApp(MirutasApp());

class MirutasApp extends StatelessWidget {
  const MirutasApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "entre paginas routes",
      initialRoute: "/",
      routes: {
        "/": (context) => const Inicio(),
        "/appbar": (context) => const Myappbar(),
        "/AspectRatio": (context) => const aspectratio(),
        "/AutoComplete": (context) => const AutoCompleteExample(),
        "/BackDropFilter": (context) => const backdrop(),
        "/Banner": (context) => const CustomBannerExample(),
        "/Baseline": (context) => const BaselineExample(),
        "/Block": (context) => const Block(),
        "/button": (context) => const Button(),
        "/bottom": (context) => const Bottom(),
        "/builder": (context) => const Builders(),
      },
    );
  }
}
