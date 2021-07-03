# master-cloud-apps-4.4.-p1-parallel-change
Implement backward-incompatible changes to a given interface.

## Version's description

### v1
Contains the initial files

### v2
It adds a new column to `book` table, called `preface`. It sets value from `description` to new filed `preface`.

### v3
It finishes migrating all `description` values to `preface` column and it renames the column `description` by `preface`.

### v4
It deletes `description` column because it is not longer used by the application.
