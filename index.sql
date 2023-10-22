-- in the first db server i create   the Publisher (Master) to specify the table i want to replicate 
  CREATE PUBLICATION pub_name FOR TABLE firstschema.catalogue;

-- in the second db server i create reate a subscription  to receive the replicated data
CREATE SUBSCRIPTION sub_name CONNECTION 'dbname=postgres host=172.17.0.2 user=postgres password=password' PUBLICATION pub_name;

-- now when i modify  or insert line , it make the synch in reel time  in the specific table