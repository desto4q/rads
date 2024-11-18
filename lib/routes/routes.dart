import 'package:go_router/go_router.dart';
import 'package:rentit/stack/auth_screens/auth_intro.dart';
import 'package:rentit/stack/main_screens/listing_screens/listing.dart';
import 'package:rentit/stack/main_screens/rent_it.dart';
import 'package:rentit/stack/main_screens/trans_history/trans_history.dart';
import 'package:rentit/stack/main_screens/trans_history/trans_view.dart';

final List<GoRoute> routes = [
  GoRoute(
      path: "/",
      builder: (_, state) {
        return RentIt();
      },
      routes: [
        GoRoute(
            path: "transaction_history",
            builder: (_, state) {
              return TransHistory();
            },
            routes: [
              GoRoute(
                  path: "trans_view",
                  builder: (_, state) {
                    return TransView();
                  }),
            ]),
      ]),
  GoRoute(
      path: "/listing",
      builder: (_, state) {
        return Listing();
      }),
  GoRoute(
      path: "/login",
      builder: (_, state) {
        return AuthIntro();
      }),
];
