import 'package:devtogether/screens/User/MyProfile.dart';
import 'package:go_router/go_router.dart';
import 'package:devtogether/screens/Notice/NoticeList.dart';
import 'package:devtogether/screens/Notice/NoticeDetail.dart';

final GoRouter routes = GoRouter(
    initialLocation: '/myprofile',
    routes: [
      // notice
      GoRoute(
          path: '/notice', builder: (context, state) => const NoticeListScreen()),
      GoRoute(
          path: '/notice/detail',
          builder: (context, state) =>
              NoticeDetailScreen(notice: state.extra as dynamic)),
      GoRoute(
          path: '/myprofile', builder: (context, state) => const MyProfile()),
    ]
);