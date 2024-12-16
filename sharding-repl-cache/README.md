# pymongo-api

## Как запустить

Запускаем mongodb и приложение

```shell
docker compose up -d
```

Инициализируем реплика-сеты
```shell
./scripts/mongo-init.sh
```
Заполняем базу данными
```shell
./scripts/fill-database.sh
```
Добавляем по 2 реплики к каждому шарду
```shell
./scripts/add-replics.sh
```
Для получения информации о заполнении базы данных, шардах и репликах (часть скриптов закомментировано чтобы отчеты были короче)
```shell
./scripts/check-shard-status.sh
```

[Схема архитектуры тут](https://drive.google.com/file/d/17OsZKJwFWe60YqgaRluEjrJfFPdCf8yX/view?usp=sharing)

## Как проверить

### Если вы запускаете проект на локальной машине

Откройте в браузере http://localhost:8080

### Если вы запускаете проект на предоставленной виртуальной машине

Узнать белый ip виртуальной машины

```shell
curl --silent http://ifconfig.me
```

Откройте в браузере http://<ip виртуальной машины>:8080

## Доступные эндпоинты

Список доступных эндпоинтов, swagger http://<ip виртуальной машины>:8080/docs