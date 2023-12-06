--
-- TOC entry 273 (class 1255 OID 17029)
-- Name: insert_payment_methods(); Type: FUNCTION; Schema: public; Owner: iu
--

CREATE FUNCTION public.insert_payment_methods() RETURNS void
    LANGUAGE plpgsql
    AS $$
DECLARE
    i INT := 0;
BEGIN
    -- Loop 1250 times
    FOR i IN 1..1250 LOOP
        INSERT INTO public."Payment Method" (
            payment_account,
            available,
            name_id
        )
        VALUES (
            md5(random()::text || clock_timestamp()::text)::varchar(30),
            random() < 0.1,  -- 10% chance of being false
            floor(random() * 20) + 1
        );
    END LOOP;
END;
$$;


ALTER FUNCTION public.insert_payment_methods() OWNER TO iu;

SET default_tablespace = '';

SET default_table_access_method = heap;
