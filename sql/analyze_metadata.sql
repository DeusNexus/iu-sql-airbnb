ANALYZE public."Allowed Operations";
ANALYZE public."User";
ANALYZE public."Activity Log";
ANALYZE public."Amenity Categories";
ANALYZE public."Amenity";
ANALYZE public."Guest";
ANALYZE public."Booking";
ANALYZE public."Review";
ANALYZE public."Host";
ANALYZE public."Payment";
ANALYZE public."Promo";
ANALYZE public."Preferences";
ANALYZE public."Message";
ANALYZE public."Payment Status";
ANALYZE public."Property Type";
ANALYZE public."Language";
ANALYZE public."Country";
ANALYZE public."Media";
ANALYZE public."Review Type";
ANALYZE public."User Type";
ANALYZE public."Property Amenity";
ANALYZE public."Preferences Amenity";
ANALYZE public."Preferences Property Type";
ANALYZE public."Access Level";
ANALYZE public."Admin";
ANALYZE public."AccessLevelAllowedOperations";
ANALYZE public."Preferences Country";
ANALYZE public."Property Images";
ANALYZE public."Property";
ANALYZE public."Chat";
ANALYZE public."Payment Method";
ANALYZE public."Payment Method Name";
ANALYZE public."Property Review";
ANALYZE public."property_view";

SELECT  oid as Object_ID, 
        relname as table_name, 
        relpages, 
        reltuples as rows, 
        relallvisible, 
        reltoastrelid as toast_object_id, 
        relhasindex as table_has_indexes, 
        relnatts as num_of_columns 
FROM pg_class 
WHERE relnamespace = 2200 AND reltype != 0;