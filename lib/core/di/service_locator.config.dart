// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;

import '../../config/router/navigation_service.dart' as _i9;
import '../../features/data/datasource/local/auth_local_db.dart' as _i5;
import '../../features/data/datasource/local/user_local_db.dart' as _i11;
import '../../features/data/datasource/remote/auth_api.dart' as _i4;
import '../../features/data/datasource/remote/user_api.dart' as _i10;
import '../../features/domain/repositories/auth_repository.dart' as _i6;
import '../../features/domain/user_repository.dart' as _i12;
import '../../features/presentation/home/bloc/home_bloc.dart' as _i13;
import '../../features/presentation/language/cubit/language_cubit.dart' as _i7;
import '../../features/presentation/main/bloc/main_bloc.dart' as _i8;
import '../network/api_service.dart' as _i3;

extension GetItInjectableX on _i1.GetIt {
// initializes the registration of main-scope dependencies inside of GetIt
  _i1.GetIt init({
    String? environment,
    _i2.EnvironmentFilter? environmentFilter,
  }) {
    final gh = _i2.GetItHelper(
      this,
      environment,
      environmentFilter,
    );
    gh.singleton<_i3.AppApi>(_i3.AppApi());
    gh.lazySingleton<_i4.AuthApi>(() => _i4.AuthApiImpl());
    gh.lazySingleton<_i5.AuthLocalStorage>(() => _i5.AuthLocalStorageImpl());
    gh.lazySingleton<_i6.AuthRepository>(() => _i6.AuthRepositoryImpl());
    gh.factory<_i7.LanguageCubit>(() => _i7.LanguageCubit());
    gh.factory<_i8.MainBloc>(() => _i8.MainBloc());
    gh.singleton<_i9.NavigationService>(_i9.NavigationService());
    gh.lazySingleton<_i10.UserApi>(() => _i10.UserApiImpl(gh<_i3.AppApi>()));
    gh.lazySingleton<_i11.UserLocalStorage>(() => _i11.UserLocalStorageImpl());
    gh.lazySingleton<_i12.UserRepository>(
        () => _i12.UserRepositoryImpl(gh<_i10.UserApi>()));
    gh.factory<_i13.HomeBloc>(() => _i13.HomeBloc(gh<_i12.UserRepository>()));
    return this;
  }
}
