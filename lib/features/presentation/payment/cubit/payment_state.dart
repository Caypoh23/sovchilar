part of 'payment_cubit.dart';

@freezed
class PaymentState with _$PaymentState {
  const factory PaymentState({
    @Default(Status.initial) Status status,
    PaymentResponseModel? payment,
    Error? error,
  }) = _PaymentState;
}
