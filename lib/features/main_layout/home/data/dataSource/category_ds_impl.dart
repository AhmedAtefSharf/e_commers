import 'package:injectable/injectable.dart';

import '../../../../../core/api/api_manager.dart';
import '../../../../../core/api/end_points.dart';
import '../../../../../core/exceptions/exceptions.dart';
import '../../../../../di.dart';
import '../../../categories/data/data_sources/category_ds.dart';
import '../models/category_model.dart';

@Injectable(as: CategoryDS)
class CategoryDSImpl implements CategoryDS {
  @override
  Future<CategoryModel> getSubCategories(String catId) async {
    try {
      final response = await getIt<ApiManager>().getData(endPoint: EndPoints.category);
      final categoryModel = CategoryModel.fromJson(response.data as Map<String, dynamic>);
      return categoryModel;
    } catch (e, stackTrace) {
      throw RouteRemoteException('Error fetching categories: $e\n$stackTrace');
    }
  }


}
