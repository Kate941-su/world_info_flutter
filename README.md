# World Info Flutter

This repository provides you to learn following tech stacks in Flutter.

- How to manage application state
- How to add ads into your application
- How to manage persistent data
- How to do unit test by using bloc

## Architecture

See [Architecture.png](https://github.com/Kate941-su/world_info_flutter/blob/main/Architecture.png)

## Rules in this repository

- You can copy this repository without any permission.
- You can make comment in issue.

## Technical Stacks

### Application Logic

[Bloc Pattern](https://bloclibrary.dev/)

### State management

[Bloc](https://pub.dev/packages/flutter_bloc)

### Advertisement Provider

[Google Admob](https://admob.google.com/home/)

### Peristent data

[Isar](https://isar.dev/)

### Unit test

[mockito](https://pub.dev/packages/mockito)

[bloc_test](https://pub.dev/packages/bloc_test)

### Others

[Flutter hooks](https://pub.dev/packages/flutter_hooks)

[Go Router](https://pub.dev/packages/go_router)

## 1. Bloc State Management

Pros of using bloc pattern are the following things.

1. You can definetly separate concerns as 3 Layers

- UI Layer
- Buisiness logic layer
- Data source layer
  This approach helps developers to develop **maintanable**, **stable** and **robust** applications.

2. Unified coding style in your team.

3. You can easily find where the logic implement

A complehensive document is written in this [link](https://bloclibrary.dev/bloc-concepts/).

Before you learn Bloc in Flutter, you should know the notion of Stream and Provider.

Bloc has two features of **Bloc** and **Cubit** to manage states.

In my point of view, Difference of Cubit and Bloc is **event driven** or **function driven**. Cubit doesn't have event in itself. So if you want to change your state that is managed by Cubit, you have to call function in Cubit. So Cubit is be able to create as simply than Bloc but Bloc is able to provide complicated logics.
The following sections are some my opinions to decide which you use Cubit or Bloc.

### Cubit

Simple state like a counter. The state is simple structure and is decided simple logic.

Pros is that you can make it less boiler plate than Bloc.

```dart
class CounterCubit extends Cubit<int> {
  CounterCubit() : super(0);

  void increment() {
    addError(Exception('increment error!'), StackTrace.current);
    emit(state + 1);
  }

  @override
  void onChange(Change<int> change) {
    super.onChange(change);
    print(change);
  }

  @override
  void onError(Object error, StackTrace stackTrace) {
    print('$error, $stackTrace');
    super.onError(error, stackTrace);
  }
}
```

### Bloc

The state whose data has to be retrieved by repository layer or complicated logic.

The following sample can be seen at `/lib/blocs/country_list_bloc.dart`

```dart
class CountryListBloc
    extends Bloc<CountryListStateChangeEvent, CountryListState> {
  CountryListBloc(FavoriteCountryIsarRepository repository)
      : super(CountryListState.initialize()) {
    on<CountryListStateChangeEvent>((event, emit) async {
      await event.when(
        countryListStateChangeEvent: (isFavorite, code) {
          final List<Country> newCountryList = state.countryList.map((it) {
            if (it.code == code) {
              return it.copyWith(code: code, isFavorite: isFavorite);
            }
            return it;
          }).toList(growable: false);
          emit(state.copyWith(countryList: newCountryList));
        },
        countryListInitializeEvent: () async {
          final codeList = await repository.getAllFavoriteCountries();
          final unwrappedList =
              codeList.whereType<String>().toList(growable: false);
          final newState = CountryListState.initializeState(unwrappedList);
          emit(newState);
        },
      );
    }, transformer: concurrent());
  }
}
```

All of states in this application are managed by `Bloc`.

## How to valid bloc in your project

At least you should know the following built-in bloc functions.

- BlocProvider
- BlocBuilder
- BlocListener

### BlocProvider

You have to wrap your root or almost top level widget to valid bloc in your project.

Most project has up to two Bloc or Cubit instance. So you can use `MultiBlocProvider`.

Then it would be said `Deep Injection`. You can use Bloc instance throght `BuildContext` object. like the below.

```dart
final favoriteBloc = context.read<FavoriteFilterBloc>();
```

You can see the following sample at `/lib/main.dart`.

```dart
child: MultiBlocProvider(
    providers: [
      BlocProvider<MainScreenStateBloc>(
        create: (context) => MainScreenStateBloc(),
      ),
      BlocProvider<TopCountrySelectBloc>(
        create: (context) => TopCountrySelectBloc(),
      ),
      BlocProvider<BottomCountrySelectBloc>(
        create: (context) => BottomCountrySelectBloc(),
      ),
      BlocProvider<PositionSelectBloc>(
          create: (context) => PositionSelectBloc()),
      BlocProvider<CountryListBloc>(
          create: (context) => CountryListBloc(
              context.read<FavoriteCountryIsarRepository>())),
      BlocProvider<FavoriteFilterBloc>(
          create: (context) => FavoriteFilterBloc()),
      BlocProvider<AdWatchBloc>(create: (context) => AdWatchBloc()),
    ],
    child: MaterialApp.router(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      routerConfig: AppRouter.goRouter,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.white),
        useMaterial3: true,
      ),
    )),
```

### BlocBuilder

If you wrap your widget in BlocBuilder, you can get the state that specified by type of state you defined and when the state is changed, Flutter detect the mutation and run build function again.

```dart
BlocBuilder<BottomCountrySelectBloc, BottomCountrySelectState>(
    builder: (context, state) {
  return CountryView(
    country: state.country!,
    onTap: () {
      context.read<PositionSelectBloc>().add(
          const PositionSelectEvent(
              position: PositionSelect.bottom()));
      context.read<MainScreenStateBloc>().add(
          const MainScreenStateEvent.screenStateChangeEvent(
              screenType: MainScreenType.select()));
    },
  );
}),
```

### BlocListener

It is similar to BlocBuilder but a bit differenct.

BlocBuilder and BlocListener detect mutation of its state. BlocBuilder rebuilds in the child widget, on the other hand BlocListener doesn't rebuild its child. Only detect mutation. BlocListener can detect multipul state mutation by using `MultiBlocListener`

```dart
return MultiBlocListener(
  listeners: [
    BlocListener<BottomCountrySelectBloc, BottomCountrySelectState>(
        listener: (context, state) {
      topCountryCode.value = state.country!.code;
    }),
    BlocListener<TopCountrySelectBloc, TopCountrySelectState>(
        listener: (context, state) {
      bottomCountryCode.value = state.country!.code;
    }),
  ],
  child: BlocBuilder<MainScreenStateBloc, MainScreenState>(
      builder: (context, state) {
    return state.screenType == const MainScreenType.top()
        ? TopViewScaffold(
            isComparable: topCountryCode.value != CountryCode.UNTIL &&
                bottomCountryCode.value != CountryCode.UNTIL,
          )
        : CountryListView();
  }),
);
```

#### Caution

BlocListener doesn't work inside BlocBuilder. You have to wrap it outside of all
BlocBuilder.

```dart
// BAD
    return BlocBuilder<T, U>(
      builder: (context,state) {
        return MultiBlocListener(
          listeners: [
            // some listeners...
          ],
          child: // Any widgets...,
        );
      }
    );

```

⚠️ This is only my experience. Please tell me any opnions

- I could detect state changing by a BlocListener inside a BlocBuilder.
- I know why the exapmle doesn't work.

Feel free to open issue or give me your opinion by email!

## Repository

You can use built-in features in bloc when you develop repository layer.

For example, you made repository like the following code.

```dart
class CountryAttributesRepositoryImpl implements CountryAttributesRepository {
  final dio = Dio();

  @override
  Future<CountryAttributes> getAttribute(CountryCode countryCode) async {
    try {
      final url = '${GlobalConfig.apiUrl}countryinformation';
      final response = await dio.get(
        url,
        queryParameters: {'countryCode': countryCode.codeString},
      );
      final json = response.data as Map<String, dynamic>;
      return CountryAttributes.fromJson(json);
    } catch (error) {
      print(error);
      return CountryAttributes.fromJson({});
    }
  }
}
```

How do you implement `Deep Injection`?. You can use Repository Provider which Bloc produces by default. As you wrap your almost root widget by BlocProvider, you also have to wrap your almost root widget by RepositoryProvider to valid Deep Injection your repository.

If you have only one repository, you don't have to implement `MultiRepositoryProvider`, but almost cases you have to implement multiple repository so the following code shows the example of `MultiRepositoryProvider`.

```dart
class MyApp extends StatelessWidget {
  MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiRepositoryProvider(
      providers: [
        RepositoryProvider<CountryAttributesRepository>(
          create: (context) => CountryAttributesRepositoryImpl(),
        ),
        RepositoryProvider<FavoriteCountryIsarRepository>(
          create: (context) => FavoriteCountryIsarRepository(),
        ),
        RepositoryProvider<ShowMoreInterstitialAdRepository>(
          lazy: false,
          create: (context) => ShowMoreInterstitialAdRepository(),
        ),
        RepositoryProvider<ShowRateInterstitialAdRepository>(
          lazy: false,
          create: (context) => ShowRateInterstitialAdRepository(),
        ),
      ],
      // countinue codes
```

The important thing you should know is that Repository providers are not created when the `build` function that is in `MyApp` widget.

You can see the `lazy` parameter in RepositoryProvider. You can imagine that if RepositoryProcivider doesn't set `lazy:false` it will be created when it is used for the first time.(the meaning `lazy` is very intuitive in this case, I think 🤔).

In this case, I have to create instance becase these repositories that have `lazy: false` have initialize logic. You should choose whether the repository has to have `lazy` or not. It's definetly case-by-case. I would say you could find during developing your application.

Once you implement RepositoryProviders in your project, you can use these repositories through the `BuildContext`.

```dart
context.read<CountryAttributesRepository>().getAttribute(topCountryCode),
```

And you can inject them to your Bloc objects.

```dart
BlocProvider<AdWatchBloc>(create: (context) => AdWatchBloc()),
```

The example of implementing Bloc by using repository DI.

⚠️ If you use async function in `on<T>()` function, don't forget putting `await` keyword before `event.when`!!!

If you forget, you might come across async gap error!!!

```dart
class CountryListBloc
    extends Bloc<CountryListStateChangeEvent, CountryListState> {
  CountryListBloc(FavoriteCountryIsarRepository repository)
      : super(CountryListState.initialize()) {
    on<CountryListStateChangeEvent>((event, emit) async {
      await event.when( // Don't forget await!
        countryListStateChangeEvent: (isFavorite, code) {
          final List<Country> newCountryList = state.countryList.map((it) {
            if (it.code == code) {
              return it.copyWith(code: code, isFavorite: isFavorite);
            }
            return it;
          }).toList(growable: false);
          emit(state.copyWith(countryList: newCountryList));
        },
        countryListInitializeEvent: () async {
          final codeList = await repository.getAllFavoriteCountries();
          final unwrappedList =
              codeList.whereType<String>().toList(growable: false);
          final newState = CountryListState.initializeState(unwrappedList);
          emit(newState);
        },
      );
    }, transformer: concurrent());
  }
}
```

## Persistent data

In this project, I use Isar to store the permanent data in local strage. 

But in the middle of developing, You should have used [Bloc Hidrate](https://pub.dev/packages/hydrated_bloc)😅.

### How to use Isar database

Isar is also resource layer so I implemented it as repository.

At first, I made `IsarRepository` that is abstract class to share the initialze login of all Isar repositories.

But you can provide better solutions that the following soulution.
(Use mixin etc...)


```dart
abstract class IsarRepository {
  Isar? isar;
  Future<void> initializeIsarInstance(
      {required CollectionSchema schema}) async {
    final dir = await getApplicationCacheDirectory();
    isar = await Isar.open(
      [schema],
      directory: dir.path,
    );
  }
}
```

Inherit it

```dart
import 'package:isar/isar.dart';
import 'package:rate_converter_flutter/isar/isar_favorite_country.dart';
import 'package:rate_converter_flutter/resources/isar_repository.dart';

import '../constant/country_code_constant.dart';

class FavoriteCountryIsarRepository extends IsarRepository {
  FavoriteCountryIsarRepository() : super() {
    print('instantiate');
  }

  Future<List<String?>> getAllFavoriteCountries() async {
    final result = await isar?.collection<FavoriteCountry>().where().findAll();
    if (result == null) {
      return [];
    }
    return result.map((it) => it.favoriteCountry).toList(growable: false);
  }

  Future<void> add(CountryCode code) async {
    final favoriteCountry = FavoriteCountry()
      ..favoriteCountry = code.codeString;
    await isar?.writeTxn(() async {
      await isar?.collection<FavoriteCountry>().put(favoriteCountry);
      print('isar: add ${code.codeString}');
    });
  }

  Future<void> delete(CountryCode code) async {
    await isar?.writeTxn(() async {
      await isar
          ?.collection<FavoriteCountry>()
          .filter()
          .favoriteCountryEqualTo(code.codeString)
          .deleteAll();
      print('isar: delete ${code.codeString}');
    });
  }
}
```


## Unit test

TODO: write this topic

## Tips that help me

There some tips I want to tell you.

- [iPad Multitasking Support error when deploying App Store Connect(Japanese Article)](https://zenn.dev/justin999/articles/xcode-how-to-disable-ipad-multitasking-support)

- [How to get rid of debug banner in Flutter](https://stackoverflow.com/questions/48893935/how-can-i-remove-the-debug-banner-in-flutter)

- [Async gap when writting functionarity which uses context in callback functions](https://api.flutter.dev/flutter/widgets/BuildContext/mounted.html)

- [Android build error when updating Flutter up to 3.16.4](https://stackoverflow.com/questions/78032396/applying-flutters-app-plugin-loader-gradle-plugin-imperatively-using-the-apply-s)

- [Json munipulation(Japanese)](https://blog.dalt.me/3686)
