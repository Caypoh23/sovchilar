part of 'payment_cubit.dart';

@freezed
class PaymentState with _$PaymentState {
  const factory PaymentState({
    @Default(Status.initial) Status status,
    Error? error,
  }) = _PaymentState;
}
