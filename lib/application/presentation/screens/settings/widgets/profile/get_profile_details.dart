import 'package:device/application/bussiness_logic/bloc/profile/profile_bloc.dart';
import 'package:device/application/presentation/screens/settings/widgets/profile/security_screen.dart';
import 'package:device/application/presentation/utils/show_snack_bar/show_snack_bar.dart';
import 'package:device/domain/core/color/colors.dart';
import 'package:device/domain/models/profile/get_profile/data.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:loading_animation_widget/loading_animation_widget.dart';

class ProfileDetailsWidget extends StatelessWidget {
  const ProfileDetailsWidget({super.key});

  @override
  Widget build(BuildContext context) {
    WidgetsBinding.instance.addPostFrameCallback((timeStamp) {
      context.read<ProfileBloc>().add(
            const ProfileEvent.getProfileEvent(),
          );
    });
    return BlocConsumer<ProfileBloc, ProfileState>(listener: (context, state) {
      if (state.hasError) {
        return showSnack(
            context: context, message: state.message!, color: kRed);
      }
    }, builder: (context, state) {
      if (state.isLoading) {
        return Center(
            child: LoadingAnimationWidget.inkDrop(color: kWhite, size: 25));
      } else if (state.data != null) {
        final user = state.data;
        return Padding(
            padding: const EdgeInsets.all(8.0),
            child: Card(
              elevation: 8.0,
              margin:
                  const EdgeInsets.symmetric(horizontal: 10.0, vertical: 6.0),
              child: Container(
                decoration: BoxDecoration(
                  boxShadow: const [
                    BoxShadow(
                      color: Color.fromARGB(255, 222, 221, 221),
                      offset: Offset(
                        5.0,
                        5.0,
                      ),
                      blurRadius: 10.0,
                      spreadRadius: 2.0,
                    ),
                    BoxShadow(
                      color: kWhite,
                      offset: Offset(0.0, 0.0),
                      blurRadius: 0.0,
                      spreadRadius: 0.0,
                    ),
                  ],
                  borderRadius: BorderRadius.circular(10),
                ),
                child: ListTile(
                  contentPadding: const EdgeInsets.symmetric(
                      horizontal: 20.0, vertical: 10.0),
                  leading: const CircleAvatar(
                    minRadius: 30,
                    maxRadius: 40,
                    backgroundImage: NetworkImage(
                        'https://w7.pngwing.com/pngs/205/731/png-transparent-default-avatar-thumbnail.png'),
                  ),
                  title: Text(
                    user!.username!,
                    style: const TextStyle(fontSize: 16),
                  ),
                  trailing: GestureDetector(
                    onTap: () {
                      _settingModalBottomSheet(
                        context,
                        user,
                      );
                    },
                    child: const Icon(
                      Icons.arrow_drop_down_sharp,
                      size: 30,
                    ),
                  ),
                ),
              ),
            ));
      } else {
        return const Center(
          child: Text('The Users data not availble'),
        );
      }
    });
  }

  void _settingModalBottomSheet(context, Data? data) {
    showModalBottomSheet(
        context: context,
        builder: (BuildContext bc) {
          return BlocBuilder<ProfileBloc, ProfileState>(
            builder: (context, state) {
              return Container(
                  child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(top: 30, left: 20),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        const Text(
                          'Profile Details',
                          style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 20),
                        ),
                        IconButton(
                            onPressed: () {
                              Navigator.of(context).pop();
                            },
                            icon: const Icon(Icons.close))
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                      decoration: BoxDecoration(
                        boxShadow: const [
                          BoxShadow(
                            color: Color.fromARGB(255, 222, 221, 221),
                            offset: Offset(
                              5.0,
                              5.0,
                            ),
                            blurRadius: 10.0,
                            spreadRadius: 2.0,
                          ),
                          BoxShadow(
                            color: kWhite,
                            offset: Offset(0.0, 0.0),
                            blurRadius: 0.0,
                            spreadRadius: 0.0,
                          ),
                        ],
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: ListTile(
                        contentPadding: const EdgeInsets.symmetric(
                            horizontal: 20.0, vertical: 10.0),
                        leading: const CircleAvatar(
                          minRadius: 30,
                          maxRadius: 40,
                          backgroundImage: NetworkImage(
                              'https://w7.pngwing.com/pngs/205/731/png-transparent-default-avatar-thumbnail.png'),
                        ),
                        title: Text(
                          data!.username!,
                          style: const TextStyle(fontSize: 16),
                        ),
                        subtitle: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(data.email!),
                            Text(data.phone.toString()),
                          ],
                        ),
                        trailing: GestureDetector(
                            onTap: () {
                              Navigator.of(context).push(MaterialPageRoute(
                                  builder: (context) =>
                                      SecurityScreen(data: data)));
                            },
                            child: const Icon(Icons.edit)),
                      ),
                    ),
                  )
                ],
              ));
            },
          );
        });
  }
}
