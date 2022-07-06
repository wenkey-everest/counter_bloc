# Counter app

A simple counter app for exploring BloC and Cubit.

## Analysis

```
- CounterCubit contains the business logic.
- CounterView contains blocBuilder that changes the state and does not know the logic in CounterCubit.
- Logic is seperated from the presenter.
- BlocProvider is also seperated from the Bloc implementation because for loosly coupling.
- Exported Cubit and view to access for other project
```
