# LAMP

LAMP - акроним, обозначающий набор (комплекс) серверного программного обеспечения, широко используемый во Всемирной паутине. LAMP назван по первым буквам входящих в его состав компонентов:
- Linux - ОС
- Apache - веб-сервер
- MariaDB/MySQL - СУБД
- PHP - язык программирования

## Использование

### Инструментарий

В качестве инструмента для упрощённого развертывания ОС Linux был использован Vagrant в связке с VirtualBox. Поэтому для того, чтобы воспользоваться полным потенциалом данной конфигурации, необходимо установить на машину Vagrant и VirtualBox.

### ОС

За основную операционную систему был взят дистрибутив Debian 9 (можно найти по [ссылке](https://app.vagrantup.com/debian/boxes/stretch64/versions/9.12.0/providers/virtualbox.box)). Однако данная конфигурация должна работать и в более актуальных версиях дистрибутива.

### Запуск

Для развёртывания виртуального сервера, необходимо либо создать новый бокс с помощью команды `vagrant up`, либо запустить виртуальную машину с помощью VirtualBox (или любого другого подобного ПО), после чего выполнить скрипт `provision.sh` (Однако в этом случае необходимо убедиться, что в скрипте нет никаких зависимостей от Vagrant).
