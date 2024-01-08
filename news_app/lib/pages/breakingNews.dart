import 'package:flutter/material.dart';
import 'package:news_app/pages/componnent.dart';
import 'package:news_app/seevice/apiController.dart';

import 'package:news_app/seevice/providerPage.dart';
import 'package:provider/provider.dart';

class BreakingNews extends StatefulWidget {
  const BreakingNews({super.key});

  @override
  State<BreakingNews> createState() => _BreakingNewsState();
}

class _BreakingNewsState extends State<BreakingNews> {
  @override
  void initState() {
    super.initState();

    context.read<ProviderPage>().addBreakingNewsList();
  }

  ApiController apiController = ApiController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Consumer<ProviderPage>(
        builder: (context, provider, child) {
          if (provider.breakingNewsList.isEmpty) {
            return Center(
                child: CircularProgressIndicator(
              color: Colors.blue.shade400,
            ));
          }
          return ListView.builder(itemBuilder: (context, index) {
            return ItemComponent(newsModel: provider.breakingNewsList[index]);
          });
        },
      ),
    );
  }
}
