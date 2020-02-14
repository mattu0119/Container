# コンテナ実行  
git clone https://github.com/mattu0119/Container.git 
cd Container/postgres  
docker build -t postgres12 .  
docker images  
docker run --name postgres12.1  
docker run --name postgres12.1 -e POSTGRES_PASSWORD=p@ssw0rd -d postgres12  
docker ps  
docker exec -it postgres12.1 /bin/bash  
psql -U postgres

# SQL 基本DML（Insert/Select/Update/Delete)  
## テーブル確認
\d  

## Select
SELECT * FROM DEPT;  
SELECT * FROM EMP;  

SELECT <列1>,<列2>・・・ FROM <テーブル名> WHERE 条件 ORDER BY <列1>, <列2＞;  
 ・列＝値<->   列!= 値  
 ・列 like ‘%文字列%’ <-> 列 not like ‘%文字列%’  
 ・列 in (値１、値２、・・・・）<-> 列not in (値１、値２、・・・・） 
 ・列> 値 <-> 列 ＝＜ 値  
 ・列 IS NULL <-> 列IS NOT NULL  
 ・複数条件の時は上記を「AND」でつなげる
 ・ORDER BY <列1>, <列2＞ DESC;

SELECT *  
FROM emp  
WHERE emp_ID > 100  
ORDER BY emp_id DESC;  

## Update  

## Insert

## Delete

