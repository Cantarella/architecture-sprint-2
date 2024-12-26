# pymongo-api

## Как запустить

Запускаем mongodb и приложение

```shell
docker compose up -d
```

Инициализируем шарды
```shell
./scripts/mongo-init.sh
```
Заполняем базу данными
```shell
./scripts/fill-database.sh
```
Для получения информации о заполнении базы данных
```shell
./scripts/check-shard-status.sh
```
[Схема с архитектурой тут:](https://drive.google.com/file/d/1zmVY8OtyccF4G4WUO2VlX1X7yS_xNX6N/view?usp=sharing)

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