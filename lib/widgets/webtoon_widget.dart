import 'package:flutter/material.dart';
import 'package:toonflix/screens/detail_screen.dart';

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
          MaterialPageRoute(
            builder: (context) =>
                DetailScreeen(title: title, thumb: thumb, id: id),
            fullscreenDialog: true,
          ),
        );
      },
      child: Column(
        children: [
          // 웹툰 이미지가 [object ProgressEvent]라고 뜨는 경우 :
          // async 옆에 window.flutterWebRenderer="html";
          // 작성 후, 터미널에서
          // flutter run -d chrome --web-renderer html
          // 명령어 입력 후 실행하면 이미지가 뜸_250116
          // Container(
          //   width: 250,
          //   clipBehavior: Clip.hardEdge,
          //   decoration: BoxDecoration(
          //       borderRadius: BorderRadius.circular(15),
          //       boxShadow: [
          //         BoxShadow(
          //           blurRadius: 15,
          //           offset: const Offset(10, 10),
          //           color: Colors.black.withOpacity(0.5),
          //         )
          //       ]),
          //   child: Image.network(thumb),
          // ),
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
                    )
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
