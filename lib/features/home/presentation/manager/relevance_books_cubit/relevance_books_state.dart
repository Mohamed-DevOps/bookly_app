part of 'relevance_books_cubit.dart';

sealed class RelevanceBooksState extends Equatable {
  const RelevanceBooksState();

  @override
  List<Object> get props => [];
}

final class RelevanceBooksInitial extends RelevanceBooksState {}

final class RelevanceBooksLoadingState extends RelevanceBooksState {}

final class RelevanceBooksSuccessState extends RelevanceBooksState {
  final List<BookModel> books;

  const RelevanceBooksSuccessState({required this.books});
}

final class RelevanceBooksFailureState extends RelevanceBooksState {
  final String errMessage;

  const RelevanceBooksFailureState({required this.errMessage});
}
