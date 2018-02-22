#CREATE USER 'ambari'@'%' IDENTIFIED BY 'ambari';

GRANT ALL PRIVILEGES ON *.* TO 'ambari'@'%';

CREATE USER 'ambari'@'localhost' IDENTIFIED BY 'ambari';

GRANT ALL PRIVILEGES ON *.* TO 'ambari'@'localhost';

CREATE USER 'ambari'@'front1.habibiz' IDENTIFIED BY 'ambari';

GRANT ALL PRIVILEGES ON *.* TO 'ambari'@'front1.habibiz';

FLUSH PRIVILEGES;
