#sqoop codegen --connect jdbc:mysql://192.168.0.100:3306/engage_v1 --username ranjan --password 13972684 --table 'all_survey_v1_admin_view' 
sqoop import --connect jdbc:mysql://192.168.0.101:3306/engage_v1 --username ranjan --password 13972684 --table 'all_survey_v1_admin_view' -m 1 --target-dir '/ranjan/sqoop/gmr' 
#sqoop eval --connect jdbc:mysql://192.168.0.101:3306/engage_v1 --username root --password 13972684 --query "SELECT * FROM all_survey_v1_admin_view LIMIT 1" --verbose

69.89.14.187

sqoop import --connect jdbc:mysql://69.89.14.187:3306/engage_v1 --username engage --password punya123 --table 'survey_v1_user_response_store' --target-dir '/user/cloudera/dataset/gmr/survey_v1_user_response_store' --direct -- --default-character-set=utf8 --as-textfile hive-import

sqoop eval --connect jdbc:mysql://69.89.14.187:3306/engage_v1 --username engage --password punya123 --query 'SELECT * FROM all_survey_v1_admin_view LIMIT 1' --verbose

sqoop import-all-tables --connect jdbc:mysql://69.89.14.187:3306/engage_v1 --username engage --password punya123 --warehouse-dir=/user/cloudera/dataset/gmr --hive-import  --create-hive-table --hive-database gmr

sqoop import --connect jdbc:mysql://69.89.14.187:3306/engage_v1 --username engage --password punya123 --warehouse-dir=/user/cloudera/dataset/gmr --table survey_v1_user_response_store --hive-import  --hive-database gmr --hive-table survey_v1_user_response_store --create-hive-table

sqoop import --connect jdbc:mysql://69.89.14.187:3306/engage_v1 --username engage --password punya123 --target-dir=/user/cloudera/dataset/gmr/all_survey_v1_product_client_info_view --query 'SELECT `ID`,`AUTHOR_STATUS`,`CLIENT_EMAIL`,`CLIENT_GEN_TIME_STAMP`,`CLIENT_LOGIN_IP`,`CLIENT_LOGIN_STAMP`,`CLIENT_NAME`,`CLENT_PASSWORD`,`CUSTOMIZATION_STATUS`,`EMAIL_STATUS`,`PARENT_ID`,`PLAN_ID`,`PLAN_NAME`,`PLAN_STATUS`,`status`,`TEMP_COLOR`,`UNUSED_LICENCE`,`USED_LICENCE`,`WEBSITE_URL`
FROM`all_survey_v1_product_client_info_view` WHERE $CONDITIONS' --hive-import  --hive-database gmr --hive-table all_survey_v1_product_client_info_view --create-hive-table --split-by ID



