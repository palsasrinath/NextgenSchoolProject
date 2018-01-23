

/-------------------enquiry table----------------------/


create table t_enquiry(
id int not null auto_increment,
sno int not null,
date varchar(150) not null,
firstName varchar(150) not null,
lastName varchar(150) not null,
dateOfBirth varchar(150) not null,
age varchar(150) not null,
gender varchar(150) not null,
nationality varchar(150) not null,
motherTongue varchar(150) not null,
place varchar(150) not null,
state varchar(150) not null,
branchName varchar(150) not null,
className varchar(150) not null,
fatherName varchar(150) not null,
motherName varchar(150) not null,
fatherOccupation varchar(150) not null,
motherOccupation varchar(150) not null,
residenceTelNo varchar(150) not null,
fatherOffNo varchar(15) not null,
fatherMob varchar(15) not null,
motherOffNo varchar(15) not null,
motherMob varchar(15) not null,
guardianNo varchar(15) not null,
email varchar(150) not null,
address varchar(150) not null,
previousSchooling varchar(150) not null,
lastSchool varchar(150) not null,
lastSchoolAddress varchar(150) not null,
aboutSchool varchar(150) not null,
others varchar(150) not null,
studentImgPath varchar(500),
primary key(id));



/--------------------admission table------------------/

create table t_admission(
id int not null auto_increment,
sno varchar(150) not null,
regno varchar(150) not null,
branchName varchar(150) not null,
className varchar(150) not null,
dateofAdmission varchar(150) not null,
gender varchar(150) not null,
age varchar(150) not null,
studentName varchar(150) not null,
dateOfBirth varchar(150) not null,
nationality varchar(150) not null,
motherTongue varchar(150) not null,
place varchar(150) not null,
state varchar(150) not null,
fatherName varchar(150) not null,
motherName varchar(150) not null,
fatherOccupation varchar(150) not null,
motherOccupation varchar(150) not null,
residenceTelNo varchar(150) not null,
fatherOffNo varchar(150) not null,
fatherMob varchar(150) not null,
motherOffNo varchar(150) not null,
motherMob varchar(150) not null,
guardianNo varchar(150) not null,
email varchar(150) not null,
address varchar(150) not null,
tutionFee varchar(150) not null,
paidTutionFee varchar(150) not null,
dueTutionFee varchar(150) null,
transportRequirement varchar(150) not null,
transportFee varchar(150) not null,
paidTransportFee varchar(150) not null,
dueTransportFee varchar(150) null,
dayCareRequirement varchar(150) not null,
dayCareFee varchar(150) not null,
paidDayCareFee varchar(150) not null,
dueDayCareFee varchar(150) null,
uniformRequirement varchar(150) not null,
uniformFee varchar(150) not null,
paidUniformFee varchar(150) not null,
dueUniformFee varchar(150) null,
booksAndBagRequirement varchar(150) not null,
booksAndBagFee varchar(150) not null,
paidBooksAndBagFee varchar(150) not null,
dueBooksAndBagFee varchar(150) null,
teachersToStudents varchar(150) not null,
previousSchooling varchar(150) not null,
lastSchool  varchar(150) not null,
lastSchoolAddress  varchar(150) not null,
primary key(id));



/------------------principal table------------------/

create table t_principal_register(
first_name varchar(30),
last_name varchar(30),
email varchar(30),
password varchar(30),
conformpassword VARCHAR(100),
branchName VARCHAR(30),
mobileNumber VARCHAR(100),
gender varchar(30),
address VARCHAR(100),
city VARCHAR(100),
state VARCHAR(100));



/---------------------admin table---------------------/

 CREATE TABLE t_admin_register(
    admin_id INT NOT NULL AUTO_INCREMENT,
    firstName VARCHAR(100) NOT NULL,
    lastName VARCHAR(100) NOT NULL,
    email VARCHAR(100) NOT NULL,
    password VARCHAR(100) NOT NULL,
    gender VARCHAR(100) NOT NULL,
    mobileNumber VARCHAR(100) NOT NULL,
    dateofbirth VARCHAR(100) NOT NULL,
    address VARCHAR(100) NOT NULL,
    city VARCHAR(100) NOT NULL,
    state VARCHAR(100) NOT NULL,
    PRIMARY KEY (admin_id)
    );



/--------------------teacher table-------------------/

create table t_teacher_register(
first_name varchar(30),
last_name varchar(30),
email varchar(30),
password varchar(30),
conformpassword VARCHAR(100),
mobileNumber VARCHAR(100),
gender varchar(30),
address VARCHAR(100),
qualification VARCHAR(100),
city VARCHAR(100),
state VARCHAR(100));



/--------------------parent table--------------------/

create table t_parent_declaration(
parent varchar(150) not null,
student varchar(150) not null,
photos varchar(150) not null,
records varchar(150) not null,
birth varchar(150) not null);

    
    
    
    
    