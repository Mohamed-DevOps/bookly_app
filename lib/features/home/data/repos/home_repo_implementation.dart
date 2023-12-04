import 'package:bookly/core/errors/failure.dart';
import 'package:bookly/core/utils/api_service.dart';
import 'package:bookly/features/home/data/models/book_model/book_model.dart';
import 'package:bookly/features/home/data/repos/home_repo.dart';
import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';

class HomeRepoImplementation implements HomeRepo {
  final ApiService apiService;

  const HomeRepoImplementation({required this.apiService});

  @override
  Future<Either<Failure, List<BookModel>>> fetchNewestBooks() async {
    try {
      final data = await apiService.get(
          endPoint:
              "volumes?Filtering=free-ebooks&Sorting=newest&q=Subject:Art");

      List<BookModel> books = [];
      for (final item in data['items']) {
        books.add(BookModel.fromJson(item));
      }

      return right(books);
    } on DioException catch (e) {
      return left(ServerFailure.fromDioException(e));
    } catch (e) {
      return left(ServerFailure(errMessage: e.toString()));
    }
  }

  @override
  Future<Either<Failure, List<BookModel>>> fetchFeaturedBooks() async {
    try {
      final data = await apiService.get(
          endPoint: "volumes?Filtering=free-ebooks&q=Subject:Art");

      List<BookModel> books = [];
      for (final item in data['items']) {
        books.add(BookModel.fromJson(item));
      }

      return right(books);
    } on DioException catch (e) {
      return left(ServerFailure.fromDioException(e));
    } catch (e) {
      return left(ServerFailure(errMessage: e.toString()));
    }
  }
}
