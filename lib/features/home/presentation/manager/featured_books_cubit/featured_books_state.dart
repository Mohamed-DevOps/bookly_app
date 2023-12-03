part of 'featured_books_cubit.dart';

sealed class FeaturedBooksState extends Equatable {
  const FeaturedBooksState();

  @override
  List<Object> get props => [];
}

final class FeaturedBooksInitial extends FeaturedBooksState {}

final class FeaturedBooksLoadingState extends FeaturedBooksState {}

final class FeaturedBooksSuccessState extends FeaturedBooksState {
  final List<BookModel> books;

  const FeaturedBooksSuccessState({required this.books});
}

final class FeaturedBooksFailureState extends FeaturedBooksState {
  final String errMessage;

  const FeaturedBooksFailureState({required this.errMessage});
}
