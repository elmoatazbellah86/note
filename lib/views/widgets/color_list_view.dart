import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:note/cubits/add_not_cubit/cubit/add_note_cubit.dart';

class ColorItem extends StatelessWidget {
  const ColorItem({super.key, required this.isActive, required this.color});
  final bool isActive;
  final Color color;
  @override
  Widget build(BuildContext context) {
    return isActive
        ? CircleAvatar(
          radius: 38,
          backgroundColor: Colors.white,
          child: CircleAvatar(backgroundColor: color, radius: 33),
        )
        : CircleAvatar(backgroundColor: color, radius: 38);
  }
}

class CloroListView extends StatefulWidget {
  const CloroListView({super.key});

  @override
  State<CloroListView> createState() => _CloroListViewState();
}

class _CloroListViewState extends State<CloroListView> {
  int currentIndex = 0;
  List<Color> clors = [
    Color(0xff8DA1B9),
    Color(0xff95ADB6),
    Color(0xffCBB3BF),
    Color(0xffDBC7BE),
    Color(0xffEF959C),
  ];
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 38 * 2,
      child: ListView.builder(
        itemCount: clors.length,
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) {
          return Padding(
            padding: const EdgeInsets.symmetric(horizontal: 6),
            child: GestureDetector(
              onTap: () {
                currentIndex = index;

                BlocProvider.of<AddNoteCubit>(context).color = clors[index];
                setState(() {});
              },
              child: ColorItem(
                color: clors[index],
                isActive: currentIndex == index,
              ),
            ),
          );
        },
      ),
    );
  }
}
// تغير سركيل الاختيار
// import 'package:flutter/material.dart';

// class ColorItem extends StatelessWidget {
//   const ColorItem({super.key, required this.isActive});
//   final bool isActive;
//   @override
//   Widget build(BuildContext context) {
//     return isActive
//         ? CircleAvatar(
//           radius: 38,
//           backgroundColor: Colors.white,
//           child: CircleAvatar(backgroundColor: Colors.blueAccent, radius: 36),
//         )
//         : CircleAvatar(backgroundColor: Colors.blueAccent, radius: 38);
//   }
// }

// class CloroListView extends StatefulWidget {
//   const CloroListView({super.key});

//   @override
//   State<CloroListView> createState() => _CloroListViewState();
// }

// class _CloroListViewState extends State<CloroListView> {
//   int currentIndex = 0;
//   @override
//   Widget build(BuildContext context) {
//     return SizedBox(
//       height: 38 * 2,
//       child: ListView.builder(
//         itemBuilder: (context, index) {
//           return Padding(
//             padding: const EdgeInsets.symmetric(horizontal: 6),
//             child: GestureDetector(
//               onTap: () {
//                 currentIndex = index;
//                 setState(() {});
//               },
//               child: ColorItem(isActive: currentIndex == index),
//             ),
//           );
//         },
//         itemCount: 10,
//         scrollDirection: Axis.horizontal,
//       ),
//     );
//   }
// }
