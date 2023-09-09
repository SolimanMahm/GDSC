import 'package:api/api_session/cubit/api_cubit.dart';
import 'package:api/api_session/cubit/api_state.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class ApiSession extends StatelessWidget {
  const ApiSession({super.key});

  @override
  Widget build(BuildContext context) {
    ApiCubit cubit = BlocProvider.of<ApiCubit>(context);
    return BlocBuilder<ApiCubit, ApiState>(builder: (context, state) {
      return Scaffold(
        body: state is GetAlbumLoadingState
            ? Center(
                child: CircularProgressIndicator(),
              )
            : ListView.separated(
                itemCount: cubit.album.length,
                itemBuilder: (context, index) {
                  return Padding(
                    padding: const EdgeInsets.all(24),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text('UserId: ${cubit.album[index].userId}'),
                        Text('Id: ${cubit.album[index].id}'),
                        Text('Title: ${cubit.album[index].title}'),
                      ],
                    ),
                  );
                },
                separatorBuilder: (context, index) {
                  return Padding(
                    padding: const EdgeInsets.all(24.0),
                    child: Container(
                      height: 1,
                      color: Colors.grey,
                    ),
                  );
                },
              ),
      );
    });
  }
}
