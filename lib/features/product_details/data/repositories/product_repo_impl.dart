import 'package:dartz/dartz.dart';
import 'package:ecommerce/core/exceptions/failuers.dart';
import 'package:ecommerce/features/main_layout/categories/data/data_sources/category_ds.dart';
import 'package:ecommerce/features/main_layout/categories/domain/repositories/category_repo.dart';
import 'package:ecommerce/features/main_layout/home/data/models/category_model.dart';
import 'package:ecommerce/features/product_details/data/data_sources/product_details_ds.dart';
import 'package:ecommerce/features/product_details/data/models/AddToCartModel.dart';
import 'package:ecommerce/features/product_details/domain/repositories/product_details_repo.dart';
import 'package:ecommerce/features/products_screen/data/data_sources/product_ds.dart';
import 'package:ecommerce/features/products_screen/data/models/ProductModel.dart';
import 'package:ecommerce/features/products_screen/domain/repositories/product_repo.dart';
import 'package:injectable/injectable.dart';

@Injectable(as: ProductDetailsRepo)
class ProductDetailsRepoImpl implements ProductDetailsRepo {
  ProductDetailsDS productDetailsDS;

  ProductDetailsRepoImpl(this.productDetailsDS);

  @override
  Future<Either<RouteFailures, AddToCartModel>> addToCart(String prodId) async {
    try {
      var data = await productDetailsDS.addToCart(prodId);
      return Right(data);
    } catch (e) {
      return Left(RouteRemoteFailures(e.toString()));
    }
  }
}
