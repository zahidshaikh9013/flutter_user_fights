import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:hamam_test/app/app_extensions.dart';
import 'package:hamam_test/app/app_theme.dart';
import 'package:hamam_test/app/context_ext.dart';
import 'package:hamam_test/app/dimensions.dart';
import 'package:hamam_test/app/globals.dart';
import 'package:hamam_test/app/setup.dart';
import 'package:hamam_test/app/strings.dart';
import 'package:hamam_test/models/users/results.dart';
import 'package:hamam_test/providers/fighters_provider.dart';
import 'package:hamam_test/widgets/native_loader.dart';
import 'package:hamam_test/widgets/text_field_widget.dart';
import 'package:infinite_scroll_pagination/infinite_scroll_pagination.dart';

import 'item_fighter_user.dart';

class SharedFightersTab extends ConsumerStatefulWidget {
  final bool isFirst;

  const SharedFightersTab({super.key, required this.isFirst});

  @override
  SharedFightersTabState createState() => SharedFightersTabState();
}

class SharedFightersTabState extends ConsumerState<SharedFightersTab> with AutomaticKeepAliveClientMixin {
  Timer? debouncer;
  final tcSearch = TextEditingController();
  final PagingController<int, Results> _pagingController = PagingController(firstPageKey: 1);

  int minAge = 0, maxAge = 35;

  @override
  bool get wantKeepAlive => true;

  @override
  void initState() {
    super.initState();

    if (widget.isFirst) {
      minAge = 0;
      maxAge = 35;
    } else {
      minAge = 35;
      maxAge = 99;
    }

    _pagingController.addPageRequestListener((page) {
      fetchFighters(page);
    });
  }

  void fetchFighters(int page) async {
    final provider = ref.read(fightersProvider.notifier);

    final results = await provider.fetchFighters(
      minAge: minAge,
      maxAge: maxAge,
      page: page,
      name: tcSearch.text.trim(),
    );

    final isLastPage = results.length < Setup.paginate25;
    if (isLastPage) {
      _pagingController.appendLastPage(results);
    } else {
      final nextPageKey = page + 1;
      _pagingController.appendPage(results, nextPageKey);
    }
  }

  @override
  Widget build(BuildContext context) {
    super.build(context);

    var scrollbar = _infiniteListView();

    if (isMobile) {
      scrollbar = Scrollbar(child: _infiniteListView());
    }

    return Column(
      children: [
        _searchTextField(),
        Expanded(child: scrollbar),
      ],
    );
  }

  Widget _searchTextField() {
    return Container(
      margin: p16.copyWith(bottom: 8),
      child: TextFormFieldWidget(
        controller: tcSearch,
        suffixIcon: Container(
          height: 55,
          decoration: BoxDecoration(
            color: context.primaryColor,
            borderRadius: const BorderRadius.only(
              topRight: Radius.circular(borderRadius10),
              bottomRight: Radius.circular(borderRadius10),
            ),
          ),
          child: InkWell(
            onTap: () {
              if (tcSearch.text.isNotEmpty) {
                _pagingController.refresh();
              }
            },
            child: const Icon(
              Icons.search,
              size: 24,
              color: kWhite,
            ),
          ),
        ),
        hintText: Strings.searchByName,
        onChanged: onSearchInputChange,
        textInputAction: TextInputAction.done,
      ),
    );
  }

  Widget _infiniteListView() {
    return PagedListView.separated(
      padding: p16,
      pagingController: _pagingController,
      keyboardDismissBehavior: ScrollViewKeyboardDismissBehavior.onDrag,
      separatorBuilder: (_, index) => h16,
      builderDelegate: PagedChildBuilderDelegate<Results>(
        firstPageProgressIndicatorBuilder: (_) {
          return const NativeLoader();
        },
        noItemsFoundIndicatorBuilder: (_) {
          return const SizedBox();
        },
        itemBuilder: (context, user, index) {
          return ItemFighterUser(user: user);
        },
      ),
    );
  }

  void onSearchInputChange(String value) {
    if (value.trim().removeSpaces().isEmpty) {
      debouncer?.cancel();
      _pagingController.refresh();
      return;
    }

    if (debouncer?.isActive ?? false) {
      debouncer!.cancel();
    }

    debouncer = Timer(const Duration(milliseconds: 500), () {
      _pagingController.refresh();
    });
  }

  @override
  void dispose() {
    debouncer?.cancel();
    tcSearch.dispose();
    _pagingController.dispose();
    super.dispose();
  }
}
