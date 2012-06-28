a:17:{i:0;a:3:{i:0;s:14:"document_start";i:1;a:0:{}i:2;i:0;}i:1;a:3:{i:0;s:6:"header";i:1;a:3:{i:0;s:54:"Резервное копирование баз MySQL";i:1;i:2;i:2;i:1;}i:2;i:1;}i:2;a:3:{i:0;s:12:"section_open";i:1;a:1:{i:0;i:2;}i:2;i:1;}i:3;a:3:{i:0;s:6:"p_open";i:1;a:0:{}i:2;i:1;}i:4;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:136:"Для запуска ежедневного копирования необходимо создать исполняемый файл:";}i:2;i:66;}i:5;a:3:{i:0;s:7:"p_close";i:1;a:0:{}i:2;i:202;}i:6;a:3:{i:0;s:4:"code";i:1;a:3:{i:0;s:92:"
/usr/local/etc/scripts/ee mysql_backup.sh

/usr/local/etc/scripts/chmod +x mysql_backup.sh
";i:1;N;i:2;N;}i:2;i:209;}i:7;a:3:{i:0;s:6:"p_open";i:1;a:0:{}i:2;i:209;}i:8;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:70:"Далее записываем в него следующий код:";}i:2;i:311;}i:9;a:3:{i:0;s:7:"p_close";i:1;a:0:{}i:2;i:387;}i:10;a:3:{i:0;s:4:"code";i:1;a:3:{i:0;s:327:"
/usr/local/bin/mysqldump -u%username% -p%password% %database_name% --default-character-set=cp1251> /backup/bases/`date +%Y-%m-%d`mysql_backup_log.txt

#

tar czfP /backup/`date +%Y-%m-%d`%database_name%.tgz /backup/bases

#

#

find /backup -name "*.tgz" -mtime +7 -delete

#

find /backup -name "*.txt" -mtime +7 -delete

#

";i:1;N;i:2;N;}i:2;i:387;}i:11;a:3:{i:0;s:6:"p_open";i:1;a:0:{}i:2;i:387;}i:12;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:121:"Теперь добавляем в расписание выполнение этого файла каждую ночь:";}i:2;i:725;}i:13;a:3:{i:0;s:7:"p_close";i:1;a:0:{}i:2;i:852;}i:14;a:3:{i:0;s:4:"code";i:1;a:3:{i:0;s:555:"
ee /etc/crontab/>

# Запускаем backup selena mysql в одиннадцать вечера.
0       23      *       *       1-5     root    /usr/local/etc/scripts/mysql_backup_selena.sh

# Запускаем backup otbprof mysql в одиннадцать вечера.
0       23      *       *       1-5     root    /usr/local/etc/scripts/mysql_backup_otbprof.sh

# Запускаем backup phonebook mysql в одиннадцать вечера.
0       23      *       *       1-5     root    /usr/local/etc/scripts/mysql_backup_phonebook.sh
";i:1;N;i:2;N;}i:2;i:852;}i:15;a:3:{i:0;s:13:"section_close";i:1;a:0:{}i:2;i:1415;}i:16;a:3:{i:0;s:12:"document_end";i:1;a:0:{}i:2;i:1415;}}