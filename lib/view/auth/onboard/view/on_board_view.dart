import 'package:core_flutter_app/view/_product/widget/text/local_custom_text.dart';
import 'package:flutter/material.dart';

import '../../../../core/base/view/base_widget.dart';
import '../../../../core/extension/context_extension.dart';
import '../../../_product/widget/avatar/on_board_circle.dart';
import '../model/on_board_model.dart';
import '../viewModel/on_board_view_model.dart';

class OnBoardView extends StatelessWidget {
  const OnBoardView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BaseView<OnBoardViewModel>(
      viewModel: OnBoardViewModel(),
      onModelReady: (model) {
        model.setContext(context);
        model.init();
      },
      onPageBuilder: (BuildContext context, OnBoardViewModel viewModel) =>
          Scaffold(
        body: Padding(
          padding: context.paddingNormalHorizontal,
          child: Column(
            children: [
              const Spacer(),
              Expanded(flex: 5, child: buildPageView(viewModel)),
              Expanded(flex: 2, child: buildRowFooter(viewModel, context)),
            ],
          ),
        ),
      ),
    );
  }

  PageView buildPageView(OnBoardViewModel viewModel) {
    return PageView.builder(
      itemCount: viewModel.onBoardItems.length,
      onPageChanged: (value) {
        viewModel.changeCurrentIndex(value);
      },
      itemBuilder: (context, index) =>
          buildColumnBody(context, viewModel.onBoardItems[index]),
    );
  }

  Row buildRowFooter(OnBoardViewModel viewModel, BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        buildListViewCircles(viewModel),
        Expanded(
          child: Center(
            child: Visibility(
              visible: viewModel.isLoading,
              child: const CircularProgressIndicator(),
            ),
          ),
        ),
        buildFloatingActionButtonSkip(context, viewModel)
      ],
    );
  }

  ListView buildListViewCircles(OnBoardViewModel viewModel) {
    return ListView.builder(
      itemCount: 3,
      shrinkWrap: true,
      scrollDirection: Axis.horizontal,
      itemBuilder: (context, index) {
        return OnBoardCircle(
          isSelected: viewModel.currentIndex == index,
        );
      },
    );
  }

  FloatingActionButton buildFloatingActionButtonSkip(
    BuildContext context,
    OnBoardViewModel viewModel,
  ) {
    return FloatingActionButton(
      backgroundColor: context.colors.secondaryContainer,
      child: Icon(
        Icons.keyboard_arrow_right,
        color: context.colors.primaryContainer,
      ),
      onPressed: () => viewModel.completeToOnBoard(),
    );
  }

  Column buildColumnBody(BuildContext context, OnBoardModel model) {
    return Column(
      children: [
        Expanded(flex: 5, child: buildImageWidget(model.imagePath)),
        buildColumnDescription(context, model),
      ],
    );
  }

  Widget buildImageWidget(String imagePath) {
    return Container(
      child: Icon(Icons.image, size: 200), // Temporary placeholder
    );
  }

  Column buildColumnDescription(BuildContext context, OnBoardModel model) {
    return Column(
      children: [
        buildAutoLocaleTextTitle(model, context),
        Padding(
          padding: context.paddingMediumHorizontal,
          child: buildAutoLocaleTextDescription(model, context),
        )
      ],
    );
  }

  LocaleText buildAutoLocaleTextTitle(
    OnBoardModel model,
    BuildContext context,
  ) {
    return LocaleText(
      value: model.title,
      style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
    );
  }

  LocaleText buildAutoLocaleTextDescription(
    OnBoardModel model,
    BuildContext context,
  ) {
    return LocaleText(
      value: model.description,
      textAlign: TextAlign.center,
      style: TextStyle(fontSize: 16),
    );
  }
}
