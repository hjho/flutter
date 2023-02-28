import 'package:flutter/material.dart';
import 'package:toonflix/screens/detail_screens.dart';

class Webtoon extends StatelessWidget {
  final String title, thumb, id;

  const Webtoon({
    super.key,
    required this.title,
    required this.thumb,
    required this.id,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
          context,
          PageRouteBuilder(
            // 뒤로가기(<) 버튼이 닫기(X) 버튼으로 변경됨.
            fullscreenDialog: true,
            transitionsBuilder:
                (context, animation, secondaryAnimation, child) {
              return SlideTransition(
                position: animation.drive(
                  Tween(
                    // 팝업(0, 1) 또는 페이지 이동(1, 0) 또는 띄우기(0, 0)
                    begin: const Offset(0, 0),
                    end: Offset.zero,
                  ).chain(
                    CurveTween(curve: Curves.ease),
                  ),
                ),
                child: child,
              );
            },
            pageBuilder: (context, animation, secondaryAnimation) =>
                DetailScreens(title: title, thumb: thumb, id: id),
          ),
          // MaterialPageRoute(
          //   builder: (context) =>
          //       DetailScreens(title: title, thumb: thumb, id: id),
          //   fullscreenDialog: true,
          // ),
        );
      },
      child: Column(
        children: [
          Hero(
            tag: id,
            child: Container(
              width: 250,
              clipBehavior: Clip.hardEdge,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15),
                  boxShadow: [
                    BoxShadow(
                      blurRadius: 15,
                      offset: const Offset(10, 10),
                      color: Colors.black.withOpacity(0.5),
                    ),
                  ]),
              child: Image.network(thumb),
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          Text(
            title,
            style: const TextStyle(
              fontSize: 22,
            ),
          ),
        ],
      ),
    );
  }
}
