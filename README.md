# todo_list

Демо приложение, которое показывает реализацию CLean Architecture и взаимодействие между слоями приложение.

В приложении используется связка BLoC(для бизнес-логики) + Elementary(для логики ui)

## Примечание

Это не полноценный проект, здесь нет многих вещей, в т.ч. обработки ошибок, аналитики и крашлитики.

## Структура

- core

Важные компоненты приложение, такие как роутинг, тема, само приложение, локализация

- generated

Сгенерированные файлы

- scopes

Интерфейс приложения, обработчики событий для взаимодействия с пользователем

- - di

Зависимости скоупа

- - features

Фичи, которые представлены в данном скоупе
