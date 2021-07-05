# master-cloud-apps-4.4.-p1-parallel-change
Implement backward-incompatible changes to a given interface.

## Version's description

### v1
Contains the initial files

### v2
It adds a new column to `book` table, called `preface`. It sets value from `description` to new filed `preface` because preface can't be null.
Source code deals with both `description` and `preface` variables at the same time.

### v3
It finishes migrating all `description` values to `preface` column and it renames the column `description` by `preface`.
Now, in the code, all references are set to `preface`. `Description` references are deleted in the code.

### v4
It deletes `description` column because it is not longer used by the application.

### v5
It adds a new field to Book table called `price`. This is an integer which its value can be null.

### v6
It adds a new field called `extendedPrice`. This is a float value that can be null, same as previous version (v5). In this case, all values in `price` get copied to `extendedPrice`. 
In the code, both values are represented in class `Book`, while all references are set to `extendedPrice`.

### v7
Old implementation is deleted. There is no need to change anything in regards to the database because values for `price` and `extendedPrice` could always be null.

### v8
Field `price` gets deleted in database's `Book` table. The code does not change at this step anymore.