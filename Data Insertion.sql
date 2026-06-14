-- Importing data -- 
use upi_capstone;

SET GLOBAL local_infile = 1;
SET SESSION local_infile = 1;

# Inserting values to customer_master table

LOAD DATA LOCAL INFILE 'C:/Users/rajsa/OneDrive/Desktop/Data Analyst Course/Capstone/Customer_Master.csv'
INTO TABLE customer_master
FIELDS TERMINATED BY ','
ENCLOSED BY '"'
LINES TERMINATED BY '\n'
IGNORE 1 ROWS;


# Inserting values to device_info table
LOAD DATA LOCAL INFILE 'C:/Users/rajsa/OneDrive/Desktop/Data Analyst Course/Capstone/Device_info.csv'
INTO TABLE device_info
FIELDS TERMINATED BY ','
ENCLOSED BY '"'
LINES TERMINATED BY '\n'
IGNORE 1 ROWS;

# Inserting values to upi account

LOAD DATA LOCAL INFILE 'C:/Users/rajsa/OneDrive/Desktop/Data Analyst Course/Capstone/Upi_account.csv'
INTO TABLE upi_account
FIELDS TERMINATED BY ','
ENCLOSED BY '"'
LINES TERMINATED BY '\n'
IGNORE 1 ROWS;

# Inserting values to merchant info

LOAD DATA LOCAL INFILE 'C:/Users/rajsa/OneDrive/Desktop/Data Analyst Course/Capstone/Merchant_info.csv'
INTO TABLE merchant_info
FIELDS TERMINATED BY ','
ENCLOSED BY '"'
LINES TERMINATED BY '\n'
IGNORE 1 ROWS;

# Inserting values to upi transactions history

LOAD DATA local INFILE 'C:/Users/rajsa/OneDrive/Desktop/Data Analyst Course/Capstone/Upi_transactions_history.csv'
INTO TABLE Upi_transactions_history
FIELDS TERMINATED BY ','
ENCLOSED BY '"'
LINES TERMINATED BY '\n'
IGNORE 1 ROWS
(@transaction_id, @upi_id, @customer_id, @timestamp, @amount, @transaction_type,
 @merchant_id, @counterparty_upi, @status, @device_id, @device_type, @channel,
 @fraud_flag, @reversal_flag, @failure_reason)
SET
  transaction_id = @transaction_id,
  upi_id = NULLIF(@upi_id, ''),
  customer_id = NULLIF(@customer_id, ''),
  timestamp = STR_TO_DATE(@timestamp, '%Y-%m-%d %H:%i:%s'),
  amount = @amount,
  transaction_type = @transaction_type,
  merchant_id = NULLIF(@merchant_id, ''),
  counterparty_upi = @counterparty_upi,
  status = @status,
  device_id = NULLIF(@device_id, ''),
  device_type = @device_type,
  channel = @channel,
  fraud_flag = @fraud_flag,
  reversal_flag = @reversal_flag,
  failure_reason = @failure_reason;

# Inserting values to customer_feedback

LOAD DATA LOCAL INFILE 'C:/Users/rajsa/OneDrive/Desktop/Data Analyst Course/Capstone/Customer_feedback.csv'
INTO TABLE customer_feedback
FIELDS TERMINATED BY ','
ENCLOSED BY '"'
LINES TERMINATED BY '\n'
IGNORE 1 ROWS;

# Inserting values to Fraud alert History

LOAD DATA LOCAL INFILE 'C:/Users/rajsa/OneDrive/Desktop/Data Analyst Course/Capstone/Fraud_alert_history.csv'
INTO TABLE fraud_alert_history
FIELDS TERMINATED BY ','
ENCLOSED BY '"'
LINES TERMINATED BY '\n'
IGNORE 1 ROWS;
