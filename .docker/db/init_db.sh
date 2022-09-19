echo "***** creating default DB *****";

mysql -u root -p$DB_ROOT_PWD --execute \
"
CREATE DATABASE IF NOT EXISTS $DB_NAME;

CREATE USER '$DB_USER'@'localhost' IDENTIFIED WITH mysql_native_password BY '$DB_PWD';

GRANT ALL PRIVILEGES ON $DB_NAME.* TO '$DB_USER'@'%';

FLUSH PRIVILEGES;
";

echo "***** successfuly created default user and db *****";