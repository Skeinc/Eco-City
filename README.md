# Eco City 

Данный проект разработан для хакатона от Урбатон: Хакатон Благотворительного фонда СКБ Контур.

## Кейс 

- **Название:** Информационный портал населения или "Навигатор чистоты" 

- **Проблема:** На данный момент в большинстве городов не существует единого портала для коммуникации с муниципальными службами, размещения различных новостей, связанных с ЖКХ и т.д. В рамках задачи участникам предстоит спроектировать и реализовать удобное и эффективное решение для обеспечения прозрачного взаимодействия жителей с муниципальными службами и улучшения жизни населения города.

## Структура проекта

```
/lib               
|-- /data                       # Здесь хранятся все классы, связанные с данными (репозитории, API-клиенты и т. д.).
|-- |-- /models                     # В этой папке размещаются модели данных, которые представляют объекты вашего приложения.
|-- |-- /repositories               # Здесь содержатся репозитории, которые взаимодействуют с данными. 
|-- /domain                     # Этот слой содержит бизнес-логику приложения (модели данных, интерфейсы репозиториев).
|-- |-- /components                 # Эта папка может содержать переиспользуемые компоненты, которые используются в различных частях приложения. 
|-- |-- /models                     # Модели данных также могут присутствовать в слое домена, если они обладают бизнес-логикой и не привязаны к конкретным источникам данных.
|-- |-- /repositories               # Здесь находятся интерфейсы репозиториев, которые описывают операции, доступные для работы с данными.
|-- /presentation               # Все, что связано с пользовательским интерфейсом (виджеты, экраны, BLoCs).
|-- |-- /screens                    # В этой папке хранятся экраны приложения. Каждый экран может использовать свои BLoC и виджеты.
|-- |-- /widgets                    # Здесь размещаются переиспользуемые виджеты, которые могут быть использованы на разных экранах.
|-- |-- /bloc                       # В этой папке находятся BLoC, которые управляют бизнес-логикой для конкретных экранов.
|-- /utils                      # Вспомогательные утилиты и функции.
|-- |-- /constants                  # Здесь можно хранить константы, такие как цвета, размеры, отступы.
|-- |-- /helpers                    # Вспомогательные функции, которые могут быть использованы в различных частях приложения.
|-- app.dart
|-- appRouter.dart
|-- main.dart
```