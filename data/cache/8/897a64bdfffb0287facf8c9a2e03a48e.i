a:173:{i:0;a:3:{i:0;s:14:"document_start";i:1;a:0:{}i:2;i:0;}i:1;a:3:{i:0;s:6:"header";i:1;a:3:{i:0;s:105:"Установка и настройка системы мониторинга Nagios в ОС FreeBSD 8.2";i:1;i:2;i:2;i:1;}i:2;i:1;}i:2;a:3:{i:0;s:12:"section_open";i:1;a:1:{i:0;i:2;}i:2;i:1;}i:3;a:3:{i:0;s:6:"p_open";i:1;a:0:{}i:2;i:1;}i:4;a:3:{i:0;s:13:"emphasis_open";i:1;a:0:{}i:2;i:117;}i:5;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:139:"Подразумевается, что в системе уже установлен и сконфигурирован веб-сервер ";}i:2;i:119;}i:6;a:3:{i:0;s:12:"internallink";i:1;a:2:{i:0;s:8:"Apache22";i:1;N;}i:2;i:258;}i:7;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:4:" и ";}i:2;i:270;}i:8;a:3:{i:0;s:7:"acronym";i:1;a:1:{i:0;s:3:"PHP";}i:2;i:274;}i:9;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:6:" 5.3.8";}i:2;i:277;}i:10;a:3:{i:0;s:14:"emphasis_close";i:1;a:0:{}i:2;i:283;}i:11;a:3:{i:0;s:7:"p_close";i:1;a:0:{}i:2;i:285;}i:12;a:3:{i:0;s:13:"section_close";i:1;a:0:{}i:2;i:288;}i:13;a:3:{i:0;s:6:"header";i:1;a:3:{i:0;s:110:"Сборка nagios из стандартных портов с настройками по-умолчанию";i:1;i:5;i:2;i:288;}i:2;i:288;}i:14;a:3:{i:0;s:12:"section_open";i:1;a:1:{i:0;i:5;}i:2;i:288;}i:15;a:3:{i:0;s:4:"code";i:1;a:3:{i:0;s:49:"
/usr/ports/net-mgmt/nagios/> make install clean
";i:1;N;i:2;N;}i:2;i:409;}i:16;a:3:{i:0;s:13:"section_close";i:1;a:0:{}i:2;i:468;}i:17;a:3:{i:0;s:6:"header";i:1;a:3:{i:0;s:38:"Разрешаем запуск nagios";i:1;i:5;i:2;i:468;}i:2;i:468;}i:18;a:3:{i:0;s:12:"section_open";i:1;a:1:{i:0;i:5;}i:2;i:468;}i:19;a:3:{i:0;s:6:"p_open";i:1;a:0:{}i:2;i:468;}i:20;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:91:"Вносим изменения в файл /etc/rc.conf, добавляем запись
 ";}i:2;i:511;}i:21;a:3:{i:0;s:7:"p_close";i:1;a:0:{}i:2;i:607;}i:22;a:3:{i:0;s:4:"code";i:1;a:3:{i:0;s:19:"nagios_enable="YES"";i:1;N;i:2;N;}i:2;i:607;}i:23;a:3:{i:0;s:13:"section_close";i:1;a:0:{}i:2;i:636;}i:24;a:3:{i:0;s:6:"header";i:1;a:3:{i:0;s:60:"Добавление параметров nagios в apache22";i:1;i:5;i:2;i:636;}i:2;i:636;}i:25;a:3:{i:0;s:12:"section_open";i:1;a:1:{i:0;i:5;}i:2;i:636;}i:26;a:3:{i:0;s:6:"p_open";i:1;a:0:{}i:2;i:636;}i:27;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:63:"В файл /usr/local/etc/apache22/httpd.conf добавить";}i:2;i:702;}i:28;a:3:{i:0;s:7:"p_close";i:1;a:0:{}i:2;i:765;}i:29;a:3:{i:0;s:4:"code";i:1;a:3:{i:0;s:619:"
ScriptAlias /nagios/cgi-bin /usr/local/www/nagios/cgi-bin/

<Directory "/usr/local/www/nagios">
    Options ExecCGI
    AllowOverride None
    Order allow,deny
    Allow from all
    AuthName "Nagios Access"
    AuthType Basic
    AuthUserFile /usr/local/etc/nagios/htpasswd.users
    Require valid-user
</Directory>

Alias /nagios /usr/local/www/nagios/

<Directory "/usr/local/www/nagios/cgi-bin">
    Options None
    AllowOverride None
    Order allow,deny
    Allow from all
    AuthName "Nagios Access"
    AuthType Basic
    AuthUserFile /usr/local/etc/nagios/htpasswd.users
    Require valid-user
</Directory>
";i:1;N;i:2;N;}i:2;i:772;}i:30;a:3:{i:0;s:13:"section_close";i:1;a:0:{}i:2;i:1401;}i:31;a:3:{i:0;s:6:"header";i:1;a:3:{i:0;s:47:"Создание файла с паролями";i:1;i:5;i:2;i:1401;}i:2;i:1401;}i:32;a:3:{i:0;s:12:"section_open";i:1;a:1:{i:0;i:5;}i:2;i:1401;}i:33;a:3:{i:0;s:4:"code";i:1;a:3:{i:0;s:162:"
/usr/local/sbin/>htpasswd -c /usr/local/etc/nagios/htpasswd.users superuser
New password: gfhjkm
Re-type new password: gfhjkm
Adding password for user superuser
";i:1;N;i:2;N;}i:2;i:1458;}i:34;a:3:{i:0;s:6:"p_open";i:1;a:0:{}i:2;i:1458;}i:35;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:180:"Созданный нами пользователь seperuser будет проходит аутентификацию в браузере при подключении к nagios.";}i:2;i:1630;}i:36;a:3:{i:0;s:7:"p_close";i:1;a:0:{}i:2;i:1810;}i:37;a:3:{i:0;s:13:"section_close";i:1;a:0:{}i:2;i:1812;}i:38;a:3:{i:0;s:6:"header";i:1;a:3:{i:0;s:43:"Конфигурационные файлы";i:1;i:5;i:2;i:1812;}i:2;i:1812;}i:39;a:3:{i:0;s:12:"section_open";i:1;a:1:{i:0;i:5;}i:2;i:1812;}i:40;a:3:{i:0;s:4:"code";i:1;a:3:{i:0;s:127:"
/usr/local/etc/nagios/>ls
cgi.cfg-sample          nagios.cfg-sample       resource.cfg-sample
htpasswd.users          objects
";i:1;N;i:2;N;}i:2;i:1866;}i:41;a:3:{i:0;s:4:"code";i:1;a:3:{i:0;s:215:"

/usr/local/etc/nagios/objects/>ls
templates.cfg-sample          commands.cfg-sample     
printer.cfg-sample       timeperiods.cfg-sample
contacts.cfg-sample       switch.cfg-sample       
localhost.cfg-sample    
";i:1;N;i:2;N;}i:2;i:2009;}i:42;a:3:{i:0;s:6:"p_open";i:1;a:0:{}i:2;i:2009;}i:43;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:162:"Это примеры конфигурационных файлов nagios. Их следует переименовать, убрав приставку -sample.";}i:2;i:2234;}i:44;a:3:{i:0;s:7:"p_close";i:1;a:0:{}i:2;i:2396;}i:45;a:3:{i:0;s:13:"section_close";i:1;a:0:{}i:2;i:2398;}i:46;a:3:{i:0;s:6:"header";i:1;a:3:{i:0;s:62:"Описание конфигурационных файлов";i:1;i:5;i:2;i:2398;}i:2;i:2398;}i:47;a:3:{i:0;s:12:"section_open";i:1;a:1:{i:0;i:5;}i:2;i:2398;}i:48;a:3:{i:0;s:10:"listu_open";i:1;a:0:{}i:2;i:2465;}i:49;a:3:{i:0;s:13:"listitem_open";i:1;a:1:{i:0;i:1;}i:2;i:2465;}i:50;a:3:{i:0;s:16:"listcontent_open";i:1;a:0:{}i:2;i:2465;}i:51;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:77:" cgi.cfg - описывает доступ к web-интерфейсу nagios";}i:2;i:2469;}i:52;a:3:{i:0;s:17:"listcontent_close";i:1;a:0:{}i:2;i:2546;}i:53;a:3:{i:0;s:14:"listitem_close";i:1;a:0:{}i:2;i:2546;}i:54;a:3:{i:0;s:13:"listitem_open";i:1;a:1:{i:0;i:1;}i:2;i:2546;}i:55;a:3:{i:0;s:16:"listcontent_open";i:1;a:0:{}i:2;i:2546;}i:56;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:79:" nagios.cfg - основной конфигурационный файл nagios";}i:2;i:2550;}i:57;a:3:{i:0;s:17:"listcontent_close";i:1;a:0:{}i:2;i:2629;}i:58;a:3:{i:0;s:14:"listitem_close";i:1;a:0:{}i:2;i:2629;}i:59;a:3:{i:0;s:13:"listitem_open";i:1;a:1:{i:0;i:1;}i:2;i:2629;}i:60;a:3:{i:0;s:16:"listcontent_open";i:1;a:0:{}i:2;i:2629;}i:61;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:92:" resource.cfg - подключение дополнительных обработчиков";}i:2;i:2633;}i:62;a:3:{i:0;s:17:"listcontent_close";i:1;a:0:{}i:2;i:2725;}i:63;a:3:{i:0;s:14:"listitem_close";i:1;a:0:{}i:2;i:2725;}i:64;a:3:{i:0;s:13:"listitem_open";i:1;a:1:{i:0;i:1;}i:2;i:2725;}i:65;a:3:{i:0;s:16:"listcontent_open";i:1;a:0:{}i:2;i:2725;}i:66;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:92:" commands.cfg - описания команд nagios и команд плагинов nagios";}i:2;i:2729;}i:67;a:3:{i:0;s:17:"listcontent_close";i:1;a:0:{}i:2;i:2821;}i:68;a:3:{i:0;s:14:"listitem_close";i:1;a:0:{}i:2;i:2821;}i:69;a:3:{i:0;s:13:"listitem_open";i:1;a:1:{i:0;i:1;}i:2;i:2821;}i:70;a:3:{i:0;s:16:"listcontent_open";i:1;a:0:{}i:2;i:2821;}i:71;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:103:" contacts.cfg - описания контактов админов и пользователей nagios";}i:2;i:2825;}i:72;a:3:{i:0;s:17:"listcontent_close";i:1;a:0:{}i:2;i:2928;}i:73;a:3:{i:0;s:14:"listitem_close";i:1;a:0:{}i:2;i:2928;}i:74;a:3:{i:0;s:13:"listitem_open";i:1;a:1:{i:0;i:1;}i:2;i:2928;}i:75;a:3:{i:0;s:16:"listcontent_open";i:1;a:0:{}i:2;i:2928;}i:76;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:94:" localhost.cfg - описание проверок хоста, где стоит сам Nagios";}i:2;i:2932;}i:77;a:3:{i:0;s:17:"listcontent_close";i:1;a:0:{}i:2;i:3026;}i:78;a:3:{i:0;s:14:"listitem_close";i:1;a:0:{}i:2;i:3026;}i:79;a:3:{i:0;s:13:"listitem_open";i:1;a:1:{i:0;i:1;}i:2;i:3026;}i:80;a:3:{i:0;s:16:"listcontent_open";i:1;a:0:{}i:2;i:3026;}i:81;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:135:" printer.cfg - файл для проверки принтеров (я не использовал его в данной статье)";}i:2;i:3030;}i:82;a:3:{i:0;s:17:"listcontent_close";i:1;a:0:{}i:2;i:3165;}i:83;a:3:{i:0;s:14:"listitem_close";i:1;a:0:{}i:2;i:3165;}i:84;a:3:{i:0;s:13:"listitem_open";i:1;a:1:{i:0;i:1;}i:2;i:3165;}i:85;a:3:{i:0;s:16:"listcontent_open";i:1;a:0:{}i:2;i:3165;}i:86;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:97:" switch.cfg - описание хостов и проверок сетевых устройств";}i:2;i:3169;}i:87;a:3:{i:0;s:17:"listcontent_close";i:1;a:0:{}i:2;i:3266;}i:88;a:3:{i:0;s:14:"listitem_close";i:1;a:0:{}i:2;i:3266;}i:89;a:3:{i:0;s:13:"listitem_open";i:1;a:1:{i:0;i:1;}i:2;i:3266;}i:90;a:3:{i:0;s:16:"listcontent_open";i:1;a:0:{}i:2;i:3266;}i:91;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:121:" templates.cfg - шаблоны хостов и сервисов для различных устройств или ОС";}i:2;i:3270;}i:92;a:3:{i:0;s:17:"listcontent_close";i:1;a:0:{}i:2;i:3391;}i:93;a:3:{i:0;s:14:"listitem_close";i:1;a:0:{}i:2;i:3391;}i:94;a:3:{i:0;s:13:"listitem_open";i:1;a:1:{i:0;i:1;}i:2;i:3391;}i:95;a:3:{i:0;s:16:"listcontent_open";i:1;a:0:{}i:2;i:3391;}i:96;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:96:" timeperiods.cfg - описания временных интервалов оповещений";}i:2;i:3395;}i:97;a:3:{i:0;s:17:"listcontent_close";i:1;a:0:{}i:2;i:3491;}i:98;a:3:{i:0;s:14:"listitem_close";i:1;a:0:{}i:2;i:3491;}i:99;a:3:{i:0;s:11:"listu_close";i:1;a:0:{}i:2;i:3491;}i:100;a:3:{i:0;s:13:"section_close";i:1;a:0:{}i:2;i:3494;}i:101;a:3:{i:0;s:6:"header";i:1;a:3:{i:0;s:7:"cgi.cfg";i:1;i:5;i:2;i:3494;}i:2;i:3494;}i:102;a:3:{i:0;s:12:"section_open";i:1;a:1:{i:0;i:5;}i:2;i:3494;}i:103;a:3:{i:0;s:6:"p_open";i:1;a:0:{}i:2;i:3494;}i:104;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:101:"В этом файле ничего не изменяем кроме следующих команд:";}i:2;i:3506;}i:105;a:3:{i:0;s:7:"p_close";i:1;a:0:{}i:2;i:3613;}i:106;a:3:{i:0;s:4:"code";i:1;a:3:{i:0;s:385:"
authorized_for_system_information="имя администратора nagios"
authorized_for_configuration_information="имя администратора nagios"
authorized_for_system_commands="имя администратора nagios"
authorized_for_all_services="имя администратора nagios"
authorized_for_all_hosts="имя администратора nagios"
";i:1;N;i:2;N;}i:2;i:3613;}i:107;a:3:{i:0;s:13:"section_close";i:1;a:0:{}i:2;i:4008;}i:108;a:3:{i:0;s:6:"header";i:1;a:3:{i:0;s:10:"nagios.cfg";i:1;i:5;i:2;i:4008;}i:2;i:4008;}i:109;a:3:{i:0;s:12:"section_open";i:1;a:1:{i:0;i:5;}i:2;i:4008;}i:110;a:3:{i:0;s:6:"p_open";i:1;a:0:{}i:2;i:4008;}i:111;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:152:"В этом файле необходимо явно прописать путь к настройкам мониторинга Windows серверов";}i:2;i:4023;}i:112;a:3:{i:0;s:7:"p_close";i:1;a:0:{}i:2;i:4181;}i:113;a:3:{i:0;s:4:"code";i:1;a:3:{i:0;s:159:"
# Definitions for monitoring a Windows machine
cfg_file=/usr/local/etc/nagios/objects/windows.cfg
cfg_file=/usr/local/etc/nagios/objects/windows_commands.cfg
";i:1;N;i:2;N;}i:2;i:4181;}i:114;a:3:{i:0;s:13:"section_close";i:1;a:0:{}i:2;i:4353;}i:115;a:3:{i:0;s:6:"header";i:1;a:3:{i:0;s:12:"commands.cfg";i:1;i:5;i:2;i:4353;}i:2;i:4353;}i:116;a:3:{i:0;s:12:"section_open";i:1;a:1:{i:0;i:5;}i:2;i:4353;}i:117;a:3:{i:0;s:6:"p_open";i:1;a:0:{}i:2;i:4353;}i:118;a:3:{i:0;s:11:"strong_open";i:1;a:0:{}i:2;i:4370;}i:119;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:122:"Все плагины для проверки состояния серверов лежат в /usr/local/libexec/nagios ";}i:2;i:4372;}i:120;a:3:{i:0;s:12:"externallink";i:1;a:2:{i:0;s:28:"http://nagiosplugins.org/man";i:1;s:33:"Описание плагинов";}i:2;i:4494;}i:121;a:3:{i:0;s:12:"strong_close";i:1;a:0:{}i:2;i:4560;}i:122;a:3:{i:0;s:7:"p_close";i:1;a:0:{}i:2;i:4562;}i:123;a:3:{i:0;s:6:"p_open";i:1;a:0:{}i:2;i:4562;}i:124;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:129:"Файл с настройками мониторинга для localhost (в нашем случае это Freebsd.rst.local).";}i:2;i:4566;}i:125;a:3:{i:0;s:7:"p_close";i:1;a:0:{}i:2;i:4695;}i:126;a:3:{i:0;s:6:"p_open";i:1;a:0:{}i:2;i:4695;}i:127;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:154:"Все настройки остались по-умолчанию. Добавлена одна проверка работоспособности SQUID:";}i:2;i:4697;}i:128;a:3:{i:0;s:7:"p_close";i:1;a:0:{}i:2;i:4857;}i:129;a:3:{i:0;s:4:"code";i:1;a:3:{i:0;s:179:"
# 'check_squid' command definition
define command{
        command_name    check_squid
        command_line    $USER1$/check_tcp -H $HOSTADDRESS$ -p 3128 -w 100 -c 300
        }
";i:1;N;i:2;N;}i:2;i:4857;}i:130;a:3:{i:0;s:13:"section_close";i:1;a:0:{}i:2;i:5047;}i:131;a:3:{i:0;s:6:"header";i:1;a:3:{i:0;s:13:"localhost.cfg";i:1;i:5;i:2;i:5047;}i:2;i:5047;}i:132;a:3:{i:0;s:12:"section_open";i:1;a:1:{i:0;i:5;}i:2;i:5047;}i:133;a:3:{i:0;s:6:"p_open";i:1;a:0:{}i:2;i:5047;}i:134;a:3:{i:0;s:11:"strong_open";i:1;a:0:{}i:2;i:5065;}i:135;a:3:{i:0;s:12:"externallink";i:1;a:2:{i:0;s:66:"http://nagios.sourceforge.net/docs/3_0/objectdefinitions.html#host";i:1;s:58:"Описание объектов и их свойства";}i:2;i:5067;}i:136;a:3:{i:0;s:12:"strong_close";i:1;a:0:{}i:2;i:5196;}i:137;a:3:{i:0;s:7:"p_close";i:1;a:0:{}i:2;i:5198;}i:138;a:3:{i:0;s:6:"p_open";i:1;a:0:{}i:2;i:5198;}i:139;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:85:"В этом файле определяем имя хоста и имя группы:";}i:2;i:5200;}i:140;a:3:{i:0;s:7:"p_close";i:1;a:0:{}i:2;i:5291;}i:141;a:3:{i:0;s:4:"code";i:1;a:3:{i:0;s:771:"
define host{
        use                     freebsd-server          ; Name of host template to use
        host_name               freebsd-server          ; This host definition will inherit all variables that are defined
        alias                   freebsd.rst.local       ; in (or inherited by) the freebsd-server host template definition.
        address                 10.10.10.45
        icon_image              freebsd40.png
        statusmap_image         freebsd40.png
        }
        
        
define hostgroup{
        hostgroup_name  freebsd-servers ; The name of the hostgroup
        alias           FreeBSD Servers ; Long name of the group
        members         freebsd-server  ; Comma separated list of hosts that belong to this group
        }
";i:1;N;i:2;N;}i:2;i:5291;}i:142;a:3:{i:0;s:6:"p_open";i:1;a:0:{}i:2;i:5291;}i:143;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:113:"И определяем службы, за которыми будет установлен мониторинг:";}i:2;i:6072;}i:144;a:3:{i:0;s:7:"p_close";i:1;a:0:{}i:2;i:6185;}i:145;a:3:{i:0;s:4:"code";i:1;a:3:{i:0;s:289:"
#define a service to check SQUID on the local machine

define service{
        use                             local-service
        host_name                       freebsd-server
        service_description             Squid
        check_command                   check_squid
        }
";i:1;N;i:2;N;}i:2;i:6192;}i:146;a:3:{i:0;s:13:"section_close";i:1;a:0:{}i:2;i:6499;}i:147;a:3:{i:0;s:6:"header";i:1;a:3:{i:0;s:12:"contacts.cfg";i:1;i:5;i:2;i:6499;}i:2;i:6499;}i:148;a:3:{i:0;s:12:"section_open";i:1;a:1:{i:0;i:5;}i:2;i:6499;}i:149;a:3:{i:0;s:6:"p_open";i:1;a:0:{}i:2;i:6499;}i:150;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:86:"Даем контактную информацию администратора nagios";}i:2;i:6516;}i:151;a:3:{i:0;s:7:"p_close";i:1;a:0:{}i:2;i:6602;}i:152;a:3:{i:0;s:4:"code";i:1;a:3:{i:0;s:580:"
define contact{
        contact_name                    shura                   ; Short name of user
        use                             generic-contact         ; Inherit default values from generic-contact template (defined above)
        alias                           shura                   ; Full name of user
        email                           osipov@ooorst.ru        ; <<***** CHANGE THIS TO YOUR EMAIL ADDRESS ******
        }
        
define contactgroup{
        contactgroup_name       admins
        alias                   Nagios Administrators
        }

";i:1;N;i:2;N;}i:2;i:6609;}i:153;a:3:{i:0;s:13:"section_close";i:1;a:0:{}i:2;i:7199;}i:154;a:3:{i:0;s:6:"header";i:1;a:3:{i:0;s:13:"templates.cfg";i:1;i:5;i:2;i:7199;}i:2;i:7199;}i:155;a:3:{i:0;s:12:"section_open";i:1;a:1:{i:0;i:5;}i:2;i:7199;}i:156;a:3:{i:0;s:6:"p_open";i:1;a:0:{}i:2;i:7199;}i:157;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:138:"Описание периода оповещения, периода наблюдения для серверов, групп, служб.";}i:2;i:7217;}i:158;a:3:{i:0;s:7:"p_close";i:1;a:0:{}i:2;i:7355;}i:159;a:3:{i:0;s:6:"p_open";i:1;a:0:{}i:2;i:7355;}i:160;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:43:"Изменения не вносились.";}i:2;i:7357;}i:161;a:3:{i:0;s:7:"p_close";i:1;a:0:{}i:2;i:7400;}i:162;a:3:{i:0;s:13:"section_close";i:1;a:0:{}i:2;i:7405;}i:163;a:3:{i:0;s:6:"header";i:1;a:3:{i:0;s:15:"timeperiods.cfg";i:1;i:5;i:2;i:7405;}i:2;i:7405;}i:164;a:3:{i:0;s:12:"section_open";i:1;a:1:{i:0;i:5;}i:2;i:7405;}i:165;a:3:{i:0;s:6:"p_open";i:1;a:0:{}i:2;i:7405;}i:166;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:53:"Описание временных периодов.";}i:2;i:7425;}i:167;a:3:{i:0;s:7:"p_close";i:1;a:0:{}i:2;i:7478;}i:168;a:3:{i:0;s:6:"p_open";i:1;a:0:{}i:2;i:7478;}i:169;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:43:"Изменения не вносились.";}i:2;i:7480;}i:170;a:3:{i:0;s:7:"p_close";i:1;a:0:{}i:2;i:7523;}i:171;a:3:{i:0;s:13:"section_close";i:1;a:0:{}i:2;i:7524;}i:172;a:3:{i:0;s:12:"document_end";i:1;a:0:{}i:2;i:7524;}}