import 'package:sizer/sizer.dart';
import 'dart:developer';
import 'package:flutter/material.dart';
import 'package:ninadsharma_bluestacks_test_project/NetworkFiles/APICalls.dart';
import 'package:ninadsharma_bluestacks_test_project/NetworkFiles/RecommendedDataListModel.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  List<RecommendedGamesDataTournaments?> rcGame = [];
  bool load = true, allLoad = false;
  var limit = 10;
  String? cursor;
  late ScrollController _scrollController;
  void _setupScrollController() {
    _scrollController = ScrollController();
    _scrollController.addListener(_scrollListener);
  }

  void _scrollListener() {
    if (_scrollController.position.extentAfter < 500) {
      loadMore();
    }
  }

  void getRecommendations() async {
    await Call().getRecommendedGames().then((value) {
      rcGame.addAll(value.data!.tournaments!);
      cursor = value.data!.cursor;
      setState(() {
        load = false;
      });
    });
  }

  void loadMore() async {
    if (!allLoad) {
      limit = 10;
      await Call()
          .loadMoreRec(
        cursor: cursor,
      )
          .then((value) {
        if (value.code == 0) {
          rcGame.addAll(value.data!.tournaments!);
        } else {
          allLoad = true;
        }
        setState(() {
          load = false;
        });
      });
    }
  }

  @override
  void initState() {
    // TODO: implement initState
    _setupScrollController();
    super.initState();
    getRecommendations();
  }

  @override
  void dispose() {
    _scrollController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.white,
          elevation: 0,
          leading: const Icon(
            Icons.menu,
            color: Colors.black,
            size: 32,
          ),
          title: const Text(
            "Flyingwolf",
            style: TextStyle(
              fontWeight: FontWeight.w900,
              fontSize: 20,
              color: Colors.black,
            ),
          ),
          centerTitle: true,
        ),
        body: load
            ? const Center(
                child: CircularProgressIndicator(),
              )
            : ListView(
                controller: _scrollController,
                shrinkWrap: true,
                children: [
                  Container(
                    height: 32.h,
                    width: 100.w,
                    child: Column(
                      children: [
                        Container(
                          margin: EdgeInsets.only(left: 4.w, right: 4.w),
                          padding: EdgeInsets.only(bottom: 4.w, top: 4.w),
                          height: 16.h,
                          child: Row(
                            children: [
                              Container(
                                height: 24.w,
                                width: 24.w,
                                decoration: const BoxDecoration(
                                  shape: BoxShape.circle,
                                ),
                                child: ClipRRect(
                                  borderRadius: const BorderRadius.all(
                                    Radius.circular(100),
                                  ),
                                  child: Image.network(
                                    "https://picsum.photos/200/300",
                                    fit: BoxFit.fill,
                                  ),
                                ),
                              ),
                              SizedBox(width: 8.w),
                              Column(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  const Text(
                                    "Simon Baker",
                                    style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 24,
                                    ),
                                  ),
                                  Container(
                                    height: 6.h,
                                    width: 40.w,
                                    decoration: BoxDecoration(
                                      borderRadius: const BorderRadius.all(
                                          Radius.circular(100)),
                                      color: Colors.white,
                                      border: Border.all(
                                          color: Colors.blue, width: 2),
                                    ),
                                    padding: const EdgeInsets.only(
                                        left: 8, right: 8),
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceEvenly,
                                      children: const [
                                        Text(
                                          "2250",
                                          style: TextStyle(
                                            fontWeight: FontWeight.bold,
                                            fontSize: 20,
                                            color: Colors.blue,
                                          ),
                                        ),
                                        Text(
                                          "Elo rating",
                                          style: TextStyle(
                                            fontWeight: FontWeight.bold,
                                            fontSize: 12,
                                            color: Colors.blueGrey,
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                        SizedBox(height: 2.h),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Container(
                              height: 12.h,
                              width: 30.w,
                              decoration: const BoxDecoration(
                                color: Colors.amber,
                                borderRadius: BorderRadius.only(
                                  topLeft: Radius.circular(24),
                                  bottomLeft: Radius.circular(24),
                                ),
                              ),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: const [
                                  Text(
                                    "34",
                                    style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      color: Colors.white,
                                      fontSize: 20,
                                    ),
                                  ),
                                  Text(
                                    "Tournaments\nplayed",
                                    textAlign: TextAlign.center,
                                    style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      color: Colors.white,
                                      fontSize: 12,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            Container(
                              height: 12.h,
                              width: 30.w,
                              color: Colors.purple,
                              margin: const EdgeInsets.only(left: 2, right: 2),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: const [
                                  Text(
                                    "09",
                                    style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      color: Colors.white,
                                      fontSize: 20,
                                    ),
                                  ),
                                  Text(
                                    "Tournaments\nplayed",
                                    textAlign: TextAlign.center,
                                    style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      color: Colors.white,
                                      fontSize: 12,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            Container(
                              height: 12.h,
                              width: 30.w,
                              decoration: const BoxDecoration(
                                color: Colors.orange,
                                borderRadius: BorderRadius.only(
                                  topRight: Radius.circular(24),
                                  bottomRight: Radius.circular(24),
                                ),
                              ),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: const [
                                  Text(
                                    "26%",
                                    style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      color: Colors.white,
                                      fontSize: 20,
                                    ),
                                  ),
                                  Text(
                                    "Tournaments\nplayed",
                                    textAlign: TextAlign.center,
                                    style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      color: Colors.white,
                                      fontSize: 12,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(left: 4.w, bottom: 2.h),
                    child: Text(
                      "Recommended for you",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Colors.grey.shade800,
                        fontSize: 24,
                      ),
                    ),
                  ),
                  ListView.builder(
                    itemCount: rcGame.length,
                    shrinkWrap: true,
                    physics: const NeverScrollableScrollPhysics(),
                    itemBuilder: (context, index) {
                      return Container(
                        height: 20.h,
                        decoration: BoxDecoration(
                          boxShadow: [
                            BoxShadow(
                              offset: const Offset(0, 0),
                              blurRadius: 1.w,
                              color: Colors.black12,
                              spreadRadius: 1.w,
                            )
                          ],
                          borderRadius:
                              const BorderRadius.all(Radius.circular(24)),
                          color: Colors.white,
                        ),
                        margin: EdgeInsets.only(
                          bottom: 2.h,
                          left: 4.w,
                          right: 4.w,
                        ),
                        alignment: Alignment.center,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Container(
                              height: 12.h,
                              width: 100.w,
                              decoration: const BoxDecoration(
                                borderRadius: BorderRadius.only(
                                    topLeft: Radius.circular(24),
                                    topRight: Radius.circular(24)),
                              ),
                              child: ClipRRect(
                                borderRadius: const BorderRadius.only(
                                    topLeft: Radius.circular(24),
                                    topRight: Radius.circular(24)),
                                child: Image.network(
                                  "${rcGame[index]!.coverUrl}",
                                  fit: BoxFit.fill,
                                ),
                              ),
                            ),
                            Container(
                              width: 100.w,
                              height: 6.h,
                              padding: EdgeInsets.only(left: 4.w, right: 4.w),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      SizedBox(
                                        width: 60.w,
                                        child: Text(
                                          "${rcGame[index]!.name}",
                                          style: const TextStyle(
                                            fontWeight: FontWeight.bold,
                                            fontSize: 16,
                                          ),
                                          overflow: TextOverflow.ellipsis,
                                        ),
                                      ),
                                      Text(
                                        "${rcGame[index]!.gameName}",
                                        style: const TextStyle(
                                          fontWeight: FontWeight.bold,
                                          color: Colors.grey,
                                          fontSize: 12,
                                        ),
                                        overflow: TextOverflow.ellipsis,
                                      ),
                                    ],
                                  ),
                                  const Icon(
                                    Icons.arrow_forward_ios,
                                    size: 16,
                                  ),
                                ],
                              ),
                            )
                          ],
                        ),
                      );
                    },
                  ),
                ],
              ),
      ),
    );
  }
}
