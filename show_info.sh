#!/bin/bash
#Сценарий который выводит дату, время, список пользователей, аптайм и сохраняет информацию в системном журнале

#Дата
date=$(date +%c)
echo Дата: $date \

#Время
time=$(date +%H:%M:%S)
echo Время: $time \

#Список пользователей
users=$(who)
echo Пользователи: $users \

#Аптайм
uptime=$(uptime)
echo Аптайм: $uptime  \

#Сохраняем в системный журнал
echo Дата: $date > /home/knyazev/system.log
echo Время: $time >> /home/knyazev/system.log
echo Пользователи: $users >> /home/knyazev/system.log
echo Аптайм: $uptime >> /home/knyazev/system.log