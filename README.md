### Task 1
# Create a new pluggable database(PDB)
A pluggable database named plsql2024 and the user  is created: 

### Step 1
![Screenshot 2024-10-03 232903](https://github.com/user-attachments/assets/34e608b1-d688-4558-be71-898450bca91c)

### Step 2
![alt text](<Screenshot 2024-10-03 232903-2.png>) 

### Step 3
![alt text](<Screenshot 2024-10-03 232903-3.png>)

### Step 4
![alt text](<Screenshot 2024-10-03 233043.png>)

### Step 5
![alt text](<Screenshot 2024-10-03 233119.png>)

### Step 6 
A user is created

![alt text](<Screenshot 2024-10-03 233234.png>) 

### Step 7

![alt text](<Screenshot 2024-10-03 233211.png>) 

### Step 8 
![alt text](<Screenshot 2024-10-03 233255.png>) 

### Step 9 
#### Pluggable database to be deleted
![alt text](<Screenshot 2024-10-03 233339.png>)

### Step 10 
#### Configuration of Oracle Enterprise

![alt text](<Screenshot 2024-10-03 233419.png>) 

![alt text](<Screenshot 2024-10-03 233545.png>) 

![alt text](<Screenshot 2024-10-03 233955.png>) 

![alt text](<Screenshot 2024-10-03 232258.png>) 

![alt text](<Screenshot 2024-10-03 232321.png>) 

#### Oracle sql developer dashboard showing the pluggable database

![alt text](oracle.png) 

#### Summary:

A pluggable database (PDB) is a component of Oracle's multitenant architecture, allowing multiple databases to operate within a single container database (CDB). Each PDB is isolated and can have its own data and users.
To delete a PDB, you first close it using ALTER PLUGGABLE DATABASE pdb_name CLOSE;, then drop it with DROP PLUGGABLE DATABASE pdb_name INCLUDING DATAFILES;.
Configuration of Oracle Enterprise involves installing the software, creating a CDB, managing PDBs, and setting up networking and security measures to ensure efficient operation and protection.
