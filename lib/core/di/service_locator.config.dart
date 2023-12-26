// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes

// Package imports:
import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;

// Project imports:
import '../../config/router/app_router.dart' as _i5;
import '../../config/router/navigation_service.dart' as _i12;
import '../../features/data/datasource/local/ad_local_db.dart' as _i3;
import '../../features/data/datasource/local/auth_local_db.dart' as _i8;
import '../../features/data/datasource/local/profile_local_db.dart' as _i14;
import '../../features/data/datasource/remote/ad_api.dart' as _i16;
import '../../features/data/datasource/remote/auth_api.dart' as _i6;
import '../../features/data/datasource/remote/payment_api.dart' as _i13;
import '../../features/data/datasource/remote/profile_api.dart' as _i7;
import '../../features/domain/repositories/ad_repository.dart' as _i17;
import '../../features/domain/repositories/auth_repository.dart' as _i9;
import '../../features/domain/repositories/payment_repostiory.dart' as _i21;
import '../../features/presentation/auth/cubit/auth_cubit.dart' as _i18;
import '../../features/presentation/home/bloc/home_bloc.dart' as _i19;
import '../../features/presentation/language/cubit/language_cubit.dart' as _i10;
import '../../features/presentation/main/bloc/main_bloc.dart' as _i11;
import '../../features/presentation/my_ads/bloc/my_ads_bloc.dart' as _i20;
import '../../features/presentation/payment/cubit/payment_cubit.dart' as _i23;
import '../network/api_service.dart' as _i4;

import '../../features/presentation/post_editor/cubit/post_editor_cubit.dart'
    as _i22;
import '../../features/presentation/splash_screen/splash_screen_bloc.dart'
    as _i15;

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
    gh.lazySingleton<_i5.AppRouter>(() => _i5.AppRouter());
    gh.lazySingleton<_i6.AuthApi>(() => _i6.AuthApiImpl(gh<_i4.AppApi>()));
    gh.lazySingleton<_i7.AuthApi>(() => _i7.AuthApiImpl(gh<_i4.AppApi>()));
    gh.lazySingleton<_i8.AuthLocalStorage>(() => _i8.AuthLocalStorageImpl());
    gh.lazySingleton<_i9.AuthRepository>(() => _i9.AuthRepositoryImpl(
          gh<_i6.AuthApi>(),
          gh<_i8.AuthLocalStorage>(),
        ));
    gh.factory<_i10.LanguageCubit>(() => _i10.LanguageCubit());
    gh.factory<_i11.MainBloc>(() => _i11.MainBloc());
    gh.singleton<_i12.NavigationService>(_i12.NavigationService());
    gh.lazySingleton<_i13.PaymentApi>(
        () => _i13.PaymentApiImpl(gh<_i4.AppApi>()));
    gh.lazySingleton<_i14.ProfileLocalStorage>(
        () => _i14.ProfileLocalStorageImpl());
    gh.factory<_i15.SplashScreenBloc>(
        () => _i15.SplashScreenBloc(gh<_i9.AuthRepository>()));
    gh.lazySingleton<_i16.AdApi>(() => _i16.AdApiImpl(gh<_i4.AppApi>()));
    gh.lazySingleton<_i17.AdRepository>(() => _i17.AdRepositoryImpl(
          gh<_i16.AdApi>(),
          gh<_i3.AdLocalStorage>(),
        ));
    gh.factory<_i18.AuthCubit>(() => _i18.AuthCubit(gh<_i9.AuthRepository>()));
    gh.factory<_i19.HomeBloc>(() => _i19.HomeBloc(gh<_i17.AdRepository>()));
    gh.factory<_i20.MyAdsBloc>(() => _i20.MyAdsBloc(gh<_i17.AdRepository>()));
    gh.lazySingleton<_i21.PaymentRepository>(() => _i21.PaymentRepositoryImpl(
          gh<_i13.PaymentApi>(),
          gh<_i14.ProfileLocalStorage>(),
        ));
    gh.factory<_i22.PostEditorCubit>(() => _i22.PostEditorCubit(
          gh<_i17.AdRepository>(),
          gh<_i21.PaymentRepository>(),
          gh<_i19.HomeBloc>(),
        ));
    gh.factory<_i23.PaymentCubit>(
        () => _i23.PaymentCubit(gh<_i21.PaymentRepository>()));
    return this;
  }
}
