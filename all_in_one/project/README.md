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

### 3 step
Заполнение базы данных
```bash
docker-compose exec web sh
```
в терминале контейнера запустить: 

1. `cd sqlite_to_postgres`

2. `python3 load_data.py`

Проверить:
3. `cat sqlite_to_postgres.log`


### 4 step
Можно переходить [http://localhost/admin/](http://localhost/admin/)