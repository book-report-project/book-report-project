import 'package:book_report_app/app/widgets/widgets.dart';
import 'package:book_report_app/core/theme/theme.dart';
import 'package:dotted_border/dotted_border.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class WritePage extends StatefulWidget {
  const WritePage({Key? key}) : super(key: key);

  @override
  WritePageState createState() => WritePageState();
}

class WritePageState extends State<WritePage> {
  bool book = false;
  bool pic = false;
  bool link = false;

  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: const EdgeInsets.only(left: 15, right: 15),
        child: Column(
          children: [
            Expanded(
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    _TitleInput(),
                    _ContentInput(),
                    Column(
                      children: [
                        _LinkInput(),
                        _CameraInputs(),
                        _BookInput(),
                      ],
                    )
                  ],
                ),
              ),
            ),
            _BooksInput(book: book, link: link, pic: pic),
          ],
        ));
  }
}

class _TitleInput extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      decoration: const InputDecoration(
        fillColor: Colors.transparent,
        filled: true,
        hintText: '제목을 입력해주세요.',
      ),
    );
  }
}

class _ContentInput extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      keyboardType: TextInputType.multiline,
      maxLines: null,
      decoration: const InputDecoration(
        fillColor: Colors.transparent,
        filled: true,
        hintText: '글을 작성해주세요.',
        border: OutlineInputBorder(
            borderSide: BorderSide(color: Colors.white, width: 0.0)),
        disabledBorder: OutlineInputBorder(
            borderSide: BorderSide(color: Colors.white, width: 0.0)),
        enabledBorder: OutlineInputBorder(
            borderSide: BorderSide(color: Colors.white, width: 0.0)),
      ),
    );
  }
}

class _BooksInput extends StatefulWidget {
  _BooksInput(
      {Key? key, required this.pic, required this.book, required this.link})
      : super(key: key);

  bool pic;
  bool book;
  bool link;

  @override
  State<_BooksInput> createState() => _BooksInputState();
}

class _BooksInputState extends State<_BooksInput> {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: MediaQuery.of(context).size.width,
      height: 60,
      child: Padding(
        padding: const EdgeInsets.only(top: 5.0),
        child: Row(
          children: [
            GestureDetector(
                onTap: () {
                  setState(() {
                    widget.book = !widget.book;
                  });
                },
                child: const _BookIcon(
                    text: "책 추가", icon: CupertinoIcons.book_circle_fill)),
            const SizedBox(width: 15),
            GestureDetector(
                onTap: () {
                  setState(() {
                    widget.pic = !widget.pic;
                  });
                },
                child: const _BookIcon(
                    text: "사진", icon: CupertinoIcons.camera_circle_fill)),
            const SizedBox(width: 15),
            GestureDetector(
                onTap: () {
                  setState(() {
                    widget.link = !widget.link;
                  });
                },
                child: const _BookIcon(
                    text: "링크", icon: CupertinoIcons.link_circle_fill)),
          ],
        ),
      ),
    );
  }
}

class _BookIcon extends StatelessWidget {
  const _BookIcon({Key? key, required this.text, required this.icon})
      : super(key: key);

  final String text;
  final IconData icon;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Icon(icon, size: 30, color: AppColors.secondary),
        const SizedBox(height: 5),
        Text(
          text,
          style: const TextStyle(color: Colors.black45, fontSize: 12),
        )
      ],
    );
  }
}

class _CameraInputs extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 20.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text(
            "사진 입력",
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 14.0),
          ),
          const SizedBox(height: 10),
          SizedBox(
            height: 70,
            child: Row(
              children: [
                _CameraInput(),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class _CameraInput extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        DottedBorder(
            strokeWidth: 1,
            color: Colors.black45,
            child: Container(
              width: 70,
              height: 70,
              color: Colors.white,
              child: const Icon(CupertinoIcons.camera_circle,
                  size: 35, color: Colors.black45),
            )),
        const SizedBox(width: 10),
      ],
    );
  }
}

class _LinkInput extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 20.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text(
            "링크 입력",
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 14.0),
          ),
          const SizedBox(height: 10),
          SizedBox(
            height: 62,
            child: TextFormField(
              minLines: 1,
              initialValue: "https://",
              style: const TextStyle(fontSize: 14),
              decoration: const InputDecoration(
                contentPadding:
                    EdgeInsets.symmetric(vertical: 8, horizontal: 10),
                fillColor: Colors.white,
                filled: true,
                border: OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(5.0)),
                    borderSide: BorderSide(color: Colors.white, width: 0.0)),
                disabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(5.0)),
                    borderSide: BorderSide(color: Colors.black38, width: 0.0)),
                enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(5.0)),
                    borderSide: BorderSide(color: Colors.black38, width: 0.0)),
                hintText: 'https://',
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class _BookInput extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 20.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: const [
          Text(
            "책 입력",
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 14.0),
          ),
          SizedBox(height: 10),
          BookLink(),
        ],
      ),
    );
  }
}
