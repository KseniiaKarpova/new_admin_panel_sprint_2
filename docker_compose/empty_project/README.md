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
cd app/
docker-compose exec web python manage.py createsuperuser
```
### 4 step
Можно переходить [http://localhost/admin/](http://localhost/admin/)