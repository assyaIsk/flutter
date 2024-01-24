import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/svg.dart';
import 'package:vegetables/cubits/cubit/my_states_cubit.dart';
import 'package:vegetables/data/categories_data.dart';
import 'package:vegetables/data/vegetable_data.dart';
import 'package:vegetables/styles/style.dart';

class SearchPanel extends StatelessWidget {
  const SearchPanel({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    String searchText = '';
    return Container(
      width: MediaQuery.of(context).size.width - 40,
      padding: const EdgeInsets.fromLTRB(22, 12, 22, 12),
      decoration: BoxDecoration(
        border: Border.all(color: AppStyles.violetColor3),
        color: AppStyles.whiteBtnColor,
        borderRadius: BorderRadius.circular(27),
      ),
      child: Row(
        children: [
          SvgPicture.asset(
            'assets/svg/search.svg',
          ),
          const SizedBox(
            width: 8,
          ),
          Expanded(
            child: BlocBuilder<CategoryCubit, CategoryState>(
              builder: (context, state) {
                return TextField(
                  // controller: _controller,
                  onChanged: (String value) {
                    if (value.length < 3) {
                      searchText = '';
                    } else {
                      searchText = value;
                    }
                    state.maybeWhen(
                        selectedCategory: () => {
                              context.read<SearchCubit>().searchVegetable(
                                  vegetables: vegetables,
                                  searchText: searchText)
                            },
                        orElse: () => {
                              context.read<SearchCubit>().searchCategory(
                                  categories: categories,
                                  searchText: searchText)
                            });
                  },
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
