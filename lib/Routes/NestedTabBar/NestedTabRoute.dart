import 'package:flutter/material.dart';
import 'package:flutter_final/Routes/NestedTabBar/nestedTabBarView.dart';


class NestedTabRoute extends StatefulWidget {
  NestedTabRoute({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _NestedTabRoute createState() => _NestedTabRoute();
}

class _NestedTabRoute extends State<NestedTabRoute> with TickerProviderStateMixin {
  TabController _tabController;

  @override
  void initState() {
    super.initState();

    _tabController = new TabController(length: 3, vsync: this);
  }

  @override
  void dispose() {
    super.dispose();
    _tabController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("My Tab bar"),
      ),
      bottomNavigationBar: Material(
        color: Colors.white,
        child: TabBar(
          controller: _tabController,
          indicatorColor: Colors.teal,
          labelColor: Colors.teal,
          unselectedLabelColor: Colors.black54,
          tabs: <Widget>[
            Tab(
              icon: Icon(Icons.home),
            ),
            Tab(
              icon: Icon(Icons.email),
            ),
            Tab(
              icon: Icon(Icons.settings),
            ),
          ],
        ),
      ),
      body: TabBarView(
        children: <Widget>[
          NestedTabBar(),
          Center(
            child: Text("Email"),
          ),
          Center(
            child: Text("Settings"),
          )
        ],
        controller: _tabController,
      ),
    );
  }
}