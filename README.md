## DevOps \ Домашнее задание №12 - docker-compose

Задача: Практика контейнеризации Java приложения https://github.com/shephertz/App42PaaS-Java-MySQL-Sample



## Сервер build создаёт три контейнера: для сборки и запуска приложения:
  - #### Подготовка инфраструктуры:
    - sudo apt install git -y
    - sudo apt install docker.io -y
    - cd /etc
    - git clone https://github.com/spring108/docker3.git
    - cd /etc/docker3
  - #### Запуск:
    - docker-compose up -d


## Смотрим http://prod_ip:8080/hello
