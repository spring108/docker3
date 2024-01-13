## DevOps \ Домашнее задание №12 - docker-compose

Практика контейнеризации Java приложения https://github.com/shephertz/App42PaaS-Java-MySQL-Sample



## Сервер prod создаёт три контейнера: для сборки и запуска приложения
  - #### Подготовка инфраструктуры:
    - sudo apt install git -y
    - sudo apt install docker.io -y
    - sudo apt install docker-compose -y
    - cd /etc
    - git clone https://github.com/spring108/docker3.git
    - cd /etc/docker3
  - #### Запуск:
    - docker-compose up -d
    - docker ps
  - #### Диагностика подключения к MySQL:
    - apt-get install mysql-client
    - mysql --host 127.0.0.1 --user root -D my_db --password
      - SHOW DATABASES; # видим БД my_db
      - use my_db; show tables;



## Смотрим http://prod_ip:8080/App42PaaS-Java-MySQL-Sample-0.0.1-SNAPSHOT/
