import 'package:flutter/material.dart';
import 'package:markdown_editor_plus/markdown_editor_plus.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomeScreen(),
    );
  }
}

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Home Screen"),
      ),
      body: const Padding(
        padding: const EdgeInsets.only(left: 16, right: 16,),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          mainAxisSize: MainAxisSize.max,
          children: [
            //   child: MarkdownAutoPreview(
            //     decoration: InputDecoration(
            //       hintText: 'Markdown Auto Preview',
            //     ),
            //     emojiConvert: true,
            //     // maxLines: 10,
            //     // minLines: 1,
            //     // expands: true,
            //   ),
            // ),
            Expanded(
              flex: 1,
              child: SplittedMarkdownFormFieldVertical(
                minLines: 30,
                markdownSyntax: '## Headline',
                decoration: const InputDecoration(
                  hintText: 'Input your job description here',
                ),
                //emojiConvert: true,
              ),
            )
          ],
        ),
      ),
    );
  }
}
