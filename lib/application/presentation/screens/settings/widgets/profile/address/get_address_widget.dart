import 'package:device/application/bussiness_logic/bloc/profile/profile_bloc.dart';
import 'package:device/domain/core/color/colors.dart';
import 'package:device/domain/core/constants/const.dart';
import 'package:device/domain/models/profile/address/delete_address/delete_address_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class GetAddressWidget extends StatelessWidget {
  const GetAddressWidget({Key? key, this.formCheckout = false})
      : super(key: key);
  final bool formCheckout;

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ProfileBloc, ProfileState>(
      buildWhen: (c, p) => c.getAddressModel != p.getAddressModel,
      builder: (context, state) {
        if (state.hasError) {
          return const Text('Nothing to show');
        }
        if (state.getAddressModel == null) {
          return Center(child: const Text('You haven\'t added an address yet'));
        } else if (state.getAddressModel != null) {
          return ListView.separated(
            shrinkWrap: true,
            itemBuilder: (context, index) {
              final address = state.getAddressModel![index];
              return ListTile(
                leading: Text('${index + 1},'),
                title: Text(address.name!),
                subtitle: Text(
                    '${address.addressLine!}, ${address.district!},\n${address.locality!},\n${address.landmark},\n${address.state}\npin : ${address.pincode}\nph : ${address.phoneNumber}\naltPh:${address.altPhoneNumber}\n'),
                onTap: () {
                  if (formCheckout) {
                    context.read<ProfileBloc>().add(
                        ProfileEvent.defaultAddressEvent(
                            getAddressModel: address));
                  }
                },
                trailing: PopupMenuButton(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(12),
                    ),
                    icon: const Icon(Icons.more_vert, color: kBlack),
                    itemBuilder: (context) => [
                          PopupMenuItem(
                            child: Text('Delete'),
                            onTap: () {
                              _deleteShowDialog(context,
                                  context.read<ProfileBloc>(), address.id!);
                            },
                          ),
                        ]),
              );
            },
            itemCount: state.getAddressModel!.length,
            separatorBuilder: (context, index) => const Divider(),
          );
        } else {
          return Center(
            child: Text('Something Error'),
          );
        }
      },
    );
  }

  void _deleteShowDialog(context, ProfileBloc bloc, int id) {
    showDialog(
        context: context,
        builder: (context) {
          return AlertDialog(
            title: Text(
              'Delete Address',
              style: headStyle,
            ),
            content: Text(
              'Are you sure you want to delete the address?',
              style: TextStyle(
                fontSize: 16,
              ),
            ),
            actions: [
              TextButton(
                  onPressed: () {
                    Navigator.of(context).pop();
                  },
                  child: Text(
                    'No',
                    style: TextStyle(color: kBlack),
                  )),
              TextButton(
                  onPressed: () {
                    bloc.add(ProfileEvent.deleteAddressEvent(
                        deleteAddressModel: DeleteAddressModel(id: id)));
                    Navigator.of(context).pop();
                  },
                  child: Text(
                    'Yes',
                    style: TextStyle(color: kRed),
                  ))
            ],
          );
        });
  }
}
