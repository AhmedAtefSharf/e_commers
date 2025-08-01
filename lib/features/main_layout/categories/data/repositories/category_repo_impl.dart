import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';

import '../../../../../core/exceptions/failuers.dart';
import '../../../home/data/dataSource/category_ds.dart';
import '../../../home/data/models/category_model.dart';
import '../../domain/repositories/category_repo.dart';
import '../data_sources/category_ds.dart';

@Injectable(as: CategoryRepo)
class CategoryRepoImpl implements CategoryRepo {
  CategoryDS categoryDS;

  CategoryRepoImpl(this.categoryDS);

  @override
  Future<Either<RouteFailures, CategoryModel>> getSubCategories(
      String catId) async {
    try {
      var data = await categoryDS.getSubCategories(catId);
      return Right(data);
    } catch (e) {
      return Left(RouteRemoteFailures(e.toString()));
    }
  }
}
