Create a script in `script.sh` which checks for the string "database_error" in the `app.log` file.
If the string is found add a timestamped entry to `error_report.log`.
The timestamp should be of the current date and time.
Refer to the **sample output** for the format.

**Hint**

- To add the timestamp you need to use the `date` command.

**Sample input (from app.log)**

```bash
2024-06-27 12:00:00 INFO Application started
2024-06-27 12:01:00 ERROR Failed to connect to database
2024-06-27 12:02:00 ERROR database_error detected in module X
2024-06-27 12:03:00 INFO Processing request
2024-06-27 12:04:00 ERROR database_error: connection lost

```
**Sample output**

```bash
Fri Jun 28 12:00:00 UTC 2024: Database error found
```