import 'package:bloc/bloc.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:sabbah/cubit/state.dart';
import 'package:sabbah/network/cach-helper.dart';
class SabbahCubit extends Cubit<Sabbah>{
  SabbahCubit():super(InitialState());
  static SabbahCubit get(context)=>BlocProvider.of(context);
  int count=0;
  void change({required int fromShared}){
    if(fromShared!=null)
      count=fromShared;
    count++;
    CacheHelper.putData(key: 'counter', value: count).then((value){
      emit(ChangecCount());
    });
  }
}