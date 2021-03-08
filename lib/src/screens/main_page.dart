import 'package:flutter/material.dart';

import 'package:frideos/frideos.dart';
import 'package:nittoquiz/src/screens/game.dart';
import 'package:nittoquiz/src/screens/knowledge_page.dart';

import '../models/appstate.dart';
import '../models/category.dart';


class MainPage extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    final appState = AppStateProvider.of<AppState>(context);

    return FadeInWidget(
      duration: 750,
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 36.0),
        child: ValueBuilder<List<Category>>(
          streamed: appState.categoriesStream,
          noDataChild: const CircularProgressIndicator(),
          builder: (context, snapshot) {
            final categories = snapshot.data;

            return SingleChildScrollView(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      SizedBox(height: 20,),
                      Align(
                        alignment: Alignment.center,
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(13),
                          child: Container(
                            //padding: EdgeInsets.all(20),
                            height: MediaQuery.of(context).size.height*1.1/4,
                            width: MediaQuery.of(context).size.width*1.3/2,
                            decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(13),
                              boxShadow: [
                                BoxShadow(
                                  offset: Offset(0, 17),
                                  blurRadius: 17,
                                  spreadRadius: -23,
                                  color: Colors.amber,
                                ),
                              ],
                            ),
                            child: Material(
                              color: Colors.transparent,
                              child: InkWell(
                                onTap: appState.startTrivia,
                                child: Padding(
                                  padding: const EdgeInsets.all(20.0),
                                  child: Column(
                                    children: <Widget>[
                                      Spacer(),
                                      // SvgPicture.asset(svgSrc),
                                      Image.asset('assets/simplequize.png',height: 120,width: 200,),
                                      Spacer(),
                                      Text(
                                        'Sort Scrum Quiz',
                                        textAlign: TextAlign.center,
                                        style: Theme.of(context)
                                            .textTheme
                                            .title
                                            .copyWith(fontSize: 25,color: Color(0xff7092be)),
                                      )
                                    ],
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ),
                      ),
                      SizedBox(height: 20,),
                      Align(
                        alignment: Alignment.center,
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(13),
                          child: Container(
                            //padding: EdgeInsets.all(20),
                            height: MediaQuery.of(context).size.height*1.1/4,
                            width: MediaQuery.of(context).size.width*1.3/2,
                            decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(13),
                              boxShadow: [
                                BoxShadow(
                                  offset: Offset(0, 17),
                                  blurRadius: 17,
                                  spreadRadius: -23,
                                  color: Colors.amber,
                                ),
                              ],
                            ),
                            child: Material(
                              color: Colors.transparent,
                              child: InkWell(
                                onTap: (){
                                  loadString('assets/BOM Trivia.json');
                                  restartQuiz();
                                  Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                  builder: (context) => game(),
                                  ));
                                },
                                child: Padding(
                                  padding: const EdgeInsets.all(20.0),
                                  child: Column(
                                    children: <Widget>[
                                      Spacer(),
                                      // SvgPicture.asset(svgSrc),
                                      Image.asset('assets/quiztest.png',height: 120,width: 200,),
                                      Spacer(),
                                      Text(
                                        'Scrum Test',
                                        textAlign: TextAlign.center,
                                        style: Theme.of(context)
                                            .textTheme
                                            .title
                                            .copyWith(fontSize: 25,color: Color(0xff7092be)),
                                      )
                                    ],
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ),
                      ),
                      SizedBox(height: 20,),
                      Align(
                        alignment: Alignment.center,
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(13),
                          child: Container(
                            //padding: EdgeInsets.all(20),
                            height: MediaQuery.of(context).size.height*1.1/4,
                            width: MediaQuery.of(context).size.width*1.3/2,
                            decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(13),
                              boxShadow: [
                                BoxShadow(
                                  offset: Offset(0, 17),
                                  blurRadius: 17,
                                  spreadRadius: -23,
                                  color: Colors.amber,
                                ),
                              ],
                            ),
                            child: Material(
                              color: Colors.transparent,
                              child: InkWell(
                                onTap: ()=>Navigator.of(context).push(MaterialPageRoute(builder: (context)=>KnowledgePage())),

                                child: Padding(
                                  padding: const EdgeInsets.all(20.0),
                                  child: Column(
                                    children: <Widget>[
                                      Spacer(),
                                      // SvgPicture.asset(svgSrc),
                                      Image.asset('assets/learn.png',height: 120,width: 200,),
                                      Spacer(),
                                      Text(
                                        'Learn Scrum',
                                        textAlign: TextAlign.center,
                                        style: Theme.of(context)
                                            .textTheme
                                            .title
                                            .copyWith(fontSize: 25,color: Color(0xff7092be)),
                                      )
                                    ],
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ),
                      )
                      // const Text(
                      //   'Choose a category:',
                      //   style: TextStyle(
                      //     fontSize: 16.0,
                      //     fontWeight: FontWeight.w600,
                      //     color: Colors.white,
                      //     shadows: [
                      //       Shadow(
                      //         blurRadius: 14.0,
                      //         color: Colors.lightBlueAccent,
                      //       ),
                      //     ],
                      //   ),
                      // ),
                      // ValueBuilder<Category>(
                      //   streamed: appState.categoryChosen,
                      //   builder: (context, snapshotCategory) =>
                      //       DropdownButton<Category>(
                      //         isExpanded: true,
                      //         value: snapshotCategory.data,
                      //         onChanged: appState.setCategory,
                      //         items: categories
                      //             .map<DropdownMenuItem<Category>>(
                      //               (value) => DropdownMenuItem<Category>(
                      //                     value: value,
                      //                     child: Text(
                      //                       value.name,
                      //                       style: const TextStyle(
                      //                         fontSize: 16.0,
                      //                         fontWeight: FontWeight.w600,
                      //                         color: Colors.orange,
                      //                       ),
                      //                     ),
                      //                   ),
                      //             )
                      //             .toList(),
                      //       ),
                      // ),
                    ],
                  ),
                 /* GestureDetector(
                    child: *//*Container(
                      alignment: Alignment.center,
                      height: 36,
                      width: 90,
                      decoration: BoxDecoration(
                          color: Theme.of(context).primaryColor,
                          borderRadius: const BorderRadius.all(
                            Radius.circular(35),
                          ),
                          boxShadow: [
                            const BoxShadow(
                                color: Colors.blue,
                                blurRadius: 2.0,
                                spreadRadius: 2.5),
                          ]),
                      child: const Text(
                        'Start Quiz',
                        style: TextStyle(fontWeight: FontWeight.w500),
                      ),
                    ),*//*
                    onTap: appState.startTrivia,
                  ),*/
                ],
              ),
            );
          },
        ),
      ),
    );
  }

}

