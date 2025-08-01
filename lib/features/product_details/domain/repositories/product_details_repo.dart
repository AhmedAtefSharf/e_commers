import 'package:dartz/dartz.dart';
import 'package:ecommerce/core/exceptions/failuers.dart';
import 'package:ecommerce/features/main_layout/home/data/models/category_model.dart';
import 'package:ecommerce/features/product_details/data/models/AddToCartModel.dart';
import 'package:ecommerce/features/products_screen/data/models/ProductModel.dart';

abstract class ProductDetailsRepo {
  Future<Either<RouteFailures, AddToCartModel>> addToCart(String prodId);
}
