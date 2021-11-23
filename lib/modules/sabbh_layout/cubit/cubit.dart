import 'package:bloc/bloc.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:sabbah/modules/sabbh_layout/cubit/state.dart';
import 'package:sabbah/themes/theme_1.dart';
import 'package:sabbah/themes/theme_2.dart';

class SabbahLayoutCubit extends Cubit<SabbahLayoutState>{
  late int currentIndex=0;
  void changeNavigation(int index){
    currentIndex = index;
    emit(LayOutChangeNavBar());
  }
  SabbahLayoutCubit():super(LayOutInitialState());
  static SabbahLayoutCubit get(context) => BlocProvider.of(context);
  List<Widget>widgets=[
    ThemeOne(),
    ThemeTwo(),
  ];
}

