### Task 1
# Create a new pluggable database(PDB)
A pluggable database (PDB) is a self-contained database that exists within a container database (CDB) in Oracle's multitenant architecture. Each PDB operates independently with its own data and user management, while sharing the underlying resources of the CDB. This design allows for efficient resource utilization, easy management, and scalability, making it ideal for hosting multiple applications or environments within a single database system.

A pluggable database named plsql2024 and the user  is created: 

### Step 1
![Screenshot 2024-10-03 232903](https://github.com/user-attachments/assets/34e608b1-d688-4558-be71-898450bca91c)

### Step 2
![Screenshot 2024-10-03 232945](https://github.com/user-attachments/assets/7ad9a970-f981-4854-907b-9e1819e4469c)


### Step 3
![Screenshot 2024-10-03 233011](https://github.com/user-attachments/assets/77bba067-bd2b-45bf-82d3-765301eb897b)


### Step 4
#### A pluggable database is created

![4](https://github.com/user-attachments/assets/48673650-a12f-43f1-a8e4-3786c70817fd)

![4 (2)](https://github.com/user-attachments/assets/2bc779b4-1578-438c-b622-7b6dd25d64c7)


### Step 5 
#### A user is created 
![5](https://github.com/user-attachments/assets/d1e1772a-31d7-4dca-b174-226a84788bf9)

![5 (2)](https://github.com/user-attachments/assets/6d4538d2-58ca-4e2d-b257-603e6ccc9abe)

### Task 2

### Step 6 
### A pluggable database to be deleted

![6](https://github.com/user-attachments/assets/37067b5a-7c99-42c5-933e-9aa4bce82964)

### Task 3

### Step 7
#### Configuration of Oracle Enterprise

![Screenshot 2024-10-03 233955](https://github.com/user-attachments/assets/96f35840-5e8f-40bf-b2fd-1c066060f43e)

![17](https://github.com/user-attachments/assets/4cc6a2d4-c8b6-46aa-bbf8-fd45e9ef830d)

![Screenshot 2024-10-03 232321](https://github.com/user-attachments/assets/22a54cd2-8431-4db6-9f9b-eaaa5a7b8792)


#### Oracle sql developer dashboard showing the pluggable database 

![Screenshot 2024-10-04 000401](https://github.com/user-attachments/assets/459c9e46-10e7-4401-981a-13b71158b465)

#### Summary:

A pluggable database (PDB) is a component of Oracle's multitenant architecture, allowing multiple databases to operate within a single container database (CDB). Each PDB is isolated and can have its own data and users.
To delete a PDB, you first close it using ALTER PLUGGABLE DATABASE pdb_name CLOSE;, then drop it with DROP PLUGGABLE DATABASE pdb_name INCLUDING DATAFILES;.
Configuration of Oracle Enterprise involves installing the software, creating a CDB, managing PDBs, and setting up networking and security measures to ensure efficient operation and protection.
