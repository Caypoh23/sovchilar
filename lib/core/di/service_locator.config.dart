// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;

import '../../config/router/navigation_service.dart' as _i11;
import '../../features/data/datasource/local/ad_local_db.dart' as _i3;
import '../../features/data/datasource/local/auth_local_db.dart' as _i7;
import '../../features/data/datasource/local/profile_local_db.dart' as _i13;
import '../../features/data/datasource/remote/ad_api.dart' as _i14;
import '../../features/data/datasource/remote/auth_api.dart' as _i5;
import '../../features/data/datasource/remote/payment_api.dart' as _i12;
import '../../features/data/datasource/remote/profile_api.dart' as _i6;
import '../../features/domain/repositories/ad_repository.dart' as _i15;
import '../../features/domain/repositories/auth_repository.dart' as _i8;
import '../../features/domain/repositories/payment_repostiory.dart' as _i17;
import '../../features/presentation/home/bloc/home_bloc.dart' as _i16;
import '../../features/presentation/language/cubit/language_cubit.dart' as _i9;
import '../../features/presentation/main/bloc/main_bloc.dart' as _i10;
import '../../features/presentation/payment/cubit/payment_cubit.dart' as _i19;
import '../../features/presentation/post_editor/cubit/post_editor_cubit.dart'
    as _i18;
import '../network/api_service.dart' as _i4;

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
    gh.lazySingleton<_i3.AdLocalStorage>(() => _i3.AdLocalStorageImpl());
    gh.singleton<_i4.AppApi>(_i4.AppApi());
    gh.lazySingleton<_i5.AuthApi>(() => _i5.AuthApiImpl(gh<_i4.AppApi>()));
    gh.lazySingleton<_i6.AuthApi>(() => _i6.AuthApiImpl(gh<_i4.AppApi>()));
    gh.lazySingleton<_i7.AuthLocalStorage>(() => _i7.AuthLocalStorageImpl());
    gh.lazySingleton<_i8.AuthRepository>(() => _i8.AuthRepositoryImpl(
          gh<_i5.AuthApi>(),
          gh<_i7.AuthLocalStorage>(),
        ));
    gh.factory<_i9.LanguageCubit>(() => _i9.LanguageCubit());
    gh.factory<_i10.MainBloc>(() => _i10.MainBloc());
    gh.singleton<_i11.NavigationService>(_i11.NavigationService());
    gh.lazySingleton<_i12.PaymentApi>(
        () => _i12.PaymentApiImpl(gh<_i4.AppApi>()));
    gh.lazySingleton<_i13.ProfileLocalStorage>(
        () => _i13.ProfileLocalStorageImpl());
    gh.lazySingleton<_i14.AdApi>(() => _i14.AdApiImpl(gh<_i4.AppApi>()));
    gh.lazySingleton<_i15.AdRepository>(() => _i15.AdRepositoryImpl(
          gh<_i14.AdApi>(),
          gh<_i3.AdLocalStorage>(),
        ));
    gh.factory<_i16.HomeBloc>(() => _i16.HomeBloc(gh<_i15.AdRepository>()));
    gh.lazySingleton<_i17.PaymentRepository>(() => _i17.PaymentRepositoryImpl(
          gh<_i12.PaymentApi>(),
          gh<_i13.ProfileLocalStorage>(),
        ));
    gh.factory<_i18.PostEditorCubit>(() => _i18.PostEditorCubit(
          gh<_i15.AdRepository>(),
          gh<_i17.PaymentRepository>(),
          gh<_i16.HomeBloc>(),
        ));
    gh.factory<_i19.PaymentCubit>(
        () => _i19.PaymentCubit(gh<_i17.PaymentRepository>()));
    return this;
  }
}
