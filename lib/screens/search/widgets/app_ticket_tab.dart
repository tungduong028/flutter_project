import 'package:flutter/material.dart';

class AppTicketTab extends StatelessWidget {
  const AppTicketTab({super.key, this.firstTab="All tickets", this.secondTab="Hotels"});
  final String firstTab;
  final String secondTab;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(50),
        color: Color(0xFFF4F6FD)
      ),
      child: Row(
        children: [
          AppTabs(
            tabString: firstTab,
          ),
          AppTabs(
            tabString: secondTab,
            tabBorder: true,
            tabColor: true,
          ),
        ],
      ),
    );
  }
}

class AppTabs extends StatelessWidget {
  const AppTabs({super.key, this.tabString="", this.tabBorder=false, this.tabColor=false});
  final String tabString;
  final bool tabBorder;
  final bool tabColor;

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(50),
        color: Color(0xFFF4F6FD)
      ),
      child: Row(
        children: [
          Container(
            padding: const EdgeInsets.symmetric(vertical: 7),
            width: size.width*.44,
            decoration: BoxDecoration(
              color: tabColor==false ? Colors.white : Colors.transparent,
              borderRadius: tabBorder == false ? const BorderRadius.horizontal(left: Radius.circular(20),)
                            :const BorderRadius.horizontal(right: Radius.circular(20),),
            ),
            child: Center(child: Text(tabString,)),
          ),
        ],
      ),
    );
  }
}