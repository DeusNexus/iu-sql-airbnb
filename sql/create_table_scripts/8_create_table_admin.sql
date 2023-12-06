--
-- TOC entry 264 (class 1259 OID 16873)
-- Name: Admin; Type: TABLE; Schema: public; Owner: iu
--

CREATE TABLE public."Admin" (
    admin_id integer NOT NULL,
    access_level_id integer
);


ALTER TABLE public."Admin" OWNER TO iu;
