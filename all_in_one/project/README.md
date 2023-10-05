# Проектное задание: Docker-compose

Настроила Django админку из прошлого спринта с Nginx и Postgresql — с использованием docker-compose

## Installation
### 1 step

create **.env** file based on **.env.example**<br>

### 2 step
Сборка проекта
```bash
docker-compose up -d --build
```

### 3 step
Создание суперЮзера
```bash
docker-compose exec web python manage.py createsuperuser
```

### 4 step
Заполнение базы данных

Перейти на [http://0.0.0.0:8888/docs](http://0.0.0.0:8888/docs) и запустить `GET/migrate`

### 5 step
Проверка загрузки данных:
```bash
docker exec data_transfer cat sqlite_to_postgres.log
```


### 6 step
Можно переходить [http://localhost/admin/](http://localhost/admin/)