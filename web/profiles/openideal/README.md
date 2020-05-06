# Quick start

## The steps to Drupal install via UI
1. `git clone -b develop git@github.com:zohar/openideal-v3.git project_name`
2. `cd project_name && composer install`
3. Copy `web/sites/example.settings.local.php` to `web/sites/default/settings.local.php`
4. At the end of the file paste following code (change default values with your database configuration values or leave if you're using default docker4drupal configuration):
```php
$databases['default']['default'] = [
  'database' => 'drupal',
  'username' => 'drupal',
  'password' => 'drupal',
  'prefix' => '',
  'host' => 'mariadb',
  'port' => '3306',
  'namespace' => 'Drupal\\Core\\Database\\Driver\\mysql',
  'driver' => 'mysql',
];
```
5. Configure your local environment (we are recommended to use [docker4drupal](https://github.com/wodby/docker4drupal))
6. Open the site URL in your browser and run the install process as usual (or see the next section of this documentation to up and running the project with one line command)
7. On the installation profile step select 'OpenideaL' installation profile

## The steps to Drupal install via command line (assuming you're using docker4drupal)
1. `git clone -b develop git@github.com:zohar/openideal-v3.git project_name`
2. `cd project_name`
3. Open `.env` file and add initial variables for Drupal installation
4. Run `make`
5. If you can't import/export site configurations after installation you may need to update site uuid.
It is quite easy to do with the following command (run this command from the project root directory):
```bash
drush -y cset system.site uuid $(cat config/sync/system.site.yml | awk '/uuid/ { print $2 }')
```
