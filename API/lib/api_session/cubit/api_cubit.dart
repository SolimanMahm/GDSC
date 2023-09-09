import 'package:api/api_session/model/album_model.dart';
import 'package:dio/dio.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'api_state.dart';

class ApiCubit extends Cubit<ApiState> {
  ApiCubit() : super(ApiInitial());

  List<AlbumModel> album = [];

  void getAlbumsData() async {
    emit(GetAlbumLoadingState());
    var data = [];
    final response = await Dio()
        .get("https://jsonplaceholder.typicode.com/albums")
        .then((value) {
      data = value.data;
      album = data.map((e) => AlbumModel.fromJson(e)).toList();
      emit(GetAlbumSuccessState());
    }).catchError((e) {
      print(e.toString());
      emit(GetAlbumErrorState());
    });
  }
}
