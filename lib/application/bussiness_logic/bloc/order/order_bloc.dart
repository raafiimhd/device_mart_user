import 'package:bloc/bloc.dart';
import 'package:device/data/data_provider/order_provider/order_provider.dart';
import 'package:device/domain/models/order/checkout_model/checkout_model.dart';
import 'package:device/domain/models/order/get_order_model/get_order_model.dart';
import 'package:device/domain/models/order/get_order_model/get_order_qurrey_model.dart';
import 'package:device/domain/models/order/order_qurrey_model/order_qurrey.dart';
import 'package:device/domain/models/order/rating_model/get_rating_model.dart';
import 'package:device/domain/models/order/rating_model/rating_model.dart';
import 'package:device/domain/models/order/rating_model/rating_qurrey.dart';
import 'package:device/domain/models/order/razor_pay_model/razor_pay_model.dart';
import 'package:device/domain/models/order/razorpay_proces_model/razorpay_proces_model.dart';
import 'package:device/domain/models/order/razorpay_proces_model/razorpay_process_resp/razorpay_process_resp.dart';
import 'package:device/domain/models/order/select_wallet_resp/select_wallet_resp.dart';
import 'package:device/domain/models/success_resp_model/success_resp_model.dart';
import 'package:device/domain/repositery/order_repository/order_repository.dart';
import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'order_event.dart';
part 'order_state.dart';
part 'order_bloc.freezed.dart';

@injectable
class OrderBloc extends Bloc<OrderEvent, OrderState> {
  final OrderRepository orderRepository;
  final OrderProvider orderProvider =
      OrderProvider(Dio(), FlutterSecureStorage());
  final TextEditingController descriptionController = TextEditingController();
  final GlobalKey<FormState> ratingFormKey = GlobalKey<FormState>();
  final TextEditingController ratingController = TextEditingController();
  int? id;
  OrderBloc(this.orderRepository) : super(OrderState.initial()) {
    on<GetCheckOutEvent>((event, emit) async {
      emit(state.copyWith(isLoading: true));
      final result = await orderRepository.checkout();
      result.fold(
          (failure) => emit(state.copyWith(
              hasError: true, message: state.message, isLoading: false)),
          (resp) => emit(state.copyWith(
              isLoading: false, hasError: false, checkoutModel: resp)));
    });
    on<SelectPayementEvent>((event, emit) {
      emit(state.copyWith(selectPayementId: event.selectPayementId));
    });
    on<GetOrderEvent>((event, emit) async {
      emit(state.copyWith(isLoading: true));
      final result = await orderRepository.getOrder(
          getOrderQurreyModel: event.getOrderQurreyModel);
      result.fold(
          (failure) => emit(state.copyWith(
              isLoading: false, hasError: true, message: failure.message)),
          (resp) => emit(state.copyWith(
              isLoading: false,
              hasError: false,
              getOrderModel: resp,
              message: resp.message)));
    });
    on<RazorpayProcessEvent>((event, emit) async {
      emit(state.copyWith(isLoading: true));
      final result = await orderRepository.razorpayProcess(
          razorpayProcesModel: event.razorpayProcesModel);
      result.fold(
          (failure) => emit(state.copyWith(
              isLoading: false,
              message: failure.message,
              hasError: true)), (resp) {
        emit(state.copyWith(
            isLoading: false,
            hasError: false,
            razorpayProcessResp: resp,
            message: resp.message));
      });
    });
    on<GetRazorpayEvent>((event, emit) async {
      emit(state.copyWith(isLoading: true));
      final result = await orderRepository.getRazaropay();
      result.fold((l) => 'Something went wrong', (resp) {
        emit(state.copyWith(
          isLoading: false,
          razor: resp,
        ));
      });
    });
    on<CashOnDeliveryEvent>((event, emit) async {
      final result = await orderRepository.cashOnDelivery();
      result.fold(
          (failure) => emit(state.copyWith(
              isLoading: false,
              hasError: true,
              message: 'something went wrong')), (resp) {
        emit(state.copyWith(
            isLoading: false,
            successRespModel: resp,
            message: 'Successfully',
            showAnimation: true,
            hasError: false));
      });
    });
    on<CancelOrderEvent>((event, emit) async {
      emit(state.copyWith(isLoading: true));
      final result =
          await orderRepository.cancelOrder(orderQrrey: event.orderQrrey);
      result.fold(
          (failure) =>
              emit(state.copyWith(hasError: true, message: failure.message)),
          (resp) {
        emit(state.copyWith(
            hasError: false, message: resp.message, successRespModel: resp));
        add(OrderEvent.getOrderEvent(
            getOrderQurreyModel: GetOrderQurreyModel(page: 1, count: 30)));
      });
    });
    on<ReturnOrderEvent>((event, emit) async {
      final result =
          await orderRepository.returnOrder(orderQrrey: event.orderQrrey);
      result.fold(
          (failure) =>
              emit(state.copyWith(hasError: true, message: failure.message)),
          (resp) {
        emit(state.copyWith(
            message: resp.message, successRespModel: resp, hasError: false));
        add(OrderEvent.getOrderEvent(
            getOrderQurreyModel: GetOrderQurreyModel(page: 1, count: 30)));
      });
    });
    on<RatingProductEvent>((event, emit) async {
      emit(state.copyWith(isLoading: true));
      final result = await orderRepository.ratingProduct(
          ratingQurrey: event.ratingQurrey,
          ratingModel: RatingModel(
              description: descriptionController.text,
              rating: int.parse(ratingController.text)));
      result.fold(
          (failure) => emit(state.copyWith(
              isLoading: false,
              hasError: true,
              message: failure.message)), (resp) {
        emit(state.copyWith(
            isLoading: false,
            successRespModel: resp,
            message: resp.message,
            hasError: false));
      });
    });
    on<SelectWalletEvent>((event, emit) async {
      final result = await orderRepository.selectWallet();
      result.fold(
          (failure) => emit(state.copyWith(
                hasError: true,
                message: 'Insufficient balance',
              )), (resp) {
        emit(state.copyWith(
            selectWalletResp: resp, message: resp.message, hasError: false));
      });
    });
  }
}
