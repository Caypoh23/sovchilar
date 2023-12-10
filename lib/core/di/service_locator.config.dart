// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;

import '../../config/router/navigation_service.dart' as _i10;
import '../../data/datasource/local/auth_local_db.dart' as _i5;
import '../../data/datasource/remote/auth_api.dart' as _i4;
import '../../data/datasource/remote/contacts_api.dart' as _i7;
import '../../data/datasource/remote/premade_messages_api.dart' as _i11;
import '../../domain/repositories/auth_repository.dart' as _i6;
import '../../domain/repositories/contacts_repository.dart' as _i8;
import '../../domain/repositories/premade_messages_repository.dart' as _i12;
import '../../presentation/main_screen/bloc/main_screen_bloc.dart' as _i9;
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
    gh.lazySingleton<_i3.AppApi>(() => _i3.AppApi());
    gh.lazySingleton<_i4.AuthApi>(() => _i4.AuthApiImpl());
    gh.lazySingleton<_i5.AuthLocalStorage>(() => _i5.AuthLocalStorageImpl());
    gh.lazySingleton<_i6.AuthRepository>(() => _i6.AuthRepositoryImpl());
    gh.lazySingleton<_i7.ContactsApi>(() => _i7.ContactsApiImpl());
    gh.lazySingleton<_i8.ContactsRepository>(
        () => _i8.ContactsRepositoryImpl());
    gh.factory<_i9.MainScreenBloc>(() => _i9.MainScreenBloc());
    gh.singleton<_i10.NavigationService>(_i10.NavigationService());
    gh.lazySingleton<_i11.PremadeMessagesApi>(
        () => _i11.PremadeMessagesApiImpl());
    gh.lazySingleton<_i12.PremadeMessagesRepository>(() =>
        _i12.PremadeMessagesRepositoryImpl(api: gh<_i11.PremadeMessagesApi>()));
    return this;
  }
}
