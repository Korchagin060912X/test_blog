# Блог на Django

Учебный проект из книги «Django for Beginners», упакованный как отдельное приложение. Репозиторий готов к загрузке на GitHub и развёртыванию на Render/другом PaaS.

## Стек
- Django 5.2
- SQLite (по умолчанию)
- Gunicorn + Whitenoise для продакшн‑сборки

## Быстрый старт
```bash
python -m venv .venv
.venv\Scripts\activate  # Windows
pip install -r requirements.txt
python manage.py migrate
python manage.py createsuperuser
python manage.py runserver
```

## Полезные команды
- `python manage.py test` — базовые тесты (если добавите их позже).
- `render_build.sh` / `render_start.sh` — скрипты для Render.com (необязательно).

## Как опубликовать на GitHub
1. Создайте пустой репозиторий на github.com.
2. В корне проекта выполните:
   ```bash
   git init
   git add .
   git commit -m "Initial commit"
   git branch -M main
   git remote add origin https://github.com/<user>/<repo>.git
   git push -u origin main
   ```
3. После первой публикации достаточно `git add/commit/push` для обновлений.

## Переменные окружения
Создайте файл `.env` (он игнорируется git) и добавьте, например:
```
DEBUG=True
SECRET_KEY=замените-на-собственный
ALLOWED_HOSTS=localhost,127.0.0.1
```
Подключите значения в `django_project/settings.py` как вам удобнее (через `os.environ` или `python-dotenv`).

