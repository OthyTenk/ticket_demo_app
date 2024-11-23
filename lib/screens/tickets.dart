import 'package:flutter/material.dart';
import 'package:ticket_app/base/utils/all_json.dart';
import 'package:ticket_app/base/widgets/ticket_view.dart';

class TicketsScreen extends StatelessWidget {
  const TicketsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("All Tickets"),
      ),
      body: ListView(
        children: [
          SingleChildScrollView(
              child: Column(
            children: ticketList
                .map((ticketItem) => Container(
                    margin: const EdgeInsets.only(bottom: 20),
                    child: TicketView(
                      ticket: ticketItem,
                      wholeScreen: true,
                    )))
                .toList(),
          ))
        ],
      ),
    );
  }
}
