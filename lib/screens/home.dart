import 'package:fluentui_icons/fluentui_icons.dart';
import 'package:flutter/material.dart';
import 'package:ticket_app/base/res/app_routes.dart';
import 'package:ticket_app/base/res/media.dart';
import 'package:ticket_app/base/res/styles/app_styles.dart';
import 'package:ticket_app/base/utils/all_json.dart';
import 'package:ticket_app/base/widgets/app_double_text.dart';
import 'package:ticket_app/base/widgets/ticket_view.dart';
import 'package:ticket_app/base/widgets/hotel.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppStyles.bgColor,
      body: ListView(
        children: [
          const SizedBox(
            height: 40,
          ),
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Good morning",
                          style: AppStyles.headLineStyle3,
                        ),
                        const SizedBox(
                          height: 5,
                        ),
                        Text(
                          "Book Tickets",
                          style: AppStyles.headLineStyle1,
                        ),
                      ],
                    ),
                    Container(
                      width: 60,
                      height: 50,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          image: const DecorationImage(
                              image: AssetImage(AppMedia.logo))),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 25,
                ),
                Container(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 12, vertical: 12),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: const Color(0xFFF4F6FD)),
                  child: const Row(
                    // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Icon(
                        FluentSystemIcons.ic_fluent_search_regular,
                        color: Color(0xFFBFC205),
                      ),
                      Text("Search"),
                    ],
                  ),
                ),
                // Upcoming Flights
                const SizedBox(
                  height: 40,
                ),
                AppDoubleText(
                  bigText: "Upcoming Flights",
                  smallText: "View more",
                  func: () => Navigator.pushNamed(context, AppRoutes.tickets),
                ),
                const SizedBox(
                  height: 20,
                ),
                SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      children: ticketList.take(2).map((ticketItem) {
                        return TicketView(
                          ticket: ticketItem,
                        );
                      }).toList(),
                    )),
                const SizedBox(
                  height: 40,
                ),
                // Hotels
                AppDoubleText(
                  bigText: "Hotels",
                  smallText: "View more",
                  func: () => Navigator.pushNamed(context, AppRoutes.home),
                ),
                const SizedBox(
                  height: 20,
                ),
                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: hotelList
                        .take(2)
                        .map((hotel) => Hotel(
                              hotel: hotel,
                            ))
                        .toList(),
                  ),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
