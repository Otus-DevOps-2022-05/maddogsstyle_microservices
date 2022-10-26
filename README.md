# maddogsstyle_microservices
maddogsstyle microservices repository

# Выполнено ДЗ №12
Спустя две с половиной недели драгоценного отпуска возвращаюсь к учебе.
В этом ДЗ выполнено:
 - Знакомство с docker и docker-machine
 - Управление хостом в облаке с помощью docker-machine
 - Настройка инфраструктуры (ОНО РАБОТАЕТ!)

# Выполнено ДЗ №13
 - Создана новая структура приложения (приложение разбито на компоненты)
 - Изучено задание переменных "на лету"
 - Оптимизированы существующие  образы, изменены базовые образы
 - Подключен том для сохранения необходимой информации

# Выполнено ДЗ №14
 - Работа с сетями
 - Работа с docker-compose
 - Определение и задание переменных

Папка, в которой находится docker-compose.yml определяет имя проекта.
Изменить имя проекта можно, задав переменную в файле .env или используя команду:
docker-compose -p [projectname] up -d

# Выполнено ДЗ №14
Забавно, пришлось делать своп-файл, поскольку машине не хватало ОЗУ для прогона тестов)
 - Развернут Gitlab CI CI/CD
 - Настроен конвейер для приложения

# Выполнено ДЗ №15
Выполнено основное задание:
```https://hub.docker.com/repository/docker/achuprin/ui
https://hub.docker.com/repository/docker/achuprin/post
https://hub.docker.com/repository/docker/achuprin/comment
https://hub.docker.com/repository/docker/achuprin/prometheus
```
- Прикрутил raffis/mongodb-query-exporter. Думаю, для наших целей сойдет.
- Прикрутил blackbox-exporter на проверку доступности портов. Правда, он считает, что все порты 9292 недоступны... Нужна помощь!
- Собрал Makefile. Он пока очень простой, и задачи не цепляются друг за друга, но он уже экономит мне кучу команд "cd .." и "docker build". Где же я был раньше...

# Выполнено ДЗ №16
- Проведено логирование силами docker-compose
- Прикручен fluentd
- Проведено логирование силами Kibana (структурированное/неструктурированное)
- Прикручен Zipkin, познакомился с трейсами
- Определена проблема в забагованном приложении

# Выполнено ДЗ №17
- Развернул кластер вручную (я очень долго тупил, делая это локально, а потом еще и ноут надорвался...)
- Развернул кластер автоматически (спасибо коллегам!)
- До кучи пробросил манифесты и проверил работу

# Выполнено ДЗ №18
- Развернул кластер с помощью minikube
- Развернул приложение со всеми сервисами и деплойментами
- Повторил все в пространстве имен dev
- Повторил все в облаке

# Выполнено ДЗ №19
- Развернул кластер в облаке
- Потыркал балансировщик
- Прикрутил ингрессы
- Прикрутил сертификат
- Прикрутил сетевую политику
- Прикрутил PV

# Выполнено ДЗ №20
- Установил Helm 3
- Проигнорировал Tiller
- Собрал чарты под каждый компонент приложения
- Успешно развернул в локальном кластере
- Поработал с зависимостями,чтобы не разворачивать компоненты по отдельности
- Развернул кластер в облаке
- С трудом установил gitlab-ci
- Попробовал запускать пайплайны
