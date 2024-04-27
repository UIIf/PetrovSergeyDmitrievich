import 'package:auto_route/auto_route.dart';
import 'package:temp_application/feed_page.dart';
import 'package:temp_application/main_page.dart';
import 'package:temp_application/settings_page.dart';
part 'app_router.gr.dart';

@AutoRouterConfig(replaceInRouteName: 'App,Route')
class AppRouter extends _$AppRouter {
  @override
  List<AutoRoute> get routes => [
        /// routes go here
        // AutoRoute(page: MyHomeRoute.page),
        AutoRoute(page: MyRoute.page, initial: true),
        AutoRoute(page: FeedRoute.page),
        AutoRoute(page: SettingsRoute.page),
      ];
}
