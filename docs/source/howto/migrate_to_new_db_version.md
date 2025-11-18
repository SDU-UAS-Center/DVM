# Migrate to new DB version

When end of life is reached for the PostgreSQL database version it is necessary to migrate already stored data to the new version.

To migrate to the new database version download *docker-compose.db_upgrade.yml* from the [github release](https://github.com/SDU-UAS-Center/DVM/releases). Run the following command:

```{Note}
If you are running a version older then v2.0.2 you may need to find the *docker-compose.db_upgrade.yml* file at [https://github.com/egemose/DroneVideoMeasure/releases/tag/v2.0.2](https://github.com/egemose/DroneVideoMeasure/releases/tag/v2.0.2).
```

```bash
docker compose -f docker-compose.db_upgrade.yml up
```

This will start the old PostgreSQL container and make a database dump, then start the new PostgreSQL container and create the database from the dump. Depending on the size of the database it may take some time, but after some time the output in the terminal will stop changing and the process should be done.
