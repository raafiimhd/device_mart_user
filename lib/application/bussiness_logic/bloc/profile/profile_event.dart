part of 'profile_bloc.dart';

@freezed
class ProfileEvent with _$ProfileEvent {
  const factory ProfileEvent.getProfileEvent() = _GetProfileEvent;
  const factory ProfileEvent.editUserNameEvent(
      {required EditUserNameModel user}) = _EditUserNameEvent;
  const factory ProfileEvent.verifyPasswordEvent() = VerifyPasswordEvent;
  const factory ProfileEvent.addStateEvent() = AddStateEvent;
  const factory ProfileEvent.addAddressEvent(
      {required AddAddressModel addAddressModel}) = AddAddressEvent;
  const factory ProfileEvent.selectStateEvent(
      {required int stateId, required String stateName}) = SelectStateEvent;
  const factory ProfileEvent.getAddressEvent() = GetAddressEvent;
  const factory ProfileEvent.deleteAddressEvent(
      {required DeleteAddressModel deleteAddressModel}) = DeleteAddressEvent;
  const factory ProfileEvent.defaultAddressEvent(
      {required GetAddressModel getAddressModel}) = DefaultAddressEvent;
  const factory ProfileEvent.showList() = ShowListEvent;
  const factory ProfileEvent.getWalletEvent() = GetWalletEvent;
  const factory ProfileEvent.getWalletHistoryEvent() = GetWalletHistoryEvent;
  const factory ProfileEvent.createWalletEvent() = CreateWalletEvent;
}
