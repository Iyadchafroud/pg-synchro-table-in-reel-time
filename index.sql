-- in the first db server i create   the Publisher (Master) to specify the table i want to replicate 
  CREATE PUBLICATION pub_name FOR TABLE firstschema.catalogue;

-- in the second db server i create reate a subscription  to receive the replicated data
CREATE SUBSCRIPTION sub_name CONNECTION 'dbname=postgres host=172.17.0.2 user=postgres password=password' PUBLICATION pub_name;

-- now when i modify  or insert line , it make the synch in reel time  in the specific table

--The pg_stat_subscription  view will contain one row per logical subscription
select * from pg_stat_subscription
  
--The pg_stat_replication_slots view will contain one row per logical replication slot, showing statistics about its usage.
select * from pg_stat_replication_slots
  
-- The pg_stat_wal_receiver view will contain only one row, showing statistics about the WAL receiver from that receiver's connected server.
select * from pg_stat_wal_receiver 



