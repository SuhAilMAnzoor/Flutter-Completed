import 'package:flutter/material.dart';

class OldWhatsappTabbar extends StatefulWidget {
  const OldWhatsappTabbar({super.key});

  @override
  MyTabBarPageState createState() => MyTabBarPageState();
}

class MyTabBarPageState extends State<OldWhatsappTabbar> with SingleTickerProviderStateMixin {
  late TabController _tabController;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 4, vsync: this);
  }

  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "WhatsApp",
          style: TextStyle(fontSize: 23, fontWeight: FontWeight.w900, letterSpacing: 1.5),
        ),
        elevation: 8,
        flexibleSpace: Container(
          decoration: const BoxDecoration(
            gradient: LinearGradient(
              colors: [Colors.teal, Color.fromARGB(255, 35, 234, 138)],
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
            ),
          ),
        ),
        bottom: PreferredSize(
          preferredSize: const Size.fromHeight(55),
          child:
           Container(
            margin: const EdgeInsets.symmetric(horizontal: 14),
            decoration: BoxDecoration(
              color: Colors.white.withOpacity(0.2),
              borderRadius: BorderRadius.circular(25),
            ),
            child: 
            TabBar(
              controller: _tabController,
              indicator: BoxDecoration(
                color: Colors.white.withOpacity(0.4),
                borderRadius: BorderRadius.circular(25),
              ),
              labelStyle: const TextStyle(fontSize: 14, fontWeight: FontWeight.bold),
              labelColor: const Color.fromARGB(255, 4, 143, 48),
              unselectedLabelColor: Colors.white70,
              indicatorSize: TabBarIndicatorSize.tab,
              tabs: const [
                Tab(icon: Icon(Icons.group), text: "Groups"),
                Tab(icon: Icon(Icons.chat), text: "Chat"),
                Tab(icon: Icon(Icons.star_outline_sharp), text: "Status"),
                Tab(icon: Icon(Icons.call), text: "Calls"),
              ],
            ),
          ),
        ),
      ),
      body: Container(
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            colors: [Color.fromARGB(255, 240, 164, 12), Color.fromARGB(255, 164, 129, 31)],
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
          ),
        ),
        child: TabBarView(
          controller: _tabController,
          children: [
            _buildTabContent("👥 Group Screen", Colors.teal),
            _buildTabContent("💬 Chat Screen", Colors.blue),
            _buildTabContent("⭐ Status Screen", Colors.orange),
            _buildTabContent("📞 Calls Screen", Colors.red),
          ],
        ),
      ),
    );
  }

  Widget _buildTabContent(String text, Color color) {
    return Center(
      child: Container(
        padding: const EdgeInsets.all(10),
        decoration: BoxDecoration(
          color: Colors.white.withOpacity(0.9),
          borderRadius: BorderRadius.circular(30),
        ),
        child: Text(
          text,
          style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold, color: color),
        ),
      ),
    );
  }
}
