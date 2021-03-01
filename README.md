# SA-MP Zera Racing Server

## Requirements
RDBMS with InnoDB feature
 * [MariaDB (recommend)](https://mariadb.org/download/)
 * or MySQL Server

## Getting Start
1. Cloning this repository
  ```shell
  git clone --recurse-submodules https://github.com/zndn1997/ZeraRacingServer.git
  ```

2. Create database user and schema
 - Ex) username: zerarace, password: 1234, schema: zera

3. Import database template to created database schema
 - Ex) 
  ```shell
  mysql -uzerarace -p1234 zera < db_template.sql
  ```

4. Change database settings to mode
 * `gamemodes/ZeraRacing/Zera/H/MySQL.inc`
   * Ex)
   ```pawn
   #define MYSQL_HOST "localhost"
   #define MYSQL_USER "zerarace"
   #define MYSQL_PASSWORD "1234"
   #define MYSQL_DATABASE "zera"
   ```
5. Run `samp-server.exe` and enjoy!

## Author
MaBling (Qoo)