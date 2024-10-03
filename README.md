### Task 1
# Create a new pluggable database(PDB)
A pluggable database named plsql2024 and the user  is created: 

### Step 1
![Screenshot 2024-10-03 232903](https://github.com/user-attachments/assets/34e608b1-d688-4558-be71-898450bca91c)

### Step 2
![Screenshot 2024-10-03 232945](https://github.com/user-attachments/assets/7ad9a970-f981-4854-907b-9e1819e4469c)


### Step 3
![Screenshot 2024-10-03 233011](https://github.com/user-attachments/assets/77bba067-bd2b-45bf-82d3-765301eb897b)


### Step 4
![Screenshot 2024-10-03 233043](https://github.com/user-attachments/assets/35ed415f-9f75-4b46-ab1a-8c18442ad9b9)


### Step 5
![alt text](<Screenshot 2024-10-03 233119.png>)

### Step 6 
A user is created

![Screenshot 2024-10-03 233119](https://github.com/user-attachments/assets/78aa8f47-d884-4003-98a5-bb287f193d70)


### Step 7
![Screenshot 2024-10-03 233211](https://github.com/user-attachments/assets/661d4a04-939a-4fd9-943c-53c51569adf1)



### Step 8 
![Screenshot 2024-10-03 233234](https://github.com/user-attachments/assets/8c2916f9-8fa8-47a6-92f5-32fbc57c945f)


### Step 9 
#### Pluggable database to be deleted
![Screenshot 2024-10-03 233339](https://github.com/user-attachments/assets/9c32e4db-b824-471a-b0da-a0a1cbd7458d)


### Step 10 
#### Configuration of Oracle Enterprise

![Screenshot 2024-10-03 232321](https://github.com/user-attachments/assets/22a54cd2-8431-4db6-9f9b-eaaa5a7b8792)


#### Oracle sql developer dashboard showing the pluggable database

![Screenshot 2024-10-04 000401](https://github.com/user-attachments/assets/459c9e46-10e7-4401-981a-13b71158b465)

#### Summary:

A pluggable database (PDB) is a component of Oracle's multitenant architecture, allowing multiple databases to operate within a single container database (CDB). Each PDB is isolated and can have its own data and users.
To delete a PDB, you first close it using ALTER PLUGGABLE DATABASE pdb_name CLOSE;, then drop it with DROP PLUGGABLE DATABASE pdb_name INCLUDING DATAFILES;.
Configuration of Oracle Enterprise involves installing the software, creating a CDB, managing PDBs, and setting up networking and security measures to ensure efficient operation and protection.
