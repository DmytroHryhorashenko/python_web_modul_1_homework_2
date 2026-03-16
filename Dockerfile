# Базовый образ Python 3.14
FROM python:3.14-slim

# Устанавливаем рабочую директорию
WORKDIR /app

# Копируем Pipfile и Pipfile.lock
COPY Pipfile Pipfile.lock /app/

# Устанавливаем pipenv и зависимости проекта
RUN pip install --no-cache-dir pipenv && pipenv install --system --deploy

# Копируем весь проект в контейнер
COPY . /app

# Команда по умолчанию для запуска бота
CMD ["python", "HOMEWORK_2.py"]