import 'package:bookly/features/home/data/models/book_model/book_model.dart';
import 'package:bookly/features/home/data/repos/home_repo.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

part 'relevance_books_state.dart';

class RelevanceBooksCubit extends Cubit<RelevanceBooksState> {
  RelevanceBooksCubit(this.homeRepo) : super(RelevanceBooksInitial());

  final HomeRepo homeRepo;

  Future<void> fetchRelevanceBooks({required String category}) async {
    emit(RelevanceBooksLoadingState());

    final result = await homeRepo.fetchRelevanceBooks(category: category);

    result.fold(
      (failure) {
        emit(RelevanceBooksFailureState(errMessage: failure.errMessage));
      },
      (books) {
        emit(RelevanceBooksSuccessState(books: books));
      },
    );
  }
}
