create database ranjan_hadoop_practice location '/user/ranjanbighadoop5481/ranjan_hadoop_practice';

create table mandi_data_1(
  arrival_date DATE,
  commodity string,
  district string,
  id BIGINT,
  market string,
  max_price INT,
  min_price INT,
  modal_price INT,
  state string,
  time_stamp BIGINT,
  variety string)
  ROW FORMAT DELIMITED
     FIELDS TERMINATED BY ','
         STORED AS TEXTFILE;



ALTER TABLE mandi_data SET TBLPROPERTIES ('skip.header.line.count' = "1");
