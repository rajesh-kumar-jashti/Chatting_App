import 'package:chatty/Config/Images.dart';
import 'package:chatty/Config/Strings.dart';
import 'package:chatty/Pages/HomPage/Widget/ChatsList.dart';
import 'package:chatty/Pages/HomPage/Widget/TabBar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:get/get_navigation/get_navigation.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> with TickerProviderStateMixin{
  @override
  Widget build(BuildContext context) {
    TabController tabController = TabController(length: 3, vsync: this);

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.primaryContainer,
        title: Padding(
          padding: const EdgeInsets.only(top: 15),
          child: Text(
            AppString.appName,
            style: Theme.of(context).textTheme.headlineSmall,
          ),
        ),
        leading: Padding(
          padding: const EdgeInsets.only(top: 15, left: 8),
          child: SvgPicture.asset(
            AssetsImage.appIconSVG,
          ),
        ),
        
        actions: [
          IconButton(
            onPressed: (){}, 
            icon: Icon(
              Icons.search,
            )
          ),
          IconButton(
            onPressed: (){
              Get.toNamed("/profilePage");
            }, 
            icon: Icon(
              Icons.more_vert,
            )
          ),
        
        ],
        bottom: myTabBar(tabController, context),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        backgroundColor: Theme.of(context).colorScheme.primary,
        child: Icon(
          Icons.add,
          color: Theme.of(context).colorScheme.onBackground,
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(10.0),
        child: TabBarView(controller: tabController, 
          children: [
            ChatsList(),
            ListView(
              children: [
                ListTile(
                  title: Text("Name Nit"),
                )
              ],
            ),
            ListView(
              children: [
                ListTile(
                  title: Text("Name Nit"),
                )
              ],
            )
          ]),
      )
    );
  }
}