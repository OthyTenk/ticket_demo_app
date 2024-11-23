import 'package:flutter/material.dart';

class TicketTabs extends StatelessWidget {
  const TicketTabs({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(50),
        color: const Color(0xFFf4f6fd),
      ),
      child: const Row(
        children: [
          Tab(
            title: "Airline Tickets",
            isSelected: true,
          ),
          Tab(
            title: "Hotels",
            border: true,
          ),
        ],
      ),
    );
  }
}

class Tab extends StatelessWidget {
  const Tab(
      {super.key,
      this.title = "",
      this.border = false,
      this.isSelected = false});
  final String title;
  final bool border;
  final bool isSelected;

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return Container(
      padding: const EdgeInsets.symmetric(vertical: 7),
      width: size.width * .44,
      decoration: BoxDecoration(
          color: isSelected == false ? Colors.transparent : Colors.white,
          borderRadius: border == false
              ? const BorderRadius.horizontal(left: Radius.circular(50))
              : const BorderRadius.horizontal(right: Radius.circular(50))),
      child: Center(child: Text(title)),
    );
  }
}
