import 'package:dartz/dartz.dart';
import 'package:ecommerce/core/exceptions/failuers.dart';
import 'package:ecommerce/features/product_details/data/models/AddToCartModel.dart';
import 'package:ecommerce/features/product_details/domain/repositories/product_details_repo.dart';
import 'package:injectable/injectable.dart';

@injectable
class AddToCartUseCase {
  ProductDetailsRepo repository;

  AddToCartUseCase(this.repository);

  Future<Either<RouteFailures, AddToCartModel>> call(String prodId) =>
      repository.addToCart(prodId);
}
