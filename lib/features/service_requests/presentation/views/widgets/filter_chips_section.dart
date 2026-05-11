import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:sokan_msr/features/service_requests/presentation/views/widgets/filter_chip_widget.dart';

class FilterChipsSection extends StatefulWidget {
  const FilterChipsSection({super.key});

  @override
  State<FilterChipsSection> createState() => _FilterChipsSectionState();
}

class _FilterChipsSectionState extends State<FilterChipsSection> {
  int selectedIndex = 0;

  final List<String> filters = const [
    'All',
    'In Progress',
    'Pending',
    'Completed',
  ];

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 60.h,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: filters.length,
        itemBuilder: (context, index) {
          return Padding(
            padding: EdgeInsets.only(right: 12.w),
            child: FilterChipWidget(
              label: filters[index],
              isSelected: selectedIndex == index,
              onTap: () {
                setState(() {
                  selectedIndex = index;
                });
              },
            ),
          );
        },
      ),
    );
  }
}
