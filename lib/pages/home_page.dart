import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'dart:convert';
import 'package:flutter_catalog/models/catalog.dart';
import '../widgets/drawer.dart';
import '../widgets/item_widget.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final int days = 30;
  final String tutorName = 'Ritesh';

  @override
  void initState() {
    super.initState();
    loadData();
  }

  //load products from json file
  loadData() async{
    final catalogJson = await rootBundle.loadString('assets/files/catalog.json');
    final decodedData = jsonDecode(catalogJson);
    var productsData = decodedData['products'];
    print(productsData);
  }

  @override
  Widget build(BuildContext context) {

    final dummyList = List.generate(20, (index) => CatalogModel.items[0]);
    return Scaffold(
      appBar: AppBar(
        title: Text('Catalog App'),
      ),
      body:Padding(
        padding: const EdgeInsets.all(16.0),
        child: ListView.builder(
          // itemCount: CatalogModel.items.length,
          // itemBuilder: (BuildContext context, int index) {  return ItemWidget(item: CatalogModel.items[index],);},

        //  DummyList data
          itemCount: dummyList.length,
          itemBuilder: (BuildContext context, int index) {  return ItemWidget(item: dummyList[index]);},
        ),
      ),
      drawer: MyDrawer(),
    );
  }
}
