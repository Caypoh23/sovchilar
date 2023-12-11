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
import '../../config/router/navigation_service.dart' as _i10;
import '../../features/data/datasource/local/auth_local_db.dart' as _i5;
import '../../features/data/datasource/remote/auth_api.dart' as _i4;
import '../../features/data/datasource/remote/contacts_api.dart' as _i7;
import '../../features/data/datasource/remote/user_api.dart' as _i13;
import '../../features/domain/repositories/auth_repository.dart' as _i6;
import '../../features/domain/repositories/contacts_repository.dart' as _i8;
import '../../features/domain/user_repository.dart' as _i14;
import '../../features/presentation/home/bloc/home_bloc.dart' as _i15;
import '../../features/presentation/main/bloc/main_bloc.dart' as _i9;
import '../network/api_service.dart' as _i3;

import '../../features/data/datasource/remote/premade_messages_api.dart'
    as _i11;
import '../../features/domain/repositories/premade_messages_repository.dart'
    as _i12;

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
    gh.lazySingleton<_i7.ContactsApi>(() => _i7.ContactsApiImpl());
    gh.lazySingleton<_i8.ContactsRepository>(
        () => _i8.ContactsRepositoryImpl());
    gh.factory<_i9.MainBloc>(() => _i9.MainBloc());
    gh.singleton<_i10.NavigationService>(_i10.NavigationService());
    gh.lazySingleton<_i11.PremadeMessagesApi>(
        () => _i11.PremadeMessagesApiImpl());
    gh.lazySingleton<_i12.PremadeMessagesRepository>(() =>
        _i12.PremadeMessagesRepositoryImpl(api: gh<_i11.PremadeMessagesApi>()));
    gh.lazySingleton<_i13.UserApi>(() => _i13.UserApiImpl(gh<_i3.AppApi>()));
    gh.lazySingleton<_i14.UserRepository>(
        () => _i14.UserRepositoryImpl(gh<_i13.UserApi>()));
    gh.factory<_i15.HomeBloc>(() => _i15.HomeBloc(gh<_i14.UserRepository>()));
    return this;
  }
}
