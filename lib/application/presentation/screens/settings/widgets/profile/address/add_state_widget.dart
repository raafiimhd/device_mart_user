import 'package:device/application/bussiness_logic/bloc/profile/profile_bloc.dart';
import 'package:device/domain/core/color/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class AddStateWidget extends StatelessWidget {
  const AddStateWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ProfileBloc, ProfileState>(
      builder: (context, state) {
        if (state.addStateRespModel == null ||
            state.addStateRespModel!.data == null) {
          WidgetsBinding.instance.addPostFrameCallback((timeStamp) {
            context.read<ProfileBloc>().add(const ProfileEvent.addStateEvent());
          });
        }

        return Row(
          children: [
            const Text(
              'Select ',
              style: TextStyle(fontWeight: FontWeight.w500, fontSize: 17),
            ),
            DropdownButton<String>(
              value: context.watch<ProfileBloc>().state.stateName,
              borderRadius: const BorderRadius.all(Radius.circular(10)),
              items: (state.addStateRespModel?.data ?? [])
                  .map<DropdownMenuItem<String>>(
                (addState) {
                  return DropdownMenuItem<String>(
                    value: addState.stateName,
                    child: Text(addState.stateName!),
                  );
                },
              ).toList(),
              onChanged: (stateNames) {
                final stateId = (state.addStateRespModel?.data ?? [])
                    .firstWhere((states) => states.stateName == stateNames)
                    .id;
                context.read<ProfileBloc>().add(
                      ProfileEvent.selectStateEvent(
                        stateId: stateId!,
                        stateName: stateNames!,
                      ),
                    );
              },
              hint: const Text(
                'States',
                style: TextStyle(color: kBlack),
              ),
              icon: const Icon(
                Icons.arrow_drop_down,
                color: kBlack,
              ),
            ),
          ],
        );
      },
    );
  }
}
