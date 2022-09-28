import 'package:book_report_app/style/theme.dart';
import 'package:book_report_app/widgets/icon_buttons.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class SearchPage extends StatefulWidget {
  const SearchPage({Key? key}) : super(key: key);

  @override
  SearchPageState createState() => SearchPageState();
}

class SearchPageState extends State<SearchPage> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: <Widget>[
          SizedBox(
            width: MediaQuery.of(context).size.width,
            child: Padding(
              padding: const EdgeInsets.only(left: 20, right: 15, top: 15),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: const [
                  Text(
                    '무엇을',
                    style:
                        TextStyle(fontSize: 23.0, fontWeight: FontWeight.bold),
                  ),
                  SizedBox(height: 5.0),
                  Text(
                    '검색하시겠어요?',
                    style: TextStyle(fontSize: 23.0),
                  ),
                ],
              ),
            ),
          ),
          _SearchInput(),
          Padding(
            padding: const EdgeInsets.only(left: 20.0, top: 10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                _Icon(
                  onTap: () {},
                  icon: CupertinoIcons.alt,
                  text: "독후감",
                ),
                _Icon(
                  onTap: () {},
                  icon: CupertinoIcons.person,
                  text: "유저",
                ),
                _Icon(
                  onTap: () {},
                  icon: CupertinoIcons.book,
                  text: "인기책",
                ),
                _Icon(
                  onTap: () {},
                  icon: CupertinoIcons.ellipsis,
                  text: "기타",
                ),
              ],
            ),
          ),
          SizedBox(
            width: MediaQuery.of(context).size.width,
            child: const Padding(
              padding: EdgeInsets.only(left: 20.0),
              child: Text(
                '현재 인기글',
                style: TextStyle(fontSize: 18.0, fontWeight: FontWeight.w600),
              ),
            ),
          ),
          const SizedBox(height: 10),
          _PopularList(),
          const SizedBox(height: 30),
          SizedBox(
            width: MediaQuery.of(context).size.width,
            child: const Padding(
              padding: EdgeInsets.only(left: 20.0),
              child: Text(
                '추천 책',
                style: TextStyle(fontSize: 18.0, fontWeight: FontWeight.w600),
              ),
            ),
          ),
          const SizedBox(height: 10),
          _RecommandBookList(),
          const SizedBox(height: 50),
        ],
      ),
    );
  }
}

class _SearchInput extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 20, top: 20.0),
      child: Container(
        margin: const EdgeInsets.only(left: 20),
        decoration: const BoxDecoration(
          boxShadow: [
            BoxShadow(
              color: Colors.black12,
              blurRadius: 25,
              offset: Offset(0, 10),
            ),
          ],
        ),
        child: TextFormField(
          decoration: const InputDecoration(
            fillColor: Colors.white,
            filled: true,
            prefixIcon: Icon(
              Icons.search,
              color: Colors.black,
            ),
            hintText: '검색어를 입력해주세요.',
            focusedBorder: OutlineInputBorder(
                borderRadius: BorderRadius.all(Radius.circular(30.0)),
                borderSide: BorderSide(color: Colors.white, width: 0.0)),
            border: OutlineInputBorder(
                borderRadius: BorderRadius.all(Radius.circular(30.0)),
                borderSide: BorderSide(color: Colors.white, width: 0.0)),
            enabledBorder: OutlineInputBorder(
                borderRadius: BorderRadius.all(Radius.circular(30.0)),
                borderSide: BorderSide(color: Colors.white, width: 0.0)),
          ),
        ),
      ),
    );
  }
}

class _Icon extends StatelessWidget {
  const _Icon({
    Key? key,
    required this.icon,
    required this.onTap,
    required this.text,
  }) : super(key: key);

  final IconData icon;
  final VoidCallback onTap;
  final String text;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 25.0, right: 20.0),
      child: SizedBox(
        height: 110,
        child: Column(
          children: [
            IconBackground(
                size: 45.0,
                iconSize: 32.0,
                icon: icon,
                background: AppColors.secondary,
                iconColor: Colors.white,
                borderRadius: 10.0,
                onTap: onTap),
            const SizedBox(height: 10.0),
            Text(text),
          ],
        ),
      ),
    );
  }
}

class _PopularList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(left: 20.0),
      height: 200.0,
      child: ListView.builder(
        physics: const ClampingScrollPhysics(),
        shrinkWrap: true,
        scrollDirection: Axis.horizontal,
        itemCount: 15,
        itemBuilder: (BuildContext context, int index) => const Card(
          child: SizedBox(
            width: 120,
            child: Center(
              child: Text('Content'),
            ),
          ),
        ),
      ),
    );
  }
}

class _RecommandBookList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(left: 20.0),
      height: 200.0,
      child: ListView.builder(
        physics: const ClampingScrollPhysics(),
        shrinkWrap: true,
        scrollDirection: Axis.horizontal,
        itemCount: 15,
        itemBuilder: (BuildContext context, int index) => const Card(
          child: SizedBox(
            width: 120,
            child: Center(
              child: Text('Books'),
            ),
          ),
        ),
      ),
    );
  }
}
