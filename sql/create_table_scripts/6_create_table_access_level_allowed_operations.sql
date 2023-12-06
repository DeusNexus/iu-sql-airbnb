--
-- TOC entry 265 (class 1259 OID 16884)
-- Name: AccessLevelAllowedOperations; Type: TABLE; Schema: public; Owner: iu
--

CREATE TABLE public."AccessLevelAllowedOperations" (
    access_level_id integer NOT NULL,
    allowed_operation_id integer NOT NULL
);


ALTER TABLE public."AccessLevelAllowedOperations" OWNER TO iu;
