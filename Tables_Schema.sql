-- Create database and tables --

use upi_capstone;
# 1. Customer_Master

create table Customer_Master(
customer_id varchar(20) primary key,
full_name varchar(50),
age int Not Null,
gender varchar(20) Not Null,
region varchar(20) Not Null,
date_joined date Not Null,
is_business_user boolean Not Null,
risk_score float,
mobile_number varchar(10)
);

# 2. Device Info

create table Device_info(
device_id varchar(20) primary key,
customer_id varchar(20),
device_type varchar(50),
app_version varchar(20),
is_rooted boolean,
last_active datetime,
Foreign Key (customer_id) references Customer_Master(customer_id)
);

# 3. Upi account

create table Upi_account(
upi_id varchar(20) primary key,
customer_id varchar(20),
bank_name varchar(20) Not Null,
account_type varchar(50) Not Null,
date_added date,
status varchar(20),
Foreign Key (customer_id) references Customer_Master(customer_id)
);


# 4. Merchant Info

create table Merchant_info(
merchant_id varchar(20) primary key,
merchant_name varchar(100) Not Null,
merchant_type varchar(50) Not Null,
region varchar(20) Not Null,
onboard_date date,
risk_score float
);

# 5. Upi transaction history

create table Upi_transactions_history(
transaction_id varchar(20) primary key,
upi_id varchar(100),
customer_id varchar(20),
timestamp datetime,
amount float Not Null,
transaction_type varchar(50) Not Null,
merchant_id varchar(20) null,
counterparty_upi varchar(100),
status varchar(20),
device_id varchar(20),
device_type varchar(50),
channel varchar(50),
fraud_flag boolean Not Null,
reversal_flag boolean Not Null,
failure_reason varchar(100),
Foreign Key (upi_id) references Upi_account(upi_id),
Foreign Key (customer_id) references Customer_Master(customer_id),
Foreign Key (merchant_id) references Merchant_info(merchant_id),
Foreign Key (device_id) references Device_info(device_id)
);

# 6. Customer Feedback

create table Customer_feedback(
feedback_id varchar(20) primary key,
customer_id varchar(20),
date_submitted date Not Null,
feedback_text varchar(200),
satisfaction_score int Not Null,
issue_type varchar(50) Not Null,
resolved boolean Not Null,
Foreign Key (customer_id) references Customer_Master(customer_id)
);

# 7. Fraud Alert History

create table Fraud_alert_history(
alert_id varchar(20) primary key,
transaction_id varchar(20),
alert_type varchar(100) Not Null,
alert_date datetime Not Null,
resolved boolean Not Null,
resolution_date datetime null,
remarks varchar(200),
Foreign Key (transaction_id) references Upi_transactions_history(transaction_id)
);
