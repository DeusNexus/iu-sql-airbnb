--
-- TOC entry 263 (class 1259 OID 16872)
-- Name: admin_admin_id_seq; Type: SEQUENCE; Schema: public; Owner: iu
--

CREATE SEQUENCE public.admin_admin_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.admin_admin_id_seq OWNER TO iu;

--
-- TOC entry 3868 (class 0 OID 0)
-- Dependencies: 263
-- Name: admin_admin_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: iu
--

ALTER SEQUENCE public.admin_admin_id_seq OWNED BY public."Admin".admin_id;
