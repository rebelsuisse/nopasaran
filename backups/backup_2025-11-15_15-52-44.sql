--
-- PostgreSQL database dump
--

\restrict u2V25gaKq2IgCtBhkX8cO4X4T5NW0fhcFoA1UhZuieX3mb80STrUPFBHvJJ0g26

-- Dumped from database version 16.10
-- Dumped by pg_dump version 16.10

SET statement_timeout = 0;
SET lock_timeout = 0;
SET idle_in_transaction_session_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SELECT pg_catalog.set_config('search_path', '', false);
SET check_function_bodies = false;
SET xmloption = content;
SET client_min_messages = warning;
SET row_security = off;

SET default_tablespace = '';

SET default_table_access_method = heap;

--
-- Name: admin_permissions; Type: TABLE; Schema: public; Owner: strapi
--

CREATE TABLE public.admin_permissions (
    id integer NOT NULL,
    document_id character varying(255),
    action character varying(255),
    action_parameters jsonb,
    subject character varying(255),
    properties jsonb,
    conditions jsonb,
    created_at timestamp(6) without time zone,
    updated_at timestamp(6) without time zone,
    published_at timestamp(6) without time zone,
    created_by_id integer,
    updated_by_id integer,
    locale character varying(255)
);


ALTER TABLE public.admin_permissions OWNER TO strapi;

--
-- Name: admin_permissions_id_seq; Type: SEQUENCE; Schema: public; Owner: strapi
--

CREATE SEQUENCE public.admin_permissions_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.admin_permissions_id_seq OWNER TO strapi;

--
-- Name: admin_permissions_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: strapi
--

ALTER SEQUENCE public.admin_permissions_id_seq OWNED BY public.admin_permissions.id;


--
-- Name: admin_permissions_role_lnk; Type: TABLE; Schema: public; Owner: strapi
--

CREATE TABLE public.admin_permissions_role_lnk (
    id integer NOT NULL,
    permission_id integer,
    role_id integer,
    permission_ord double precision
);


ALTER TABLE public.admin_permissions_role_lnk OWNER TO strapi;

--
-- Name: admin_permissions_role_lnk_id_seq; Type: SEQUENCE; Schema: public; Owner: strapi
--

CREATE SEQUENCE public.admin_permissions_role_lnk_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.admin_permissions_role_lnk_id_seq OWNER TO strapi;

--
-- Name: admin_permissions_role_lnk_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: strapi
--

ALTER SEQUENCE public.admin_permissions_role_lnk_id_seq OWNED BY public.admin_permissions_role_lnk.id;


--
-- Name: admin_roles; Type: TABLE; Schema: public; Owner: strapi
--

CREATE TABLE public.admin_roles (
    id integer NOT NULL,
    document_id character varying(255),
    name character varying(255),
    code character varying(255),
    description character varying(255),
    created_at timestamp(6) without time zone,
    updated_at timestamp(6) without time zone,
    published_at timestamp(6) without time zone,
    created_by_id integer,
    updated_by_id integer,
    locale character varying(255)
);


ALTER TABLE public.admin_roles OWNER TO strapi;

--
-- Name: admin_roles_id_seq; Type: SEQUENCE; Schema: public; Owner: strapi
--

CREATE SEQUENCE public.admin_roles_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.admin_roles_id_seq OWNER TO strapi;

--
-- Name: admin_roles_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: strapi
--

ALTER SEQUENCE public.admin_roles_id_seq OWNED BY public.admin_roles.id;


--
-- Name: admin_users; Type: TABLE; Schema: public; Owner: strapi
--

CREATE TABLE public.admin_users (
    id integer NOT NULL,
    document_id character varying(255),
    firstname character varying(255),
    lastname character varying(255),
    username character varying(255),
    email character varying(255),
    password character varying(255),
    reset_password_token character varying(255),
    registration_token character varying(255),
    is_active boolean,
    blocked boolean,
    prefered_language character varying(255),
    created_at timestamp(6) without time zone,
    updated_at timestamp(6) without time zone,
    published_at timestamp(6) without time zone,
    created_by_id integer,
    updated_by_id integer,
    locale character varying(255)
);


ALTER TABLE public.admin_users OWNER TO strapi;

--
-- Name: admin_users_id_seq; Type: SEQUENCE; Schema: public; Owner: strapi
--

CREATE SEQUENCE public.admin_users_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.admin_users_id_seq OWNER TO strapi;

--
-- Name: admin_users_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: strapi
--

ALTER SEQUENCE public.admin_users_id_seq OWNED BY public.admin_users.id;


--
-- Name: admin_users_roles_lnk; Type: TABLE; Schema: public; Owner: strapi
--

CREATE TABLE public.admin_users_roles_lnk (
    id integer NOT NULL,
    user_id integer,
    role_id integer,
    role_ord double precision,
    user_ord double precision
);


ALTER TABLE public.admin_users_roles_lnk OWNER TO strapi;

--
-- Name: admin_users_roles_lnk_id_seq; Type: SEQUENCE; Schema: public; Owner: strapi
--

CREATE SEQUENCE public.admin_users_roles_lnk_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.admin_users_roles_lnk_id_seq OWNER TO strapi;

--
-- Name: admin_users_roles_lnk_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: strapi
--

ALTER SEQUENCE public.admin_users_roles_lnk_id_seq OWNED BY public.admin_users_roles_lnk.id;


--
-- Name: components_link_links; Type: TABLE; Schema: public; Owner: strapi
--

CREATE TABLE public.components_link_links (
    id integer NOT NULL,
    label character varying(255),
    url character varying(255)
);


ALTER TABLE public.components_link_links OWNER TO strapi;

--
-- Name: components_link_links_id_seq; Type: SEQUENCE; Schema: public; Owner: strapi
--

CREATE SEQUENCE public.components_link_links_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.components_link_links_id_seq OWNER TO strapi;

--
-- Name: components_link_links_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: strapi
--

ALTER SEQUENCE public.components_link_links_id_seq OWNED BY public.components_link_links.id;


--
-- Name: files; Type: TABLE; Schema: public; Owner: strapi
--

CREATE TABLE public.files (
    id integer NOT NULL,
    document_id character varying(255),
    name character varying(255),
    alternative_text character varying(255),
    caption character varying(255),
    width integer,
    height integer,
    formats jsonb,
    hash character varying(255),
    ext character varying(255),
    mime character varying(255),
    size numeric(10,2),
    url character varying(255),
    preview_url character varying(255),
    provider character varying(255),
    provider_metadata jsonb,
    folder_path character varying(255),
    created_at timestamp(6) without time zone,
    updated_at timestamp(6) without time zone,
    published_at timestamp(6) without time zone,
    created_by_id integer,
    updated_by_id integer,
    locale character varying(255)
);


ALTER TABLE public.files OWNER TO strapi;

--
-- Name: files_folder_lnk; Type: TABLE; Schema: public; Owner: strapi
--

CREATE TABLE public.files_folder_lnk (
    id integer NOT NULL,
    file_id integer,
    folder_id integer,
    file_ord double precision
);


ALTER TABLE public.files_folder_lnk OWNER TO strapi;

--
-- Name: files_folder_lnk_id_seq; Type: SEQUENCE; Schema: public; Owner: strapi
--

CREATE SEQUENCE public.files_folder_lnk_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.files_folder_lnk_id_seq OWNER TO strapi;

--
-- Name: files_folder_lnk_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: strapi
--

ALTER SEQUENCE public.files_folder_lnk_id_seq OWNED BY public.files_folder_lnk.id;


--
-- Name: files_id_seq; Type: SEQUENCE; Schema: public; Owner: strapi
--

CREATE SEQUENCE public.files_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.files_id_seq OWNER TO strapi;

--
-- Name: files_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: strapi
--

ALTER SEQUENCE public.files_id_seq OWNED BY public.files.id;


--
-- Name: files_related_mph; Type: TABLE; Schema: public; Owner: strapi
--

CREATE TABLE public.files_related_mph (
    id integer NOT NULL,
    file_id integer,
    related_id integer,
    related_type character varying(255),
    field character varying(255),
    "order" double precision
);


ALTER TABLE public.files_related_mph OWNER TO strapi;

--
-- Name: files_related_mph_id_seq; Type: SEQUENCE; Schema: public; Owner: strapi
--

CREATE SEQUENCE public.files_related_mph_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.files_related_mph_id_seq OWNER TO strapi;

--
-- Name: files_related_mph_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: strapi
--

ALTER SEQUENCE public.files_related_mph_id_seq OWNED BY public.files_related_mph.id;


--
-- Name: i18n_locale; Type: TABLE; Schema: public; Owner: strapi
--

CREATE TABLE public.i18n_locale (
    id integer NOT NULL,
    document_id character varying(255),
    name character varying(255),
    code character varying(255),
    created_at timestamp(6) without time zone,
    updated_at timestamp(6) without time zone,
    published_at timestamp(6) without time zone,
    created_by_id integer,
    updated_by_id integer,
    locale character varying(255)
);


ALTER TABLE public.i18n_locale OWNER TO strapi;

--
-- Name: i18n_locale_id_seq; Type: SEQUENCE; Schema: public; Owner: strapi
--

CREATE SEQUENCE public.i18n_locale_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.i18n_locale_id_seq OWNER TO strapi;

--
-- Name: i18n_locale_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: strapi
--

ALTER SEQUENCE public.i18n_locale_id_seq OWNED BY public.i18n_locale.id;


--
-- Name: strapi_ai_localization_jobs; Type: TABLE; Schema: public; Owner: strapi
--

CREATE TABLE public.strapi_ai_localization_jobs (
    id integer NOT NULL,
    content_type character varying(255) NOT NULL,
    related_document_id character varying(255) NOT NULL,
    source_locale character varying(255) NOT NULL,
    target_locales jsonb NOT NULL,
    status character varying(255) NOT NULL,
    created_at timestamp(6) without time zone,
    updated_at timestamp(6) without time zone
);


ALTER TABLE public.strapi_ai_localization_jobs OWNER TO strapi;

--
-- Name: strapi_ai_localization_jobs_id_seq; Type: SEQUENCE; Schema: public; Owner: strapi
--

CREATE SEQUENCE public.strapi_ai_localization_jobs_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.strapi_ai_localization_jobs_id_seq OWNER TO strapi;

--
-- Name: strapi_ai_localization_jobs_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: strapi
--

ALTER SEQUENCE public.strapi_ai_localization_jobs_id_seq OWNED BY public.strapi_ai_localization_jobs.id;


--
-- Name: strapi_api_token_permissions; Type: TABLE; Schema: public; Owner: strapi
--

CREATE TABLE public.strapi_api_token_permissions (
    id integer NOT NULL,
    document_id character varying(255),
    action character varying(255),
    created_at timestamp(6) without time zone,
    updated_at timestamp(6) without time zone,
    published_at timestamp(6) without time zone,
    created_by_id integer,
    updated_by_id integer,
    locale character varying(255)
);


ALTER TABLE public.strapi_api_token_permissions OWNER TO strapi;

--
-- Name: strapi_api_token_permissions_id_seq; Type: SEQUENCE; Schema: public; Owner: strapi
--

CREATE SEQUENCE public.strapi_api_token_permissions_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.strapi_api_token_permissions_id_seq OWNER TO strapi;

--
-- Name: strapi_api_token_permissions_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: strapi
--

ALTER SEQUENCE public.strapi_api_token_permissions_id_seq OWNED BY public.strapi_api_token_permissions.id;


--
-- Name: strapi_api_token_permissions_token_lnk; Type: TABLE; Schema: public; Owner: strapi
--

CREATE TABLE public.strapi_api_token_permissions_token_lnk (
    id integer NOT NULL,
    api_token_permission_id integer,
    api_token_id integer,
    api_token_permission_ord double precision
);


ALTER TABLE public.strapi_api_token_permissions_token_lnk OWNER TO strapi;

--
-- Name: strapi_api_token_permissions_token_lnk_id_seq; Type: SEQUENCE; Schema: public; Owner: strapi
--

CREATE SEQUENCE public.strapi_api_token_permissions_token_lnk_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.strapi_api_token_permissions_token_lnk_id_seq OWNER TO strapi;

--
-- Name: strapi_api_token_permissions_token_lnk_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: strapi
--

ALTER SEQUENCE public.strapi_api_token_permissions_token_lnk_id_seq OWNED BY public.strapi_api_token_permissions_token_lnk.id;


--
-- Name: strapi_api_tokens; Type: TABLE; Schema: public; Owner: strapi
--

CREATE TABLE public.strapi_api_tokens (
    id integer NOT NULL,
    document_id character varying(255),
    name character varying(255),
    description character varying(255),
    type character varying(255),
    access_key character varying(255),
    encrypted_key text,
    last_used_at timestamp(6) without time zone,
    expires_at timestamp(6) without time zone,
    lifespan bigint,
    created_at timestamp(6) without time zone,
    updated_at timestamp(6) without time zone,
    published_at timestamp(6) without time zone,
    created_by_id integer,
    updated_by_id integer,
    locale character varying(255)
);


ALTER TABLE public.strapi_api_tokens OWNER TO strapi;

--
-- Name: strapi_api_tokens_id_seq; Type: SEQUENCE; Schema: public; Owner: strapi
--

CREATE SEQUENCE public.strapi_api_tokens_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.strapi_api_tokens_id_seq OWNER TO strapi;

--
-- Name: strapi_api_tokens_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: strapi
--

ALTER SEQUENCE public.strapi_api_tokens_id_seq OWNED BY public.strapi_api_tokens.id;


--
-- Name: strapi_core_store_settings; Type: TABLE; Schema: public; Owner: strapi
--

CREATE TABLE public.strapi_core_store_settings (
    id integer NOT NULL,
    key character varying(255),
    value text,
    type character varying(255),
    environment character varying(255),
    tag character varying(255)
);


ALTER TABLE public.strapi_core_store_settings OWNER TO strapi;

--
-- Name: strapi_core_store_settings_id_seq; Type: SEQUENCE; Schema: public; Owner: strapi
--

CREATE SEQUENCE public.strapi_core_store_settings_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.strapi_core_store_settings_id_seq OWNER TO strapi;

--
-- Name: strapi_core_store_settings_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: strapi
--

ALTER SEQUENCE public.strapi_core_store_settings_id_seq OWNED BY public.strapi_core_store_settings.id;


--
-- Name: strapi_database_schema; Type: TABLE; Schema: public; Owner: strapi
--

CREATE TABLE public.strapi_database_schema (
    id integer NOT NULL,
    schema json,
    "time" timestamp without time zone,
    hash character varying(255)
);


ALTER TABLE public.strapi_database_schema OWNER TO strapi;

--
-- Name: strapi_database_schema_id_seq; Type: SEQUENCE; Schema: public; Owner: strapi
--

CREATE SEQUENCE public.strapi_database_schema_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.strapi_database_schema_id_seq OWNER TO strapi;

--
-- Name: strapi_database_schema_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: strapi
--

ALTER SEQUENCE public.strapi_database_schema_id_seq OWNED BY public.strapi_database_schema.id;


--
-- Name: strapi_history_versions; Type: TABLE; Schema: public; Owner: strapi
--

CREATE TABLE public.strapi_history_versions (
    id integer NOT NULL,
    content_type character varying(255) NOT NULL,
    related_document_id character varying(255),
    locale character varying(255),
    status character varying(255),
    data jsonb,
    schema jsonb,
    created_at timestamp(6) without time zone,
    created_by_id integer
);


ALTER TABLE public.strapi_history_versions OWNER TO strapi;

--
-- Name: strapi_history_versions_id_seq; Type: SEQUENCE; Schema: public; Owner: strapi
--

CREATE SEQUENCE public.strapi_history_versions_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.strapi_history_versions_id_seq OWNER TO strapi;

--
-- Name: strapi_history_versions_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: strapi
--

ALTER SEQUENCE public.strapi_history_versions_id_seq OWNED BY public.strapi_history_versions.id;


--
-- Name: strapi_migrations; Type: TABLE; Schema: public; Owner: strapi
--

CREATE TABLE public.strapi_migrations (
    id integer NOT NULL,
    name character varying(255),
    "time" timestamp without time zone
);


ALTER TABLE public.strapi_migrations OWNER TO strapi;

--
-- Name: strapi_migrations_id_seq; Type: SEQUENCE; Schema: public; Owner: strapi
--

CREATE SEQUENCE public.strapi_migrations_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.strapi_migrations_id_seq OWNER TO strapi;

--
-- Name: strapi_migrations_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: strapi
--

ALTER SEQUENCE public.strapi_migrations_id_seq OWNED BY public.strapi_migrations.id;


--
-- Name: strapi_migrations_internal; Type: TABLE; Schema: public; Owner: strapi
--

CREATE TABLE public.strapi_migrations_internal (
    id integer NOT NULL,
    name character varying(255),
    "time" timestamp without time zone
);


ALTER TABLE public.strapi_migrations_internal OWNER TO strapi;

--
-- Name: strapi_migrations_internal_id_seq; Type: SEQUENCE; Schema: public; Owner: strapi
--

CREATE SEQUENCE public.strapi_migrations_internal_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.strapi_migrations_internal_id_seq OWNER TO strapi;

--
-- Name: strapi_migrations_internal_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: strapi
--

ALTER SEQUENCE public.strapi_migrations_internal_id_seq OWNED BY public.strapi_migrations_internal.id;


--
-- Name: strapi_release_actions; Type: TABLE; Schema: public; Owner: strapi
--

CREATE TABLE public.strapi_release_actions (
    id integer NOT NULL,
    document_id character varying(255),
    type character varying(255),
    content_type character varying(255),
    entry_document_id character varying(255),
    locale character varying(255),
    is_entry_valid boolean,
    created_at timestamp(6) without time zone,
    updated_at timestamp(6) without time zone,
    published_at timestamp(6) without time zone,
    created_by_id integer,
    updated_by_id integer
);


ALTER TABLE public.strapi_release_actions OWNER TO strapi;

--
-- Name: strapi_release_actions_id_seq; Type: SEQUENCE; Schema: public; Owner: strapi
--

CREATE SEQUENCE public.strapi_release_actions_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.strapi_release_actions_id_seq OWNER TO strapi;

--
-- Name: strapi_release_actions_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: strapi
--

ALTER SEQUENCE public.strapi_release_actions_id_seq OWNED BY public.strapi_release_actions.id;


--
-- Name: strapi_release_actions_release_lnk; Type: TABLE; Schema: public; Owner: strapi
--

CREATE TABLE public.strapi_release_actions_release_lnk (
    id integer NOT NULL,
    release_action_id integer,
    release_id integer,
    release_action_ord double precision
);


ALTER TABLE public.strapi_release_actions_release_lnk OWNER TO strapi;

--
-- Name: strapi_release_actions_release_lnk_id_seq; Type: SEQUENCE; Schema: public; Owner: strapi
--

CREATE SEQUENCE public.strapi_release_actions_release_lnk_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.strapi_release_actions_release_lnk_id_seq OWNER TO strapi;

--
-- Name: strapi_release_actions_release_lnk_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: strapi
--

ALTER SEQUENCE public.strapi_release_actions_release_lnk_id_seq OWNED BY public.strapi_release_actions_release_lnk.id;


--
-- Name: strapi_releases; Type: TABLE; Schema: public; Owner: strapi
--

CREATE TABLE public.strapi_releases (
    id integer NOT NULL,
    document_id character varying(255),
    name character varying(255),
    released_at timestamp(6) without time zone,
    scheduled_at timestamp(6) without time zone,
    timezone character varying(255),
    status character varying(255),
    created_at timestamp(6) without time zone,
    updated_at timestamp(6) without time zone,
    published_at timestamp(6) without time zone,
    created_by_id integer,
    updated_by_id integer,
    locale character varying(255)
);


ALTER TABLE public.strapi_releases OWNER TO strapi;

--
-- Name: strapi_releases_id_seq; Type: SEQUENCE; Schema: public; Owner: strapi
--

CREATE SEQUENCE public.strapi_releases_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.strapi_releases_id_seq OWNER TO strapi;

--
-- Name: strapi_releases_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: strapi
--

ALTER SEQUENCE public.strapi_releases_id_seq OWNED BY public.strapi_releases.id;


--
-- Name: strapi_sessions; Type: TABLE; Schema: public; Owner: strapi
--

CREATE TABLE public.strapi_sessions (
    id integer NOT NULL,
    document_id character varying(255),
    user_id character varying(255),
    session_id character varying(255),
    child_id character varying(255),
    device_id character varying(255),
    origin character varying(255),
    expires_at timestamp(6) without time zone,
    absolute_expires_at timestamp(6) without time zone,
    status character varying(255),
    type character varying(255),
    created_at timestamp(6) without time zone,
    updated_at timestamp(6) without time zone,
    published_at timestamp(6) without time zone,
    created_by_id integer,
    updated_by_id integer,
    locale character varying(255)
);


ALTER TABLE public.strapi_sessions OWNER TO strapi;

--
-- Name: strapi_sessions_id_seq; Type: SEQUENCE; Schema: public; Owner: strapi
--

CREATE SEQUENCE public.strapi_sessions_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.strapi_sessions_id_seq OWNER TO strapi;

--
-- Name: strapi_sessions_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: strapi
--

ALTER SEQUENCE public.strapi_sessions_id_seq OWNED BY public.strapi_sessions.id;


--
-- Name: strapi_transfer_token_permissions; Type: TABLE; Schema: public; Owner: strapi
--

CREATE TABLE public.strapi_transfer_token_permissions (
    id integer NOT NULL,
    document_id character varying(255),
    action character varying(255),
    created_at timestamp(6) without time zone,
    updated_at timestamp(6) without time zone,
    published_at timestamp(6) without time zone,
    created_by_id integer,
    updated_by_id integer,
    locale character varying(255)
);


ALTER TABLE public.strapi_transfer_token_permissions OWNER TO strapi;

--
-- Name: strapi_transfer_token_permissions_id_seq; Type: SEQUENCE; Schema: public; Owner: strapi
--

CREATE SEQUENCE public.strapi_transfer_token_permissions_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.strapi_transfer_token_permissions_id_seq OWNER TO strapi;

--
-- Name: strapi_transfer_token_permissions_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: strapi
--

ALTER SEQUENCE public.strapi_transfer_token_permissions_id_seq OWNED BY public.strapi_transfer_token_permissions.id;


--
-- Name: strapi_transfer_token_permissions_token_lnk; Type: TABLE; Schema: public; Owner: strapi
--

CREATE TABLE public.strapi_transfer_token_permissions_token_lnk (
    id integer NOT NULL,
    transfer_token_permission_id integer,
    transfer_token_id integer,
    transfer_token_permission_ord double precision
);


ALTER TABLE public.strapi_transfer_token_permissions_token_lnk OWNER TO strapi;

--
-- Name: strapi_transfer_token_permissions_token_lnk_id_seq; Type: SEQUENCE; Schema: public; Owner: strapi
--

CREATE SEQUENCE public.strapi_transfer_token_permissions_token_lnk_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.strapi_transfer_token_permissions_token_lnk_id_seq OWNER TO strapi;

--
-- Name: strapi_transfer_token_permissions_token_lnk_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: strapi
--

ALTER SEQUENCE public.strapi_transfer_token_permissions_token_lnk_id_seq OWNED BY public.strapi_transfer_token_permissions_token_lnk.id;


--
-- Name: strapi_transfer_tokens; Type: TABLE; Schema: public; Owner: strapi
--

CREATE TABLE public.strapi_transfer_tokens (
    id integer NOT NULL,
    document_id character varying(255),
    name character varying(255),
    description character varying(255),
    access_key character varying(255),
    last_used_at timestamp(6) without time zone,
    expires_at timestamp(6) without time zone,
    lifespan bigint,
    created_at timestamp(6) without time zone,
    updated_at timestamp(6) without time zone,
    published_at timestamp(6) without time zone,
    created_by_id integer,
    updated_by_id integer,
    locale character varying(255)
);


ALTER TABLE public.strapi_transfer_tokens OWNER TO strapi;

--
-- Name: strapi_transfer_tokens_id_seq; Type: SEQUENCE; Schema: public; Owner: strapi
--

CREATE SEQUENCE public.strapi_transfer_tokens_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.strapi_transfer_tokens_id_seq OWNER TO strapi;

--
-- Name: strapi_transfer_tokens_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: strapi
--

ALTER SEQUENCE public.strapi_transfer_tokens_id_seq OWNED BY public.strapi_transfer_tokens.id;


--
-- Name: strapi_webhooks; Type: TABLE; Schema: public; Owner: strapi
--

CREATE TABLE public.strapi_webhooks (
    id integer NOT NULL,
    name character varying(255),
    url text,
    headers jsonb,
    events jsonb,
    enabled boolean
);


ALTER TABLE public.strapi_webhooks OWNER TO strapi;

--
-- Name: strapi_webhooks_id_seq; Type: SEQUENCE; Schema: public; Owner: strapi
--

CREATE SEQUENCE public.strapi_webhooks_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.strapi_webhooks_id_seq OWNER TO strapi;

--
-- Name: strapi_webhooks_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: strapi
--

ALTER SEQUENCE public.strapi_webhooks_id_seq OWNED BY public.strapi_webhooks.id;


--
-- Name: strapi_workflows; Type: TABLE; Schema: public; Owner: strapi
--

CREATE TABLE public.strapi_workflows (
    id integer NOT NULL,
    document_id character varying(255),
    name character varying(255),
    content_types jsonb,
    created_at timestamp(6) without time zone,
    updated_at timestamp(6) without time zone,
    published_at timestamp(6) without time zone,
    created_by_id integer,
    updated_by_id integer,
    locale character varying(255)
);


ALTER TABLE public.strapi_workflows OWNER TO strapi;

--
-- Name: strapi_workflows_id_seq; Type: SEQUENCE; Schema: public; Owner: strapi
--

CREATE SEQUENCE public.strapi_workflows_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.strapi_workflows_id_seq OWNER TO strapi;

--
-- Name: strapi_workflows_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: strapi
--

ALTER SEQUENCE public.strapi_workflows_id_seq OWNED BY public.strapi_workflows.id;


--
-- Name: strapi_workflows_stage_required_to_publish_lnk; Type: TABLE; Schema: public; Owner: strapi
--

CREATE TABLE public.strapi_workflows_stage_required_to_publish_lnk (
    id integer NOT NULL,
    workflow_id integer,
    workflow_stage_id integer
);


ALTER TABLE public.strapi_workflows_stage_required_to_publish_lnk OWNER TO strapi;

--
-- Name: strapi_workflows_stage_required_to_publish_lnk_id_seq; Type: SEQUENCE; Schema: public; Owner: strapi
--

CREATE SEQUENCE public.strapi_workflows_stage_required_to_publish_lnk_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.strapi_workflows_stage_required_to_publish_lnk_id_seq OWNER TO strapi;

--
-- Name: strapi_workflows_stage_required_to_publish_lnk_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: strapi
--

ALTER SEQUENCE public.strapi_workflows_stage_required_to_publish_lnk_id_seq OWNED BY public.strapi_workflows_stage_required_to_publish_lnk.id;


--
-- Name: strapi_workflows_stages; Type: TABLE; Schema: public; Owner: strapi
--

CREATE TABLE public.strapi_workflows_stages (
    id integer NOT NULL,
    document_id character varying(255),
    name character varying(255),
    color character varying(255),
    created_at timestamp(6) without time zone,
    updated_at timestamp(6) without time zone,
    published_at timestamp(6) without time zone,
    created_by_id integer,
    updated_by_id integer,
    locale character varying(255)
);


ALTER TABLE public.strapi_workflows_stages OWNER TO strapi;

--
-- Name: strapi_workflows_stages_id_seq; Type: SEQUENCE; Schema: public; Owner: strapi
--

CREATE SEQUENCE public.strapi_workflows_stages_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.strapi_workflows_stages_id_seq OWNER TO strapi;

--
-- Name: strapi_workflows_stages_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: strapi
--

ALTER SEQUENCE public.strapi_workflows_stages_id_seq OWNED BY public.strapi_workflows_stages.id;


--
-- Name: strapi_workflows_stages_permissions_lnk; Type: TABLE; Schema: public; Owner: strapi
--

CREATE TABLE public.strapi_workflows_stages_permissions_lnk (
    id integer NOT NULL,
    workflow_stage_id integer,
    permission_id integer,
    permission_ord double precision
);


ALTER TABLE public.strapi_workflows_stages_permissions_lnk OWNER TO strapi;

--
-- Name: strapi_workflows_stages_permissions_lnk_id_seq; Type: SEQUENCE; Schema: public; Owner: strapi
--

CREATE SEQUENCE public.strapi_workflows_stages_permissions_lnk_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.strapi_workflows_stages_permissions_lnk_id_seq OWNER TO strapi;

--
-- Name: strapi_workflows_stages_permissions_lnk_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: strapi
--

ALTER SEQUENCE public.strapi_workflows_stages_permissions_lnk_id_seq OWNED BY public.strapi_workflows_stages_permissions_lnk.id;


--
-- Name: strapi_workflows_stages_workflow_lnk; Type: TABLE; Schema: public; Owner: strapi
--

CREATE TABLE public.strapi_workflows_stages_workflow_lnk (
    id integer NOT NULL,
    workflow_stage_id integer,
    workflow_id integer,
    workflow_stage_ord double precision
);


ALTER TABLE public.strapi_workflows_stages_workflow_lnk OWNER TO strapi;

--
-- Name: strapi_workflows_stages_workflow_lnk_id_seq; Type: SEQUENCE; Schema: public; Owner: strapi
--

CREATE SEQUENCE public.strapi_workflows_stages_workflow_lnk_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.strapi_workflows_stages_workflow_lnk_id_seq OWNER TO strapi;

--
-- Name: strapi_workflows_stages_workflow_lnk_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: strapi
--

ALTER SEQUENCE public.strapi_workflows_stages_workflow_lnk_id_seq OWNED BY public.strapi_workflows_stages_workflow_lnk.id;


--
-- Name: sujets; Type: TABLE; Schema: public; Owner: strapi
--

CREATE TABLE public.sujets (
    id integer NOT NULL,
    document_id character varying(255),
    name character varying(255),
    canton character varying(255),
    created_at timestamp(6) without time zone,
    updated_at timestamp(6) without time zone,
    published_at timestamp(6) without time zone,
    created_by_id integer,
    updated_by_id integer,
    locale character varying(255),
    affiliation character varying(255)
);


ALTER TABLE public.sujets OWNER TO strapi;

--
-- Name: sujets_id_seq; Type: SEQUENCE; Schema: public; Owner: strapi
--

CREATE SEQUENCE public.sujets_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.sujets_id_seq OWNER TO strapi;

--
-- Name: sujets_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: strapi
--

ALTER SEQUENCE public.sujets_id_seq OWNED BY public.sujets.id;


--
-- Name: the_wall_of_shames; Type: TABLE; Schema: public; Owner: strapi
--

CREATE TABLE public.the_wall_of_shames (
    id integer NOT NULL,
    document_id character varying(255),
    title character varying(255),
    slug character varying(255),
    incident_date date,
    consequence text,
    category character varying(255),
    subject_role character varying(255),
    incident_location character varying(255),
    description text,
    created_at timestamp(6) without time zone,
    updated_at timestamp(6) without time zone,
    published_at timestamp(6) without time zone,
    created_by_id integer,
    updated_by_id integer,
    locale character varying(255),
    visible boolean
);


ALTER TABLE public.the_wall_of_shames OWNER TO strapi;

--
-- Name: the_wall_of_shames_cmps; Type: TABLE; Schema: public; Owner: strapi
--

CREATE TABLE public.the_wall_of_shames_cmps (
    id integer NOT NULL,
    entity_id integer,
    cmp_id integer,
    component_type character varying(255),
    field character varying(255),
    "order" double precision
);


ALTER TABLE public.the_wall_of_shames_cmps OWNER TO strapi;

--
-- Name: the_wall_of_shames_cmps_id_seq; Type: SEQUENCE; Schema: public; Owner: strapi
--

CREATE SEQUENCE public.the_wall_of_shames_cmps_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.the_wall_of_shames_cmps_id_seq OWNER TO strapi;

--
-- Name: the_wall_of_shames_cmps_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: strapi
--

ALTER SEQUENCE public.the_wall_of_shames_cmps_id_seq OWNED BY public.the_wall_of_shames_cmps.id;


--
-- Name: the_wall_of_shames_id_seq; Type: SEQUENCE; Schema: public; Owner: strapi
--

CREATE SEQUENCE public.the_wall_of_shames_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.the_wall_of_shames_id_seq OWNER TO strapi;

--
-- Name: the_wall_of_shames_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: strapi
--

ALTER SEQUENCE public.the_wall_of_shames_id_seq OWNED BY public.the_wall_of_shames.id;


--
-- Name: the_wall_of_shames_sujet_lnk; Type: TABLE; Schema: public; Owner: strapi
--

CREATE TABLE public.the_wall_of_shames_sujet_lnk (
    id integer NOT NULL,
    the_wall_of_shame_id integer,
    sujet_id integer,
    the_wall_of_shame_ord double precision
);


ALTER TABLE public.the_wall_of_shames_sujet_lnk OWNER TO strapi;

--
-- Name: the_wall_of_shames_sujet_lnk_id_seq; Type: SEQUENCE; Schema: public; Owner: strapi
--

CREATE SEQUENCE public.the_wall_of_shames_sujet_lnk_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.the_wall_of_shames_sujet_lnk_id_seq OWNER TO strapi;

--
-- Name: the_wall_of_shames_sujet_lnk_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: strapi
--

ALTER SEQUENCE public.the_wall_of_shames_sujet_lnk_id_seq OWNED BY public.the_wall_of_shames_sujet_lnk.id;


--
-- Name: up_permissions; Type: TABLE; Schema: public; Owner: strapi
--

CREATE TABLE public.up_permissions (
    id integer NOT NULL,
    document_id character varying(255),
    action character varying(255),
    created_at timestamp(6) without time zone,
    updated_at timestamp(6) without time zone,
    published_at timestamp(6) without time zone,
    created_by_id integer,
    updated_by_id integer,
    locale character varying(255)
);


ALTER TABLE public.up_permissions OWNER TO strapi;

--
-- Name: up_permissions_id_seq; Type: SEQUENCE; Schema: public; Owner: strapi
--

CREATE SEQUENCE public.up_permissions_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.up_permissions_id_seq OWNER TO strapi;

--
-- Name: up_permissions_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: strapi
--

ALTER SEQUENCE public.up_permissions_id_seq OWNED BY public.up_permissions.id;


--
-- Name: up_permissions_role_lnk; Type: TABLE; Schema: public; Owner: strapi
--

CREATE TABLE public.up_permissions_role_lnk (
    id integer NOT NULL,
    permission_id integer,
    role_id integer,
    permission_ord double precision
);


ALTER TABLE public.up_permissions_role_lnk OWNER TO strapi;

--
-- Name: up_permissions_role_lnk_id_seq; Type: SEQUENCE; Schema: public; Owner: strapi
--

CREATE SEQUENCE public.up_permissions_role_lnk_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.up_permissions_role_lnk_id_seq OWNER TO strapi;

--
-- Name: up_permissions_role_lnk_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: strapi
--

ALTER SEQUENCE public.up_permissions_role_lnk_id_seq OWNED BY public.up_permissions_role_lnk.id;


--
-- Name: up_roles; Type: TABLE; Schema: public; Owner: strapi
--

CREATE TABLE public.up_roles (
    id integer NOT NULL,
    document_id character varying(255),
    name character varying(255),
    description character varying(255),
    type character varying(255),
    created_at timestamp(6) without time zone,
    updated_at timestamp(6) without time zone,
    published_at timestamp(6) without time zone,
    created_by_id integer,
    updated_by_id integer,
    locale character varying(255)
);


ALTER TABLE public.up_roles OWNER TO strapi;

--
-- Name: up_roles_id_seq; Type: SEQUENCE; Schema: public; Owner: strapi
--

CREATE SEQUENCE public.up_roles_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.up_roles_id_seq OWNER TO strapi;

--
-- Name: up_roles_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: strapi
--

ALTER SEQUENCE public.up_roles_id_seq OWNED BY public.up_roles.id;


--
-- Name: up_users; Type: TABLE; Schema: public; Owner: strapi
--

CREATE TABLE public.up_users (
    id integer NOT NULL,
    document_id character varying(255),
    username character varying(255),
    email character varying(255),
    provider character varying(255),
    password character varying(255),
    reset_password_token character varying(255),
    confirmation_token character varying(255),
    confirmed boolean,
    blocked boolean,
    created_at timestamp(6) without time zone,
    updated_at timestamp(6) without time zone,
    published_at timestamp(6) without time zone,
    created_by_id integer,
    updated_by_id integer,
    locale character varying(255)
);


ALTER TABLE public.up_users OWNER TO strapi;

--
-- Name: up_users_id_seq; Type: SEQUENCE; Schema: public; Owner: strapi
--

CREATE SEQUENCE public.up_users_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.up_users_id_seq OWNER TO strapi;

--
-- Name: up_users_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: strapi
--

ALTER SEQUENCE public.up_users_id_seq OWNED BY public.up_users.id;


--
-- Name: up_users_role_lnk; Type: TABLE; Schema: public; Owner: strapi
--

CREATE TABLE public.up_users_role_lnk (
    id integer NOT NULL,
    user_id integer,
    role_id integer,
    user_ord double precision
);


ALTER TABLE public.up_users_role_lnk OWNER TO strapi;

--
-- Name: up_users_role_lnk_id_seq; Type: SEQUENCE; Schema: public; Owner: strapi
--

CREATE SEQUENCE public.up_users_role_lnk_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.up_users_role_lnk_id_seq OWNER TO strapi;

--
-- Name: up_users_role_lnk_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: strapi
--

ALTER SEQUENCE public.up_users_role_lnk_id_seq OWNED BY public.up_users_role_lnk.id;


--
-- Name: upload_folders; Type: TABLE; Schema: public; Owner: strapi
--

CREATE TABLE public.upload_folders (
    id integer NOT NULL,
    document_id character varying(255),
    name character varying(255),
    path_id integer,
    path character varying(255),
    created_at timestamp(6) without time zone,
    updated_at timestamp(6) without time zone,
    published_at timestamp(6) without time zone,
    created_by_id integer,
    updated_by_id integer,
    locale character varying(255)
);


ALTER TABLE public.upload_folders OWNER TO strapi;

--
-- Name: upload_folders_id_seq; Type: SEQUENCE; Schema: public; Owner: strapi
--

CREATE SEQUENCE public.upload_folders_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.upload_folders_id_seq OWNER TO strapi;

--
-- Name: upload_folders_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: strapi
--

ALTER SEQUENCE public.upload_folders_id_seq OWNED BY public.upload_folders.id;


--
-- Name: upload_folders_parent_lnk; Type: TABLE; Schema: public; Owner: strapi
--

CREATE TABLE public.upload_folders_parent_lnk (
    id integer NOT NULL,
    folder_id integer,
    inv_folder_id integer,
    folder_ord double precision
);


ALTER TABLE public.upload_folders_parent_lnk OWNER TO strapi;

--
-- Name: upload_folders_parent_lnk_id_seq; Type: SEQUENCE; Schema: public; Owner: strapi
--

CREATE SEQUENCE public.upload_folders_parent_lnk_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.upload_folders_parent_lnk_id_seq OWNER TO strapi;

--
-- Name: upload_folders_parent_lnk_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: strapi
--

ALTER SEQUENCE public.upload_folders_parent_lnk_id_seq OWNED BY public.upload_folders_parent_lnk.id;


--
-- Name: admin_permissions id; Type: DEFAULT; Schema: public; Owner: strapi
--

ALTER TABLE ONLY public.admin_permissions ALTER COLUMN id SET DEFAULT nextval('public.admin_permissions_id_seq'::regclass);


--
-- Name: admin_permissions_role_lnk id; Type: DEFAULT; Schema: public; Owner: strapi
--

ALTER TABLE ONLY public.admin_permissions_role_lnk ALTER COLUMN id SET DEFAULT nextval('public.admin_permissions_role_lnk_id_seq'::regclass);


--
-- Name: admin_roles id; Type: DEFAULT; Schema: public; Owner: strapi
--

ALTER TABLE ONLY public.admin_roles ALTER COLUMN id SET DEFAULT nextval('public.admin_roles_id_seq'::regclass);


--
-- Name: admin_users id; Type: DEFAULT; Schema: public; Owner: strapi
--

ALTER TABLE ONLY public.admin_users ALTER COLUMN id SET DEFAULT nextval('public.admin_users_id_seq'::regclass);


--
-- Name: admin_users_roles_lnk id; Type: DEFAULT; Schema: public; Owner: strapi
--

ALTER TABLE ONLY public.admin_users_roles_lnk ALTER COLUMN id SET DEFAULT nextval('public.admin_users_roles_lnk_id_seq'::regclass);


--
-- Name: components_link_links id; Type: DEFAULT; Schema: public; Owner: strapi
--

ALTER TABLE ONLY public.components_link_links ALTER COLUMN id SET DEFAULT nextval('public.components_link_links_id_seq'::regclass);


--
-- Name: files id; Type: DEFAULT; Schema: public; Owner: strapi
--

ALTER TABLE ONLY public.files ALTER COLUMN id SET DEFAULT nextval('public.files_id_seq'::regclass);


--
-- Name: files_folder_lnk id; Type: DEFAULT; Schema: public; Owner: strapi
--

ALTER TABLE ONLY public.files_folder_lnk ALTER COLUMN id SET DEFAULT nextval('public.files_folder_lnk_id_seq'::regclass);


--
-- Name: files_related_mph id; Type: DEFAULT; Schema: public; Owner: strapi
--

ALTER TABLE ONLY public.files_related_mph ALTER COLUMN id SET DEFAULT nextval('public.files_related_mph_id_seq'::regclass);


--
-- Name: i18n_locale id; Type: DEFAULT; Schema: public; Owner: strapi
--

ALTER TABLE ONLY public.i18n_locale ALTER COLUMN id SET DEFAULT nextval('public.i18n_locale_id_seq'::regclass);


--
-- Name: strapi_ai_localization_jobs id; Type: DEFAULT; Schema: public; Owner: strapi
--

ALTER TABLE ONLY public.strapi_ai_localization_jobs ALTER COLUMN id SET DEFAULT nextval('public.strapi_ai_localization_jobs_id_seq'::regclass);


--
-- Name: strapi_api_token_permissions id; Type: DEFAULT; Schema: public; Owner: strapi
--

ALTER TABLE ONLY public.strapi_api_token_permissions ALTER COLUMN id SET DEFAULT nextval('public.strapi_api_token_permissions_id_seq'::regclass);


--
-- Name: strapi_api_token_permissions_token_lnk id; Type: DEFAULT; Schema: public; Owner: strapi
--

ALTER TABLE ONLY public.strapi_api_token_permissions_token_lnk ALTER COLUMN id SET DEFAULT nextval('public.strapi_api_token_permissions_token_lnk_id_seq'::regclass);


--
-- Name: strapi_api_tokens id; Type: DEFAULT; Schema: public; Owner: strapi
--

ALTER TABLE ONLY public.strapi_api_tokens ALTER COLUMN id SET DEFAULT nextval('public.strapi_api_tokens_id_seq'::regclass);


--
-- Name: strapi_core_store_settings id; Type: DEFAULT; Schema: public; Owner: strapi
--

ALTER TABLE ONLY public.strapi_core_store_settings ALTER COLUMN id SET DEFAULT nextval('public.strapi_core_store_settings_id_seq'::regclass);


--
-- Name: strapi_database_schema id; Type: DEFAULT; Schema: public; Owner: strapi
--

ALTER TABLE ONLY public.strapi_database_schema ALTER COLUMN id SET DEFAULT nextval('public.strapi_database_schema_id_seq'::regclass);


--
-- Name: strapi_history_versions id; Type: DEFAULT; Schema: public; Owner: strapi
--

ALTER TABLE ONLY public.strapi_history_versions ALTER COLUMN id SET DEFAULT nextval('public.strapi_history_versions_id_seq'::regclass);


--
-- Name: strapi_migrations id; Type: DEFAULT; Schema: public; Owner: strapi
--

ALTER TABLE ONLY public.strapi_migrations ALTER COLUMN id SET DEFAULT nextval('public.strapi_migrations_id_seq'::regclass);


--
-- Name: strapi_migrations_internal id; Type: DEFAULT; Schema: public; Owner: strapi
--

ALTER TABLE ONLY public.strapi_migrations_internal ALTER COLUMN id SET DEFAULT nextval('public.strapi_migrations_internal_id_seq'::regclass);


--
-- Name: strapi_release_actions id; Type: DEFAULT; Schema: public; Owner: strapi
--

ALTER TABLE ONLY public.strapi_release_actions ALTER COLUMN id SET DEFAULT nextval('public.strapi_release_actions_id_seq'::regclass);


--
-- Name: strapi_release_actions_release_lnk id; Type: DEFAULT; Schema: public; Owner: strapi
--

ALTER TABLE ONLY public.strapi_release_actions_release_lnk ALTER COLUMN id SET DEFAULT nextval('public.strapi_release_actions_release_lnk_id_seq'::regclass);


--
-- Name: strapi_releases id; Type: DEFAULT; Schema: public; Owner: strapi
--

ALTER TABLE ONLY public.strapi_releases ALTER COLUMN id SET DEFAULT nextval('public.strapi_releases_id_seq'::regclass);


--
-- Name: strapi_sessions id; Type: DEFAULT; Schema: public; Owner: strapi
--

ALTER TABLE ONLY public.strapi_sessions ALTER COLUMN id SET DEFAULT nextval('public.strapi_sessions_id_seq'::regclass);


--
-- Name: strapi_transfer_token_permissions id; Type: DEFAULT; Schema: public; Owner: strapi
--

ALTER TABLE ONLY public.strapi_transfer_token_permissions ALTER COLUMN id SET DEFAULT nextval('public.strapi_transfer_token_permissions_id_seq'::regclass);


--
-- Name: strapi_transfer_token_permissions_token_lnk id; Type: DEFAULT; Schema: public; Owner: strapi
--

ALTER TABLE ONLY public.strapi_transfer_token_permissions_token_lnk ALTER COLUMN id SET DEFAULT nextval('public.strapi_transfer_token_permissions_token_lnk_id_seq'::regclass);


--
-- Name: strapi_transfer_tokens id; Type: DEFAULT; Schema: public; Owner: strapi
--

ALTER TABLE ONLY public.strapi_transfer_tokens ALTER COLUMN id SET DEFAULT nextval('public.strapi_transfer_tokens_id_seq'::regclass);


--
-- Name: strapi_webhooks id; Type: DEFAULT; Schema: public; Owner: strapi
--

ALTER TABLE ONLY public.strapi_webhooks ALTER COLUMN id SET DEFAULT nextval('public.strapi_webhooks_id_seq'::regclass);


--
-- Name: strapi_workflows id; Type: DEFAULT; Schema: public; Owner: strapi
--

ALTER TABLE ONLY public.strapi_workflows ALTER COLUMN id SET DEFAULT nextval('public.strapi_workflows_id_seq'::regclass);


--
-- Name: strapi_workflows_stage_required_to_publish_lnk id; Type: DEFAULT; Schema: public; Owner: strapi
--

ALTER TABLE ONLY public.strapi_workflows_stage_required_to_publish_lnk ALTER COLUMN id SET DEFAULT nextval('public.strapi_workflows_stage_required_to_publish_lnk_id_seq'::regclass);


--
-- Name: strapi_workflows_stages id; Type: DEFAULT; Schema: public; Owner: strapi
--

ALTER TABLE ONLY public.strapi_workflows_stages ALTER COLUMN id SET DEFAULT nextval('public.strapi_workflows_stages_id_seq'::regclass);


--
-- Name: strapi_workflows_stages_permissions_lnk id; Type: DEFAULT; Schema: public; Owner: strapi
--

ALTER TABLE ONLY public.strapi_workflows_stages_permissions_lnk ALTER COLUMN id SET DEFAULT nextval('public.strapi_workflows_stages_permissions_lnk_id_seq'::regclass);


--
-- Name: strapi_workflows_stages_workflow_lnk id; Type: DEFAULT; Schema: public; Owner: strapi
--

ALTER TABLE ONLY public.strapi_workflows_stages_workflow_lnk ALTER COLUMN id SET DEFAULT nextval('public.strapi_workflows_stages_workflow_lnk_id_seq'::regclass);


--
-- Name: sujets id; Type: DEFAULT; Schema: public; Owner: strapi
--

ALTER TABLE ONLY public.sujets ALTER COLUMN id SET DEFAULT nextval('public.sujets_id_seq'::regclass);


--
-- Name: the_wall_of_shames id; Type: DEFAULT; Schema: public; Owner: strapi
--

ALTER TABLE ONLY public.the_wall_of_shames ALTER COLUMN id SET DEFAULT nextval('public.the_wall_of_shames_id_seq'::regclass);


--
-- Name: the_wall_of_shames_cmps id; Type: DEFAULT; Schema: public; Owner: strapi
--

ALTER TABLE ONLY public.the_wall_of_shames_cmps ALTER COLUMN id SET DEFAULT nextval('public.the_wall_of_shames_cmps_id_seq'::regclass);


--
-- Name: the_wall_of_shames_sujet_lnk id; Type: DEFAULT; Schema: public; Owner: strapi
--

ALTER TABLE ONLY public.the_wall_of_shames_sujet_lnk ALTER COLUMN id SET DEFAULT nextval('public.the_wall_of_shames_sujet_lnk_id_seq'::regclass);


--
-- Name: up_permissions id; Type: DEFAULT; Schema: public; Owner: strapi
--

ALTER TABLE ONLY public.up_permissions ALTER COLUMN id SET DEFAULT nextval('public.up_permissions_id_seq'::regclass);


--
-- Name: up_permissions_role_lnk id; Type: DEFAULT; Schema: public; Owner: strapi
--

ALTER TABLE ONLY public.up_permissions_role_lnk ALTER COLUMN id SET DEFAULT nextval('public.up_permissions_role_lnk_id_seq'::regclass);


--
-- Name: up_roles id; Type: DEFAULT; Schema: public; Owner: strapi
--

ALTER TABLE ONLY public.up_roles ALTER COLUMN id SET DEFAULT nextval('public.up_roles_id_seq'::regclass);


--
-- Name: up_users id; Type: DEFAULT; Schema: public; Owner: strapi
--

ALTER TABLE ONLY public.up_users ALTER COLUMN id SET DEFAULT nextval('public.up_users_id_seq'::regclass);


--
-- Name: up_users_role_lnk id; Type: DEFAULT; Schema: public; Owner: strapi
--

ALTER TABLE ONLY public.up_users_role_lnk ALTER COLUMN id SET DEFAULT nextval('public.up_users_role_lnk_id_seq'::regclass);


--
-- Name: upload_folders id; Type: DEFAULT; Schema: public; Owner: strapi
--

ALTER TABLE ONLY public.upload_folders ALTER COLUMN id SET DEFAULT nextval('public.upload_folders_id_seq'::regclass);


--
-- Name: upload_folders_parent_lnk id; Type: DEFAULT; Schema: public; Owner: strapi
--

ALTER TABLE ONLY public.upload_folders_parent_lnk ALTER COLUMN id SET DEFAULT nextval('public.upload_folders_parent_lnk_id_seq'::regclass);


--
-- Data for Name: admin_permissions; Type: TABLE DATA; Schema: public; Owner: strapi
--

COPY public.admin_permissions (id, document_id, action, action_parameters, subject, properties, conditions, created_at, updated_at, published_at, created_by_id, updated_by_id, locale) FROM stdin;
6	shuw6tlhm8syo54ezs0bqnio	plugin::upload.read	{}	\N	{}	[]	2025-11-11 22:34:28.473	2025-11-11 22:34:28.473	2025-11-11 22:34:28.473	\N	\N	\N
7	zj2cmzjfxhgygh2ptlxbhmoo	plugin::upload.configure-view	{}	\N	{}	[]	2025-11-11 22:34:28.478	2025-11-11 22:34:28.478	2025-11-11 22:34:28.478	\N	\N	\N
8	w8za41qdkzv3uzzqr6l1gzlh	plugin::upload.assets.create	{}	\N	{}	[]	2025-11-11 22:34:28.483	2025-11-11 22:34:28.483	2025-11-11 22:34:28.483	\N	\N	\N
9	w235x9uuuso5ig3n60ywb8ug	plugin::upload.assets.update	{}	\N	{}	[]	2025-11-11 22:34:28.488	2025-11-11 22:34:28.488	2025-11-11 22:34:28.488	\N	\N	\N
10	qy8mkm76b30qlnesuxqhw7o7	plugin::upload.assets.download	{}	\N	{}	[]	2025-11-11 22:34:28.492	2025-11-11 22:34:28.492	2025-11-11 22:34:28.492	\N	\N	\N
11	leb2mv7z5ubw8utuaa5xkzf0	plugin::upload.assets.copy-link	{}	\N	{}	[]	2025-11-11 22:34:28.496	2025-11-11 22:34:28.496	2025-11-11 22:34:28.497	\N	\N	\N
17	g10dusd6rnekayvvtrll4l52	plugin::upload.configure-view	{}	\N	{}	[]	2025-11-11 22:34:28.541	2025-11-11 22:34:28.541	2025-11-11 22:34:28.541	\N	\N	\N
18	xr5n0rpq2s6kh03zc7w2jreu	plugin::upload.assets.create	{}	\N	{}	[]	2025-11-11 22:34:28.548	2025-11-11 22:34:28.548	2025-11-11 22:34:28.548	\N	\N	\N
19	n224o2ca8pmm3l6ed1g48et3	plugin::upload.assets.update	{}	\N	{}	["admin::is-creator"]	2025-11-11 22:34:28.555	2025-11-11 22:34:28.555	2025-11-11 22:34:28.555	\N	\N	\N
20	vkq2oy4jukxpxi68zx5ilu6w	plugin::upload.assets.download	{}	\N	{}	[]	2025-11-11 22:34:28.562	2025-11-11 22:34:28.562	2025-11-11 22:34:28.562	\N	\N	\N
21	ekflsbcl7b17o77r6bcqpchp	plugin::upload.assets.copy-link	{}	\N	{}	[]	2025-11-11 22:34:28.571	2025-11-11 22:34:28.571	2025-11-11 22:34:28.571	\N	\N	\N
23	snzpadwd2ezfyt8y7par503d	plugin::content-manager.explorer.create	{}	plugin::users-permissions.user	{"fields": ["username", "email", "provider", "password", "resetPasswordToken", "confirmationToken", "confirmed", "blocked", "role"]}	[]	2025-11-11 22:34:28.638	2025-11-11 22:34:28.638	2025-11-11 22:34:28.638	\N	\N	\N
25	efdcti02tqgwk0sjtybo7lmq	plugin::content-manager.explorer.read	{}	plugin::users-permissions.user	{"fields": ["username", "email", "provider", "password", "resetPasswordToken", "confirmationToken", "confirmed", "blocked", "role"]}	[]	2025-11-11 22:34:28.65	2025-11-11 22:34:28.65	2025-11-11 22:34:28.65	\N	\N	\N
27	zo3cm2maoi2tdv7qptiudmmr	plugin::content-manager.explorer.update	{}	plugin::users-permissions.user	{"fields": ["username", "email", "provider", "password", "resetPasswordToken", "confirmationToken", "confirmed", "blocked", "role"]}	[]	2025-11-11 22:34:28.66	2025-11-11 22:34:28.66	2025-11-11 22:34:28.66	\N	\N	\N
29	ar1px8cuuo4e4mna77dlgnnz	plugin::content-manager.explorer.delete	{}	plugin::users-permissions.user	{}	[]	2025-11-11 22:34:28.675	2025-11-11 22:34:28.675	2025-11-11 22:34:28.675	\N	\N	\N
31	ieauqigjgiu2ye9z2gbo85lr	plugin::content-manager.explorer.publish	{}	plugin::users-permissions.user	{}	[]	2025-11-11 22:34:28.685	2025-11-11 22:34:28.685	2025-11-11 22:34:28.685	\N	\N	\N
32	ny5aockdno8odtzsds994do9	plugin::content-manager.single-types.configure-view	{}	\N	{}	[]	2025-11-11 22:34:28.689	2025-11-11 22:34:28.689	2025-11-11 22:34:28.69	\N	\N	\N
33	gub2wnni3rip87jw9g0nmoun	plugin::content-manager.collection-types.configure-view	{}	\N	{}	[]	2025-11-11 22:34:28.694	2025-11-11 22:34:28.694	2025-11-11 22:34:28.695	\N	\N	\N
34	mmqe2quxao9cccz5v1zusszw	plugin::content-manager.components.configure-layout	{}	\N	{}	[]	2025-11-11 22:34:28.698	2025-11-11 22:34:28.698	2025-11-11 22:34:28.698	\N	\N	\N
35	uzkkpunolqz29ru0onea4slo	plugin::content-type-builder.read	{}	\N	{}	[]	2025-11-11 22:34:28.703	2025-11-11 22:34:28.703	2025-11-11 22:34:28.703	\N	\N	\N
36	c7k9g8wo8yaz342knlyamoyl	plugin::email.settings.read	{}	\N	{}	[]	2025-11-11 22:34:28.708	2025-11-11 22:34:28.708	2025-11-11 22:34:28.709	\N	\N	\N
37	on3284zbib63uqi54z0wxnq5	plugin::upload.read	{}	\N	{}	[]	2025-11-11 22:34:28.714	2025-11-11 22:34:28.714	2025-11-11 22:34:28.715	\N	\N	\N
38	y0zr96szpeqygo0ja7h5te99	plugin::upload.assets.create	{}	\N	{}	[]	2025-11-11 22:34:28.719	2025-11-11 22:34:28.719	2025-11-11 22:34:28.719	\N	\N	\N
39	h90tm8htsf6nj0yettgf87de	plugin::upload.assets.update	{}	\N	{}	[]	2025-11-11 22:34:28.723	2025-11-11 22:34:28.723	2025-11-11 22:34:28.723	\N	\N	\N
40	sawvk6ch548v6c7fn5mw331u	plugin::upload.assets.download	{}	\N	{}	[]	2025-11-11 22:34:28.728	2025-11-11 22:34:28.728	2025-11-11 22:34:28.728	\N	\N	\N
41	yhu19w6k2ujvzaje9u5cmcao	plugin::upload.assets.copy-link	{}	\N	{}	[]	2025-11-11 22:34:28.733	2025-11-11 22:34:28.733	2025-11-11 22:34:28.733	\N	\N	\N
42	r6akxvx1k3ikcet4a3eif64i	plugin::upload.configure-view	{}	\N	{}	[]	2025-11-11 22:34:28.738	2025-11-11 22:34:28.738	2025-11-11 22:34:28.738	\N	\N	\N
43	nm50t7b1nmgk8trnac1n22hk	plugin::upload.settings.read	{}	\N	{}	[]	2025-11-11 22:34:28.742	2025-11-11 22:34:28.742	2025-11-11 22:34:28.742	\N	\N	\N
44	gnbcz92mo0izmsl9znzkjjki	plugin::i18n.locale.create	{}	\N	{}	[]	2025-11-11 22:34:28.747	2025-11-11 22:34:28.747	2025-11-11 22:34:28.747	\N	\N	\N
45	hkwvi3cfoq98xduyf6wamapb	plugin::i18n.locale.read	{}	\N	{}	[]	2025-11-11 22:34:28.752	2025-11-11 22:34:28.752	2025-11-11 22:34:28.752	\N	\N	\N
46	ezybexeingesdgr0ph3gdax2	plugin::i18n.locale.update	{}	\N	{}	[]	2025-11-11 22:34:28.757	2025-11-11 22:34:28.757	2025-11-11 22:34:28.757	\N	\N	\N
47	oahcu40w4m7kso5j9zerc1hv	plugin::i18n.locale.delete	{}	\N	{}	[]	2025-11-11 22:34:28.762	2025-11-11 22:34:28.762	2025-11-11 22:34:28.762	\N	\N	\N
48	hnno49vppwrgy86vfjltdc93	plugin::users-permissions.roles.create	{}	\N	{}	[]	2025-11-11 22:34:28.767	2025-11-11 22:34:28.767	2025-11-11 22:34:28.767	\N	\N	\N
49	qu0hfhcqh1f1e1xw9lqtw70o	plugin::users-permissions.roles.read	{}	\N	{}	[]	2025-11-11 22:34:28.772	2025-11-11 22:34:28.772	2025-11-11 22:34:28.772	\N	\N	\N
50	wudl5unbin3tjtyryisry8j7	plugin::users-permissions.roles.update	{}	\N	{}	[]	2025-11-11 22:34:28.776	2025-11-11 22:34:28.776	2025-11-11 22:34:28.776	\N	\N	\N
51	hodh001hqa9656m49bwymqyu	plugin::users-permissions.roles.delete	{}	\N	{}	[]	2025-11-11 22:34:28.784	2025-11-11 22:34:28.784	2025-11-11 22:34:28.784	\N	\N	\N
52	gn5hoagr5p3yq91zsq7dlc5w	plugin::users-permissions.providers.read	{}	\N	{}	[]	2025-11-11 22:34:28.789	2025-11-11 22:34:28.789	2025-11-11 22:34:28.789	\N	\N	\N
53	k90u98hr9b52bkxqf2lq480j	plugin::users-permissions.providers.update	{}	\N	{}	[]	2025-11-11 22:34:28.794	2025-11-11 22:34:28.794	2025-11-11 22:34:28.794	\N	\N	\N
54	ryq69xx6f4eeohzbeqhkuk8g	plugin::users-permissions.email-templates.read	{}	\N	{}	[]	2025-11-11 22:34:28.799	2025-11-11 22:34:28.799	2025-11-11 22:34:28.799	\N	\N	\N
55	mrpodetvtf2ak2kg1cu83o8o	plugin::users-permissions.email-templates.update	{}	\N	{}	[]	2025-11-11 22:34:28.804	2025-11-11 22:34:28.804	2025-11-11 22:34:28.805	\N	\N	\N
56	ar5mhij2bvsk7yw6i9o2dstz	plugin::users-permissions.advanced-settings.read	{}	\N	{}	[]	2025-11-11 22:34:28.81	2025-11-11 22:34:28.81	2025-11-11 22:34:28.811	\N	\N	\N
57	oi08zvhs0lp6ayvpcu399z8n	plugin::users-permissions.advanced-settings.update	{}	\N	{}	[]	2025-11-11 22:34:28.816	2025-11-11 22:34:28.816	2025-11-11 22:34:28.816	\N	\N	\N
58	xwglojgqwgrh0oy6ysso6oxr	admin::marketplace.read	{}	\N	{}	[]	2025-11-11 22:34:28.822	2025-11-11 22:34:28.822	2025-11-11 22:34:28.822	\N	\N	\N
59	gqeboviwpguq6c8hyrg7otji	admin::webhooks.create	{}	\N	{}	[]	2025-11-11 22:34:28.826	2025-11-11 22:34:28.826	2025-11-11 22:34:28.826	\N	\N	\N
60	b8hipyjbp7kw52agjk3qspo2	admin::webhooks.read	{}	\N	{}	[]	2025-11-11 22:34:28.832	2025-11-11 22:34:28.832	2025-11-11 22:34:28.832	\N	\N	\N
61	mjp9prpubgfbdf008dkk0ovl	admin::webhooks.update	{}	\N	{}	[]	2025-11-11 22:34:28.838	2025-11-11 22:34:28.838	2025-11-11 22:34:28.838	\N	\N	\N
62	sbqh0l60obiqsp4264x5x49o	admin::webhooks.delete	{}	\N	{}	[]	2025-11-11 22:34:28.844	2025-11-11 22:34:28.844	2025-11-11 22:34:28.844	\N	\N	\N
63	jdw0jtc1ge7s75xd6ivq9iy4	admin::users.create	{}	\N	{}	[]	2025-11-11 22:34:28.85	2025-11-11 22:34:28.85	2025-11-11 22:34:28.85	\N	\N	\N
64	y825mq9d5vyokx09wo7oozgd	admin::users.read	{}	\N	{}	[]	2025-11-11 22:34:28.855	2025-11-11 22:34:28.855	2025-11-11 22:34:28.855	\N	\N	\N
65	wkoxfn2jy562w9lmvcsqewzo	admin::users.update	{}	\N	{}	[]	2025-11-11 22:34:28.862	2025-11-11 22:34:28.862	2025-11-11 22:34:28.862	\N	\N	\N
66	b00vz4nh7muknk8qpr1n57ql	admin::users.delete	{}	\N	{}	[]	2025-11-11 22:34:28.868	2025-11-11 22:34:28.868	2025-11-11 22:34:28.868	\N	\N	\N
67	rpw6o8wb59guxnv0mptyrcc7	admin::roles.create	{}	\N	{}	[]	2025-11-11 22:34:28.874	2025-11-11 22:34:28.874	2025-11-11 22:34:28.875	\N	\N	\N
68	o43v0qph25nsuc73i5e9iawg	admin::roles.read	{}	\N	{}	[]	2025-11-11 22:34:28.882	2025-11-11 22:34:28.882	2025-11-11 22:34:28.882	\N	\N	\N
69	sxqdg92phmjd629lut4n5dyc	admin::roles.update	{}	\N	{}	[]	2025-11-11 22:34:28.887	2025-11-11 22:34:28.887	2025-11-11 22:34:28.887	\N	\N	\N
70	auvry9pflwly29a0iop6th5m	admin::roles.delete	{}	\N	{}	[]	2025-11-11 22:34:28.895	2025-11-11 22:34:28.895	2025-11-11 22:34:28.896	\N	\N	\N
71	graoa4mbuweeemanhl5xcwui	admin::api-tokens.access	{}	\N	{}	[]	2025-11-11 22:34:28.901	2025-11-11 22:34:28.901	2025-11-11 22:34:28.902	\N	\N	\N
72	e9au6hqefycyci1yb8jaoxn6	admin::api-tokens.create	{}	\N	{}	[]	2025-11-11 22:34:28.907	2025-11-11 22:34:28.907	2025-11-11 22:34:28.907	\N	\N	\N
73	y369b6u13pbcfila919r34dp	admin::api-tokens.read	{}	\N	{}	[]	2025-11-11 22:34:28.912	2025-11-11 22:34:28.912	2025-11-11 22:34:28.912	\N	\N	\N
74	cfgjub3ycckh7tiwe8fkkb46	admin::api-tokens.update	{}	\N	{}	[]	2025-11-11 22:34:28.918	2025-11-11 22:34:28.918	2025-11-11 22:34:28.918	\N	\N	\N
75	z6ayrte6s1lgxchpn81u7xe6	admin::api-tokens.regenerate	{}	\N	{}	[]	2025-11-11 22:34:28.924	2025-11-11 22:34:28.924	2025-11-11 22:34:28.924	\N	\N	\N
76	wm809ekrlro3kleu8zjj86bv	admin::api-tokens.delete	{}	\N	{}	[]	2025-11-11 22:34:28.929	2025-11-11 22:34:28.929	2025-11-11 22:34:28.929	\N	\N	\N
77	d5ferzfzdhxgmls570w42uji	admin::project-settings.update	{}	\N	{}	[]	2025-11-11 22:34:28.934	2025-11-11 22:34:28.934	2025-11-11 22:34:28.934	\N	\N	\N
78	m59ukt9stdx1reoekw559qvr	admin::project-settings.read	{}	\N	{}	[]	2025-11-11 22:34:28.938	2025-11-11 22:34:28.938	2025-11-11 22:34:28.939	\N	\N	\N
79	iunq5q7t8ekc1x3zmb0sfxlw	admin::transfer.tokens.access	{}	\N	{}	[]	2025-11-11 22:34:28.943	2025-11-11 22:34:28.943	2025-11-11 22:34:28.943	\N	\N	\N
80	hcno0iucdciryu7azvpeugyc	admin::transfer.tokens.create	{}	\N	{}	[]	2025-11-11 22:34:28.947	2025-11-11 22:34:28.947	2025-11-11 22:34:28.948	\N	\N	\N
81	zd0zwfurm76xlcc9gmi87pp1	admin::transfer.tokens.read	{}	\N	{}	[]	2025-11-11 22:34:28.952	2025-11-11 22:34:28.952	2025-11-11 22:34:28.952	\N	\N	\N
82	lit1eowt6rro0g2jjamx440d	admin::transfer.tokens.update	{}	\N	{}	[]	2025-11-11 22:34:28.959	2025-11-11 22:34:28.959	2025-11-11 22:34:28.959	\N	\N	\N
83	zw9l8aavfjtx3z091q4nudbu	admin::transfer.tokens.regenerate	{}	\N	{}	[]	2025-11-11 22:34:28.963	2025-11-11 22:34:28.963	2025-11-11 22:34:28.964	\N	\N	\N
84	tfglhskqlv2f2yobnn4trips	admin::transfer.tokens.delete	{}	\N	{}	[]	2025-11-11 22:34:28.968	2025-11-11 22:34:28.968	2025-11-11 22:34:28.968	\N	\N	\N
132	hdh66qby7r3bznwvzpxol4o3	plugin::content-manager.explorer.create	{}	api::sujet.sujet	{"fields": ["name", "canton", "picture", "the_wall_of_shames", "affiliation"]}	[]	2025-11-15 10:58:42.96	2025-11-15 10:58:42.96	2025-11-15 10:58:42.96	\N	\N	\N
133	o6c4jhurxkffhyfx3r97pqjr	plugin::content-manager.explorer.read	{}	api::sujet.sujet	{"fields": ["name", "canton", "picture", "the_wall_of_shames", "affiliation"]}	[]	2025-11-15 10:58:42.966	2025-11-15 10:58:42.966	2025-11-15 10:58:42.966	\N	\N	\N
91	c0ja2iuonscun2jinpeim38w	plugin::content-manager.explorer.delete	{}	api::sujet.sujet	{}	[]	2025-11-12 10:10:52.077	2025-11-12 10:10:52.077	2025-11-12 10:10:52.078	\N	\N	\N
92	i0ndob5gvvmml3dckkvr174f	plugin::content-manager.explorer.publish	{}	api::sujet.sujet	{}	[]	2025-11-12 10:10:52.083	2025-11-12 10:10:52.083	2025-11-12 10:10:52.083	\N	\N	\N
96	t9wsgfn0gyo4er8tw3dyje1j	plugin::content-manager.explorer.delete	{}	api::the-wall-of-shame.the-wall-of-shame	{"locales": ["en", "de-CH", "it-CH", "fr-CH"]}	[]	2025-11-12 14:49:10.082	2025-11-12 14:49:10.082	2025-11-12 14:49:10.082	\N	\N	\N
97	kidgrcozlzwiyyesuwolnut0	plugin::content-manager.explorer.publish	{}	api::the-wall-of-shame.the-wall-of-shame	{"locales": ["en", "de-CH", "it-CH", "fr-CH"]}	[]	2025-11-12 14:49:10.089	2025-11-12 14:49:10.089	2025-11-12 14:49:10.089	\N	\N	\N
98	yeejnzrzb3ibpoxp1c1ul5xh	plugin::content-manager.explorer.create	{}	api::sujet.sujet	{"fields": ["name", "canton", "picture", "the_wall_of_shames", "affiliation"]}	[]	2025-11-13 10:14:46.652	2025-11-13 10:14:46.652	2025-11-13 10:14:46.653	\N	\N	\N
99	e4z0qhuz3dsyafi7l2bdkhgo	plugin::content-manager.explorer.read	{}	api::sujet.sujet	{"fields": ["name", "canton", "picture", "the_wall_of_shames", "affiliation"]}	[]	2025-11-13 10:14:46.668	2025-11-13 10:14:46.668	2025-11-13 10:14:46.668	\N	\N	\N
100	ixjhq2u5ltnqh9hdz19dt9gh	plugin::content-manager.explorer.update	{}	api::sujet.sujet	{"fields": ["name", "canton", "picture", "the_wall_of_shames", "affiliation"]}	[]	2025-11-13 10:14:46.676	2025-11-13 10:14:46.676	2025-11-13 10:14:46.676	\N	\N	\N
101	vx8h4rd9txlko0oqwm8txv41	plugin::content-manager.explorer.create	{}	api::the-wall-of-shame.the-wall-of-shame	{"fields": ["title", "slug", "sujet", "subject_role", "incident_date", "category", "description", "incident_location", "evidence_image", "consequence", "sources.label", "sources.url", "visible"], "locales": ["en", "de-CH", "it-CH", "fr-CH"]}	[]	2025-11-14 15:33:14.726	2025-11-14 15:33:14.726	2025-11-14 15:33:14.727	\N	\N	\N
102	du7fqcflxdp2es6w74hg8p7s	plugin::content-manager.explorer.read	{}	api::the-wall-of-shame.the-wall-of-shame	{"fields": ["title", "slug", "sujet", "subject_role", "incident_date", "category", "description", "incident_location", "evidence_image", "consequence", "sources.label", "sources.url", "visible"], "locales": ["en", "de-CH", "it-CH", "fr-CH"]}	[]	2025-11-14 15:33:14.741	2025-11-14 15:33:14.741	2025-11-14 15:33:14.742	\N	\N	\N
103	ai9ndye4ombfagz6swnmyj3q	plugin::content-manager.explorer.update	{}	api::the-wall-of-shame.the-wall-of-shame	{"fields": ["title", "slug", "sujet", "subject_role", "incident_date", "category", "description", "incident_location", "evidence_image", "consequence", "sources.label", "sources.url", "visible"], "locales": ["en", "de-CH", "it-CH", "fr-CH"]}	[]	2025-11-14 15:33:14.757	2025-11-14 15:33:14.757	2025-11-14 15:33:14.757	\N	\N	\N
104	k5m1m51q40v3c5h7ztaop4d8	plugin::content-manager.explorer.create	{}	api::sujet.sujet	{"fields": ["name", "canton", "picture", "the_wall_of_shames", "affiliation"]}	[]	2025-11-15 10:20:06.021	2025-11-15 10:20:06.021	2025-11-15 10:20:06.022	\N	\N	\N
105	n7qyxsgr3adsjww0nkplyakt	plugin::content-manager.explorer.read	{}	api::sujet.sujet	{"fields": ["name", "canton", "picture", "the_wall_of_shames", "affiliation"]}	[]	2025-11-15 10:20:06.03	2025-11-15 10:20:06.03	2025-11-15 10:20:06.03	\N	\N	\N
109	hid4s91q2o9ku8puv20mcogd	plugin::content-manager.explorer.create	{}	api::sujet.sujet	{"fields": ["name", "canton", "picture", "the_wall_of_shames", "affiliation"]}	[]	2025-11-15 10:20:33.484	2025-11-15 10:20:33.484	2025-11-15 10:20:33.484	\N	\N	\N
110	qu72r52zdsf5b5dl2e3gou3v	plugin::content-manager.explorer.read	{}	api::sujet.sujet	{"fields": ["name", "canton", "picture", "the_wall_of_shames", "affiliation"]}	[]	2025-11-15 10:20:33.491	2025-11-15 10:20:33.491	2025-11-15 10:20:33.491	\N	\N	\N
114	g97ma3k08djzb5u6dhxe1qjj	plugin::content-manager.explorer.update	{}	api::sujet.sujet	{"fields": ["name", "canton", "picture", "the_wall_of_shames", "affiliation"]}	[]	2025-11-15 10:21:33.715	2025-11-15 10:21:33.715	2025-11-15 10:21:33.716	\N	\N	\N
115	ft3c3y8nmonrnlepd3qkou46	plugin::content-manager.explorer.update	{}	api::sujet.sujet	{"fields": ["name", "canton", "picture", "the_wall_of_shames", "affiliation"]}	[]	2025-11-15 10:21:47.403	2025-11-15 10:21:47.403	2025-11-15 10:21:47.403	\N	\N	\N
121	nhacw9gai4202idgkiexr9vy	plugin::content-manager.explorer.update	{}	api::the-wall-of-shame.the-wall-of-shame	{"fields": ["title", "slug", "sujet", "subject_role", "incident_date", "category", "description", "incident_location", "evidence_image", "consequence", "sources.label", "sources.url"], "locales": []}	["admin::is-creator"]	2025-11-15 10:23:50.837	2025-11-15 10:23:50.837	2025-11-15 10:23:50.838	\N	\N	\N
123	r4y9mxwthgaw1jnuy4du4hfx	plugin::content-manager.explorer.read	{}	api::the-wall-of-shame.the-wall-of-shame	{"fields": ["title", "slug", "sujet", "subject_role", "incident_date", "category", "description", "incident_location", "evidence_image", "consequence", "sources.label", "sources.url"], "locales": []}	[]	2025-11-15 10:29:31.071	2025-11-15 10:29:31.071	2025-11-15 10:29:31.071	\N	\N	\N
124	q47ujy5vura7gorfc9evgrnz	plugin::upload.read	{}	\N	{}	[]	2025-11-15 10:35:15.443	2025-11-15 10:35:15.443	2025-11-15 10:35:15.443	\N	\N	\N
125	f8zx2iauwpa2vl5w2w7l03o5	plugin::content-manager.explorer.create	{}	api::the-wall-of-shame.the-wall-of-shame	{"fields": ["title", "slug", "sujet", "subject_role", "incident_date", "category", "description", "incident_location", "evidence_image", "consequence", "sources.label", "sources.url"], "locales": []}	[]	2025-11-15 10:53:29.229	2025-11-15 10:53:29.229	2025-11-15 10:53:29.229	\N	\N	\N
126	wzbzlgq26uzr3n8e2uskrb6p	plugin::upload.read	{}	\N	{}	[]	2025-11-15 10:58:42.915	2025-11-15 10:58:42.915	2025-11-15 10:58:42.915	\N	\N	\N
127	fzbtkbdnjawadk7hy3zvtbx5	plugin::upload.configure-view	{}	\N	{}	[]	2025-11-15 10:58:42.933	2025-11-15 10:58:42.933	2025-11-15 10:58:42.933	\N	\N	\N
138	ghss9ck6ue4bizl9piyh111i	plugin::upload.assets.create	{}	\N	{}	["admin::is-creator"]	2025-11-15 11:00:34.39	2025-11-15 11:00:34.39	2025-11-15 11:00:34.39	\N	\N	\N
139	f2mnput2mx9j0qigm9mxrp05	plugin::upload.assets.download	{}	\N	{}	["admin::is-creator"]	2025-11-15 11:00:34.393	2025-11-15 11:00:34.393	2025-11-15 11:00:34.393	\N	\N	\N
140	mqbpr2cewi5p79nszb2lym2j	plugin::i18n.locale.read	{}	\N	{}	[]	2025-11-15 11:01:06.141	2025-11-15 11:01:06.141	2025-11-15 11:01:06.141	\N	\N	\N
141	w4kb53eiiunecw8gbpzdzdw4	plugin::content-manager.explorer.read	{}	plugin::users-permissions.user	{"fields": ["username", "email", "provider", "password", "resetPasswordToken", "confirmationToken", "confirmed", "blocked", "role"]}	[]	2025-11-15 11:06:25.976	2025-11-15 11:06:25.976	2025-11-15 11:06:25.977	\N	\N	\N
142	aldv66v8d9sdt684225fcnn2	plugin::content-manager.explorer.create	{}	api::the-wall-of-shame.the-wall-of-shame	{"fields": ["title", "slug", "sujet", "subject_role", "incident_date", "category", "description", "incident_location", "evidence_image", "consequence", "sources.label", "sources.url", "visible"], "locales": ["en", "de-CH", "it-CH", "fr-CH"]}	[]	2025-11-15 11:06:25.984	2025-11-15 11:06:25.984	2025-11-15 11:06:25.984	\N	\N	\N
143	u64v2b89wgfp1reocmb1rqlb	plugin::content-manager.explorer.read	{}	api::the-wall-of-shame.the-wall-of-shame	{"fields": ["title", "slug", "sujet", "subject_role", "incident_date", "category", "description", "incident_location", "evidence_image", "consequence", "sources.label", "sources.url", "visible"], "locales": ["en", "de-CH", "it-CH", "fr-CH"]}	[]	2025-11-15 11:06:25.989	2025-11-15 11:06:25.989	2025-11-15 11:06:25.989	\N	\N	\N
145	bayow8a6wwa1032uqurupw3s	plugin::content-manager.explorer.update	{}	api::sujet.sujet	{"fields": ["name", "canton", "picture", "the_wall_of_shames", "affiliation"]}	["admin::is-creator"]	2025-11-15 11:07:34.046	2025-11-15 11:07:34.046	2025-11-15 11:07:34.047	\N	\N	\N
146	le4qyznzcrnemldix826fsgo	plugin::content-manager.explorer.update	{}	api::the-wall-of-shame.the-wall-of-shame	{"fields": ["title", "slug", "sujet", "subject_role", "incident_date", "category", "description", "incident_location", "evidence_image", "consequence", "sources.label", "sources.url", "visible"], "locales": ["en", "de-CH", "it-CH", "fr-CH"]}	["admin::is-creator"]	2025-11-15 11:07:34.053	2025-11-15 11:07:34.053	2025-11-15 11:07:34.053	\N	\N	\N
147	mvi39qeuqg5oo1iqzp2rxkon	plugin::upload.assets.copy-link	{}	\N	{}	["admin::is-creator"]	2025-11-15 11:14:11.513	2025-11-15 11:14:11.513	2025-11-15 11:14:11.513	\N	\N	\N
148	z8ushsbl09xxeqev1fetmnka	plugin::content-manager.explorer.delete	{}	api::sujet.sujet	{}	[]	2025-11-15 12:39:16.858	2025-11-15 12:39:16.858	2025-11-15 12:39:16.859	\N	\N	\N
149	a1q1ksso5at6yqzdhed21krw	plugin::content-manager.explorer.publish	{}	api::sujet.sujet	{}	[]	2025-11-15 12:39:16.872	2025-11-15 12:39:16.872	2025-11-15 12:39:16.872	\N	\N	\N
150	rxia0do8g55v3a51sy1y1efm	plugin::content-manager.explorer.create	{}	api::the-wall-of-shame.the-wall-of-shame	{"fields": ["title", "slug", "sujet", "subject_role", "incident_date", "category", "description", "incident_location", "evidence_image", "consequence", "sources.label", "sources.url", "visible"], "locales": ["en", "de-CH", "it-CH", "fr-CH"]}	[]	2025-11-15 12:39:16.88	2025-11-15 12:39:16.88	2025-11-15 12:39:16.88	\N	\N	\N
151	dola60ddbqn0sdkq0i8zg1da	plugin::content-manager.explorer.read	{}	api::the-wall-of-shame.the-wall-of-shame	{"fields": ["title", "slug", "sujet", "subject_role", "incident_date", "category", "description", "incident_location", "evidence_image", "consequence", "sources.label", "sources.url", "visible"], "locales": ["en", "de-CH", "it-CH", "fr-CH"]}	[]	2025-11-15 12:39:16.887	2025-11-15 12:39:16.887	2025-11-15 12:39:16.887	\N	\N	\N
152	c52haqc1c5o6y854dm93k0kc	plugin::content-manager.explorer.update	{}	api::the-wall-of-shame.the-wall-of-shame	{"fields": ["title", "slug", "sujet", "subject_role", "incident_date", "category", "description", "incident_location", "evidence_image", "consequence", "sources.label", "sources.url", "visible"], "locales": ["en", "de-CH", "it-CH", "fr-CH"]}	[]	2025-11-15 12:39:16.894	2025-11-15 12:39:16.894	2025-11-15 12:39:16.895	\N	\N	\N
153	eiutb1kiulafvcc3uylq8849	plugin::content-manager.explorer.delete	{}	api::the-wall-of-shame.the-wall-of-shame	{"locales": ["en", "de-CH", "it-CH", "fr-CH"]}	[]	2025-11-15 12:39:16.907	2025-11-15 12:39:16.907	2025-11-15 12:39:16.908	\N	\N	\N
154	s756drey2ot4t48n8z7ylxdz	plugin::content-manager.explorer.publish	{}	api::the-wall-of-shame.the-wall-of-shame	{"locales": ["en", "de-CH", "it-CH", "fr-CH"]}	[]	2025-11-15 12:39:16.924	2025-11-15 12:39:16.924	2025-11-15 12:39:16.924	\N	\N	\N
\.


--
-- Data for Name: admin_permissions_role_lnk; Type: TABLE DATA; Schema: public; Owner: strapi
--

COPY public.admin_permissions_role_lnk (id, permission_id, role_id, permission_ord) FROM stdin;
6	6	2	6
7	7	2	7
8	8	2	8
9	9	2	9
10	10	2	10
11	11	2	11
17	17	3	6
18	18	3	7
19	19	3	8
20	20	3	9
21	21	3	10
23	23	1	2
25	25	1	4
27	27	1	6
29	29	1	8
31	31	1	10
32	32	1	11
33	33	1	12
34	34	1	13
35	35	1	14
36	36	1	15
37	37	1	16
38	38	1	17
39	39	1	18
40	40	1	19
41	41	1	20
42	42	1	21
43	43	1	22
44	44	1	23
45	45	1	24
46	46	1	25
47	47	1	26
48	48	1	27
49	49	1	28
50	50	1	29
51	51	1	30
52	52	1	31
53	53	1	32
54	54	1	33
55	55	1	34
56	56	1	35
57	57	1	36
58	58	1	37
59	59	1	38
60	60	1	39
61	61	1	40
62	62	1	41
63	63	1	42
64	64	1	43
65	65	1	44
66	66	1	45
67	67	1	46
68	68	1	47
69	69	1	48
70	70	1	49
71	71	1	50
72	72	1	51
73	73	1	52
74	74	1	53
75	75	1	54
76	76	1	55
77	77	1	56
78	78	1	57
79	79	1	58
80	80	1	59
81	81	1	60
82	82	1	61
83	83	1	62
84	84	1	63
91	91	1	70
92	92	1	71
111	96	1	75
112	97	1	76
113	98	1	77
114	99	1	78
115	100	1	79
116	101	1	80
117	102	1	81
118	103	1	82
119	104	3	11
120	105	3	12
124	109	2	12
125	110	2	13
129	114	3	16
130	115	2	17
136	121	3	19
138	123	3	20
139	124	3	21
140	125	3	22
141	126	4	1
142	127	4	2
147	132	4	7
148	133	4	8
153	138	4	13
154	139	4	14
155	140	4	15
156	141	4	16
157	142	4	17
158	143	4	18
160	145	4	19
161	146	4	20
162	147	4	21
163	148	2	18
164	149	2	19
165	150	2	20
166	151	2	21
167	152	2	22
168	153	2	23
169	154	2	24
\.


--
-- Data for Name: admin_roles; Type: TABLE DATA; Schema: public; Owner: strapi
--

COPY public.admin_roles (id, document_id, name, code, description, created_at, updated_at, published_at, created_by_id, updated_by_id, locale) FROM stdin;
1	h7etkt6rvbxfqkgx4cp5xhak	Super Admin	strapi-super-admin	Super Admins can access and manage all features and settings.	2025-11-11 22:34:28.41	2025-11-11 22:34:28.41	2025-11-11 22:34:28.411	\N	\N	\N
3	zifk1oe15sbwx4z19qp4b3tw	Author	strapi-author	Authors can manage the content they have created.	2025-11-11 22:34:28.427	2025-11-15 10:53:29.035	2025-11-11 22:34:28.427	\N	\N	\N
4	m00p42st0tkyy9xytcfoka95	Contributor	contributor-mi046ou6	Can update her/his own contributions. Cannot publish.	2025-11-15 10:58:42.75	2025-11-15 11:14:11.326	2025-11-15 10:58:42.75	\N	\N	\N
2	hgdcfbinwes9r6bnknrwrbdp	Editor	strapi-editor	Editors can manage and publish contents including those of other users.	2025-11-11 22:34:28.421	2025-11-15 12:39:16.696	2025-11-11 22:34:28.421	\N	\N	\N
\.


--
-- Data for Name: admin_users; Type: TABLE DATA; Schema: public; Owner: strapi
--

COPY public.admin_users (id, document_id, firstname, lastname, username, email, password, reset_password_token, registration_token, is_active, blocked, prefered_language, created_at, updated_at, published_at, created_by_id, updated_by_id, locale) FROM stdin;
1	i2kr3hf71r8pktg0i9qyqrqv	Rebel	Suisse	\N	rebel.suisse@gmail.com	$2a$10$Mo3U0jTK3Rp68d9Oq0rr7Obey7Bjuk3sLKpv0trUO.xt7bW9P0lsq	\N	\N	t	f	\N	2025-11-11 22:37:37.024	2025-11-11 22:37:37.024	2025-11-11 22:37:37.024	\N	\N	\N
2	ipq7eo6bms76b1bzlcsz38j9	Greg	B	\N	gregoire.banderet@gmail.com	$2a$10$5q4IldYBeb6tQAdEPRsw/e/PRSMIGozHMS7pBL6li7nlL2PHBkROK	\N	\N	t	f	\N	2025-11-15 10:30:47.459	2025-11-15 11:18:48.24	2025-11-15 10:30:47.46	\N	\N	\N
3	jp0a933my569w9r3oa1cb6nl	Flora		\N	flo.infoch@gmail.com	$2a$10$3YM4r4HlRfE.b6UVCfLsGOe9i3T44sQQwAEK8GxrDigvsMn9xRJ4K	\N	\N	t	f	\N	2025-11-15 11:20:03.597	2025-11-15 11:21:14.188	2025-11-15 11:20:03.598	\N	\N	\N
4	zk3yxl5cf8xbhhscdsc5q19b	novarque		\N	novarque@proton.me	$2a$10$6BT6lZZLYCxiI2Iog.DsiuTqeCX2sfOuHszm2F0sLkF4Dni/0vOCO	\N	\N	t	f	\N	2025-11-15 15:29:52.007	2025-11-15 15:30:28.825	2025-11-15 15:29:52.008	\N	\N	\N
5	xnry6eqcieevjj02wo17bk1y	Tartine	Marxiste	\N	mrgnlbr@outlook.com	\N	\N	dd87a98ea26d7754b671cefdb77e683d128ebbe1	f	f	\N	2025-11-15 16:38:45.06	2025-11-15 16:38:45.06	2025-11-15 16:38:45.06	\N	\N	\N
\.


--
-- Data for Name: admin_users_roles_lnk; Type: TABLE DATA; Schema: public; Owner: strapi
--

COPY public.admin_users_roles_lnk (id, user_id, role_id, role_ord, user_ord) FROM stdin;
1	1	1	1	1
5	2	4	1	1
7	2	2	2	1
8	3	4	1	2
9	4	4	1	3
10	5	4	1	4
\.


--
-- Data for Name: components_link_links; Type: TABLE DATA; Schema: public; Owner: strapi
--

COPY public.components_link_links (id, label, url) FROM stdin;
35	Thurgauer Zeitung	https://www.thurgauerzeitung.ch/ostschweiz/weinfelden-kreuzlingen/prix-resistance-weinfelder-muslimgraeber-der-praesident-der-svp-schweiz-reist-persoenlich-an-um-das-erfolgreiche-referendumskomitee-als-widerstandskaempfer-zu-wuerdigen-ld.2793442
36	Thurgauer Zeitung	https://www.thurgauerzeitung.ch/ostschweiz/weinfelden-kreuzlingen/prix-resistance-weinfelder-muslimgraeber-der-praesident-der-svp-schweiz-reist-persoenlich-an-um-das-erfolgreiche-referendumskomitee-als-widerstandskaempfer-zu-wuerdigen-ld.2793442
9	Zofinger Tagblatt	https://www.zofingertagblatt.ch/extremismus-er-will-keine-gesetze-um-wanderer-zu-jagen-andreas-glarner-lehnt-verbot-von-nazisymbolen-nach-vorfall-in-den-alpen-ab/
10	Zofinger Tagblatt	https://www.zofingertagblatt.ch/extremismus-er-will-keine-gesetze-um-wanderer-zu-jagen-andreas-glarner-lehnt-verbot-von-nazisymbolen-nach-vorfall-in-den-alpen-ab/
11	Zofinger Tagblatt	https://www.zofingertagblatt.ch/extremismus-er-will-keine-gesetze-um-wanderer-zu-jagen-andreas-glarner-lehnt-verbot-von-nazisymbolen-nach-vorfall-in-den-alpen-ab/
12	Zofinger Tagblatt	https://www.zofingertagblatt.ch/extremismus-er-will-keine-gesetze-um-wanderer-zu-jagen-andreas-glarner-lehnt-verbot-von-nazisymbolen-nach-vorfall-in-den-alpen-ab/
156	Swissinfo	https://www.swissinfo.ch/ger/berner-svp-nationalrat-erich-hess-durfte-von-negern-sprechen/43634066
37	Thurgauer Zeitung	https://www.thurgauerzeitung.ch/ostschweiz/weinfelden-kreuzlingen/prix-resistance-weinfelder-muslimgraeber-der-praesident-der-svp-schweiz-reist-persoenlich-an-um-das-erfolgreiche-referendumskomitee-als-widerstandskaempfer-zu-wuerdigen-ld.2793442
157	RTS	https://www.rts.ch/info/suisse/8847002-un-conseiller-national-udc-accuse-de-racisme-pour-avoir-parle-de-negres.html
158	Berner Zeitung	https://www.bernerzeitung.ch/hess-bleibt-nach-neger-aussage-straffrei-649786033058
159	Protokoll / PV Stadtrat Bern 29.06.2017	https://stadtrat.bern.ch/de/dokumente/350691b3b5ea448f9d421f086b0d7994-332
16	Tagesanzeiger	https://www.tagesanzeiger.ch/trans-operation-svp-fordert-verbot-in-der-schweiz-786001359271
25	Tagesanzeiger	https://www.tagesanzeiger.ch/trans-operation-svp-fordert-verbot-in-der-schweiz-786001359271
26	Tagesanzeiger	https://www.tagesanzeiger.ch/trans-operation-svp-fordert-verbot-in-der-schweiz-786001359271
27	Tagesanzeiger	https://www.tagesanzeiger.ch/trans-operation-svp-fordert-verbot-in-der-schweiz-786001359271
160	Swissinfo	https://www.swissinfo.ch/ger/berner-svp-nationalrat-erich-hess-durfte-von-negern-sprechen/43634066
161	RTS	https://www.rts.ch/info/suisse/8847002-un-conseiller-national-udc-accuse-de-racisme-pour-avoir-parle-de-negres.html
162	Berner Zeitung	https://www.bernerzeitung.ch/hess-bleibt-nach-neger-aussage-straffrei-649786033058
163	Protokoll / PV Stadtrat Bern 29.06.2017	https://stadtrat.bern.ch/de/dokumente/350691b3b5ea448f9d421f086b0d7994-332
164	Swissinfo	https://www.swissinfo.ch/ger/berner-svp-nationalrat-erich-hess-durfte-von-negern-sprechen/43634066
31	Thurgauer Zeitung	https://www.thurgauerzeitung.ch/ostschweiz/weinfelden-kreuzlingen/prix-resistance-weinfelder-muslimgraeber-der-praesident-der-svp-schweiz-reist-persoenlich-an-um-das-erfolgreiche-referendumskomitee-als-widerstandskaempfer-zu-wuerdigen-ld.2793442
59	Instagram	https://www.instagram.com/p/DQz3v5mjbH_/?igsh=YmdudWwyOTg2am13
43	l'Illustré	https://www.illustre.ch/magazine/qanon-comment-la-suisse-a-ete-infectee-par-le-complotisme
45	l'Illustré	https://www.illustre.ch/magazine/qanon-comment-la-suisse-a-ete-infectee-par-le-complotisme
46	l'Illustré	https://www.illustre.ch/magazine/qanon-comment-la-suisse-a-ete-infectee-par-le-complotisme
47	l'Illustré	https://www.illustre.ch/magazine/qanon-comment-la-suisse-a-ete-infectee-par-le-complotisme
50	Instagram	https://www.instagram.com/p/DQt1cb7jA6g/
51	Instagram	https://www.instagram.com/p/DQt1cb7jA6g/
52	Instagram	https://www.instagram.com/p/DQt1cb7jA6g/
53	Instagram	https://www.instagram.com/p/DQt1cb7jA6g/
56	Instagram	https://www.instagram.com/p/DQz3v5mjbH_/?igsh=YmdudWwyOTg2am13
57	Instagram	https://www.instagram.com/p/DQz3v5mjbH_/?igsh=YmdudWwyOTg2am13
58	Instagram	https://www.instagram.com/p/DQz3v5mjbH_/?igsh=YmdudWwyOTg2am13
66	renverse	https://renverse.co/infos-locales/article/le-jeune-udc-valaisan-leo-rouvinez-fait-la-promotion-d-une-neo-nazie-sur-2717
68	renverse	https://renverse.co/infos-locales/article/le-jeune-udc-valaisan-leo-rouvinez-fait-la-promotion-d-une-neo-nazie-sur-2717
69	renverse	https://renverse.co/infos-locales/article/le-jeune-udc-valaisan-leo-rouvinez-fait-la-promotion-d-une-neo-nazie-sur-2717
70	renverse	https://renverse.co/infos-locales/article/le-jeune-udc-valaisan-leo-rouvinez-fait-la-promotion-d-une-neo-nazie-sur-2717
93	Blick	https://www.blick.ch/politik/facebook-user-koeppel-und-aldi-alle-stellen-sich-hinter-die-lehrlinge-fuer-glarner-hagelts-kritik-id16003809.html
91	20 minutes 	https://www.20min.ch/story/svp-hess-benutzt-auf-clubhouse-mehrmals-das-n-wort-948756755375
92	20 minutes 	https://www.20min.ch/story/svp-hess-benutzt-auf-clubhouse-mehrmals-das-n-wort-948756755375
87	20 minutes 	https://www.20min.ch/story/svp-hess-benutzt-auf-clubhouse-mehrmals-das-n-wort-948756755375
90	20 minutes 	https://www.20min.ch/story/svp-hess-benutzt-auf-clubhouse-mehrmals-das-n-wort-948756755375
94	nau.ch	https://www.nau.ch/politik/bundeshaus/andreas-glarner-svp-prangert-auslandische-lehrabganger-an-65746878
95	lematin.ch	https://www.lematin.ch/story/andreas-glarner-fait-un-flop-avec-sa-chasse-aux-prenoms-131463613638
99	Blick	https://www.blick.ch/politik/facebook-user-koeppel-und-aldi-alle-stellen-sich-hinter-die-lehrlinge-fuer-glarner-hagelts-kritik-id16003809.html
100	nau.ch	https://www.nau.ch/politik/bundeshaus/andreas-glarner-svp-prangert-auslandische-lehrabganger-an-65746878
101	lematin.ch	https://www.lematin.ch/story/andreas-glarner-fait-un-flop-avec-sa-chasse-aux-prenoms-131463613638
102	Blick	https://www.blick.ch/politik/facebook-user-koeppel-und-aldi-alle-stellen-sich-hinter-die-lehrlinge-fuer-glarner-hagelts-kritik-id16003809.html
103	nau.ch	https://www.nau.ch/politik/bundeshaus/andreas-glarner-svp-prangert-auslandische-lehrabganger-an-65746878
104	lematin.ch	https://www.lematin.ch/story/andreas-glarner-fait-un-flop-avec-sa-chasse-aux-prenoms-131463613638
105	Blick	https://www.blick.ch/politik/facebook-user-koeppel-und-aldi-alle-stellen-sich-hinter-die-lehrlinge-fuer-glarner-hagelts-kritik-id16003809.html
106	nau.ch	https://www.nau.ch/politik/bundeshaus/andreas-glarner-svp-prangert-auslandische-lehrabganger-an-65746878
107	lematin.ch	https://www.lematin.ch/story/andreas-glarner-fait-un-flop-avec-sa-chasse-aux-prenoms-131463613638
150	Berner Zeitung	https://www.bernerzeitung.ch/hess-bleibt-nach-neger-aussage-straffrei-649786033058
151	Protokoll / PV Stadtrat Bern 29.06.2017	https://stadtrat.bern.ch/de/dokumente/350691b3b5ea448f9d421f086b0d7994-332
165	RTS	https://www.rts.ch/info/suisse/8847002-un-conseiller-national-udc-accuse-de-racisme-pour-avoir-parle-de-negres.html
166	Berner Zeitung	https://www.bernerzeitung.ch/hess-bleibt-nach-neger-aussage-straffrei-649786033058
167	Protokoll / PV Stadtrat Bern 29.06.2017	https://stadtrat.bern.ch/de/dokumente/350691b3b5ea448f9d421f086b0d7994-332
148	Swissinfo	https://www.swissinfo.ch/ger/berner-svp-nationalrat-erich-hess-durfte-von-negern-sprechen/43634066
149	RTS	https://www.rts.ch/info/suisse/8847002-un-conseiller-national-udc-accuse-de-racisme-pour-avoir-parle-de-negres.html
\.


--
-- Data for Name: files; Type: TABLE DATA; Schema: public; Owner: strapi
--

COPY public.files (id, document_id, name, alternative_text, caption, width, height, formats, hash, ext, mime, size, url, preview_url, provider, provider_metadata, folder_path, created_at, updated_at, published_at, created_by_id, updated_by_id, locale) FROM stdin;
6	tzt7nimasrmi90f0ktx42h9j	Andreas_Glarner.jpg	\N	\N	1024	1024	{"large": {"ext": ".jpg", "url": "/uploads/large_Andreas_Glarner_351626de04.jpg", "hash": "large_Andreas_Glarner_351626de04", "mime": "image/jpeg", "name": "large_Andreas_Glarner.jpg", "path": null, "size": 131.14, "width": 1000, "height": 1000, "sizeInBytes": 131136}, "small": {"ext": ".jpg", "url": "/uploads/small_Andreas_Glarner_351626de04.jpg", "hash": "small_Andreas_Glarner_351626de04", "mime": "image/jpeg", "name": "small_Andreas_Glarner.jpg", "path": null, "size": 30.93, "width": 500, "height": 500, "sizeInBytes": 30933}, "medium": {"ext": ".jpg", "url": "/uploads/medium_Andreas_Glarner_351626de04.jpg", "hash": "medium_Andreas_Glarner_351626de04", "mime": "image/jpeg", "name": "medium_Andreas_Glarner.jpg", "path": null, "size": 71.85, "width": 750, "height": 750, "sizeInBytes": 71845}, "thumbnail": {"ext": ".jpg", "url": "/uploads/thumbnail_Andreas_Glarner_351626de04.jpg", "hash": "thumbnail_Andreas_Glarner_351626de04", "mime": "image/jpeg", "name": "thumbnail_Andreas_Glarner.jpg", "path": null, "size": 4.35, "width": 156, "height": 156, "sizeInBytes": 4349}}	Andreas_Glarner_351626de04	.jpg	image/jpeg	141.46	/uploads/Andreas_Glarner_351626de04.jpg	\N	local	\N	/	2025-11-14 11:56:49.267	2025-11-14 11:56:49.267	2025-11-14 11:56:49.268	1	1	\N
8	s7ns0voe9ocd4jjlo17z5i5n	Jean-Luc Addor.jpg	\N	\N	720	720	{"small": {"ext": ".jpg", "url": "/uploads/small_Jean_Luc_Addor_a8cb33f684.jpg", "hash": "small_Jean_Luc_Addor_a8cb33f684", "mime": "image/jpeg", "name": "small_Jean-Luc Addor.jpg", "path": null, "size": 24.17, "width": 500, "height": 500, "sizeInBytes": 24168}, "thumbnail": {"ext": ".jpg", "url": "/uploads/thumbnail_Jean_Luc_Addor_a8cb33f684.jpg", "hash": "thumbnail_Jean_Luc_Addor_a8cb33f684", "mime": "image/jpeg", "name": "thumbnail_Jean-Luc Addor.jpg", "path": null, "size": 4.05, "width": 156, "height": 156, "sizeInBytes": 4053}}	Jean_Luc_Addor_a8cb33f684	.jpg	image/jpeg	44.32	/uploads/Jean_Luc_Addor_a8cb33f684.jpg	\N	local	\N	/	2025-11-14 12:16:42.041	2025-11-14 12:16:42.041	2025-11-14 12:16:42.041	1	1	\N
10	t5v9oz32bpf3njwb8td5q6i4	Natalierickli.jpg	\N	\N	547	800	{"small": {"ext": ".jpg", "url": "/uploads/small_Natalierickli_3ea1475a0e.jpg", "hash": "small_Natalierickli_3ea1475a0e", "mime": "image/jpeg", "name": "small_Natalierickli.jpg", "path": null, "size": 25.24, "width": 342, "height": 500, "sizeInBytes": 25236}, "medium": {"ext": ".jpg", "url": "/uploads/medium_Natalierickli_3ea1475a0e.jpg", "hash": "medium_Natalierickli_3ea1475a0e", "mime": "image/jpeg", "name": "medium_Natalierickli.jpg", "path": null, "size": 55.83, "width": 513, "height": 750, "sizeInBytes": 55828}, "thumbnail": {"ext": ".jpg", "url": "/uploads/thumbnail_Natalierickli_3ea1475a0e.jpg", "hash": "thumbnail_Natalierickli_3ea1475a0e", "mime": "image/jpeg", "name": "thumbnail_Natalierickli.jpg", "path": null, "size": 3.55, "width": 106, "height": 156, "sizeInBytes": 3551}}	Natalierickli_3ea1475a0e	.jpg	image/jpeg	64.19	/uploads/Natalierickli_3ea1475a0e.jpg	\N	local	\N	/	2025-11-14 14:09:28.276	2025-11-14 14:09:28.276	2025-11-14 14:09:28.276	1	1	\N
11	xynztyutv3rjlga65hwbtwxw	Nina_Fehr_Düsel.jpg	\N	\N	5349	5349	{"large": {"ext": ".jpg", "url": "/uploads/large_Nina_Fehr_Duesel_b2797ea230.jpg", "hash": "large_Nina_Fehr_Duesel_b2797ea230", "mime": "image/jpeg", "name": "large_Nina_Fehr_Düsel.jpg", "path": null, "size": 120.94, "width": 1000, "height": 1000, "sizeInBytes": 120944}, "small": {"ext": ".jpg", "url": "/uploads/small_Nina_Fehr_Duesel_b2797ea230.jpg", "hash": "small_Nina_Fehr_Duesel_b2797ea230", "mime": "image/jpeg", "name": "small_Nina_Fehr_Düsel.jpg", "path": null, "size": 37.39, "width": 500, "height": 500, "sizeInBytes": 37385}, "medium": {"ext": ".jpg", "url": "/uploads/medium_Nina_Fehr_Duesel_b2797ea230.jpg", "hash": "medium_Nina_Fehr_Duesel_b2797ea230", "mime": "image/jpeg", "name": "medium_Nina_Fehr_Düsel.jpg", "path": null, "size": 75.04, "width": 750, "height": 750, "sizeInBytes": 75038}, "thumbnail": {"ext": ".jpg", "url": "/uploads/thumbnail_Nina_Fehr_Duesel_b2797ea230.jpg", "hash": "thumbnail_Nina_Fehr_Duesel_b2797ea230", "mime": "image/jpeg", "name": "thumbnail_Nina_Fehr_Düsel.jpg", "path": null, "size": 5.33, "width": 156, "height": 156, "sizeInBytes": 5327}}	Nina_Fehr_Duesel_b2797ea230	.jpg	image/jpeg	3330.02	/uploads/Nina_Fehr_Duesel_b2797ea230.jpg	\N	local	\N	/	2025-11-14 14:10:13.828	2025-11-14 14:10:13.828	2025-11-14 14:10:13.832	1	1	\N
12	g1wvm900ybaz4dx6w6s6mbs3	1024px-Marcel_Dettling_(2019).jpg	\N	\N	1024	1024	{"large": {"ext": ".jpg", "url": "/uploads/large_1024px_Marcel_Dettling_2019_7d38596cfe.jpg", "hash": "large_1024px_Marcel_Dettling_2019_7d38596cfe", "mime": "image/jpeg", "name": "large_1024px-Marcel_Dettling_(2019).jpg", "path": null, "size": 125.51, "width": 1000, "height": 1000, "sizeInBytes": 125505}, "small": {"ext": ".jpg", "url": "/uploads/small_1024px_Marcel_Dettling_2019_7d38596cfe.jpg", "hash": "small_1024px_Marcel_Dettling_2019_7d38596cfe", "mime": "image/jpeg", "name": "small_1024px-Marcel_Dettling_(2019).jpg", "path": null, "size": 26.63, "width": 500, "height": 500, "sizeInBytes": 26630}, "medium": {"ext": ".jpg", "url": "/uploads/medium_1024px_Marcel_Dettling_2019_7d38596cfe.jpg", "hash": "medium_1024px_Marcel_Dettling_2019_7d38596cfe", "mime": "image/jpeg", "name": "medium_1024px-Marcel_Dettling_(2019).jpg", "path": null, "size": 65.97, "width": 750, "height": 750, "sizeInBytes": 65974}, "thumbnail": {"ext": ".jpg", "url": "/uploads/thumbnail_1024px_Marcel_Dettling_2019_7d38596cfe.jpg", "hash": "thumbnail_1024px_Marcel_Dettling_2019_7d38596cfe", "mime": "image/jpeg", "name": "thumbnail_1024px-Marcel_Dettling_(2019).jpg", "path": null, "size": 4.11, "width": 156, "height": 156, "sizeInBytes": 4105}}	1024px_Marcel_Dettling_2019_7d38596cfe	.jpg	image/jpeg	137.10	/uploads/1024px_Marcel_Dettling_2019_7d38596cfe.jpg	\N	local	\N	/	2025-11-14 14:35:28.767	2025-11-14 14:35:28.767	2025-11-14 14:35:28.768	1	1	\N
13	dvc5mx8n1me2peagqpxlefcn	prix_udc_tombes_musulmanes.png	\N	\N	1195	750	{"large": {"ext": ".png", "url": "/uploads/large_prix_udc_tombes_musulmanes_73e9bff415.png", "hash": "large_prix_udc_tombes_musulmanes_73e9bff415", "mime": "image/png", "name": "large_prix_udc_tombes_musulmanes.png", "path": null, "size": 1299.85, "width": 1000, "height": 628, "sizeInBytes": 1299848}, "small": {"ext": ".png", "url": "/uploads/small_prix_udc_tombes_musulmanes_73e9bff415.png", "hash": "small_prix_udc_tombes_musulmanes_73e9bff415", "mime": "image/png", "name": "small_prix_udc_tombes_musulmanes.png", "path": null, "size": 355.73, "width": 500, "height": 314, "sizeInBytes": 355734}, "medium": {"ext": ".png", "url": "/uploads/medium_prix_udc_tombes_musulmanes_73e9bff415.png", "hash": "medium_prix_udc_tombes_musulmanes_73e9bff415", "mime": "image/png", "name": "medium_prix_udc_tombes_musulmanes.png", "path": null, "size": 759.28, "width": 750, "height": 471, "sizeInBytes": 759280}, "thumbnail": {"ext": ".png", "url": "/uploads/thumbnail_prix_udc_tombes_musulmanes_73e9bff415.png", "hash": "thumbnail_prix_udc_tombes_musulmanes_73e9bff415", "mime": "image/png", "name": "thumbnail_prix_udc_tombes_musulmanes.png", "path": null, "size": 95.05, "width": 245, "height": 154, "sizeInBytes": 95052}}	prix_udc_tombes_musulmanes_73e9bff415	.png	image/png	429.81	/uploads/prix_udc_tombes_musulmanes_73e9bff415.png	\N	local	\N	/	2025-11-14 14:42:46.156	2025-11-14 14:53:09.008	2025-11-14 14:42:46.157	1	1	\N
15	b7lry51o783l5f3fmrbc65yu	PatrcickSaegesser.png	\N	\N	488	421	{"thumbnail": {"ext": ".png", "url": "/uploads/thumbnail_Patrcick_Saegesser_ebeaf3126f.png", "hash": "thumbnail_Patrcick_Saegesser_ebeaf3126f", "mime": "image/png", "name": "thumbnail_PatrcickSaegesser.png", "path": null, "size": 39, "width": 181, "height": 156, "sizeInBytes": 39001}}	Patrcick_Saegesser_ebeaf3126f	.png	image/png	67.58	/uploads/Patrcick_Saegesser_ebeaf3126f.png	\N	local	\N	/	2025-11-15 10:51:39.089	2025-11-15 10:51:39.089	2025-11-15 10:51:39.089	2	2	\N
16	h18bgqxsnujen9yfzdstmhab	udc.png	\N	\N	306	330	{"thumbnail": {"ext": ".png", "url": "/uploads/thumbnail_udc_f7abebfbbf.png", "hash": "thumbnail_udc_f7abebfbbf", "mime": "image/png", "name": "thumbnail_udc.png", "path": null, "size": 16.43, "width": 145, "height": 156, "sizeInBytes": 16428}}	udc_f7abebfbbf	.png	image/png	7.25	/uploads/udc_f7abebfbbf.png	\N	local	\N	/	2025-11-15 11:10:12.163	2025-11-15 11:10:12.163	2025-11-15 11:10:12.163	1	1	\N
17	tb0z2xw1u0zb45jn8d78izjt	logo_medium_Rebel-ch.jpg	\N	\N	256	256	{"thumbnail": {"ext": ".jpg", "url": "/uploads/thumbnail_logo_medium_Rebel_ch_76fc8ae129.jpg", "hash": "thumbnail_logo_medium_Rebel_ch_76fc8ae129", "mime": "image/jpeg", "name": "thumbnail_logo_medium_Rebel-ch.jpg", "path": null, "size": 5.52, "width": 156, "height": 156, "sizeInBytes": 5522}}	logo_medium_Rebel_ch_76fc8ae129	.jpg	image/jpeg	11.33	/uploads/logo_medium_Rebel_ch_76fc8ae129.jpg	\N	local	\N	/	2025-11-15 11:14:37.555	2025-11-15 11:14:37.555	2025-11-15 11:14:37.555	1	1	\N
18	s03par1azbjz00h4jdhu8a1k	montabert-stephane-2.png	\N	\N	4267	3029	{"large": {"ext": ".png", "url": "/uploads/large_montabert_stephane_2_c115dbfc14.png", "hash": "large_montabert_stephane_2_c115dbfc14", "mime": "image/png", "name": "large_montabert-stephane-2.png", "path": null, "size": 509.85, "width": 1000, "height": 710, "sizeInBytes": 509849}, "small": {"ext": ".png", "url": "/uploads/small_montabert_stephane_2_c115dbfc14.png", "hash": "small_montabert_stephane_2_c115dbfc14", "mime": "image/png", "name": "small_montabert-stephane-2.png", "path": null, "size": 151.47, "width": 500, "height": 355, "sizeInBytes": 151465}, "medium": {"ext": ".png", "url": "/uploads/medium_montabert_stephane_2_c115dbfc14.png", "hash": "medium_montabert_stephane_2_c115dbfc14", "mime": "image/png", "name": "medium_montabert-stephane-2.png", "path": null, "size": 306.93, "width": 750, "height": 532, "sizeInBytes": 306931}, "thumbnail": {"ext": ".png", "url": "/uploads/thumbnail_montabert_stephane_2_c115dbfc14.png", "hash": "thumbnail_montabert_stephane_2_c115dbfc14", "mime": "image/png", "name": "thumbnail_montabert-stephane-2.png", "path": null, "size": 36.39, "width": 220, "height": 156, "sizeInBytes": 36390}}	montabert_stephane_2_c115dbfc14	.png	image/png	1323.20	/uploads/montabert_stephane_2_c115dbfc14.png	\N	local	\N	/	2025-11-15 11:39:13.783	2025-11-15 11:39:13.783	2025-11-15 11:39:13.783	3	3	\N
19	boqvnqrgzv6blx29b9s9fs4a	montabert_qanon.png	\N	\N	2000	1041	{"large": {"ext": ".png", "url": "/uploads/large_montabert_qanon_469e470b66.png", "hash": "large_montabert_qanon_469e470b66", "mime": "image/png", "name": "large_montabert_qanon.png", "path": null, "size": 197.18, "width": 1000, "height": 521, "sizeInBytes": 197177}, "small": {"ext": ".png", "url": "/uploads/small_montabert_qanon_469e470b66.png", "hash": "small_montabert_qanon_469e470b66", "mime": "image/png", "name": "small_montabert_qanon.png", "path": null, "size": 71.6, "width": 500, "height": 260, "sizeInBytes": 71601}, "medium": {"ext": ".png", "url": "/uploads/medium_montabert_qanon_469e470b66.png", "hash": "medium_montabert_qanon_469e470b66", "mime": "image/png", "name": "medium_montabert_qanon.png", "path": null, "size": 137.08, "width": 750, "height": 390, "sizeInBytes": 137082}, "thumbnail": {"ext": ".png", "url": "/uploads/thumbnail_montabert_qanon_469e470b66.png", "hash": "thumbnail_montabert_qanon_469e470b66", "mime": "image/png", "name": "thumbnail_montabert_qanon.png", "path": null, "size": 23.18, "width": 245, "height": 128, "sizeInBytes": 23180}}	montabert_qanon_469e470b66	.png	image/png	106.00	/uploads/montabert_qanon_469e470b66.png	\N	local	\N	/	2025-11-15 12:40:24.439	2025-11-15 12:40:24.439	2025-11-15 12:40:24.439	2	2	\N
20	f3byokdr786r71g2u3dir8sy	tete_réfugié.png	\N	\N	1008	1617	{"large": {"ext": ".png", "url": "/uploads/large_tete_refugie_2bb219fb38.png", "hash": "large_tete_refugie_2bb219fb38", "mime": "image/png", "name": "large_tete_réfugié.png", "path": null, "size": 920.41, "width": 623, "height": 1000, "sizeInBytes": 920410}, "small": {"ext": ".png", "url": "/uploads/small_tete_refugie_2bb219fb38.png", "hash": "small_tete_refugie_2bb219fb38", "mime": "image/png", "name": "small_tete_réfugié.png", "path": null, "size": 266.75, "width": 312, "height": 500, "sizeInBytes": 266745}, "medium": {"ext": ".png", "url": "/uploads/medium_tete_refugie_2bb219fb38.png", "hash": "medium_tete_refugie_2bb219fb38", "mime": "image/png", "name": "medium_tete_réfugié.png", "path": null, "size": 549.84, "width": 468, "height": 750, "sizeInBytes": 549835}, "thumbnail": {"ext": ".png", "url": "/uploads/thumbnail_tete_refugie_2bb219fb38.png", "hash": "thumbnail_tete_refugie_2bb219fb38", "mime": "image/png", "name": "thumbnail_tete_réfugié.png", "path": null, "size": 33.67, "width": 97, "height": 156, "sizeInBytes": 33670}}	tete_refugie_2bb219fb38	.png	image/png	462.12	/uploads/tete_refugie_2bb219fb38.png	\N	local	\N	/	2025-11-15 13:44:21.575	2025-11-15 13:44:21.575	2025-11-15 13:44:21.576	1	1	\N
21	iyzlgcnig8ikrjb6p2wxddon	PatrickSaegesserJeuneVoile.png	\N	\N	922	398	{"small": {"ext": ".png", "url": "/uploads/small_Patrick_Saegesser_Jeune_Voile_8a9fd3f90a.png", "hash": "small_Patrick_Saegesser_Jeune_Voile_8a9fd3f90a", "mime": "image/png", "name": "small_PatrickSaegesserJeuneVoile.png", "path": null, "size": 198.74, "width": 500, "height": 216, "sizeInBytes": 198743}, "medium": {"ext": ".png", "url": "/uploads/medium_Patrick_Saegesser_Jeune_Voile_8a9fd3f90a.png", "hash": "medium_Patrick_Saegesser_Jeune_Voile_8a9fd3f90a", "mime": "image/png", "name": "medium_PatrickSaegesserJeuneVoile.png", "path": null, "size": 422.76, "width": 750, "height": 324, "sizeInBytes": 422756}, "thumbnail": {"ext": ".png", "url": "/uploads/thumbnail_Patrick_Saegesser_Jeune_Voile_8a9fd3f90a.png", "hash": "thumbnail_Patrick_Saegesser_Jeune_Voile_8a9fd3f90a", "mime": "image/png", "name": "thumbnail_PatrickSaegesserJeuneVoile.png", "path": null, "size": 51.97, "width": 245, "height": 106, "sizeInBytes": 51973}}	Patrick_Saegesser_Jeune_Voile_8a9fd3f90a	.png	image/png	132.78	/uploads/Patrick_Saegesser_Jeune_Voile_8a9fd3f90a.png	\N	local	\N	/	2025-11-15 14:08:54.513	2025-11-15 14:10:13.869	2025-11-15 14:08:54.513	2	2	\N
22	pnibnv8alasvepbogsoul048	léo.jpg	\N	\N	229	339	{"thumbnail": {"ext": ".jpg", "url": "/uploads/thumbnail_leo_97da3abf00.jpg", "hash": "thumbnail_leo_97da3abf00", "mime": "image/jpeg", "name": "thumbnail_léo.jpg", "path": null, "size": 5.3, "width": 105, "height": 156, "sizeInBytes": 5296}}	leo_97da3abf00	.jpg	image/jpeg	17.63	/uploads/leo_97da3abf00.jpg	\N	local	\N	/	2025-11-15 14:18:34.822	2025-11-15 14:18:34.822	2025-11-15 14:18:34.823	3	3	\N
23	vpbcrel5f3h73zx87jn6vzum	3-36.jpg	\N	\N	1033	426	{"large": {"ext": ".jpg", "url": "/uploads/large_3_36_3b42f9ec0b.jpg", "hash": "large_3_36_3b42f9ec0b", "mime": "image/jpeg", "name": "large_3-36.jpg", "path": null, "size": 66.43, "width": 1000, "height": 412, "sizeInBytes": 66425}, "small": {"ext": ".jpg", "url": "/uploads/small_3_36_3b42f9ec0b.jpg", "hash": "small_3_36_3b42f9ec0b", "mime": "image/jpeg", "name": "small_3-36.jpg", "path": null, "size": 23.16, "width": 500, "height": 206, "sizeInBytes": 23155}, "medium": {"ext": ".jpg", "url": "/uploads/medium_3_36_3b42f9ec0b.jpg", "hash": "medium_3_36_3b42f9ec0b", "mime": "image/jpeg", "name": "medium_3-36.jpg", "path": null, "size": 42.91, "width": 750, "height": 309, "sizeInBytes": 42908}, "thumbnail": {"ext": ".jpg", "url": "/uploads/thumbnail_3_36_3b42f9ec0b.jpg", "hash": "thumbnail_3_36_3b42f9ec0b", "mime": "image/jpeg", "name": "thumbnail_3-36.jpg", "path": null, "size": 7.03, "width": 245, "height": 101, "sizeInBytes": 7034}}	3_36_3b42f9ec0b	.jpg	image/jpeg	65.76	/uploads/3_36_3b42f9ec0b.jpg	\N	local	\N	/	2025-11-15 14:23:44.788	2025-11-15 14:23:44.788	2025-11-15 14:23:44.788	3	3	\N
24	lzolpgkz3eytcngr3aj3h01e	10-10.jpg	\N	\N	1032	579	{"large": {"ext": ".jpg", "url": "/uploads/large_10_10_26b3f9cd75.jpg", "hash": "large_10_10_26b3f9cd75", "mime": "image/jpeg", "name": "large_10-10.jpg", "path": null, "size": 58.67, "width": 1000, "height": 561, "sizeInBytes": 58665}, "small": {"ext": ".jpg", "url": "/uploads/small_10_10_26b3f9cd75.jpg", "hash": "small_10_10_26b3f9cd75", "mime": "image/jpeg", "name": "small_10-10.jpg", "path": null, "size": 22.7, "width": 500, "height": 281, "sizeInBytes": 22695}, "medium": {"ext": ".jpg", "url": "/uploads/medium_10_10_26b3f9cd75.jpg", "hash": "medium_10_10_26b3f9cd75", "mime": "image/jpeg", "name": "medium_10-10.jpg", "path": null, "size": 38.31, "width": 750, "height": 421, "sizeInBytes": 38306}, "thumbnail": {"ext": ".jpg", "url": "/uploads/thumbnail_10_10_26b3f9cd75.jpg", "hash": "thumbnail_10_10_26b3f9cd75", "mime": "image/jpeg", "name": "thumbnail_10-10.jpg", "path": null, "size": 7.31, "width": 245, "height": 137, "sizeInBytes": 7305}}	10_10_26b3f9cd75	.jpg	image/jpeg	58.08	/uploads/10_10_26b3f9cd75.jpg	\N	local	\N	/	2025-11-15 14:23:44.867	2025-11-15 14:23:44.867	2025-11-15 14:23:44.867	3	3	\N
25	wvm6p4su885zk3ne6fkzoosm	9-12.jpg	\N	\N	1080	1363	{"large": {"ext": ".jpg", "url": "/uploads/large_9_12_580ea201a4.jpg", "hash": "large_9_12_580ea201a4", "mime": "image/jpeg", "name": "large_9-12.jpg", "path": null, "size": 50.46, "width": 792, "height": 1000, "sizeInBytes": 50459}, "small": {"ext": ".jpg", "url": "/uploads/small_9_12_580ea201a4.jpg", "hash": "small_9_12_580ea201a4", "mime": "image/jpeg", "name": "small_9-12.jpg", "path": null, "size": 20.54, "width": 396, "height": 500, "sizeInBytes": 20540}, "medium": {"ext": ".jpg", "url": "/uploads/medium_9_12_580ea201a4.jpg", "hash": "medium_9_12_580ea201a4", "mime": "image/jpeg", "name": "medium_9-12.jpg", "path": null, "size": 35.28, "width": 594, "height": 750, "sizeInBytes": 35280}, "thumbnail": {"ext": ".jpg", "url": "/uploads/thumbnail_9_12_580ea201a4.jpg", "hash": "thumbnail_9_12_580ea201a4", "mime": "image/jpeg", "name": "thumbnail_9-12.jpg", "path": null, "size": 4.17, "width": 124, "height": 156, "sizeInBytes": 4169}}	9_12_580ea201a4	.jpg	image/jpeg	72.56	/uploads/9_12_580ea201a4.jpg	\N	local	\N	/	2025-11-15 14:23:44.913	2025-11-15 14:23:44.913	2025-11-15 14:23:44.913	3	3	\N
26	p29iqmf4ys6ycux8kmhmkall	glarner fb1.jpg	\N	\N	1000	731	{"small": {"ext": ".jpg", "url": "/uploads/small_glarner_fb1_eaa2559b55.jpg", "hash": "small_glarner_fb1_eaa2559b55", "mime": "image/jpeg", "name": "small_glarner fb1.jpg", "path": null, "size": 28.43, "width": 500, "height": 366, "sizeInBytes": 28425}, "medium": {"ext": ".jpg", "url": "/uploads/medium_glarner_fb1_eaa2559b55.jpg", "hash": "medium_glarner_fb1_eaa2559b55", "mime": "image/jpeg", "name": "medium_glarner fb1.jpg", "path": null, "size": 51.04, "width": 750, "height": 548, "sizeInBytes": 51044}, "thumbnail": {"ext": ".jpg", "url": "/uploads/thumbnail_glarner_fb1_eaa2559b55.jpg", "hash": "thumbnail_glarner_fb1_eaa2559b55", "mime": "image/jpeg", "name": "thumbnail_glarner fb1.jpg", "path": null, "size": 7.62, "width": 214, "height": 156, "sizeInBytes": 7622}}	glarner_fb1_eaa2559b55	.jpg	image/jpeg	68.98	/uploads/glarner_fb1_eaa2559b55.jpg	\N	local	\N	/	2025-11-15 15:18:37.391	2025-11-15 15:18:37.391	2025-11-15 15:18:37.392	3	3	\N
27	a86xcx4dd5kdidkmiscd7ops	Glarner FB.jpeg	\N	\N	1454	747	{"large": {"ext": ".jpeg", "url": "/uploads/large_Glarner_FB_8fb9b498c2.jpeg", "hash": "large_Glarner_FB_8fb9b498c2", "mime": "image/jpeg", "name": "large_Glarner FB.jpeg", "path": null, "size": 47.29, "width": 1000, "height": 514, "sizeInBytes": 47290}, "small": {"ext": ".jpeg", "url": "/uploads/small_Glarner_FB_8fb9b498c2.jpeg", "hash": "small_Glarner_FB_8fb9b498c2", "mime": "image/jpeg", "name": "small_Glarner FB.jpeg", "path": null, "size": 15.28, "width": 500, "height": 257, "sizeInBytes": 15279}, "medium": {"ext": ".jpeg", "url": "/uploads/medium_Glarner_FB_8fb9b498c2.jpeg", "hash": "medium_Glarner_FB_8fb9b498c2", "mime": "image/jpeg", "name": "medium_Glarner FB.jpeg", "path": null, "size": 29.85, "width": 750, "height": 385, "sizeInBytes": 29852}, "thumbnail": {"ext": ".jpeg", "url": "/uploads/thumbnail_Glarner_FB_8fb9b498c2.jpeg", "hash": "thumbnail_Glarner_FB_8fb9b498c2", "mime": "image/jpeg", "name": "thumbnail_Glarner FB.jpeg", "path": null, "size": 4.65, "width": 245, "height": 126, "sizeInBytes": 4648}}	Glarner_FB_8fb9b498c2	.jpeg	image/jpeg	75.07	/uploads/Glarner_FB_8fb9b498c2.jpeg	\N	local	\N	/	2025-11-15 15:18:37.42	2025-11-15 15:18:37.42	2025-11-15 15:18:37.421	3	3	\N
28	xon3k7j1ztgcx5vfd8hl89dx	Erich Hess	\N	\N	231	266	{"thumbnail": {"ext": ".png", "url": "/uploads/thumbnail_2025_11_15_15_41_01_Un_conseiller_national_UDC_accuse_de_racisme_pour_avoir_parle_de_negres_RTS_41f42c79ea.png", "hash": "thumbnail_2025_11_15_15_41_01_Un_conseiller_national_UDC_accuse_de_racisme_pour_avoir_parle_de_negres_RTS_41f42c79ea", "mime": "image/png", "name": "thumbnail_2025-11-15 15_41_01-Un conseiller national UDC accusé de racisme pour avoir parlé de _nègres_ _ RTS .png", "path": null, "size": 45.84, "width": 135, "height": 156, "sizeInBytes": 45838}}	2025_11_15_15_41_01_Un_conseiller_national_UDC_accuse_de_racisme_pour_avoir_parle_de_negres_RTS_41f42c79ea	.png	image/png	31.13	/uploads/2025_11_15_15_41_01_Un_conseiller_national_UDC_accuse_de_racisme_pour_avoir_parle_de_negres_RTS_41f42c79ea.png	\N	local	\N	/	2025-11-15 15:42:08.69	2025-11-15 15:43:15.286	2025-11-15 15:42:08.691	4	1	\N
\.


--
-- Data for Name: files_folder_lnk; Type: TABLE DATA; Schema: public; Owner: strapi
--

COPY public.files_folder_lnk (id, file_id, folder_id, file_ord) FROM stdin;
\.


--
-- Data for Name: files_related_mph; Type: TABLE DATA; Schema: public; Owner: strapi
--

COPY public.files_related_mph (id, file_id, related_id, related_type, field, "order") FROM stdin;
113	23	39	api::the-wall-of-shame.the-wall-of-shame	evidence_image	1
114	24	39	api::the-wall-of-shame.the-wall-of-shame	evidence_image	2
115	25	39	api::the-wall-of-shame.the-wall-of-shame	evidence_image	3
116	23	38	api::the-wall-of-shame.the-wall-of-shame	evidence_image	1
117	24	38	api::the-wall-of-shame.the-wall-of-shame	evidence_image	2
118	25	38	api::the-wall-of-shame.the-wall-of-shame	evidence_image	3
119	23	42	api::the-wall-of-shame.the-wall-of-shame	evidence_image	1
17	6	3	api::sujet.sujet	picture	1
18	6	9	api::sujet.sujet	picture	1
120	24	42	api::the-wall-of-shame.the-wall-of-shame	evidence_image	2
121	25	42	api::the-wall-of-shame.the-wall-of-shame	evidence_image	3
122	23	41	api::the-wall-of-shame.the-wall-of-shame	evidence_image	1
123	24	41	api::the-wall-of-shame.the-wall-of-shame	evidence_image	2
23	8	1	api::sujet.sujet	picture	1
24	8	10	api::sujet.sujet	picture	1
124	25	41	api::the-wall-of-shame.the-wall-of-shame	evidence_image	3
29	11	13	api::sujet.sujet	picture	1
30	11	15	api::sujet.sujet	picture	1
31	12	16	api::sujet.sujet	picture	1
32	12	17	api::sujet.sujet	picture	1
34	13	21	api::the-wall-of-shame.the-wall-of-shame	evidence_image	1
37	13	23	api::the-wall-of-shame.the-wall-of-shame	evidence_image	1
38	13	20	api::the-wall-of-shame.the-wall-of-shame	evidence_image	1
39	13	25	api::the-wall-of-shame.the-wall-of-shame	evidence_image	1
40	13	22	api::the-wall-of-shame.the-wall-of-shame	evidence_image	1
46	10	11	api::sujet.sujet	picture	1
47	10	21	api::sujet.sujet	picture	1
48	16	18	api::sujet.sujet	picture	1
49	16	22	api::sujet.sujet	picture	1
51	15	20	api::sujet.sujet	picture	1
52	15	24	api::sujet.sujet	picture	1
53	18	23	api::sujet.sujet	picture	1
54	18	25	api::sujet.sujet	picture	1
60	19	27	api::the-wall-of-shame.the-wall-of-shame	evidence_image	1
61	19	26	api::the-wall-of-shame.the-wall-of-shame	evidence_image	1
62	19	29	api::the-wall-of-shame.the-wall-of-shame	evidence_image	1
63	19	28	api::the-wall-of-shame.the-wall-of-shame	evidence_image	1
144	28	28	api::sujet.sujet	picture	1
67	20	32	api::the-wall-of-shame.the-wall-of-shame	evidence_image	1
68	20	30	api::the-wall-of-shame.the-wall-of-shame	evidence_image	1
69	20	33	api::the-wall-of-shame.the-wall-of-shame	evidence_image	1
70	20	31	api::the-wall-of-shame.the-wall-of-shame	evidence_image	1
145	28	29	api::sujet.sujet	picture	1
73	21	36	api::the-wall-of-shame.the-wall-of-shame	evidence_image	1
74	21	34	api::the-wall-of-shame.the-wall-of-shame	evidence_image	1
75	21	37	api::the-wall-of-shame.the-wall-of-shame	evidence_image	1
76	21	35	api::the-wall-of-shame.the-wall-of-shame	evidence_image	1
152	26	44	api::the-wall-of-shame.the-wall-of-shame	evidence_image	1
153	27	44	api::the-wall-of-shame.the-wall-of-shame	evidence_image	2
154	26	43	api::the-wall-of-shame.the-wall-of-shame	evidence_image	1
155	27	43	api::the-wall-of-shame.the-wall-of-shame	evidence_image	2
156	26	50	api::the-wall-of-shame.the-wall-of-shame	evidence_image	1
157	27	50	api::the-wall-of-shame.the-wall-of-shame	evidence_image	2
158	26	49	api::the-wall-of-shame.the-wall-of-shame	evidence_image	1
159	27	49	api::the-wall-of-shame.the-wall-of-shame	evidence_image	2
93	22	26	api::sujet.sujet	picture	1
94	22	27	api::sujet.sujet	picture	1
101	23	40	api::the-wall-of-shame.the-wall-of-shame	evidence_image	1
102	24	40	api::the-wall-of-shame.the-wall-of-shame	evidence_image	2
103	25	40	api::the-wall-of-shame.the-wall-of-shame	evidence_image	3
\.


--
-- Data for Name: i18n_locale; Type: TABLE DATA; Schema: public; Owner: strapi
--

COPY public.i18n_locale (id, document_id, name, code, created_at, updated_at, published_at, created_by_id, updated_by_id, locale) FROM stdin;
1	ymmmsn5srz56dxi1lnbja8pg	English (en)	en	2025-11-11 22:34:28.224	2025-11-11 22:34:28.224	2025-11-11 22:34:28.225	\N	\N	\N
3	jxhlpj0nhlsgi6j7lqjs931k	German (Switzerland) (de-CH)	de-CH	2025-11-12 10:30:30.138	2025-11-12 10:30:30.138	2025-11-12 10:30:30.138	1	1	\N
4	igml24whk8kfj2gvtwod9fa9	Italian (Switzerland) (it-CH)	it-CH	2025-11-12 10:30:41.695	2025-11-12 10:30:41.695	2025-11-12 10:30:41.695	1	1	\N
2	ou875woz54l5gn8cbuvdd48a	French (Switzerland) (fr-CH)	fr-CH	2025-11-12 10:30:07.704	2025-11-12 10:46:30.582	2025-11-12 10:30:07.704	1	1	\N
\.


--
-- Data for Name: strapi_ai_localization_jobs; Type: TABLE DATA; Schema: public; Owner: strapi
--

COPY public.strapi_ai_localization_jobs (id, content_type, related_document_id, source_locale, target_locales, status, created_at, updated_at) FROM stdin;
\.


--
-- Data for Name: strapi_api_token_permissions; Type: TABLE DATA; Schema: public; Owner: strapi
--

COPY public.strapi_api_token_permissions (id, document_id, action, created_at, updated_at, published_at, created_by_id, updated_by_id, locale) FROM stdin;
\.


--
-- Data for Name: strapi_api_token_permissions_token_lnk; Type: TABLE DATA; Schema: public; Owner: strapi
--

COPY public.strapi_api_token_permissions_token_lnk (id, api_token_permission_id, api_token_id, api_token_permission_ord) FROM stdin;
\.


--
-- Data for Name: strapi_api_tokens; Type: TABLE DATA; Schema: public; Owner: strapi
--

COPY public.strapi_api_tokens (id, document_id, name, description, type, access_key, encrypted_key, last_used_at, expires_at, lifespan, created_at, updated_at, published_at, created_by_id, updated_by_id, locale) FROM stdin;
1	xvj54s8ax80mh0esew099o58	Read Only	A default API token with read-only permissions, only used for accessing resources	read-only	7a4f1ff38787df72c91021916fb3e9b110ea931ec04c263ac0967710a01c18125ae7e88eb40a59460326260b60e0074373f08ad16049e2158d154f8dcaff4b8d	\N	\N	\N	\N	2025-11-11 22:34:29.056	2025-11-11 22:34:29.056	2025-11-11 22:34:29.056	\N	\N	\N
2	bgmvyijdikzktuk074qofb3s	Full Access	A default API token with full access permissions, used for accessing or modifying resources	full-access	0617d5c58126b849b4f226e8c4ed90ebb7d730531a4d5d2de2191dd20520a1872d773f82ae8f2f08df73c8f9931485c0a45439873b35e0e3154741307e6da84f	\N	\N	\N	\N	2025-11-11 22:34:29.068	2025-11-11 22:34:29.068	2025-11-11 22:34:29.068	\N	\N	\N
\.


--
-- Data for Name: strapi_core_store_settings; Type: TABLE DATA; Schema: public; Owner: strapi
--

COPY public.strapi_core_store_settings (id, key, value, type, environment, tag) FROM stdin;
1	strapi_unidirectional-join-table-repair-ran	true	boolean	\N	\N
5	plugin_content_manager_configuration_content_types::plugin::upload.folder	{"settings":{"bulkable":true,"filterable":true,"searchable":true,"pageSize":10,"mainField":"name","defaultSortBy":"name","defaultSortOrder":"ASC"},"metadatas":{"id":{"edit":{},"list":{"label":"id","searchable":true,"sortable":true}},"name":{"edit":{"label":"name","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"name","searchable":true,"sortable":true}},"pathId":{"edit":{"label":"pathId","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"pathId","searchable":true,"sortable":true}},"parent":{"edit":{"label":"parent","description":"","placeholder":"","visible":true,"editable":true,"mainField":"name"},"list":{"label":"parent","searchable":true,"sortable":true}},"children":{"edit":{"label":"children","description":"","placeholder":"","visible":true,"editable":true,"mainField":"name"},"list":{"label":"children","searchable":false,"sortable":false}},"files":{"edit":{"label":"files","description":"","placeholder":"","visible":true,"editable":true,"mainField":"name"},"list":{"label":"files","searchable":false,"sortable":false}},"path":{"edit":{"label":"path","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"path","searchable":true,"sortable":true}},"createdAt":{"edit":{"label":"createdAt","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"createdAt","searchable":true,"sortable":true}},"updatedAt":{"edit":{"label":"updatedAt","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"updatedAt","searchable":true,"sortable":true}},"createdBy":{"edit":{"label":"createdBy","description":"","placeholder":"","visible":false,"editable":true,"mainField":"firstname"},"list":{"label":"createdBy","searchable":true,"sortable":true}},"updatedBy":{"edit":{"label":"updatedBy","description":"","placeholder":"","visible":false,"editable":true,"mainField":"firstname"},"list":{"label":"updatedBy","searchable":true,"sortable":true}},"documentId":{"edit":{},"list":{"label":"documentId","searchable":true,"sortable":true}}},"layouts":{"list":["id","name","pathId","parent"],"edit":[[{"name":"name","size":6},{"name":"pathId","size":4}],[{"name":"parent","size":6},{"name":"children","size":6}],[{"name":"files","size":6},{"name":"path","size":6}]]},"uid":"plugin::upload.folder"}	object	\N	\N
6	plugin_content_manager_configuration_content_types::plugin::i18n.locale	{"settings":{"bulkable":true,"filterable":true,"searchable":true,"pageSize":10,"mainField":"name","defaultSortBy":"name","defaultSortOrder":"ASC"},"metadatas":{"id":{"edit":{},"list":{"label":"id","searchable":true,"sortable":true}},"name":{"edit":{"label":"name","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"name","searchable":true,"sortable":true}},"code":{"edit":{"label":"code","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"code","searchable":true,"sortable":true}},"createdAt":{"edit":{"label":"createdAt","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"createdAt","searchable":true,"sortable":true}},"updatedAt":{"edit":{"label":"updatedAt","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"updatedAt","searchable":true,"sortable":true}},"createdBy":{"edit":{"label":"createdBy","description":"","placeholder":"","visible":false,"editable":true,"mainField":"firstname"},"list":{"label":"createdBy","searchable":true,"sortable":true}},"updatedBy":{"edit":{"label":"updatedBy","description":"","placeholder":"","visible":false,"editable":true,"mainField":"firstname"},"list":{"label":"updatedBy","searchable":true,"sortable":true}},"documentId":{"edit":{},"list":{"label":"documentId","searchable":true,"sortable":true}}},"layouts":{"list":["id","name","code","createdAt"],"edit":[[{"name":"name","size":6},{"name":"code","size":6}]]},"uid":"plugin::i18n.locale"}	object	\N	\N
7	plugin_content_manager_configuration_content_types::plugin::upload.file	{"settings":{"bulkable":true,"filterable":true,"searchable":true,"pageSize":10,"mainField":"name","defaultSortBy":"name","defaultSortOrder":"ASC"},"metadatas":{"id":{"edit":{},"list":{"label":"id","searchable":true,"sortable":true}},"name":{"edit":{"label":"name","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"name","searchable":true,"sortable":true}},"alternativeText":{"edit":{"label":"alternativeText","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"alternativeText","searchable":true,"sortable":true}},"caption":{"edit":{"label":"caption","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"caption","searchable":true,"sortable":true}},"width":{"edit":{"label":"width","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"width","searchable":true,"sortable":true}},"height":{"edit":{"label":"height","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"height","searchable":true,"sortable":true}},"formats":{"edit":{"label":"formats","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"formats","searchable":false,"sortable":false}},"hash":{"edit":{"label":"hash","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"hash","searchable":true,"sortable":true}},"ext":{"edit":{"label":"ext","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"ext","searchable":true,"sortable":true}},"mime":{"edit":{"label":"mime","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"mime","searchable":true,"sortable":true}},"size":{"edit":{"label":"size","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"size","searchable":true,"sortable":true}},"url":{"edit":{"label":"url","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"url","searchable":true,"sortable":true}},"previewUrl":{"edit":{"label":"previewUrl","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"previewUrl","searchable":true,"sortable":true}},"provider":{"edit":{"label":"provider","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"provider","searchable":true,"sortable":true}},"provider_metadata":{"edit":{"label":"provider_metadata","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"provider_metadata","searchable":false,"sortable":false}},"folder":{"edit":{"label":"folder","description":"","placeholder":"","visible":true,"editable":true,"mainField":"name"},"list":{"label":"folder","searchable":true,"sortable":true}},"folderPath":{"edit":{"label":"folderPath","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"folderPath","searchable":true,"sortable":true}},"createdAt":{"edit":{"label":"createdAt","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"createdAt","searchable":true,"sortable":true}},"updatedAt":{"edit":{"label":"updatedAt","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"updatedAt","searchable":true,"sortable":true}},"createdBy":{"edit":{"label":"createdBy","description":"","placeholder":"","visible":false,"editable":true,"mainField":"firstname"},"list":{"label":"createdBy","searchable":true,"sortable":true}},"updatedBy":{"edit":{"label":"updatedBy","description":"","placeholder":"","visible":false,"editable":true,"mainField":"firstname"},"list":{"label":"updatedBy","searchable":true,"sortable":true}},"documentId":{"edit":{},"list":{"label":"documentId","searchable":true,"sortable":true}}},"layouts":{"list":["id","name","alternativeText","caption"],"edit":[[{"name":"name","size":6},{"name":"alternativeText","size":6}],[{"name":"caption","size":6},{"name":"width","size":4}],[{"name":"height","size":4}],[{"name":"formats","size":12}],[{"name":"hash","size":6},{"name":"ext","size":6}],[{"name":"mime","size":6},{"name":"size","size":4}],[{"name":"url","size":6},{"name":"previewUrl","size":6}],[{"name":"provider","size":6}],[{"name":"provider_metadata","size":12}],[{"name":"folder","size":6},{"name":"folderPath","size":6}]]},"uid":"plugin::upload.file"}	object	\N	\N
8	plugin_content_manager_configuration_content_types::plugin::content-releases.release-action	{"settings":{"bulkable":true,"filterable":true,"searchable":true,"pageSize":10,"mainField":"contentType","defaultSortBy":"contentType","defaultSortOrder":"ASC"},"metadatas":{"id":{"edit":{},"list":{"label":"id","searchable":true,"sortable":true}},"type":{"edit":{"label":"type","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"type","searchable":true,"sortable":true}},"contentType":{"edit":{"label":"contentType","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"contentType","searchable":true,"sortable":true}},"entryDocumentId":{"edit":{"label":"entryDocumentId","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"entryDocumentId","searchable":true,"sortable":true}},"release":{"edit":{"label":"release","description":"","placeholder":"","visible":true,"editable":true,"mainField":"name"},"list":{"label":"release","searchable":true,"sortable":true}},"isEntryValid":{"edit":{"label":"isEntryValid","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"isEntryValid","searchable":true,"sortable":true}},"createdAt":{"edit":{"label":"createdAt","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"createdAt","searchable":true,"sortable":true}},"updatedAt":{"edit":{"label":"updatedAt","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"updatedAt","searchable":true,"sortable":true}},"createdBy":{"edit":{"label":"createdBy","description":"","placeholder":"","visible":false,"editable":true,"mainField":"firstname"},"list":{"label":"createdBy","searchable":true,"sortable":true}},"updatedBy":{"edit":{"label":"updatedBy","description":"","placeholder":"","visible":false,"editable":true,"mainField":"firstname"},"list":{"label":"updatedBy","searchable":true,"sortable":true}},"documentId":{"edit":{},"list":{"label":"documentId","searchable":true,"sortable":true}}},"layouts":{"list":["id","type","contentType","entryDocumentId"],"edit":[[{"name":"type","size":6},{"name":"contentType","size":6}],[{"name":"entryDocumentId","size":6},{"name":"release","size":6}],[{"name":"isEntryValid","size":4}]]},"uid":"plugin::content-releases.release-action"}	object	\N	\N
9	plugin_content_manager_configuration_content_types::plugin::content-releases.release	{"settings":{"bulkable":true,"filterable":true,"searchable":true,"pageSize":10,"mainField":"name","defaultSortBy":"name","defaultSortOrder":"ASC"},"metadatas":{"id":{"edit":{},"list":{"label":"id","searchable":true,"sortable":true}},"name":{"edit":{"label":"name","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"name","searchable":true,"sortable":true}},"releasedAt":{"edit":{"label":"releasedAt","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"releasedAt","searchable":true,"sortable":true}},"scheduledAt":{"edit":{"label":"scheduledAt","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"scheduledAt","searchable":true,"sortable":true}},"timezone":{"edit":{"label":"timezone","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"timezone","searchable":true,"sortable":true}},"status":{"edit":{"label":"status","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"status","searchable":true,"sortable":true}},"actions":{"edit":{"label":"actions","description":"","placeholder":"","visible":true,"editable":true,"mainField":"contentType"},"list":{"label":"actions","searchable":false,"sortable":false}},"createdAt":{"edit":{"label":"createdAt","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"createdAt","searchable":true,"sortable":true}},"updatedAt":{"edit":{"label":"updatedAt","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"updatedAt","searchable":true,"sortable":true}},"createdBy":{"edit":{"label":"createdBy","description":"","placeholder":"","visible":false,"editable":true,"mainField":"firstname"},"list":{"label":"createdBy","searchable":true,"sortable":true}},"updatedBy":{"edit":{"label":"updatedBy","description":"","placeholder":"","visible":false,"editable":true,"mainField":"firstname"},"list":{"label":"updatedBy","searchable":true,"sortable":true}},"documentId":{"edit":{},"list":{"label":"documentId","searchable":true,"sortable":true}}},"layouts":{"list":["id","name","releasedAt","scheduledAt"],"edit":[[{"name":"name","size":6},{"name":"releasedAt","size":6}],[{"name":"scheduledAt","size":6},{"name":"timezone","size":6}],[{"name":"status","size":6},{"name":"actions","size":6}]]},"uid":"plugin::content-releases.release"}	object	\N	\N
10	plugin_content_manager_configuration_content_types::plugin::review-workflows.workflow-stage	{"settings":{"bulkable":true,"filterable":true,"searchable":true,"pageSize":10,"mainField":"name","defaultSortBy":"name","defaultSortOrder":"ASC"},"metadatas":{"id":{"edit":{},"list":{"label":"id","searchable":true,"sortable":true}},"name":{"edit":{"label":"name","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"name","searchable":true,"sortable":true}},"color":{"edit":{"label":"color","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"color","searchable":true,"sortable":true}},"workflow":{"edit":{"label":"workflow","description":"","placeholder":"","visible":true,"editable":true,"mainField":"name"},"list":{"label":"workflow","searchable":true,"sortable":true}},"permissions":{"edit":{"label":"permissions","description":"","placeholder":"","visible":true,"editable":true,"mainField":"action"},"list":{"label":"permissions","searchable":false,"sortable":false}},"createdAt":{"edit":{"label":"createdAt","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"createdAt","searchable":true,"sortable":true}},"updatedAt":{"edit":{"label":"updatedAt","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"updatedAt","searchable":true,"sortable":true}},"createdBy":{"edit":{"label":"createdBy","description":"","placeholder":"","visible":false,"editable":true,"mainField":"firstname"},"list":{"label":"createdBy","searchable":true,"sortable":true}},"updatedBy":{"edit":{"label":"updatedBy","description":"","placeholder":"","visible":false,"editable":true,"mainField":"firstname"},"list":{"label":"updatedBy","searchable":true,"sortable":true}},"documentId":{"edit":{},"list":{"label":"documentId","searchable":true,"sortable":true}}},"layouts":{"list":["id","name","color","workflow"],"edit":[[{"name":"name","size":6},{"name":"color","size":6}],[{"name":"workflow","size":6},{"name":"permissions","size":6}]]},"uid":"plugin::review-workflows.workflow-stage"}	object	\N	\N
12	plugin_content_manager_configuration_content_types::plugin::review-workflows.workflow	{"settings":{"bulkable":true,"filterable":true,"searchable":true,"pageSize":10,"mainField":"name","defaultSortBy":"name","defaultSortOrder":"ASC"},"metadatas":{"id":{"edit":{},"list":{"label":"id","searchable":true,"sortable":true}},"name":{"edit":{"label":"name","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"name","searchable":true,"sortable":true}},"stages":{"edit":{"label":"stages","description":"","placeholder":"","visible":true,"editable":true,"mainField":"name"},"list":{"label":"stages","searchable":false,"sortable":false}},"stageRequiredToPublish":{"edit":{"label":"stageRequiredToPublish","description":"","placeholder":"","visible":true,"editable":true,"mainField":"name"},"list":{"label":"stageRequiredToPublish","searchable":true,"sortable":true}},"contentTypes":{"edit":{"label":"contentTypes","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"contentTypes","searchable":false,"sortable":false}},"createdAt":{"edit":{"label":"createdAt","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"createdAt","searchable":true,"sortable":true}},"updatedAt":{"edit":{"label":"updatedAt","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"updatedAt","searchable":true,"sortable":true}},"createdBy":{"edit":{"label":"createdBy","description":"","placeholder":"","visible":false,"editable":true,"mainField":"firstname"},"list":{"label":"createdBy","searchable":true,"sortable":true}},"updatedBy":{"edit":{"label":"updatedBy","description":"","placeholder":"","visible":false,"editable":true,"mainField":"firstname"},"list":{"label":"updatedBy","searchable":true,"sortable":true}},"documentId":{"edit":{},"list":{"label":"documentId","searchable":true,"sortable":true}}},"layouts":{"list":["id","name","stages","stageRequiredToPublish"],"edit":[[{"name":"name","size":6},{"name":"stages","size":6}],[{"name":"stageRequiredToPublish","size":6}],[{"name":"contentTypes","size":12}]]},"uid":"plugin::review-workflows.workflow"}	object	\N	\N
4	plugin_content_manager_configuration_content_types::api::the-wall-of-shame.the-wall-of-shame	{"settings":{"bulkable":true,"filterable":true,"searchable":true,"pageSize":10,"mainField":"title","defaultSortBy":"incident_date","defaultSortOrder":"DESC"},"metadatas":{"id":{"edit":{},"list":{"label":"id","searchable":true,"sortable":true}},"title":{"edit":{"label":"title","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"title","searchable":true,"sortable":true}},"slug":{"edit":{"label":"slug","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"slug","searchable":true,"sortable":true}},"sujet":{"edit":{"label":"sujet","description":"","placeholder":"","visible":true,"editable":true,"mainField":"name"},"list":{"label":"sujet","searchable":true,"sortable":true}},"subject_role":{"edit":{"label":"subject_role","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"subject_role","searchable":true,"sortable":true}},"incident_date":{"edit":{"label":"incident_date","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"incident_date","searchable":true,"sortable":true}},"category":{"edit":{"label":"category","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"category","searchable":true,"sortable":true}},"description":{"edit":{"label":"description","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"description","searchable":false,"sortable":false}},"incident_location":{"edit":{"label":"incident_location","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"incident_location","searchable":true,"sortable":true}},"evidence_image":{"edit":{"label":"evidence_image","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"evidence_image","searchable":false,"sortable":false}},"consequence":{"edit":{"label":"consequence","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"consequence","searchable":false,"sortable":false}},"sources":{"edit":{"label":"sources","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"sources","searchable":false,"sortable":false}},"visible":{"edit":{"label":"visible","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"visible","searchable":true,"sortable":true}},"createdAt":{"edit":{"label":"createdAt","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"createdAt","searchable":true,"sortable":true}},"updatedAt":{"edit":{"label":"updatedAt","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"updatedAt","searchable":true,"sortable":true}},"createdBy":{"edit":{"label":"createdBy","description":"","placeholder":"","visible":false,"editable":true,"mainField":"firstname"},"list":{"label":"createdBy","searchable":true,"sortable":true}},"updatedBy":{"edit":{"label":"updatedBy","description":"","placeholder":"","visible":false,"editable":true,"mainField":"firstname"},"list":{"label":"updatedBy","searchable":true,"sortable":true}},"documentId":{"edit":{},"list":{"label":"documentId","searchable":true,"sortable":true}}},"layouts":{"list":["id","incident_date","sujet","title"],"edit":[[{"name":"title","size":6},{"name":"slug","size":6}],[{"name":"incident_date","size":4}],[{"name":"category","size":6}],[{"name":"subject_role","size":6},{"name":"incident_location","size":6}],[{"name":"description","size":12}],[{"name":"sources","size":12}],[{"name":"consequence","size":12}],[{"name":"sujet","size":6},{"name":"evidence_image","size":6}],[{"name":"visible","size":4}]]},"uid":"api::the-wall-of-shame.the-wall-of-shame"}	object	\N	\N
2	strapi_content_types_schema	{"plugin::upload.file":{"collectionName":"files","info":{"singularName":"file","pluralName":"files","displayName":"File","description":""},"options":{"draftAndPublish":false},"pluginOptions":{"content-manager":{"visible":false},"content-type-builder":{"visible":false}},"attributes":{"name":{"type":"string","configurable":false,"required":true},"alternativeText":{"type":"string","configurable":false},"caption":{"type":"string","configurable":false},"width":{"type":"integer","configurable":false},"height":{"type":"integer","configurable":false},"formats":{"type":"json","configurable":false},"hash":{"type":"string","configurable":false,"required":true},"ext":{"type":"string","configurable":false},"mime":{"type":"string","configurable":false,"required":true},"size":{"type":"decimal","configurable":false,"required":true},"url":{"type":"string","configurable":false,"required":true},"previewUrl":{"type":"string","configurable":false},"provider":{"type":"string","configurable":false,"required":true},"provider_metadata":{"type":"json","configurable":false},"related":{"type":"relation","relation":"morphToMany","configurable":false},"folder":{"type":"relation","relation":"manyToOne","target":"plugin::upload.folder","inversedBy":"files","private":true},"folderPath":{"type":"string","minLength":1,"required":true,"private":true,"searchable":false},"createdAt":{"type":"datetime"},"updatedAt":{"type":"datetime"},"publishedAt":{"type":"datetime","configurable":false,"writable":true,"visible":false},"createdBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true},"updatedBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true},"locale":{"writable":true,"private":true,"configurable":false,"visible":false,"type":"string"},"localizations":{"type":"relation","relation":"oneToMany","target":"plugin::upload.file","writable":false,"private":true,"configurable":false,"visible":false,"unstable_virtual":true,"joinColumn":{"name":"document_id","referencedColumn":"document_id","referencedTable":"files"}}},"indexes":[{"name":"upload_files_folder_path_index","columns":["folder_path"],"type":null},{"name":"upload_files_created_at_index","columns":["created_at"],"type":null},{"name":"upload_files_updated_at_index","columns":["updated_at"],"type":null},{"name":"upload_files_name_index","columns":["name"],"type":null},{"name":"upload_files_size_index","columns":["size"],"type":null},{"name":"upload_files_ext_index","columns":["ext"],"type":null}],"plugin":"upload","globalId":"UploadFile","uid":"plugin::upload.file","modelType":"contentType","kind":"collectionType","__schema__":{"collectionName":"files","info":{"singularName":"file","pluralName":"files","displayName":"File","description":""},"options":{},"pluginOptions":{"content-manager":{"visible":false},"content-type-builder":{"visible":false}},"attributes":{"name":{"type":"string","configurable":false,"required":true},"alternativeText":{"type":"string","configurable":false},"caption":{"type":"string","configurable":false},"width":{"type":"integer","configurable":false},"height":{"type":"integer","configurable":false},"formats":{"type":"json","configurable":false},"hash":{"type":"string","configurable":false,"required":true},"ext":{"type":"string","configurable":false},"mime":{"type":"string","configurable":false,"required":true},"size":{"type":"decimal","configurable":false,"required":true},"url":{"type":"string","configurable":false,"required":true},"previewUrl":{"type":"string","configurable":false},"provider":{"type":"string","configurable":false,"required":true},"provider_metadata":{"type":"json","configurable":false},"related":{"type":"relation","relation":"morphToMany","configurable":false},"folder":{"type":"relation","relation":"manyToOne","target":"plugin::upload.folder","inversedBy":"files","private":true},"folderPath":{"type":"string","minLength":1,"required":true,"private":true,"searchable":false}},"kind":"collectionType"},"modelName":"file"},"plugin::upload.folder":{"collectionName":"upload_folders","info":{"singularName":"folder","pluralName":"folders","displayName":"Folder"},"options":{"draftAndPublish":false},"pluginOptions":{"content-manager":{"visible":false},"content-type-builder":{"visible":false}},"attributes":{"name":{"type":"string","minLength":1,"required":true},"pathId":{"type":"integer","unique":true,"required":true},"parent":{"type":"relation","relation":"manyToOne","target":"plugin::upload.folder","inversedBy":"children"},"children":{"type":"relation","relation":"oneToMany","target":"plugin::upload.folder","mappedBy":"parent"},"files":{"type":"relation","relation":"oneToMany","target":"plugin::upload.file","mappedBy":"folder"},"path":{"type":"string","minLength":1,"required":true},"createdAt":{"type":"datetime"},"updatedAt":{"type":"datetime"},"publishedAt":{"type":"datetime","configurable":false,"writable":true,"visible":false},"createdBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true},"updatedBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true},"locale":{"writable":true,"private":true,"configurable":false,"visible":false,"type":"string"},"localizations":{"type":"relation","relation":"oneToMany","target":"plugin::upload.folder","writable":false,"private":true,"configurable":false,"visible":false,"unstable_virtual":true,"joinColumn":{"name":"document_id","referencedColumn":"document_id","referencedTable":"upload_folders"}}},"indexes":[{"name":"upload_folders_path_id_index","columns":["path_id"],"type":"unique"},{"name":"upload_folders_path_index","columns":["path"],"type":"unique"}],"plugin":"upload","globalId":"UploadFolder","uid":"plugin::upload.folder","modelType":"contentType","kind":"collectionType","__schema__":{"collectionName":"upload_folders","info":{"singularName":"folder","pluralName":"folders","displayName":"Folder"},"options":{},"pluginOptions":{"content-manager":{"visible":false},"content-type-builder":{"visible":false}},"attributes":{"name":{"type":"string","minLength":1,"required":true},"pathId":{"type":"integer","unique":true,"required":true},"parent":{"type":"relation","relation":"manyToOne","target":"plugin::upload.folder","inversedBy":"children"},"children":{"type":"relation","relation":"oneToMany","target":"plugin::upload.folder","mappedBy":"parent"},"files":{"type":"relation","relation":"oneToMany","target":"plugin::upload.file","mappedBy":"folder"},"path":{"type":"string","minLength":1,"required":true}},"kind":"collectionType"},"modelName":"folder"},"plugin::i18n.locale":{"info":{"singularName":"locale","pluralName":"locales","collectionName":"locales","displayName":"Locale","description":""},"options":{"draftAndPublish":false},"pluginOptions":{"content-manager":{"visible":false},"content-type-builder":{"visible":false}},"attributes":{"name":{"type":"string","min":1,"max":50,"configurable":false},"code":{"type":"string","unique":true,"configurable":false},"createdAt":{"type":"datetime"},"updatedAt":{"type":"datetime"},"publishedAt":{"type":"datetime","configurable":false,"writable":true,"visible":false},"createdBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true},"updatedBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true},"locale":{"writable":true,"private":true,"configurable":false,"visible":false,"type":"string"},"localizations":{"type":"relation","relation":"oneToMany","target":"plugin::i18n.locale","writable":false,"private":true,"configurable":false,"visible":false,"unstable_virtual":true,"joinColumn":{"name":"document_id","referencedColumn":"document_id","referencedTable":"i18n_locale"}}},"plugin":"i18n","collectionName":"i18n_locale","globalId":"I18NLocale","uid":"plugin::i18n.locale","modelType":"contentType","kind":"collectionType","__schema__":{"collectionName":"i18n_locale","info":{"singularName":"locale","pluralName":"locales","collectionName":"locales","displayName":"Locale","description":""},"options":{},"pluginOptions":{"content-manager":{"visible":false},"content-type-builder":{"visible":false}},"attributes":{"name":{"type":"string","min":1,"max":50,"configurable":false},"code":{"type":"string","unique":true,"configurable":false}},"kind":"collectionType"},"modelName":"locale"},"plugin::content-releases.release":{"collectionName":"strapi_releases","info":{"singularName":"release","pluralName":"releases","displayName":"Release"},"options":{"draftAndPublish":false},"pluginOptions":{"content-manager":{"visible":false},"content-type-builder":{"visible":false}},"attributes":{"name":{"type":"string","required":true},"releasedAt":{"type":"datetime"},"scheduledAt":{"type":"datetime"},"timezone":{"type":"string"},"status":{"type":"enumeration","enum":["ready","blocked","failed","done","empty"],"required":true},"actions":{"type":"relation","relation":"oneToMany","target":"plugin::content-releases.release-action","mappedBy":"release"},"createdAt":{"type":"datetime"},"updatedAt":{"type":"datetime"},"publishedAt":{"type":"datetime","configurable":false,"writable":true,"visible":false},"createdBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true},"updatedBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true},"locale":{"writable":true,"private":true,"configurable":false,"visible":false,"type":"string"},"localizations":{"type":"relation","relation":"oneToMany","target":"plugin::content-releases.release","writable":false,"private":true,"configurable":false,"visible":false,"unstable_virtual":true,"joinColumn":{"name":"document_id","referencedColumn":"document_id","referencedTable":"strapi_releases"}}},"plugin":"content-releases","globalId":"ContentReleasesRelease","uid":"plugin::content-releases.release","modelType":"contentType","kind":"collectionType","__schema__":{"collectionName":"strapi_releases","info":{"singularName":"release","pluralName":"releases","displayName":"Release"},"options":{"draftAndPublish":false},"pluginOptions":{"content-manager":{"visible":false},"content-type-builder":{"visible":false}},"attributes":{"name":{"type":"string","required":true},"releasedAt":{"type":"datetime"},"scheduledAt":{"type":"datetime"},"timezone":{"type":"string"},"status":{"type":"enumeration","enum":["ready","blocked","failed","done","empty"],"required":true},"actions":{"type":"relation","relation":"oneToMany","target":"plugin::content-releases.release-action","mappedBy":"release"}},"kind":"collectionType"},"modelName":"release"},"plugin::content-releases.release-action":{"collectionName":"strapi_release_actions","info":{"singularName":"release-action","pluralName":"release-actions","displayName":"Release Action"},"options":{"draftAndPublish":false},"pluginOptions":{"content-manager":{"visible":false},"content-type-builder":{"visible":false}},"attributes":{"type":{"type":"enumeration","enum":["publish","unpublish"],"required":true},"contentType":{"type":"string","required":true},"entryDocumentId":{"type":"string"},"locale":{"writable":true,"private":true,"configurable":false,"visible":false,"type":"string"},"release":{"type":"relation","relation":"manyToOne","target":"plugin::content-releases.release","inversedBy":"actions"},"isEntryValid":{"type":"boolean"},"createdAt":{"type":"datetime"},"updatedAt":{"type":"datetime"},"publishedAt":{"type":"datetime","configurable":false,"writable":true,"visible":false},"createdBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true},"updatedBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true},"localizations":{"type":"relation","relation":"oneToMany","target":"plugin::content-releases.release-action","writable":false,"private":true,"configurable":false,"visible":false,"unstable_virtual":true,"joinColumn":{"name":"document_id","referencedColumn":"document_id","referencedTable":"strapi_release_actions"}}},"plugin":"content-releases","globalId":"ContentReleasesReleaseAction","uid":"plugin::content-releases.release-action","modelType":"contentType","kind":"collectionType","__schema__":{"collectionName":"strapi_release_actions","info":{"singularName":"release-action","pluralName":"release-actions","displayName":"Release Action"},"options":{"draftAndPublish":false},"pluginOptions":{"content-manager":{"visible":false},"content-type-builder":{"visible":false}},"attributes":{"type":{"type":"enumeration","enum":["publish","unpublish"],"required":true},"contentType":{"type":"string","required":true},"entryDocumentId":{"type":"string"},"locale":{"type":"string"},"release":{"type":"relation","relation":"manyToOne","target":"plugin::content-releases.release","inversedBy":"actions"},"isEntryValid":{"type":"boolean"}},"kind":"collectionType"},"modelName":"release-action"},"plugin::review-workflows.workflow":{"collectionName":"strapi_workflows","info":{"name":"Workflow","description":"","singularName":"workflow","pluralName":"workflows","displayName":"Workflow"},"options":{"draftAndPublish":false},"pluginOptions":{"content-manager":{"visible":false},"content-type-builder":{"visible":false}},"attributes":{"name":{"type":"string","required":true,"unique":true},"stages":{"type":"relation","target":"plugin::review-workflows.workflow-stage","relation":"oneToMany","mappedBy":"workflow"},"stageRequiredToPublish":{"type":"relation","target":"plugin::review-workflows.workflow-stage","relation":"oneToOne","required":false},"contentTypes":{"type":"json","required":true,"default":"[]"},"createdAt":{"type":"datetime"},"updatedAt":{"type":"datetime"},"publishedAt":{"type":"datetime","configurable":false,"writable":true,"visible":false},"createdBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true},"updatedBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true},"locale":{"writable":true,"private":true,"configurable":false,"visible":false,"type":"string"},"localizations":{"type":"relation","relation":"oneToMany","target":"plugin::review-workflows.workflow","writable":false,"private":true,"configurable":false,"visible":false,"unstable_virtual":true,"joinColumn":{"name":"document_id","referencedColumn":"document_id","referencedTable":"strapi_workflows"}}},"plugin":"review-workflows","globalId":"ReviewWorkflowsWorkflow","uid":"plugin::review-workflows.workflow","modelType":"contentType","kind":"collectionType","__schema__":{"collectionName":"strapi_workflows","info":{"name":"Workflow","description":"","singularName":"workflow","pluralName":"workflows","displayName":"Workflow"},"options":{},"pluginOptions":{"content-manager":{"visible":false},"content-type-builder":{"visible":false}},"attributes":{"name":{"type":"string","required":true,"unique":true},"stages":{"type":"relation","target":"plugin::review-workflows.workflow-stage","relation":"oneToMany","mappedBy":"workflow"},"stageRequiredToPublish":{"type":"relation","target":"plugin::review-workflows.workflow-stage","relation":"oneToOne","required":false},"contentTypes":{"type":"json","required":true,"default":"[]"}},"kind":"collectionType"},"modelName":"workflow"},"plugin::review-workflows.workflow-stage":{"collectionName":"strapi_workflows_stages","info":{"name":"Workflow Stage","description":"","singularName":"workflow-stage","pluralName":"workflow-stages","displayName":"Stages"},"options":{"version":"1.1.0","draftAndPublish":false},"pluginOptions":{"content-manager":{"visible":false},"content-type-builder":{"visible":false}},"attributes":{"name":{"type":"string","configurable":false},"color":{"type":"string","configurable":false,"default":"#4945FF"},"workflow":{"type":"relation","target":"plugin::review-workflows.workflow","relation":"manyToOne","inversedBy":"stages","configurable":false},"permissions":{"type":"relation","target":"admin::permission","relation":"manyToMany","configurable":false},"createdAt":{"type":"datetime"},"updatedAt":{"type":"datetime"},"publishedAt":{"type":"datetime","configurable":false,"writable":true,"visible":false},"createdBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true},"updatedBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true},"locale":{"writable":true,"private":true,"configurable":false,"visible":false,"type":"string"},"localizations":{"type":"relation","relation":"oneToMany","target":"plugin::review-workflows.workflow-stage","writable":false,"private":true,"configurable":false,"visible":false,"unstable_virtual":true,"joinColumn":{"name":"document_id","referencedColumn":"document_id","referencedTable":"strapi_workflows_stages"}}},"plugin":"review-workflows","globalId":"ReviewWorkflowsWorkflowStage","uid":"plugin::review-workflows.workflow-stage","modelType":"contentType","kind":"collectionType","__schema__":{"collectionName":"strapi_workflows_stages","info":{"name":"Workflow Stage","description":"","singularName":"workflow-stage","pluralName":"workflow-stages","displayName":"Stages"},"options":{"version":"1.1.0"},"pluginOptions":{"content-manager":{"visible":false},"content-type-builder":{"visible":false}},"attributes":{"name":{"type":"string","configurable":false},"color":{"type":"string","configurable":false,"default":"#4945FF"},"workflow":{"type":"relation","target":"plugin::review-workflows.workflow","relation":"manyToOne","inversedBy":"stages","configurable":false},"permissions":{"type":"relation","target":"admin::permission","relation":"manyToMany","configurable":false}},"kind":"collectionType"},"modelName":"workflow-stage"},"plugin::users-permissions.permission":{"collectionName":"up_permissions","info":{"name":"permission","description":"","singularName":"permission","pluralName":"permissions","displayName":"Permission"},"pluginOptions":{"content-manager":{"visible":false},"content-type-builder":{"visible":false}},"attributes":{"action":{"type":"string","required":true,"configurable":false},"role":{"type":"relation","relation":"manyToOne","target":"plugin::users-permissions.role","inversedBy":"permissions","configurable":false},"createdAt":{"type":"datetime"},"updatedAt":{"type":"datetime"},"publishedAt":{"type":"datetime","configurable":false,"writable":true,"visible":false},"createdBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true},"updatedBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true},"locale":{"writable":true,"private":true,"configurable":false,"visible":false,"type":"string"},"localizations":{"type":"relation","relation":"oneToMany","target":"plugin::users-permissions.permission","writable":false,"private":true,"configurable":false,"visible":false,"unstable_virtual":true,"joinColumn":{"name":"document_id","referencedColumn":"document_id","referencedTable":"up_permissions"}}},"plugin":"users-permissions","globalId":"UsersPermissionsPermission","uid":"plugin::users-permissions.permission","modelType":"contentType","kind":"collectionType","__schema__":{"collectionName":"up_permissions","info":{"name":"permission","description":"","singularName":"permission","pluralName":"permissions","displayName":"Permission"},"pluginOptions":{"content-manager":{"visible":false},"content-type-builder":{"visible":false}},"attributes":{"action":{"type":"string","required":true,"configurable":false},"role":{"type":"relation","relation":"manyToOne","target":"plugin::users-permissions.role","inversedBy":"permissions","configurable":false}},"kind":"collectionType"},"modelName":"permission","options":{"draftAndPublish":false}},"plugin::users-permissions.role":{"collectionName":"up_roles","info":{"name":"role","description":"","singularName":"role","pluralName":"roles","displayName":"Role"},"pluginOptions":{"content-manager":{"visible":false},"content-type-builder":{"visible":false}},"attributes":{"name":{"type":"string","minLength":3,"required":true,"configurable":false},"description":{"type":"string","configurable":false},"type":{"type":"string","unique":true,"configurable":false},"permissions":{"type":"relation","relation":"oneToMany","target":"plugin::users-permissions.permission","mappedBy":"role","configurable":false},"users":{"type":"relation","relation":"oneToMany","target":"plugin::users-permissions.user","mappedBy":"role","configurable":false},"createdAt":{"type":"datetime"},"updatedAt":{"type":"datetime"},"publishedAt":{"type":"datetime","configurable":false,"writable":true,"visible":false},"createdBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true},"updatedBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true},"locale":{"writable":true,"private":true,"configurable":false,"visible":false,"type":"string"},"localizations":{"type":"relation","relation":"oneToMany","target":"plugin::users-permissions.role","writable":false,"private":true,"configurable":false,"visible":false,"unstable_virtual":true,"joinColumn":{"name":"document_id","referencedColumn":"document_id","referencedTable":"up_roles"}}},"plugin":"users-permissions","globalId":"UsersPermissionsRole","uid":"plugin::users-permissions.role","modelType":"contentType","kind":"collectionType","__schema__":{"collectionName":"up_roles","info":{"name":"role","description":"","singularName":"role","pluralName":"roles","displayName":"Role"},"pluginOptions":{"content-manager":{"visible":false},"content-type-builder":{"visible":false}},"attributes":{"name":{"type":"string","minLength":3,"required":true,"configurable":false},"description":{"type":"string","configurable":false},"type":{"type":"string","unique":true,"configurable":false},"permissions":{"type":"relation","relation":"oneToMany","target":"plugin::users-permissions.permission","mappedBy":"role","configurable":false},"users":{"type":"relation","relation":"oneToMany","target":"plugin::users-permissions.user","mappedBy":"role","configurable":false}},"kind":"collectionType"},"modelName":"role","options":{"draftAndPublish":false}},"plugin::users-permissions.user":{"collectionName":"up_users","info":{"name":"user","description":"","singularName":"user","pluralName":"users","displayName":"User"},"options":{"timestamps":true,"draftAndPublish":false},"attributes":{"username":{"type":"string","minLength":3,"unique":true,"configurable":false,"required":true},"email":{"type":"email","minLength":6,"configurable":false,"required":true},"provider":{"type":"string","configurable":false},"password":{"type":"password","minLength":6,"configurable":false,"private":true,"searchable":false},"resetPasswordToken":{"type":"string","configurable":false,"private":true,"searchable":false},"confirmationToken":{"type":"string","configurable":false,"private":true,"searchable":false},"confirmed":{"type":"boolean","default":false,"configurable":false},"blocked":{"type":"boolean","default":false,"configurable":false},"role":{"type":"relation","relation":"manyToOne","target":"plugin::users-permissions.role","inversedBy":"users","configurable":false},"createdAt":{"type":"datetime"},"updatedAt":{"type":"datetime"},"publishedAt":{"type":"datetime","configurable":false,"writable":true,"visible":false},"createdBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true},"updatedBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true},"locale":{"writable":true,"private":true,"configurable":false,"visible":false,"type":"string"},"localizations":{"type":"relation","relation":"oneToMany","target":"plugin::users-permissions.user","writable":false,"private":true,"configurable":false,"visible":false,"unstable_virtual":true,"joinColumn":{"name":"document_id","referencedColumn":"document_id","referencedTable":"up_users"}}},"config":{"attributes":{"resetPasswordToken":{"hidden":true},"confirmationToken":{"hidden":true},"provider":{"hidden":true}}},"plugin":"users-permissions","globalId":"UsersPermissionsUser","uid":"plugin::users-permissions.user","modelType":"contentType","kind":"collectionType","__schema__":{"collectionName":"up_users","info":{"name":"user","description":"","singularName":"user","pluralName":"users","displayName":"User"},"options":{"timestamps":true},"attributes":{"username":{"type":"string","minLength":3,"unique":true,"configurable":false,"required":true},"email":{"type":"email","minLength":6,"configurable":false,"required":true},"provider":{"type":"string","configurable":false},"password":{"type":"password","minLength":6,"configurable":false,"private":true,"searchable":false},"resetPasswordToken":{"type":"string","configurable":false,"private":true,"searchable":false},"confirmationToken":{"type":"string","configurable":false,"private":true,"searchable":false},"confirmed":{"type":"boolean","default":false,"configurable":false},"blocked":{"type":"boolean","default":false,"configurable":false},"role":{"type":"relation","relation":"manyToOne","target":"plugin::users-permissions.role","inversedBy":"users","configurable":false}},"kind":"collectionType"},"modelName":"user"},"api::sujet.sujet":{"kind":"collectionType","collectionName":"sujets","info":{"singularName":"sujet","pluralName":"sujets","displayName":"Sujet"},"options":{"draftAndPublish":true},"pluginOptions":{},"attributes":{"name":{"type":"string","required":true},"canton":{"type":"enumeration","required":true,"enum":["CH","AG","AI","AR","BE","BL","BS","FR","GE","GL","GR","JU","LU","NE","NW","OW","SG","SH","SO","SZ","TG","TI","UR","VD","VS","ZG","ZH"]},"picture":{"type":"media","multiple":false,"allowedTypes":["images"]},"the_wall_of_shames":{"type":"relation","relation":"oneToMany","target":"api::the-wall-of-shame.the-wall-of-shame","mappedBy":"sujet"},"affiliation":{"type":"enumeration","required":true,"default":"SVP","enum":["SVP","SP","FDP","Mitte","Gruene","GLP","AutoP","JungeTat","PdA","Sol","Pirat","PCR","MCG","EVP","EDU","Lega","None","Other"]},"createdAt":{"type":"datetime"},"updatedAt":{"type":"datetime"},"publishedAt":{"type":"datetime","configurable":false,"writable":true,"visible":false},"createdBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true},"updatedBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true},"locale":{"writable":true,"private":true,"configurable":false,"visible":false,"type":"string"},"localizations":{"type":"relation","relation":"oneToMany","target":"api::sujet.sujet","writable":false,"private":true,"configurable":false,"visible":false,"unstable_virtual":true,"joinColumn":{"name":"document_id","referencedColumn":"document_id","referencedTable":"sujets"}}},"apiName":"sujet","globalId":"Sujet","uid":"api::sujet.sujet","modelType":"contentType","__schema__":{"collectionName":"sujets","info":{"singularName":"sujet","pluralName":"sujets","displayName":"Sujet"},"options":{"draftAndPublish":true},"pluginOptions":{},"attributes":{"name":{"type":"string","required":true},"canton":{"type":"enumeration","required":true,"enum":["CH","AG","AI","AR","BE","BL","BS","FR","GE","GL","GR","JU","LU","NE","NW","OW","SG","SH","SO","SZ","TG","TI","UR","VD","VS","ZG","ZH"]},"picture":{"type":"media","multiple":false,"allowedTypes":["images"]},"the_wall_of_shames":{"type":"relation","relation":"oneToMany","target":"api::the-wall-of-shame.the-wall-of-shame","mappedBy":"sujet"},"affiliation":{"type":"enumeration","required":true,"default":"SVP","enum":["SVP","SP","FDP","Mitte","Gruene","GLP","AutoP","JungeTat","PdA","Sol","Pirat","PCR","MCG","EVP","EDU","Lega","None","Other"]}},"kind":"collectionType"},"modelName":"sujet","actions":{},"lifecycles":{}},"api::the-wall-of-shame.the-wall-of-shame":{"kind":"collectionType","collectionName":"the_wall_of_shames","info":{"singularName":"the-wall-of-shame","pluralName":"the-wall-of-shames","displayName":"The Wall of Shame"},"options":{"draftAndPublish":true},"pluginOptions":{"i18n":{"localized":true}},"attributes":{"title":{"type":"string","pluginOptions":{"i18n":{"localized":true}},"minLength":11,"maxLength":99,"required":true,"unique":true},"slug":{"type":"uid","pluginOptions":{"i18n":{"localized":true}},"targetField":"title","required":true},"sujet":{"type":"relation","relation":"manyToOne","target":"api::sujet.sujet","inversedBy":"the_wall_of_shames"},"subject_role":{"type":"string","pluginOptions":{"i18n":{"localized":true}}},"incident_date":{"type":"date","pluginOptions":{"i18n":{"localized":false}},"required":true},"category":{"type":"enumeration","pluginOptions":{"i18n":{"localized":false}},"required":true,"enum":["racism","antisemitism","sexism","homophobia","violence","fraud","transphobia","islamophobia","neonazism","xenophobia","conspiracism","other"]},"description":{"type":"richtext","pluginOptions":{"i18n":{"localized":true}},"required":true,"minLength":19},"incident_location":{"type":"enumeration","pluginOptions":{"i18n":{"localized":false}},"required":true,"enum":["Facebook","Twitter_X","Instagram","Parliament","Television","Newspaper","OtherMedia","Campaign","Statement","Public","Other"]},"evidence_image":{"type":"media","pluginOptions":{"i18n":{"localized":false}},"multiple":true,"allowedTypes":["images","files","videos","audios"]},"consequence":{"type":"richtext","pluginOptions":{"i18n":{"localized":true}}},"sources":{"type":"component","pluginOptions":{"i18n":{"localized":false}},"component":"link.link","repeatable":true},"visible":{"type":"boolean","pluginOptions":{"i18n":{"localized":false}},"default":true},"createdAt":{"type":"datetime"},"updatedAt":{"type":"datetime"},"publishedAt":{"type":"datetime","configurable":false,"writable":true,"visible":false},"createdBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true},"updatedBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true},"locale":{"writable":true,"private":false,"configurable":false,"visible":false,"type":"string"},"localizations":{"type":"relation","relation":"oneToMany","target":"api::the-wall-of-shame.the-wall-of-shame","writable":false,"private":false,"configurable":false,"visible":false,"unstable_virtual":true,"joinColumn":{"name":"document_id","referencedColumn":"document_id","referencedTable":"the_wall_of_shames"}}},"apiName":"the-wall-of-shame","globalId":"TheWallOfShame","uid":"api::the-wall-of-shame.the-wall-of-shame","modelType":"contentType","__schema__":{"collectionName":"the_wall_of_shames","info":{"singularName":"the-wall-of-shame","pluralName":"the-wall-of-shames","displayName":"The Wall of Shame"},"options":{"draftAndPublish":true},"pluginOptions":{"i18n":{"localized":true}},"attributes":{"title":{"type":"string","pluginOptions":{"i18n":{"localized":true}},"minLength":11,"maxLength":99,"required":true,"unique":true},"slug":{"type":"uid","pluginOptions":{"i18n":{"localized":true}},"targetField":"title","required":true},"sujet":{"type":"relation","relation":"manyToOne","target":"api::sujet.sujet","inversedBy":"the_wall_of_shames"},"subject_role":{"type":"string","pluginOptions":{"i18n":{"localized":true}}},"incident_date":{"type":"date","pluginOptions":{"i18n":{"localized":false}},"required":true},"category":{"type":"enumeration","pluginOptions":{"i18n":{"localized":false}},"required":true,"enum":["racism","antisemitism","sexism","homophobia","violence","fraud","transphobia","islamophobia","neonazism","xenophobia","conspiracism","other"]},"description":{"type":"richtext","pluginOptions":{"i18n":{"localized":true}},"required":true,"minLength":19},"incident_location":{"type":"enumeration","pluginOptions":{"i18n":{"localized":false}},"required":true,"enum":["Facebook","Twitter_X","Instagram","Parliament","Television","Newspaper","OtherMedia","Campaign","Statement","Public","Other"]},"evidence_image":{"type":"media","pluginOptions":{"i18n":{"localized":false}},"multiple":true,"allowedTypes":["images","files","videos","audios"]},"consequence":{"type":"richtext","pluginOptions":{"i18n":{"localized":true}}},"sources":{"type":"component","pluginOptions":{"i18n":{"localized":false}},"component":"link.link","repeatable":true},"visible":{"type":"boolean","pluginOptions":{"i18n":{"localized":false}},"default":true}},"kind":"collectionType"},"modelName":"the-wall-of-shame","actions":{},"lifecycles":{}},"admin::permission":{"collectionName":"admin_permissions","info":{"name":"Permission","description":"","singularName":"permission","pluralName":"permissions","displayName":"Permission"},"options":{"draftAndPublish":false},"pluginOptions":{"content-manager":{"visible":false},"content-type-builder":{"visible":false}},"attributes":{"action":{"type":"string","minLength":1,"configurable":false,"required":true},"actionParameters":{"type":"json","configurable":false,"required":false,"default":{}},"subject":{"type":"string","minLength":1,"configurable":false,"required":false},"properties":{"type":"json","configurable":false,"required":false,"default":{}},"conditions":{"type":"json","configurable":false,"required":false,"default":[]},"role":{"configurable":false,"type":"relation","relation":"manyToOne","inversedBy":"permissions","target":"admin::role"},"createdAt":{"type":"datetime"},"updatedAt":{"type":"datetime"},"publishedAt":{"type":"datetime","configurable":false,"writable":true,"visible":false},"createdBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true},"updatedBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true},"locale":{"writable":true,"private":true,"configurable":false,"visible":false,"type":"string"},"localizations":{"type":"relation","relation":"oneToMany","target":"admin::permission","writable":false,"private":true,"configurable":false,"visible":false,"unstable_virtual":true,"joinColumn":{"name":"document_id","referencedColumn":"document_id","referencedTable":"admin_permissions"}}},"plugin":"admin","globalId":"AdminPermission","uid":"admin::permission","modelType":"contentType","kind":"collectionType","__schema__":{"collectionName":"admin_permissions","info":{"name":"Permission","description":"","singularName":"permission","pluralName":"permissions","displayName":"Permission"},"options":{},"pluginOptions":{"content-manager":{"visible":false},"content-type-builder":{"visible":false}},"attributes":{"action":{"type":"string","minLength":1,"configurable":false,"required":true},"actionParameters":{"type":"json","configurable":false,"required":false,"default":{}},"subject":{"type":"string","minLength":1,"configurable":false,"required":false},"properties":{"type":"json","configurable":false,"required":false,"default":{}},"conditions":{"type":"json","configurable":false,"required":false,"default":[]},"role":{"configurable":false,"type":"relation","relation":"manyToOne","inversedBy":"permissions","target":"admin::role"}},"kind":"collectionType"},"modelName":"permission"},"admin::user":{"collectionName":"admin_users","info":{"name":"User","description":"","singularName":"user","pluralName":"users","displayName":"User"},"pluginOptions":{"content-manager":{"visible":false},"content-type-builder":{"visible":false}},"attributes":{"firstname":{"type":"string","unique":false,"minLength":1,"configurable":false,"required":false},"lastname":{"type":"string","unique":false,"minLength":1,"configurable":false,"required":false},"username":{"type":"string","unique":false,"configurable":false,"required":false},"email":{"type":"email","minLength":6,"configurable":false,"required":true,"unique":true,"private":true},"password":{"type":"password","minLength":6,"configurable":false,"required":false,"private":true,"searchable":false},"resetPasswordToken":{"type":"string","configurable":false,"private":true,"searchable":false},"registrationToken":{"type":"string","configurable":false,"private":true,"searchable":false},"isActive":{"type":"boolean","default":false,"configurable":false,"private":true},"roles":{"configurable":false,"private":true,"type":"relation","relation":"manyToMany","inversedBy":"users","target":"admin::role","collectionName":"strapi_users_roles"},"blocked":{"type":"boolean","default":false,"configurable":false,"private":true},"preferedLanguage":{"type":"string","configurable":false,"required":false,"searchable":false},"createdAt":{"type":"datetime"},"updatedAt":{"type":"datetime"},"publishedAt":{"type":"datetime","configurable":false,"writable":true,"visible":false},"createdBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true},"updatedBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true},"locale":{"writable":true,"private":true,"configurable":false,"visible":false,"type":"string"},"localizations":{"type":"relation","relation":"oneToMany","target":"admin::user","writable":false,"private":true,"configurable":false,"visible":false,"unstable_virtual":true,"joinColumn":{"name":"document_id","referencedColumn":"document_id","referencedTable":"admin_users"}}},"config":{"attributes":{"resetPasswordToken":{"hidden":true},"registrationToken":{"hidden":true}}},"plugin":"admin","globalId":"AdminUser","uid":"admin::user","modelType":"contentType","kind":"collectionType","__schema__":{"collectionName":"admin_users","info":{"name":"User","description":"","singularName":"user","pluralName":"users","displayName":"User"},"pluginOptions":{"content-manager":{"visible":false},"content-type-builder":{"visible":false}},"attributes":{"firstname":{"type":"string","unique":false,"minLength":1,"configurable":false,"required":false},"lastname":{"type":"string","unique":false,"minLength":1,"configurable":false,"required":false},"username":{"type":"string","unique":false,"configurable":false,"required":false},"email":{"type":"email","minLength":6,"configurable":false,"required":true,"unique":true,"private":true},"password":{"type":"password","minLength":6,"configurable":false,"required":false,"private":true,"searchable":false},"resetPasswordToken":{"type":"string","configurable":false,"private":true,"searchable":false},"registrationToken":{"type":"string","configurable":false,"private":true,"searchable":false},"isActive":{"type":"boolean","default":false,"configurable":false,"private":true},"roles":{"configurable":false,"private":true,"type":"relation","relation":"manyToMany","inversedBy":"users","target":"admin::role","collectionName":"strapi_users_roles"},"blocked":{"type":"boolean","default":false,"configurable":false,"private":true},"preferedLanguage":{"type":"string","configurable":false,"required":false,"searchable":false}},"kind":"collectionType"},"modelName":"user","options":{"draftAndPublish":false}},"admin::role":{"collectionName":"admin_roles","info":{"name":"Role","description":"","singularName":"role","pluralName":"roles","displayName":"Role"},"options":{"draftAndPublish":false},"pluginOptions":{"content-manager":{"visible":false},"content-type-builder":{"visible":false}},"attributes":{"name":{"type":"string","minLength":1,"unique":true,"configurable":false,"required":true},"code":{"type":"string","minLength":1,"unique":true,"configurable":false,"required":true},"description":{"type":"string","configurable":false},"users":{"configurable":false,"type":"relation","relation":"manyToMany","mappedBy":"roles","target":"admin::user"},"permissions":{"configurable":false,"type":"relation","relation":"oneToMany","mappedBy":"role","target":"admin::permission"},"createdAt":{"type":"datetime"},"updatedAt":{"type":"datetime"},"publishedAt":{"type":"datetime","configurable":false,"writable":true,"visible":false},"createdBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true},"updatedBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true},"locale":{"writable":true,"private":true,"configurable":false,"visible":false,"type":"string"},"localizations":{"type":"relation","relation":"oneToMany","target":"admin::role","writable":false,"private":true,"configurable":false,"visible":false,"unstable_virtual":true,"joinColumn":{"name":"document_id","referencedColumn":"document_id","referencedTable":"admin_roles"}}},"plugin":"admin","globalId":"AdminRole","uid":"admin::role","modelType":"contentType","kind":"collectionType","__schema__":{"collectionName":"admin_roles","info":{"name":"Role","description":"","singularName":"role","pluralName":"roles","displayName":"Role"},"options":{},"pluginOptions":{"content-manager":{"visible":false},"content-type-builder":{"visible":false}},"attributes":{"name":{"type":"string","minLength":1,"unique":true,"configurable":false,"required":true},"code":{"type":"string","minLength":1,"unique":true,"configurable":false,"required":true},"description":{"type":"string","configurable":false},"users":{"configurable":false,"type":"relation","relation":"manyToMany","mappedBy":"roles","target":"admin::user"},"permissions":{"configurable":false,"type":"relation","relation":"oneToMany","mappedBy":"role","target":"admin::permission"}},"kind":"collectionType"},"modelName":"role"},"admin::api-token":{"collectionName":"strapi_api_tokens","info":{"name":"Api Token","singularName":"api-token","pluralName":"api-tokens","displayName":"Api Token","description":""},"options":{"draftAndPublish":false},"pluginOptions":{"content-manager":{"visible":false},"content-type-builder":{"visible":false}},"attributes":{"name":{"type":"string","minLength":1,"configurable":false,"required":true,"unique":true},"description":{"type":"string","minLength":1,"configurable":false,"required":false,"default":""},"type":{"type":"enumeration","enum":["read-only","full-access","custom"],"configurable":false,"required":true,"default":"read-only"},"accessKey":{"type":"string","minLength":1,"configurable":false,"required":true,"searchable":false},"encryptedKey":{"type":"text","minLength":1,"configurable":false,"required":false,"searchable":false},"lastUsedAt":{"type":"datetime","configurable":false,"required":false},"permissions":{"type":"relation","target":"admin::api-token-permission","relation":"oneToMany","mappedBy":"token","configurable":false,"required":false},"expiresAt":{"type":"datetime","configurable":false,"required":false},"lifespan":{"type":"biginteger","configurable":false,"required":false},"createdAt":{"type":"datetime"},"updatedAt":{"type":"datetime"},"publishedAt":{"type":"datetime","configurable":false,"writable":true,"visible":false},"createdBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true},"updatedBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true},"locale":{"writable":true,"private":true,"configurable":false,"visible":false,"type":"string"},"localizations":{"type":"relation","relation":"oneToMany","target":"admin::api-token","writable":false,"private":true,"configurable":false,"visible":false,"unstable_virtual":true,"joinColumn":{"name":"document_id","referencedColumn":"document_id","referencedTable":"strapi_api_tokens"}}},"plugin":"admin","globalId":"AdminApiToken","uid":"admin::api-token","modelType":"contentType","kind":"collectionType","__schema__":{"collectionName":"strapi_api_tokens","info":{"name":"Api Token","singularName":"api-token","pluralName":"api-tokens","displayName":"Api Token","description":""},"options":{},"pluginOptions":{"content-manager":{"visible":false},"content-type-builder":{"visible":false}},"attributes":{"name":{"type":"string","minLength":1,"configurable":false,"required":true,"unique":true},"description":{"type":"string","minLength":1,"configurable":false,"required":false,"default":""},"type":{"type":"enumeration","enum":["read-only","full-access","custom"],"configurable":false,"required":true,"default":"read-only"},"accessKey":{"type":"string","minLength":1,"configurable":false,"required":true,"searchable":false},"encryptedKey":{"type":"text","minLength":1,"configurable":false,"required":false,"searchable":false},"lastUsedAt":{"type":"datetime","configurable":false,"required":false},"permissions":{"type":"relation","target":"admin::api-token-permission","relation":"oneToMany","mappedBy":"token","configurable":false,"required":false},"expiresAt":{"type":"datetime","configurable":false,"required":false},"lifespan":{"type":"biginteger","configurable":false,"required":false}},"kind":"collectionType"},"modelName":"api-token"},"admin::api-token-permission":{"collectionName":"strapi_api_token_permissions","info":{"name":"API Token Permission","description":"","singularName":"api-token-permission","pluralName":"api-token-permissions","displayName":"API Token Permission"},"options":{"draftAndPublish":false},"pluginOptions":{"content-manager":{"visible":false},"content-type-builder":{"visible":false}},"attributes":{"action":{"type":"string","minLength":1,"configurable":false,"required":true},"token":{"configurable":false,"type":"relation","relation":"manyToOne","inversedBy":"permissions","target":"admin::api-token"},"createdAt":{"type":"datetime"},"updatedAt":{"type":"datetime"},"publishedAt":{"type":"datetime","configurable":false,"writable":true,"visible":false},"createdBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true},"updatedBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true},"locale":{"writable":true,"private":true,"configurable":false,"visible":false,"type":"string"},"localizations":{"type":"relation","relation":"oneToMany","target":"admin::api-token-permission","writable":false,"private":true,"configurable":false,"visible":false,"unstable_virtual":true,"joinColumn":{"name":"document_id","referencedColumn":"document_id","referencedTable":"strapi_api_token_permissions"}}},"plugin":"admin","globalId":"AdminApiTokenPermission","uid":"admin::api-token-permission","modelType":"contentType","kind":"collectionType","__schema__":{"collectionName":"strapi_api_token_permissions","info":{"name":"API Token Permission","description":"","singularName":"api-token-permission","pluralName":"api-token-permissions","displayName":"API Token Permission"},"options":{},"pluginOptions":{"content-manager":{"visible":false},"content-type-builder":{"visible":false}},"attributes":{"action":{"type":"string","minLength":1,"configurable":false,"required":true},"token":{"configurable":false,"type":"relation","relation":"manyToOne","inversedBy":"permissions","target":"admin::api-token"}},"kind":"collectionType"},"modelName":"api-token-permission"},"admin::transfer-token":{"collectionName":"strapi_transfer_tokens","info":{"name":"Transfer Token","singularName":"transfer-token","pluralName":"transfer-tokens","displayName":"Transfer Token","description":""},"options":{"draftAndPublish":false},"pluginOptions":{"content-manager":{"visible":false},"content-type-builder":{"visible":false}},"attributes":{"name":{"type":"string","minLength":1,"configurable":false,"required":true,"unique":true},"description":{"type":"string","minLength":1,"configurable":false,"required":false,"default":""},"accessKey":{"type":"string","minLength":1,"configurable":false,"required":true},"lastUsedAt":{"type":"datetime","configurable":false,"required":false},"permissions":{"type":"relation","target":"admin::transfer-token-permission","relation":"oneToMany","mappedBy":"token","configurable":false,"required":false},"expiresAt":{"type":"datetime","configurable":false,"required":false},"lifespan":{"type":"biginteger","configurable":false,"required":false},"createdAt":{"type":"datetime"},"updatedAt":{"type":"datetime"},"publishedAt":{"type":"datetime","configurable":false,"writable":true,"visible":false},"createdBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true},"updatedBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true},"locale":{"writable":true,"private":true,"configurable":false,"visible":false,"type":"string"},"localizations":{"type":"relation","relation":"oneToMany","target":"admin::transfer-token","writable":false,"private":true,"configurable":false,"visible":false,"unstable_virtual":true,"joinColumn":{"name":"document_id","referencedColumn":"document_id","referencedTable":"strapi_transfer_tokens"}}},"plugin":"admin","globalId":"AdminTransferToken","uid":"admin::transfer-token","modelType":"contentType","kind":"collectionType","__schema__":{"collectionName":"strapi_transfer_tokens","info":{"name":"Transfer Token","singularName":"transfer-token","pluralName":"transfer-tokens","displayName":"Transfer Token","description":""},"options":{},"pluginOptions":{"content-manager":{"visible":false},"content-type-builder":{"visible":false}},"attributes":{"name":{"type":"string","minLength":1,"configurable":false,"required":true,"unique":true},"description":{"type":"string","minLength":1,"configurable":false,"required":false,"default":""},"accessKey":{"type":"string","minLength":1,"configurable":false,"required":true},"lastUsedAt":{"type":"datetime","configurable":false,"required":false},"permissions":{"type":"relation","target":"admin::transfer-token-permission","relation":"oneToMany","mappedBy":"token","configurable":false,"required":false},"expiresAt":{"type":"datetime","configurable":false,"required":false},"lifespan":{"type":"biginteger","configurable":false,"required":false}},"kind":"collectionType"},"modelName":"transfer-token"},"admin::transfer-token-permission":{"collectionName":"strapi_transfer_token_permissions","info":{"name":"Transfer Token Permission","description":"","singularName":"transfer-token-permission","pluralName":"transfer-token-permissions","displayName":"Transfer Token Permission"},"options":{"draftAndPublish":false},"pluginOptions":{"content-manager":{"visible":false},"content-type-builder":{"visible":false}},"attributes":{"action":{"type":"string","minLength":1,"configurable":false,"required":true},"token":{"configurable":false,"type":"relation","relation":"manyToOne","inversedBy":"permissions","target":"admin::transfer-token"},"createdAt":{"type":"datetime"},"updatedAt":{"type":"datetime"},"publishedAt":{"type":"datetime","configurable":false,"writable":true,"visible":false},"createdBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true},"updatedBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true},"locale":{"writable":true,"private":true,"configurable":false,"visible":false,"type":"string"},"localizations":{"type":"relation","relation":"oneToMany","target":"admin::transfer-token-permission","writable":false,"private":true,"configurable":false,"visible":false,"unstable_virtual":true,"joinColumn":{"name":"document_id","referencedColumn":"document_id","referencedTable":"strapi_transfer_token_permissions"}}},"plugin":"admin","globalId":"AdminTransferTokenPermission","uid":"admin::transfer-token-permission","modelType":"contentType","kind":"collectionType","__schema__":{"collectionName":"strapi_transfer_token_permissions","info":{"name":"Transfer Token Permission","description":"","singularName":"transfer-token-permission","pluralName":"transfer-token-permissions","displayName":"Transfer Token Permission"},"options":{},"pluginOptions":{"content-manager":{"visible":false},"content-type-builder":{"visible":false}},"attributes":{"action":{"type":"string","minLength":1,"configurable":false,"required":true},"token":{"configurable":false,"type":"relation","relation":"manyToOne","inversedBy":"permissions","target":"admin::transfer-token"}},"kind":"collectionType"},"modelName":"transfer-token-permission"},"admin::session":{"collectionName":"strapi_sessions","info":{"name":"Session","description":"Session Manager storage","singularName":"session","pluralName":"sessions","displayName":"Session"},"options":{"draftAndPublish":false},"pluginOptions":{"content-manager":{"visible":false},"content-type-builder":{"visible":false},"i18n":{"localized":false}},"attributes":{"userId":{"type":"string","required":true,"configurable":false,"private":true,"searchable":false},"sessionId":{"type":"string","unique":true,"required":true,"configurable":false,"private":true,"searchable":false},"childId":{"type":"string","configurable":false,"private":true,"searchable":false},"deviceId":{"type":"string","required":true,"configurable":false,"private":true,"searchable":false},"origin":{"type":"string","required":true,"configurable":false,"private":true,"searchable":false},"expiresAt":{"type":"datetime","required":true,"configurable":false,"private":true,"searchable":false},"absoluteExpiresAt":{"type":"datetime","configurable":false,"private":true,"searchable":false},"status":{"type":"string","configurable":false,"private":true,"searchable":false},"type":{"type":"string","configurable":false,"private":true,"searchable":false},"createdAt":{"type":"datetime"},"updatedAt":{"type":"datetime"},"publishedAt":{"type":"datetime","configurable":false,"writable":true,"visible":false},"createdBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true},"updatedBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true},"locale":{"writable":true,"private":true,"configurable":false,"visible":false,"type":"string"},"localizations":{"type":"relation","relation":"oneToMany","target":"admin::session","writable":false,"private":true,"configurable":false,"visible":false,"unstable_virtual":true,"joinColumn":{"name":"document_id","referencedColumn":"document_id","referencedTable":"strapi_sessions"}}},"plugin":"admin","globalId":"AdminSession","uid":"admin::session","modelType":"contentType","kind":"collectionType","__schema__":{"collectionName":"strapi_sessions","info":{"name":"Session","description":"Session Manager storage","singularName":"session","pluralName":"sessions","displayName":"Session"},"options":{"draftAndPublish":false},"pluginOptions":{"content-manager":{"visible":false},"content-type-builder":{"visible":false},"i18n":{"localized":false}},"attributes":{"userId":{"type":"string","required":true,"configurable":false,"private":true,"searchable":false},"sessionId":{"type":"string","unique":true,"required":true,"configurable":false,"private":true,"searchable":false},"childId":{"type":"string","configurable":false,"private":true,"searchable":false},"deviceId":{"type":"string","required":true,"configurable":false,"private":true,"searchable":false},"origin":{"type":"string","required":true,"configurable":false,"private":true,"searchable":false},"expiresAt":{"type":"datetime","required":true,"configurable":false,"private":true,"searchable":false},"absoluteExpiresAt":{"type":"datetime","configurable":false,"private":true,"searchable":false},"status":{"type":"string","configurable":false,"private":true,"searchable":false},"type":{"type":"string","configurable":false,"private":true,"searchable":false}},"kind":"collectionType"},"modelName":"session"}}	object	\N	\N
11	plugin_content_manager_configuration_content_types::plugin::users-permissions.permission	{"settings":{"bulkable":true,"filterable":true,"searchable":true,"pageSize":10,"mainField":"action","defaultSortBy":"action","defaultSortOrder":"ASC"},"metadatas":{"id":{"edit":{},"list":{"label":"id","searchable":true,"sortable":true}},"action":{"edit":{"label":"action","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"action","searchable":true,"sortable":true}},"role":{"edit":{"label":"role","description":"","placeholder":"","visible":true,"editable":true,"mainField":"name"},"list":{"label":"role","searchable":true,"sortable":true}},"createdAt":{"edit":{"label":"createdAt","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"createdAt","searchable":true,"sortable":true}},"updatedAt":{"edit":{"label":"updatedAt","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"updatedAt","searchable":true,"sortable":true}},"createdBy":{"edit":{"label":"createdBy","description":"","placeholder":"","visible":false,"editable":true,"mainField":"firstname"},"list":{"label":"createdBy","searchable":true,"sortable":true}},"updatedBy":{"edit":{"label":"updatedBy","description":"","placeholder":"","visible":false,"editable":true,"mainField":"firstname"},"list":{"label":"updatedBy","searchable":true,"sortable":true}},"documentId":{"edit":{},"list":{"label":"documentId","searchable":true,"sortable":true}}},"layouts":{"list":["id","action","role","createdAt"],"edit":[[{"name":"action","size":6},{"name":"role","size":6}]]},"uid":"plugin::users-permissions.permission"}	object	\N	\N
13	plugin_content_manager_configuration_content_types::plugin::users-permissions.role	{"settings":{"bulkable":true,"filterable":true,"searchable":true,"pageSize":10,"mainField":"name","defaultSortBy":"name","defaultSortOrder":"ASC"},"metadatas":{"id":{"edit":{},"list":{"label":"id","searchable":true,"sortable":true}},"name":{"edit":{"label":"name","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"name","searchable":true,"sortable":true}},"description":{"edit":{"label":"description","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"description","searchable":true,"sortable":true}},"type":{"edit":{"label":"type","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"type","searchable":true,"sortable":true}},"permissions":{"edit":{"label":"permissions","description":"","placeholder":"","visible":true,"editable":true,"mainField":"action"},"list":{"label":"permissions","searchable":false,"sortable":false}},"users":{"edit":{"label":"users","description":"","placeholder":"","visible":true,"editable":true,"mainField":"username"},"list":{"label":"users","searchable":false,"sortable":false}},"createdAt":{"edit":{"label":"createdAt","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"createdAt","searchable":true,"sortable":true}},"updatedAt":{"edit":{"label":"updatedAt","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"updatedAt","searchable":true,"sortable":true}},"createdBy":{"edit":{"label":"createdBy","description":"","placeholder":"","visible":false,"editable":true,"mainField":"firstname"},"list":{"label":"createdBy","searchable":true,"sortable":true}},"updatedBy":{"edit":{"label":"updatedBy","description":"","placeholder":"","visible":false,"editable":true,"mainField":"firstname"},"list":{"label":"updatedBy","searchable":true,"sortable":true}},"documentId":{"edit":{},"list":{"label":"documentId","searchable":true,"sortable":true}}},"layouts":{"list":["id","name","description","type"],"edit":[[{"name":"name","size":6},{"name":"description","size":6}],[{"name":"type","size":6},{"name":"permissions","size":6}],[{"name":"users","size":6}]]},"uid":"plugin::users-permissions.role"}	object	\N	\N
15	plugin_content_manager_configuration_content_types::admin::role	{"settings":{"bulkable":true,"filterable":true,"searchable":true,"pageSize":10,"mainField":"name","defaultSortBy":"name","defaultSortOrder":"ASC"},"metadatas":{"id":{"edit":{},"list":{"label":"id","searchable":true,"sortable":true}},"name":{"edit":{"label":"name","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"name","searchable":true,"sortable":true}},"code":{"edit":{"label":"code","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"code","searchable":true,"sortable":true}},"description":{"edit":{"label":"description","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"description","searchable":true,"sortable":true}},"users":{"edit":{"label":"users","description":"","placeholder":"","visible":true,"editable":true,"mainField":"firstname"},"list":{"label":"users","searchable":false,"sortable":false}},"permissions":{"edit":{"label":"permissions","description":"","placeholder":"","visible":true,"editable":true,"mainField":"action"},"list":{"label":"permissions","searchable":false,"sortable":false}},"createdAt":{"edit":{"label":"createdAt","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"createdAt","searchable":true,"sortable":true}},"updatedAt":{"edit":{"label":"updatedAt","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"updatedAt","searchable":true,"sortable":true}},"createdBy":{"edit":{"label":"createdBy","description":"","placeholder":"","visible":false,"editable":true,"mainField":"firstname"},"list":{"label":"createdBy","searchable":true,"sortable":true}},"updatedBy":{"edit":{"label":"updatedBy","description":"","placeholder":"","visible":false,"editable":true,"mainField":"firstname"},"list":{"label":"updatedBy","searchable":true,"sortable":true}},"documentId":{"edit":{},"list":{"label":"documentId","searchable":true,"sortable":true}}},"layouts":{"list":["id","name","code","description"],"edit":[[{"name":"name","size":6},{"name":"code","size":6}],[{"name":"description","size":6},{"name":"users","size":6}],[{"name":"permissions","size":6}]]},"uid":"admin::role"}	object	\N	\N
17	plugin_content_manager_configuration_content_types::admin::user	{"settings":{"bulkable":true,"filterable":true,"searchable":true,"pageSize":10,"mainField":"firstname","defaultSortBy":"firstname","defaultSortOrder":"ASC"},"metadatas":{"id":{"edit":{},"list":{"label":"id","searchable":true,"sortable":true}},"firstname":{"edit":{"label":"firstname","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"firstname","searchable":true,"sortable":true}},"lastname":{"edit":{"label":"lastname","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"lastname","searchable":true,"sortable":true}},"username":{"edit":{"label":"username","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"username","searchable":true,"sortable":true}},"email":{"edit":{"label":"email","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"email","searchable":true,"sortable":true}},"password":{"edit":{"label":"password","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"password","searchable":true,"sortable":true}},"resetPasswordToken":{"edit":{"label":"resetPasswordToken","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"resetPasswordToken","searchable":true,"sortable":true}},"registrationToken":{"edit":{"label":"registrationToken","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"registrationToken","searchable":true,"sortable":true}},"isActive":{"edit":{"label":"isActive","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"isActive","searchable":true,"sortable":true}},"roles":{"edit":{"label":"roles","description":"","placeholder":"","visible":true,"editable":true,"mainField":"name"},"list":{"label":"roles","searchable":false,"sortable":false}},"blocked":{"edit":{"label":"blocked","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"blocked","searchable":true,"sortable":true}},"preferedLanguage":{"edit":{"label":"preferedLanguage","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"preferedLanguage","searchable":true,"sortable":true}},"createdAt":{"edit":{"label":"createdAt","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"createdAt","searchable":true,"sortable":true}},"updatedAt":{"edit":{"label":"updatedAt","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"updatedAt","searchable":true,"sortable":true}},"createdBy":{"edit":{"label":"createdBy","description":"","placeholder":"","visible":false,"editable":true,"mainField":"firstname"},"list":{"label":"createdBy","searchable":true,"sortable":true}},"updatedBy":{"edit":{"label":"updatedBy","description":"","placeholder":"","visible":false,"editable":true,"mainField":"firstname"},"list":{"label":"updatedBy","searchable":true,"sortable":true}},"documentId":{"edit":{},"list":{"label":"documentId","searchable":true,"sortable":true}}},"layouts":{"list":["id","firstname","lastname","username"],"edit":[[{"name":"firstname","size":6},{"name":"lastname","size":6}],[{"name":"username","size":6},{"name":"email","size":6}],[{"name":"password","size":6},{"name":"isActive","size":4}],[{"name":"roles","size":6},{"name":"blocked","size":4}],[{"name":"preferedLanguage","size":6}]]},"uid":"admin::user"}	object	\N	\N
19	plugin_content_manager_configuration_content_types::admin::api-token	{"settings":{"bulkable":true,"filterable":true,"searchable":true,"pageSize":10,"mainField":"name","defaultSortBy":"name","defaultSortOrder":"ASC"},"metadatas":{"id":{"edit":{},"list":{"label":"id","searchable":true,"sortable":true}},"name":{"edit":{"label":"name","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"name","searchable":true,"sortable":true}},"description":{"edit":{"label":"description","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"description","searchable":true,"sortable":true}},"type":{"edit":{"label":"type","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"type","searchable":true,"sortable":true}},"accessKey":{"edit":{"label":"accessKey","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"accessKey","searchable":true,"sortable":true}},"encryptedKey":{"edit":{"label":"encryptedKey","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"encryptedKey","searchable":true,"sortable":true}},"lastUsedAt":{"edit":{"label":"lastUsedAt","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"lastUsedAt","searchable":true,"sortable":true}},"permissions":{"edit":{"label":"permissions","description":"","placeholder":"","visible":true,"editable":true,"mainField":"action"},"list":{"label":"permissions","searchable":false,"sortable":false}},"expiresAt":{"edit":{"label":"expiresAt","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"expiresAt","searchable":true,"sortable":true}},"lifespan":{"edit":{"label":"lifespan","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"lifespan","searchable":true,"sortable":true}},"createdAt":{"edit":{"label":"createdAt","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"createdAt","searchable":true,"sortable":true}},"updatedAt":{"edit":{"label":"updatedAt","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"updatedAt","searchable":true,"sortable":true}},"createdBy":{"edit":{"label":"createdBy","description":"","placeholder":"","visible":false,"editable":true,"mainField":"firstname"},"list":{"label":"createdBy","searchable":true,"sortable":true}},"updatedBy":{"edit":{"label":"updatedBy","description":"","placeholder":"","visible":false,"editable":true,"mainField":"firstname"},"list":{"label":"updatedBy","searchable":true,"sortable":true}},"documentId":{"edit":{},"list":{"label":"documentId","searchable":true,"sortable":true}}},"layouts":{"list":["id","name","description","type"],"edit":[[{"name":"name","size":6},{"name":"description","size":6}],[{"name":"type","size":6},{"name":"accessKey","size":6}],[{"name":"encryptedKey","size":6},{"name":"lastUsedAt","size":6}],[{"name":"permissions","size":6},{"name":"expiresAt","size":6}],[{"name":"lifespan","size":4}]]},"uid":"admin::api-token"}	object	\N	\N
21	plugin_content_manager_configuration_content_types::admin::transfer-token	{"settings":{"bulkable":true,"filterable":true,"searchable":true,"pageSize":10,"mainField":"name","defaultSortBy":"name","defaultSortOrder":"ASC"},"metadatas":{"id":{"edit":{},"list":{"label":"id","searchable":true,"sortable":true}},"name":{"edit":{"label":"name","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"name","searchable":true,"sortable":true}},"description":{"edit":{"label":"description","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"description","searchable":true,"sortable":true}},"accessKey":{"edit":{"label":"accessKey","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"accessKey","searchable":true,"sortable":true}},"lastUsedAt":{"edit":{"label":"lastUsedAt","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"lastUsedAt","searchable":true,"sortable":true}},"permissions":{"edit":{"label":"permissions","description":"","placeholder":"","visible":true,"editable":true,"mainField":"action"},"list":{"label":"permissions","searchable":false,"sortable":false}},"expiresAt":{"edit":{"label":"expiresAt","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"expiresAt","searchable":true,"sortable":true}},"lifespan":{"edit":{"label":"lifespan","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"lifespan","searchable":true,"sortable":true}},"createdAt":{"edit":{"label":"createdAt","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"createdAt","searchable":true,"sortable":true}},"updatedAt":{"edit":{"label":"updatedAt","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"updatedAt","searchable":true,"sortable":true}},"createdBy":{"edit":{"label":"createdBy","description":"","placeholder":"","visible":false,"editable":true,"mainField":"firstname"},"list":{"label":"createdBy","searchable":true,"sortable":true}},"updatedBy":{"edit":{"label":"updatedBy","description":"","placeholder":"","visible":false,"editable":true,"mainField":"firstname"},"list":{"label":"updatedBy","searchable":true,"sortable":true}},"documentId":{"edit":{},"list":{"label":"documentId","searchable":true,"sortable":true}}},"layouts":{"list":["id","name","description","accessKey"],"edit":[[{"name":"name","size":6},{"name":"description","size":6}],[{"name":"accessKey","size":6},{"name":"lastUsedAt","size":6}],[{"name":"permissions","size":6},{"name":"expiresAt","size":6}],[{"name":"lifespan","size":4}]]},"uid":"admin::transfer-token"}	object	\N	\N
23	plugin_upload_settings	{"sizeOptimization":true,"responsiveDimensions":true,"autoOrientation":false,"aiMetadata":true}	object	\N	\N
24	plugin_upload_view_configuration	{"pageSize":10,"sort":"createdAt:DESC"}	object	\N	\N
27	plugin_users-permissions_grant	{"email":{"icon":"envelope","enabled":true},"discord":{"icon":"discord","enabled":false,"key":"","secret":"","callbackUrl":"api/auth/discord/callback","scope":["identify","email"]},"facebook":{"icon":"facebook-square","enabled":false,"key":"","secret":"","callbackUrl":"api/auth/facebook/callback","scope":["email"]},"google":{"icon":"google","enabled":false,"key":"","secret":"","callbackUrl":"api/auth/google/callback","scope":["email"]},"github":{"icon":"github","enabled":false,"key":"","secret":"","callbackUrl":"api/auth/github/callback","scope":["user","user:email"]},"microsoft":{"icon":"windows","enabled":false,"key":"","secret":"","callbackUrl":"api/auth/microsoft/callback","scope":["user.read"]},"twitter":{"icon":"twitter","enabled":false,"key":"","secret":"","callbackUrl":"api/auth/twitter/callback"},"instagram":{"icon":"instagram","enabled":false,"key":"","secret":"","callbackUrl":"api/auth/instagram/callback","scope":["user_profile"]},"vk":{"icon":"vk","enabled":false,"key":"","secret":"","callbackUrl":"api/auth/vk/callback","scope":["email"]},"twitch":{"icon":"twitch","enabled":false,"key":"","secret":"","callbackUrl":"api/auth/twitch/callback","scope":["user:read:email"]},"linkedin":{"icon":"linkedin","enabled":false,"key":"","secret":"","callbackUrl":"api/auth/linkedin/callback","scope":["r_liteprofile","r_emailaddress"]},"cognito":{"icon":"aws","enabled":false,"key":"","secret":"","subdomain":"my.subdomain.com","callback":"api/auth/cognito/callback","scope":["email","openid","profile"]},"reddit":{"icon":"reddit","enabled":false,"key":"","secret":"","callback":"api/auth/reddit/callback","scope":["identity"]},"auth0":{"icon":"","enabled":false,"key":"","secret":"","subdomain":"my-tenant.eu","callback":"api/auth/auth0/callback","scope":["openid","email","profile"]},"cas":{"icon":"book","enabled":false,"key":"","secret":"","callback":"api/auth/cas/callback","scope":["openid email"],"subdomain":"my.subdomain.com/cas"},"patreon":{"icon":"","enabled":false,"key":"","secret":"","callback":"api/auth/patreon/callback","scope":["identity","identity[email]"]},"keycloak":{"icon":"","enabled":false,"key":"","secret":"","subdomain":"myKeycloakProvider.com/realms/myrealm","callback":"api/auth/keycloak/callback","scope":["openid","email","profile"]}}	object	\N	\N
28	plugin_users-permissions_email	{"reset_password":{"display":"Email.template.reset_password","icon":"sync","options":{"from":{"name":"Administration Panel","email":"no-reply@strapi.io"},"response_email":"","object":"Reset password","message":"<p>We heard that you lost your password. Sorry about that!</p>\\n\\n<p>But don’t worry! You can use the following link to reset your password:</p>\\n<p><%= URL %>?code=<%= TOKEN %></p>\\n\\n<p>Thanks.</p>"}},"email_confirmation":{"display":"Email.template.email_confirmation","icon":"check-square","options":{"from":{"name":"Administration Panel","email":"no-reply@strapi.io"},"response_email":"","object":"Account confirmation","message":"<p>Thank you for registering!</p>\\n\\n<p>You have to confirm your email address. Please click on the link below.</p>\\n\\n<p><%= URL %>?confirmation=<%= CODE %></p>\\n\\n<p>Thanks.</p>"}}}	object	\N	\N
29	plugin_users-permissions_advanced	{"unique_email":true,"allow_register":true,"email_confirmation":false,"email_reset_password":null,"email_confirmation_redirection":null,"default_role":"authenticated"}	object	\N	\N
25	plugin_upload_metrics	{"weeklySchedule":"43 34 22 * * 2","lastWeeklyUpdate":1762896883051}	object	\N	\N
26	plugin_i18n_default_locale	"fr-CH"	string	\N	\N
14	plugin_content_manager_configuration_content_types::plugin::users-permissions.user	{"settings":{"bulkable":true,"filterable":true,"searchable":true,"pageSize":10,"mainField":"username","defaultSortBy":"username","defaultSortOrder":"ASC"},"metadatas":{"id":{"edit":{},"list":{"label":"id","searchable":true,"sortable":true}},"username":{"edit":{"label":"username","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"username","searchable":true,"sortable":true}},"email":{"edit":{"label":"email","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"email","searchable":true,"sortable":true}},"provider":{"edit":{"label":"provider","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"provider","searchable":true,"sortable":true}},"password":{"edit":{"label":"password","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"password","searchable":true,"sortable":true}},"resetPasswordToken":{"edit":{"label":"resetPasswordToken","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"resetPasswordToken","searchable":true,"sortable":true}},"confirmationToken":{"edit":{"label":"confirmationToken","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"confirmationToken","searchable":true,"sortable":true}},"confirmed":{"edit":{"label":"confirmed","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"confirmed","searchable":true,"sortable":true}},"blocked":{"edit":{"label":"blocked","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"blocked","searchable":true,"sortable":true}},"role":{"edit":{"label":"role","description":"","placeholder":"","visible":true,"editable":true,"mainField":"name"},"list":{"label":"role","searchable":true,"sortable":true}},"createdAt":{"edit":{"label":"createdAt","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"createdAt","searchable":true,"sortable":true}},"updatedAt":{"edit":{"label":"updatedAt","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"updatedAt","searchable":true,"sortable":true}},"createdBy":{"edit":{"label":"createdBy","description":"","placeholder":"","visible":false,"editable":true,"mainField":"firstname"},"list":{"label":"createdBy","searchable":true,"sortable":true}},"updatedBy":{"edit":{"label":"updatedBy","description":"","placeholder":"","visible":false,"editable":true,"mainField":"firstname"},"list":{"label":"updatedBy","searchable":true,"sortable":true}},"documentId":{"edit":{},"list":{"label":"documentId","searchable":true,"sortable":true}}},"layouts":{"list":["id","username","email","confirmed"],"edit":[[{"name":"username","size":6},{"name":"email","size":6}],[{"name":"password","size":6},{"name":"confirmed","size":4}],[{"name":"blocked","size":4},{"name":"role","size":6}]]},"uid":"plugin::users-permissions.user"}	object	\N	\N
16	plugin_content_manager_configuration_content_types::admin::permission	{"settings":{"bulkable":true,"filterable":true,"searchable":true,"pageSize":10,"mainField":"action","defaultSortBy":"action","defaultSortOrder":"ASC"},"metadatas":{"id":{"edit":{},"list":{"label":"id","searchable":true,"sortable":true}},"action":{"edit":{"label":"action","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"action","searchable":true,"sortable":true}},"actionParameters":{"edit":{"label":"actionParameters","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"actionParameters","searchable":false,"sortable":false}},"subject":{"edit":{"label":"subject","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"subject","searchable":true,"sortable":true}},"properties":{"edit":{"label":"properties","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"properties","searchable":false,"sortable":false}},"conditions":{"edit":{"label":"conditions","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"conditions","searchable":false,"sortable":false}},"role":{"edit":{"label":"role","description":"","placeholder":"","visible":true,"editable":true,"mainField":"name"},"list":{"label":"role","searchable":true,"sortable":true}},"createdAt":{"edit":{"label":"createdAt","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"createdAt","searchable":true,"sortable":true}},"updatedAt":{"edit":{"label":"updatedAt","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"updatedAt","searchable":true,"sortable":true}},"createdBy":{"edit":{"label":"createdBy","description":"","placeholder":"","visible":false,"editable":true,"mainField":"firstname"},"list":{"label":"createdBy","searchable":true,"sortable":true}},"updatedBy":{"edit":{"label":"updatedBy","description":"","placeholder":"","visible":false,"editable":true,"mainField":"firstname"},"list":{"label":"updatedBy","searchable":true,"sortable":true}},"documentId":{"edit":{},"list":{"label":"documentId","searchable":true,"sortable":true}}},"layouts":{"list":["id","action","subject","role"],"edit":[[{"name":"action","size":6}],[{"name":"actionParameters","size":12}],[{"name":"subject","size":6}],[{"name":"properties","size":12}],[{"name":"conditions","size":12}],[{"name":"role","size":6}]]},"uid":"admin::permission"}	object	\N	\N
18	plugin_content_manager_configuration_content_types::admin::api-token-permission	{"settings":{"bulkable":true,"filterable":true,"searchable":true,"pageSize":10,"mainField":"action","defaultSortBy":"action","defaultSortOrder":"ASC"},"metadatas":{"id":{"edit":{},"list":{"label":"id","searchable":true,"sortable":true}},"action":{"edit":{"label":"action","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"action","searchable":true,"sortable":true}},"token":{"edit":{"label":"token","description":"","placeholder":"","visible":true,"editable":true,"mainField":"name"},"list":{"label":"token","searchable":true,"sortable":true}},"createdAt":{"edit":{"label":"createdAt","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"createdAt","searchable":true,"sortable":true}},"updatedAt":{"edit":{"label":"updatedAt","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"updatedAt","searchable":true,"sortable":true}},"createdBy":{"edit":{"label":"createdBy","description":"","placeholder":"","visible":false,"editable":true,"mainField":"firstname"},"list":{"label":"createdBy","searchable":true,"sortable":true}},"updatedBy":{"edit":{"label":"updatedBy","description":"","placeholder":"","visible":false,"editable":true,"mainField":"firstname"},"list":{"label":"updatedBy","searchable":true,"sortable":true}},"documentId":{"edit":{},"list":{"label":"documentId","searchable":true,"sortable":true}}},"layouts":{"list":["id","action","token","createdAt"],"edit":[[{"name":"action","size":6},{"name":"token","size":6}]]},"uid":"admin::api-token-permission"}	object	\N	\N
20	plugin_content_manager_configuration_content_types::admin::transfer-token-permission	{"settings":{"bulkable":true,"filterable":true,"searchable":true,"pageSize":10,"mainField":"action","defaultSortBy":"action","defaultSortOrder":"ASC"},"metadatas":{"id":{"edit":{},"list":{"label":"id","searchable":true,"sortable":true}},"action":{"edit":{"label":"action","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"action","searchable":true,"sortable":true}},"token":{"edit":{"label":"token","description":"","placeholder":"","visible":true,"editable":true,"mainField":"name"},"list":{"label":"token","searchable":true,"sortable":true}},"createdAt":{"edit":{"label":"createdAt","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"createdAt","searchable":true,"sortable":true}},"updatedAt":{"edit":{"label":"updatedAt","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"updatedAt","searchable":true,"sortable":true}},"createdBy":{"edit":{"label":"createdBy","description":"","placeholder":"","visible":false,"editable":true,"mainField":"firstname"},"list":{"label":"createdBy","searchable":true,"sortable":true}},"updatedBy":{"edit":{"label":"updatedBy","description":"","placeholder":"","visible":false,"editable":true,"mainField":"firstname"},"list":{"label":"updatedBy","searchable":true,"sortable":true}},"documentId":{"edit":{},"list":{"label":"documentId","searchable":true,"sortable":true}}},"layouts":{"list":["id","action","token","createdAt"],"edit":[[{"name":"action","size":6},{"name":"token","size":6}]]},"uid":"admin::transfer-token-permission"}	object	\N	\N
22	plugin_content_manager_configuration_content_types::admin::session	{"settings":{"bulkable":true,"filterable":true,"searchable":true,"pageSize":10,"mainField":"userId","defaultSortBy":"userId","defaultSortOrder":"ASC"},"metadatas":{"id":{"edit":{},"list":{"label":"id","searchable":true,"sortable":true}},"userId":{"edit":{"label":"userId","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"userId","searchable":true,"sortable":true}},"sessionId":{"edit":{"label":"sessionId","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"sessionId","searchable":true,"sortable":true}},"childId":{"edit":{"label":"childId","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"childId","searchable":true,"sortable":true}},"deviceId":{"edit":{"label":"deviceId","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"deviceId","searchable":true,"sortable":true}},"origin":{"edit":{"label":"origin","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"origin","searchable":true,"sortable":true}},"expiresAt":{"edit":{"label":"expiresAt","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"expiresAt","searchable":true,"sortable":true}},"absoluteExpiresAt":{"edit":{"label":"absoluteExpiresAt","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"absoluteExpiresAt","searchable":true,"sortable":true}},"status":{"edit":{"label":"status","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"status","searchable":true,"sortable":true}},"type":{"edit":{"label":"type","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"type","searchable":true,"sortable":true}},"createdAt":{"edit":{"label":"createdAt","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"createdAt","searchable":true,"sortable":true}},"updatedAt":{"edit":{"label":"updatedAt","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"updatedAt","searchable":true,"sortable":true}},"createdBy":{"edit":{"label":"createdBy","description":"","placeholder":"","visible":false,"editable":true,"mainField":"firstname"},"list":{"label":"createdBy","searchable":true,"sortable":true}},"updatedBy":{"edit":{"label":"updatedBy","description":"","placeholder":"","visible":false,"editable":true,"mainField":"firstname"},"list":{"label":"updatedBy","searchable":true,"sortable":true}},"documentId":{"edit":{},"list":{"label":"documentId","searchable":true,"sortable":true}}},"layouts":{"list":["id","userId","sessionId","childId"],"edit":[[{"name":"userId","size":6},{"name":"sessionId","size":6}],[{"name":"childId","size":6},{"name":"deviceId","size":6}],[{"name":"origin","size":6},{"name":"expiresAt","size":6}],[{"name":"absoluteExpiresAt","size":6},{"name":"status","size":6}],[{"name":"type","size":6}]]},"uid":"admin::session"}	object	\N	\N
3	plugin_content_manager_configuration_components::link.link	{"settings":{"bulkable":true,"filterable":true,"searchable":true,"pageSize":10,"mainField":"label","defaultSortBy":"label","defaultSortOrder":"ASC"},"metadatas":{"id":{"edit":{},"list":{"label":"id","searchable":false,"sortable":false}},"label":{"edit":{"label":"label","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"label","searchable":true,"sortable":true}},"url":{"edit":{"label":"url","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"url","searchable":true,"sortable":true}},"documentId":{"edit":{},"list":{"label":"documentId","searchable":true,"sortable":true}}},"layouts":{"list":["id","label","url"],"edit":[[{"name":"label","size":6},{"name":"url","size":6}]]},"uid":"link.link","isComponent":true}	object	\N	\N
30	core_admin_auth	{"providers":{"autoRegister":false,"defaultRole":null,"ssoLockedRoles":null}}	object	\N	\N
31	plugin_content_manager_configuration_content_types::api::sujet.sujet	{"settings":{"bulkable":true,"filterable":true,"searchable":true,"pageSize":10,"mainField":"name","defaultSortBy":"name","defaultSortOrder":"ASC"},"metadatas":{"id":{"edit":{},"list":{"label":"id","searchable":true,"sortable":true}},"name":{"edit":{"label":"name","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"name","searchable":true,"sortable":true}},"canton":{"edit":{"label":"canton","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"canton","searchable":true,"sortable":true}},"picture":{"edit":{"label":"picture","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"picture","searchable":false,"sortable":false}},"the_wall_of_shames":{"edit":{"label":"the_wall_of_shames","description":"","placeholder":"","visible":true,"editable":true,"mainField":"title"},"list":{"label":"the_wall_of_shames","searchable":false,"sortable":false}},"affiliation":{"edit":{"label":"affiliation","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"affiliation","searchable":true,"sortable":true}},"createdAt":{"edit":{"label":"createdAt","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"createdAt","searchable":true,"sortable":true}},"updatedAt":{"edit":{"label":"updatedAt","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"updatedAt","searchable":true,"sortable":true}},"createdBy":{"edit":{"label":"createdBy","description":"","placeholder":"","visible":false,"editable":true,"mainField":"firstname"},"list":{"label":"createdBy","searchable":true,"sortable":true}},"updatedBy":{"edit":{"label":"updatedBy","description":"","placeholder":"","visible":false,"editable":true,"mainField":"firstname"},"list":{"label":"updatedBy","searchable":true,"sortable":true}},"documentId":{"edit":{},"list":{"label":"documentId","searchable":true,"sortable":true}}},"layouts":{"edit":[[{"name":"name","size":6},{"name":"canton","size":6}],[{"name":"picture","size":6},{"name":"the_wall_of_shames","size":6}],[{"name":"affiliation","size":6}]],"list":["id","name","canton","affiliation","picture"]},"uid":"api::sujet.sujet"}	object	\N	\N
\.


--
-- Data for Name: strapi_database_schema; Type: TABLE DATA; Schema: public; Owner: strapi
--

COPY public.strapi_database_schema (id, schema, "time", hash) FROM stdin;
4	{"tables":[{"name":"files","indexes":[{"name":"upload_files_folder_path_index","columns":["folder_path"],"type":null},{"name":"upload_files_created_at_index","columns":["created_at"],"type":null},{"name":"upload_files_updated_at_index","columns":["updated_at"],"type":null},{"name":"upload_files_name_index","columns":["name"],"type":null},{"name":"upload_files_size_index","columns":["size"],"type":null},{"name":"upload_files_ext_index","columns":["ext"],"type":null},{"name":"files_documents_idx","columns":["document_id","locale","published_at"]},{"name":"files_created_by_id_fk","columns":["created_by_id"]},{"name":"files_updated_by_id_fk","columns":["updated_by_id"]}],"foreignKeys":[{"name":"files_created_by_id_fk","columns":["created_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"},{"name":"files_updated_by_id_fk","columns":["updated_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"}],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"document_id","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"name","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"alternative_text","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"caption","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"width","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"height","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"formats","type":"jsonb","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"hash","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"ext","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"mime","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"size","type":"decimal","args":[10,2],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"url","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"preview_url","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"provider","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"provider_metadata","type":"jsonb","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"folder_path","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"updated_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"published_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"updated_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"locale","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false}]},{"name":"upload_folders","indexes":[{"name":"upload_folders_path_id_index","columns":["path_id"],"type":"unique"},{"name":"upload_folders_path_index","columns":["path"],"type":"unique"},{"name":"upload_folders_documents_idx","columns":["document_id","locale","published_at"]},{"name":"upload_folders_created_by_id_fk","columns":["created_by_id"]},{"name":"upload_folders_updated_by_id_fk","columns":["updated_by_id"]}],"foreignKeys":[{"name":"upload_folders_created_by_id_fk","columns":["created_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"},{"name":"upload_folders_updated_by_id_fk","columns":["updated_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"}],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"document_id","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"name","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"path_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"path","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"updated_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"published_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"updated_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"locale","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false}]},{"name":"i18n_locale","indexes":[{"name":"i18n_locale_documents_idx","columns":["document_id","locale","published_at"]},{"name":"i18n_locale_created_by_id_fk","columns":["created_by_id"]},{"name":"i18n_locale_updated_by_id_fk","columns":["updated_by_id"]}],"foreignKeys":[{"name":"i18n_locale_created_by_id_fk","columns":["created_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"},{"name":"i18n_locale_updated_by_id_fk","columns":["updated_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"}],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"document_id","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"name","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"code","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"updated_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"published_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"updated_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"locale","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false}]},{"name":"strapi_releases","indexes":[{"name":"strapi_releases_documents_idx","columns":["document_id","locale","published_at"]},{"name":"strapi_releases_created_by_id_fk","columns":["created_by_id"]},{"name":"strapi_releases_updated_by_id_fk","columns":["updated_by_id"]}],"foreignKeys":[{"name":"strapi_releases_created_by_id_fk","columns":["created_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"},{"name":"strapi_releases_updated_by_id_fk","columns":["updated_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"}],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"document_id","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"name","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"released_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"scheduled_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"timezone","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"status","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"updated_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"published_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"updated_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"locale","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false}]},{"name":"strapi_release_actions","indexes":[{"name":"strapi_release_actions_documents_idx","columns":["document_id","locale","published_at"]},{"name":"strapi_release_actions_created_by_id_fk","columns":["created_by_id"]},{"name":"strapi_release_actions_updated_by_id_fk","columns":["updated_by_id"]}],"foreignKeys":[{"name":"strapi_release_actions_created_by_id_fk","columns":["created_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"},{"name":"strapi_release_actions_updated_by_id_fk","columns":["updated_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"}],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"document_id","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"type","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"content_type","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"entry_document_id","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"locale","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"is_entry_valid","type":"boolean","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"updated_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"published_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"updated_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true}]},{"name":"strapi_workflows","indexes":[{"name":"strapi_workflows_documents_idx","columns":["document_id","locale","published_at"]},{"name":"strapi_workflows_created_by_id_fk","columns":["created_by_id"]},{"name":"strapi_workflows_updated_by_id_fk","columns":["updated_by_id"]}],"foreignKeys":[{"name":"strapi_workflows_created_by_id_fk","columns":["created_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"},{"name":"strapi_workflows_updated_by_id_fk","columns":["updated_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"}],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"document_id","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"name","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"content_types","type":"jsonb","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"updated_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"published_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"updated_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"locale","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false}]},{"name":"strapi_workflows_stages","indexes":[{"name":"strapi_workflows_stages_documents_idx","columns":["document_id","locale","published_at"]},{"name":"strapi_workflows_stages_created_by_id_fk","columns":["created_by_id"]},{"name":"strapi_workflows_stages_updated_by_id_fk","columns":["updated_by_id"]}],"foreignKeys":[{"name":"strapi_workflows_stages_created_by_id_fk","columns":["created_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"},{"name":"strapi_workflows_stages_updated_by_id_fk","columns":["updated_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"}],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"document_id","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"name","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"color","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"updated_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"published_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"updated_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"locale","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false}]},{"name":"up_permissions","indexes":[{"name":"up_permissions_documents_idx","columns":["document_id","locale","published_at"]},{"name":"up_permissions_created_by_id_fk","columns":["created_by_id"]},{"name":"up_permissions_updated_by_id_fk","columns":["updated_by_id"]}],"foreignKeys":[{"name":"up_permissions_created_by_id_fk","columns":["created_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"},{"name":"up_permissions_updated_by_id_fk","columns":["updated_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"}],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"document_id","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"action","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"updated_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"published_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"updated_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"locale","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false}]},{"name":"up_roles","indexes":[{"name":"up_roles_documents_idx","columns":["document_id","locale","published_at"]},{"name":"up_roles_created_by_id_fk","columns":["created_by_id"]},{"name":"up_roles_updated_by_id_fk","columns":["updated_by_id"]}],"foreignKeys":[{"name":"up_roles_created_by_id_fk","columns":["created_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"},{"name":"up_roles_updated_by_id_fk","columns":["updated_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"}],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"document_id","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"name","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"description","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"type","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"updated_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"published_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"updated_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"locale","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false}]},{"name":"up_users","indexes":[{"name":"up_users_documents_idx","columns":["document_id","locale","published_at"]},{"name":"up_users_created_by_id_fk","columns":["created_by_id"]},{"name":"up_users_updated_by_id_fk","columns":["updated_by_id"]}],"foreignKeys":[{"name":"up_users_created_by_id_fk","columns":["created_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"},{"name":"up_users_updated_by_id_fk","columns":["updated_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"}],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"document_id","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"username","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"email","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"provider","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"password","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"reset_password_token","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"confirmation_token","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"confirmed","type":"boolean","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"blocked","type":"boolean","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"updated_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"published_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"updated_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"locale","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false}]},{"name":"sujets","indexes":[{"name":"sujets_documents_idx","columns":["document_id","locale","published_at"]},{"name":"sujets_created_by_id_fk","columns":["created_by_id"]},{"name":"sujets_updated_by_id_fk","columns":["updated_by_id"]}],"foreignKeys":[{"name":"sujets_created_by_id_fk","columns":["created_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"},{"name":"sujets_updated_by_id_fk","columns":["updated_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"}],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"document_id","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"name","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"canton","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"affiliation","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"updated_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"published_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"updated_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"locale","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false}]},{"name":"the_wall_of_shames_cmps","indexes":[{"name":"the_wall_of_shames_field_idx","columns":["field"]},{"name":"the_wall_of_shames_component_type_idx","columns":["component_type"]},{"name":"the_wall_of_shames_entity_fk","columns":["entity_id"]},{"name":"the_wall_of_shames_uq","columns":["entity_id","cmp_id","field","component_type"],"type":"unique"}],"foreignKeys":[{"name":"the_wall_of_shames_entity_fk","columns":["entity_id"],"referencedColumns":["id"],"referencedTable":"the_wall_of_shames","onDelete":"CASCADE"}],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"entity_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"cmp_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"component_type","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"field","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"order","type":"double","args":[],"defaultTo":null,"notNullable":false,"unsigned":true}]},{"name":"the_wall_of_shames","indexes":[{"name":"the_wall_of_shames_documents_idx","columns":["document_id","locale","published_at"]},{"name":"the_wall_of_shames_created_by_id_fk","columns":["created_by_id"]},{"name":"the_wall_of_shames_updated_by_id_fk","columns":["updated_by_id"]}],"foreignKeys":[{"name":"the_wall_of_shames_created_by_id_fk","columns":["created_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"},{"name":"the_wall_of_shames_updated_by_id_fk","columns":["updated_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"}],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"document_id","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"title","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"slug","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"subject_role","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"incident_date","type":"date","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"category","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"description","type":"text","args":["longtext"],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"incident_location","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"consequence","type":"text","args":["longtext"],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"visible","type":"boolean","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"updated_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"published_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"updated_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"locale","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false}]},{"name":"admin_permissions","indexes":[{"name":"admin_permissions_documents_idx","columns":["document_id","locale","published_at"]},{"name":"admin_permissions_created_by_id_fk","columns":["created_by_id"]},{"name":"admin_permissions_updated_by_id_fk","columns":["updated_by_id"]}],"foreignKeys":[{"name":"admin_permissions_created_by_id_fk","columns":["created_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"},{"name":"admin_permissions_updated_by_id_fk","columns":["updated_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"}],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"document_id","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"action","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"action_parameters","type":"jsonb","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"subject","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"properties","type":"jsonb","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"conditions","type":"jsonb","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"updated_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"published_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"updated_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"locale","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false}]},{"name":"admin_users","indexes":[{"name":"admin_users_documents_idx","columns":["document_id","locale","published_at"]},{"name":"admin_users_created_by_id_fk","columns":["created_by_id"]},{"name":"admin_users_updated_by_id_fk","columns":["updated_by_id"]}],"foreignKeys":[{"name":"admin_users_created_by_id_fk","columns":["created_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"},{"name":"admin_users_updated_by_id_fk","columns":["updated_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"}],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"document_id","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"firstname","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"lastname","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"username","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"email","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"password","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"reset_password_token","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"registration_token","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"is_active","type":"boolean","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"blocked","type":"boolean","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"prefered_language","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"updated_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"published_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"updated_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"locale","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false}]},{"name":"admin_roles","indexes":[{"name":"admin_roles_documents_idx","columns":["document_id","locale","published_at"]},{"name":"admin_roles_created_by_id_fk","columns":["created_by_id"]},{"name":"admin_roles_updated_by_id_fk","columns":["updated_by_id"]}],"foreignKeys":[{"name":"admin_roles_created_by_id_fk","columns":["created_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"},{"name":"admin_roles_updated_by_id_fk","columns":["updated_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"}],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"document_id","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"name","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"code","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"description","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"updated_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"published_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"updated_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"locale","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false}]},{"name":"strapi_api_tokens","indexes":[{"name":"strapi_api_tokens_documents_idx","columns":["document_id","locale","published_at"]},{"name":"strapi_api_tokens_created_by_id_fk","columns":["created_by_id"]},{"name":"strapi_api_tokens_updated_by_id_fk","columns":["updated_by_id"]}],"foreignKeys":[{"name":"strapi_api_tokens_created_by_id_fk","columns":["created_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"},{"name":"strapi_api_tokens_updated_by_id_fk","columns":["updated_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"}],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"document_id","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"name","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"description","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"type","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"access_key","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"encrypted_key","type":"text","args":["longtext"],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"last_used_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"expires_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"lifespan","type":"bigInteger","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"updated_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"published_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"updated_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"locale","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false}]},{"name":"strapi_api_token_permissions","indexes":[{"name":"strapi_api_token_permissions_documents_idx","columns":["document_id","locale","published_at"]},{"name":"strapi_api_token_permissions_created_by_id_fk","columns":["created_by_id"]},{"name":"strapi_api_token_permissions_updated_by_id_fk","columns":["updated_by_id"]}],"foreignKeys":[{"name":"strapi_api_token_permissions_created_by_id_fk","columns":["created_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"},{"name":"strapi_api_token_permissions_updated_by_id_fk","columns":["updated_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"}],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"document_id","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"action","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"updated_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"published_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"updated_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"locale","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false}]},{"name":"strapi_transfer_tokens","indexes":[{"name":"strapi_transfer_tokens_documents_idx","columns":["document_id","locale","published_at"]},{"name":"strapi_transfer_tokens_created_by_id_fk","columns":["created_by_id"]},{"name":"strapi_transfer_tokens_updated_by_id_fk","columns":["updated_by_id"]}],"foreignKeys":[{"name":"strapi_transfer_tokens_created_by_id_fk","columns":["created_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"},{"name":"strapi_transfer_tokens_updated_by_id_fk","columns":["updated_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"}],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"document_id","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"name","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"description","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"access_key","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"last_used_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"expires_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"lifespan","type":"bigInteger","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"updated_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"published_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"updated_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"locale","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false}]},{"name":"strapi_transfer_token_permissions","indexes":[{"name":"strapi_transfer_token_permissions_documents_idx","columns":["document_id","locale","published_at"]},{"name":"strapi_transfer_token_permissions_created_by_id_fk","columns":["created_by_id"]},{"name":"strapi_transfer_token_permissions_updated_by_id_fk","columns":["updated_by_id"]}],"foreignKeys":[{"name":"strapi_transfer_token_permissions_created_by_id_fk","columns":["created_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"},{"name":"strapi_transfer_token_permissions_updated_by_id_fk","columns":["updated_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"}],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"document_id","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"action","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"updated_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"published_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"updated_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"locale","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false}]},{"name":"strapi_sessions","indexes":[{"name":"strapi_sessions_documents_idx","columns":["document_id","locale","published_at"]},{"name":"strapi_sessions_created_by_id_fk","columns":["created_by_id"]},{"name":"strapi_sessions_updated_by_id_fk","columns":["updated_by_id"]}],"foreignKeys":[{"name":"strapi_sessions_created_by_id_fk","columns":["created_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"},{"name":"strapi_sessions_updated_by_id_fk","columns":["updated_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"}],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"document_id","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"user_id","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"session_id","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"child_id","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"device_id","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"origin","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"expires_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"absolute_expires_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"status","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"type","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"updated_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"published_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"updated_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"locale","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false}]},{"name":"components_link_links","indexes":[],"foreignKeys":[],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"label","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"url","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false}]},{"name":"strapi_core_store_settings","indexes":[],"foreignKeys":[],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"key","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"value","type":"text","args":["longtext"],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"type","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"environment","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"tag","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false}]},{"name":"strapi_webhooks","indexes":[],"foreignKeys":[],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"name","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"url","type":"text","args":["longtext"],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"headers","type":"jsonb","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"events","type":"jsonb","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"enabled","type":"boolean","args":[],"defaultTo":null,"notNullable":false,"unsigned":false}]},{"name":"strapi_history_versions","indexes":[{"name":"strapi_history_versions_created_by_id_fk","columns":["created_by_id"]}],"foreignKeys":[{"name":"strapi_history_versions_created_by_id_fk","columns":["created_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"}],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"content_type","type":"string","args":[],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"related_document_id","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"locale","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"status","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"data","type":"jsonb","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"schema","type":"jsonb","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true}]},{"name":"strapi_ai_localization_jobs","indexes":[],"foreignKeys":[],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"content_type","type":"string","args":[],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"related_document_id","type":"string","args":[],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"source_locale","type":"string","args":[],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"target_locales","type":"jsonb","args":[],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"status","type":"string","args":[],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"created_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"updated_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false}]},{"name":"files_related_mph","indexes":[{"name":"files_related_mph_fk","columns":["file_id"]},{"name":"files_related_mph_oidx","columns":["order"]},{"name":"files_related_mph_idix","columns":["related_id"]}],"foreignKeys":[{"name":"files_related_mph_fk","columns":["file_id"],"referencedColumns":["id"],"referencedTable":"files","onDelete":"CASCADE"}],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"file_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"related_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"related_type","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"field","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"order","type":"double","args":[],"defaultTo":null,"notNullable":false,"unsigned":true}]},{"name":"files_folder_lnk","indexes":[{"name":"files_folder_lnk_fk","columns":["file_id"]},{"name":"files_folder_lnk_ifk","columns":["folder_id"]},{"name":"files_folder_lnk_uq","columns":["file_id","folder_id"],"type":"unique"},{"name":"files_folder_lnk_oifk","columns":["file_ord"]}],"foreignKeys":[{"name":"files_folder_lnk_fk","columns":["file_id"],"referencedColumns":["id"],"referencedTable":"files","onDelete":"CASCADE"},{"name":"files_folder_lnk_ifk","columns":["folder_id"],"referencedColumns":["id"],"referencedTable":"upload_folders","onDelete":"CASCADE"}],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"file_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"folder_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"file_ord","type":"double","args":[],"defaultTo":null,"notNullable":false,"unsigned":true}]},{"name":"upload_folders_parent_lnk","indexes":[{"name":"upload_folders_parent_lnk_fk","columns":["folder_id"]},{"name":"upload_folders_parent_lnk_ifk","columns":["inv_folder_id"]},{"name":"upload_folders_parent_lnk_uq","columns":["folder_id","inv_folder_id"],"type":"unique"},{"name":"upload_folders_parent_lnk_oifk","columns":["folder_ord"]}],"foreignKeys":[{"name":"upload_folders_parent_lnk_fk","columns":["folder_id"],"referencedColumns":["id"],"referencedTable":"upload_folders","onDelete":"CASCADE"},{"name":"upload_folders_parent_lnk_ifk","columns":["inv_folder_id"],"referencedColumns":["id"],"referencedTable":"upload_folders","onDelete":"CASCADE"}],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"folder_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"inv_folder_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"folder_ord","type":"double","args":[],"defaultTo":null,"notNullable":false,"unsigned":true}]},{"name":"strapi_release_actions_release_lnk","indexes":[{"name":"strapi_release_actions_release_lnk_fk","columns":["release_action_id"]},{"name":"strapi_release_actions_release_lnk_ifk","columns":["release_id"]},{"name":"strapi_release_actions_release_lnk_uq","columns":["release_action_id","release_id"],"type":"unique"},{"name":"strapi_release_actions_release_lnk_oifk","columns":["release_action_ord"]}],"foreignKeys":[{"name":"strapi_release_actions_release_lnk_fk","columns":["release_action_id"],"referencedColumns":["id"],"referencedTable":"strapi_release_actions","onDelete":"CASCADE"},{"name":"strapi_release_actions_release_lnk_ifk","columns":["release_id"],"referencedColumns":["id"],"referencedTable":"strapi_releases","onDelete":"CASCADE"}],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"release_action_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"release_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"release_action_ord","type":"double","args":[],"defaultTo":null,"notNullable":false,"unsigned":true}]},{"name":"strapi_workflows_stage_required_to_publish_lnk","indexes":[{"name":"strapi_workflows_stage_required_to_publish_lnk_fk","columns":["workflow_id"]},{"name":"strapi_workflows_stage_required_to_publish_lnk_ifk","columns":["workflow_stage_id"]},{"name":"strapi_workflows_stage_required_to_publish_lnk_uq","columns":["workflow_id","workflow_stage_id"],"type":"unique"}],"foreignKeys":[{"name":"strapi_workflows_stage_required_to_publish_lnk_fk","columns":["workflow_id"],"referencedColumns":["id"],"referencedTable":"strapi_workflows","onDelete":"CASCADE"},{"name":"strapi_workflows_stage_required_to_publish_lnk_ifk","columns":["workflow_stage_id"],"referencedColumns":["id"],"referencedTable":"strapi_workflows_stages","onDelete":"CASCADE"}],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"workflow_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"workflow_stage_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true}]},{"name":"strapi_workflows_stages_workflow_lnk","indexes":[{"name":"strapi_workflows_stages_workflow_lnk_fk","columns":["workflow_stage_id"]},{"name":"strapi_workflows_stages_workflow_lnk_ifk","columns":["workflow_id"]},{"name":"strapi_workflows_stages_workflow_lnk_uq","columns":["workflow_stage_id","workflow_id"],"type":"unique"},{"name":"strapi_workflows_stages_workflow_lnk_oifk","columns":["workflow_stage_ord"]}],"foreignKeys":[{"name":"strapi_workflows_stages_workflow_lnk_fk","columns":["workflow_stage_id"],"referencedColumns":["id"],"referencedTable":"strapi_workflows_stages","onDelete":"CASCADE"},{"name":"strapi_workflows_stages_workflow_lnk_ifk","columns":["workflow_id"],"referencedColumns":["id"],"referencedTable":"strapi_workflows","onDelete":"CASCADE"}],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"workflow_stage_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"workflow_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"workflow_stage_ord","type":"double","args":[],"defaultTo":null,"notNullable":false,"unsigned":true}]},{"name":"strapi_workflows_stages_permissions_lnk","indexes":[{"name":"strapi_workflows_stages_permissions_lnk_fk","columns":["workflow_stage_id"]},{"name":"strapi_workflows_stages_permissions_lnk_ifk","columns":["permission_id"]},{"name":"strapi_workflows_stages_permissions_lnk_uq","columns":["workflow_stage_id","permission_id"],"type":"unique"},{"name":"strapi_workflows_stages_permissions_lnk_ofk","columns":["permission_ord"]}],"foreignKeys":[{"name":"strapi_workflows_stages_permissions_lnk_fk","columns":["workflow_stage_id"],"referencedColumns":["id"],"referencedTable":"strapi_workflows_stages","onDelete":"CASCADE"},{"name":"strapi_workflows_stages_permissions_lnk_ifk","columns":["permission_id"],"referencedColumns":["id"],"referencedTable":"admin_permissions","onDelete":"CASCADE"}],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"workflow_stage_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"permission_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"permission_ord","type":"double","args":[],"defaultTo":null,"notNullable":false,"unsigned":true}]},{"name":"up_permissions_role_lnk","indexes":[{"name":"up_permissions_role_lnk_fk","columns":["permission_id"]},{"name":"up_permissions_role_lnk_ifk","columns":["role_id"]},{"name":"up_permissions_role_lnk_uq","columns":["permission_id","role_id"],"type":"unique"},{"name":"up_permissions_role_lnk_oifk","columns":["permission_ord"]}],"foreignKeys":[{"name":"up_permissions_role_lnk_fk","columns":["permission_id"],"referencedColumns":["id"],"referencedTable":"up_permissions","onDelete":"CASCADE"},{"name":"up_permissions_role_lnk_ifk","columns":["role_id"],"referencedColumns":["id"],"referencedTable":"up_roles","onDelete":"CASCADE"}],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"permission_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"role_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"permission_ord","type":"double","args":[],"defaultTo":null,"notNullable":false,"unsigned":true}]},{"name":"up_users_role_lnk","indexes":[{"name":"up_users_role_lnk_fk","columns":["user_id"]},{"name":"up_users_role_lnk_ifk","columns":["role_id"]},{"name":"up_users_role_lnk_uq","columns":["user_id","role_id"],"type":"unique"},{"name":"up_users_role_lnk_oifk","columns":["user_ord"]}],"foreignKeys":[{"name":"up_users_role_lnk_fk","columns":["user_id"],"referencedColumns":["id"],"referencedTable":"up_users","onDelete":"CASCADE"},{"name":"up_users_role_lnk_ifk","columns":["role_id"],"referencedColumns":["id"],"referencedTable":"up_roles","onDelete":"CASCADE"}],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"user_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"role_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"user_ord","type":"double","args":[],"defaultTo":null,"notNullable":false,"unsigned":true}]},{"name":"the_wall_of_shames_sujet_lnk","indexes":[{"name":"the_wall_of_shames_sujet_lnk_fk","columns":["the_wall_of_shame_id"]},{"name":"the_wall_of_shames_sujet_lnk_ifk","columns":["sujet_id"]},{"name":"the_wall_of_shames_sujet_lnk_uq","columns":["the_wall_of_shame_id","sujet_id"],"type":"unique"},{"name":"the_wall_of_shames_sujet_lnk_oifk","columns":["the_wall_of_shame_ord"]}],"foreignKeys":[{"name":"the_wall_of_shames_sujet_lnk_fk","columns":["the_wall_of_shame_id"],"referencedColumns":["id"],"referencedTable":"the_wall_of_shames","onDelete":"CASCADE"},{"name":"the_wall_of_shames_sujet_lnk_ifk","columns":["sujet_id"],"referencedColumns":["id"],"referencedTable":"sujets","onDelete":"CASCADE"}],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"the_wall_of_shame_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"sujet_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"the_wall_of_shame_ord","type":"double","args":[],"defaultTo":null,"notNullable":false,"unsigned":true}]},{"name":"admin_permissions_role_lnk","indexes":[{"name":"admin_permissions_role_lnk_fk","columns":["permission_id"]},{"name":"admin_permissions_role_lnk_ifk","columns":["role_id"]},{"name":"admin_permissions_role_lnk_uq","columns":["permission_id","role_id"],"type":"unique"},{"name":"admin_permissions_role_lnk_oifk","columns":["permission_ord"]}],"foreignKeys":[{"name":"admin_permissions_role_lnk_fk","columns":["permission_id"],"referencedColumns":["id"],"referencedTable":"admin_permissions","onDelete":"CASCADE"},{"name":"admin_permissions_role_lnk_ifk","columns":["role_id"],"referencedColumns":["id"],"referencedTable":"admin_roles","onDelete":"CASCADE"}],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"permission_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"role_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"permission_ord","type":"double","args":[],"defaultTo":null,"notNullable":false,"unsigned":true}]},{"name":"admin_users_roles_lnk","indexes":[{"name":"admin_users_roles_lnk_fk","columns":["user_id"]},{"name":"admin_users_roles_lnk_ifk","columns":["role_id"]},{"name":"admin_users_roles_lnk_uq","columns":["user_id","role_id"],"type":"unique"},{"name":"admin_users_roles_lnk_ofk","columns":["role_ord"]},{"name":"admin_users_roles_lnk_oifk","columns":["user_ord"]}],"foreignKeys":[{"name":"admin_users_roles_lnk_fk","columns":["user_id"],"referencedColumns":["id"],"referencedTable":"admin_users","onDelete":"CASCADE"},{"name":"admin_users_roles_lnk_ifk","columns":["role_id"],"referencedColumns":["id"],"referencedTable":"admin_roles","onDelete":"CASCADE"}],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"user_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"role_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"role_ord","type":"double","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"user_ord","type":"double","args":[],"defaultTo":null,"notNullable":false,"unsigned":true}]},{"name":"strapi_api_token_permissions_token_lnk","indexes":[{"name":"strapi_api_token_permissions_token_lnk_fk","columns":["api_token_permission_id"]},{"name":"strapi_api_token_permissions_token_lnk_ifk","columns":["api_token_id"]},{"name":"strapi_api_token_permissions_token_lnk_uq","columns":["api_token_permission_id","api_token_id"],"type":"unique"},{"name":"strapi_api_token_permissions_token_lnk_oifk","columns":["api_token_permission_ord"]}],"foreignKeys":[{"name":"strapi_api_token_permissions_token_lnk_fk","columns":["api_token_permission_id"],"referencedColumns":["id"],"referencedTable":"strapi_api_token_permissions","onDelete":"CASCADE"},{"name":"strapi_api_token_permissions_token_lnk_ifk","columns":["api_token_id"],"referencedColumns":["id"],"referencedTable":"strapi_api_tokens","onDelete":"CASCADE"}],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"api_token_permission_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"api_token_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"api_token_permission_ord","type":"double","args":[],"defaultTo":null,"notNullable":false,"unsigned":true}]},{"name":"strapi_transfer_token_permissions_token_lnk","indexes":[{"name":"strapi_transfer_token_permissions_token_lnk_fk","columns":["transfer_token_permission_id"]},{"name":"strapi_transfer_token_permissions_token_lnk_ifk","columns":["transfer_token_id"]},{"name":"strapi_transfer_token_permissions_token_lnk_uq","columns":["transfer_token_permission_id","transfer_token_id"],"type":"unique"},{"name":"strapi_transfer_token_permissions_token_lnk_oifk","columns":["transfer_token_permission_ord"]}],"foreignKeys":[{"name":"strapi_transfer_token_permissions_token_lnk_fk","columns":["transfer_token_permission_id"],"referencedColumns":["id"],"referencedTable":"strapi_transfer_token_permissions","onDelete":"CASCADE"},{"name":"strapi_transfer_token_permissions_token_lnk_ifk","columns":["transfer_token_id"],"referencedColumns":["id"],"referencedTable":"strapi_transfer_tokens","onDelete":"CASCADE"}],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"transfer_token_permission_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"transfer_token_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"transfer_token_permission_ord","type":"double","args":[],"defaultTo":null,"notNullable":false,"unsigned":true}]}]}	2025-11-14 15:33:13.823	33dad309dee8901ef36bcae9a2a4183f067e8f062f5093ab29ae81c5f2a0c888
\.


--
-- Data for Name: strapi_history_versions; Type: TABLE DATA; Schema: public; Owner: strapi
--

COPY public.strapi_history_versions (id, content_type, related_document_id, locale, status, data, schema, created_at, created_by_id) FROM stdin;
\.


--
-- Data for Name: strapi_migrations; Type: TABLE DATA; Schema: public; Owner: strapi
--

COPY public.strapi_migrations (id, name, "time") FROM stdin;
\.


--
-- Data for Name: strapi_migrations_internal; Type: TABLE DATA; Schema: public; Owner: strapi
--

COPY public.strapi_migrations_internal (id, name, "time") FROM stdin;
1	5.0.0-rename-identifiers-longer-than-max-length	2025-11-11 22:34:26.445
2	5.0.0-02-created-document-id	2025-11-11 22:34:26.523
3	5.0.0-03-created-locale	2025-11-11 22:34:26.58
4	5.0.0-04-created-published-at	2025-11-11 22:34:26.647
5	5.0.0-05-drop-slug-fields-index	2025-11-11 22:34:26.712
6	core::5.0.0-discard-drafts	2025-11-11 22:34:26.774
\.


--
-- Data for Name: strapi_release_actions; Type: TABLE DATA; Schema: public; Owner: strapi
--

COPY public.strapi_release_actions (id, document_id, type, content_type, entry_document_id, locale, is_entry_valid, created_at, updated_at, published_at, created_by_id, updated_by_id) FROM stdin;
\.


--
-- Data for Name: strapi_release_actions_release_lnk; Type: TABLE DATA; Schema: public; Owner: strapi
--

COPY public.strapi_release_actions_release_lnk (id, release_action_id, release_id, release_action_ord) FROM stdin;
\.


--
-- Data for Name: strapi_releases; Type: TABLE DATA; Schema: public; Owner: strapi
--

COPY public.strapi_releases (id, document_id, name, released_at, scheduled_at, timezone, status, created_at, updated_at, published_at, created_by_id, updated_by_id, locale) FROM stdin;
\.


--
-- Data for Name: strapi_sessions; Type: TABLE DATA; Schema: public; Owner: strapi
--

COPY public.strapi_sessions (id, document_id, user_id, session_id, child_id, device_id, origin, expires_at, absolute_expires_at, status, type, created_at, updated_at, published_at, created_by_id, updated_by_id, locale) FROM stdin;
2	x6of0lvt8ecpcvh5jc8k5x50	1	a769fd6520bbc2896b4d0fdbb5d5fee6	7082c764c310639f00a72959663c2ab1	7aaf604f-f160-444b-b187-c02898de6816	admin	2025-11-25 23:03:36.734	2025-12-11 23:03:36.734	rotated	refresh	2025-11-11 23:03:36.734	2025-11-12 08:53:32.136	2025-11-11 23:03:36.735	\N	\N	\N
3	w6jznswj7wz26ol4015qdcra	1	7082c764c310639f00a72959663c2ab1	52c2e206c825691bf43efad40ccc2d2a	7aaf604f-f160-444b-b187-c02898de6816	admin	2025-11-26 08:53:32.112	2025-12-11 23:03:36.734	rotated	refresh	2025-11-12 08:53:32.112	2025-11-12 10:10:59.465	2025-11-12 08:53:32.115	\N	\N	\N
4	a8cu781iz6gbf9j97fsn901p	1	52c2e206c825691bf43efad40ccc2d2a	0b0586a837aaf0f5921b88a6fbec63a5	7aaf604f-f160-444b-b187-c02898de6816	admin	2025-11-26 10:10:59.448	2025-12-11 23:03:36.734	rotated	refresh	2025-11-12 10:10:59.448	2025-11-12 10:46:09.608	2025-11-12 10:10:59.45	\N	\N	\N
5	v8ey42nmlqli5edkwcsg6yf5	1	0b0586a837aaf0f5921b88a6fbec63a5	03bf1fccfd541686176b0cacb46aa3b7	7aaf604f-f160-444b-b187-c02898de6816	admin	2025-11-26 10:46:09.588	2025-12-11 23:03:36.734	rotated	refresh	2025-11-12 10:46:09.588	2025-11-12 14:49:21.751	2025-11-12 10:46:09.593	\N	\N	\N
6	mlugcnbqqgxgxr3x53rmifp0	1	03bf1fccfd541686176b0cacb46aa3b7	d325e06c112df6551282efa6fae48a93	7aaf604f-f160-444b-b187-c02898de6816	admin	2025-11-26 14:49:21.735	2025-12-11 23:03:36.734	rotated	refresh	2025-11-12 14:49:21.736	2025-11-12 15:48:27.611	2025-11-12 14:49:21.738	\N	\N	\N
7	gmu8mm1e15xhwrlj5g3szwvr	1	d325e06c112df6551282efa6fae48a93	6909d05eff6f8872b63860cc42ae928d	7aaf604f-f160-444b-b187-c02898de6816	admin	2025-11-26 15:48:27.588	2025-12-11 23:03:36.734	rotated	refresh	2025-11-12 15:48:27.588	2025-11-12 16:20:07.745	2025-11-12 15:48:27.591	\N	\N	\N
9	k823kaepe4aykb484li2975x	1	6662612d2458408a86a78a11ccc4e558	\N	2f427e79-35a5-42bd-83ef-37c763270cbc	admin	2025-11-26 16:46:27.107	2025-12-12 16:46:27.107	active	refresh	2025-11-12 16:46:27.107	2025-11-12 16:46:27.107	2025-11-12 16:46:27.108	\N	\N	\N
10	p6lsycs8t6trqfdpptlml0av	1	fea293f3e16255b6d0bbeb4a7ffa57bb	21ba46436c87e6268e5d34532b42258c	fc925fec-b541-42e9-bfb0-8a2ff49c694a	admin	2025-11-26 17:22:28.737	2025-12-12 17:22:28.737	rotated	refresh	2025-11-12 17:22:28.737	2025-11-12 18:08:31.354	2025-11-12 17:22:28.737	\N	\N	\N
11	wzvgkf3w8t1mzpo0f5bf0olv	1	21ba46436c87e6268e5d34532b42258c	e91e38c94b615a3e3541cb6945cd9ca1	fc925fec-b541-42e9-bfb0-8a2ff49c694a	admin	2025-11-26 18:08:31.344	2025-12-12 17:22:28.737	rotated	refresh	2025-11-12 18:08:31.345	2025-11-12 18:08:31.53	2025-11-12 18:08:31.345	\N	\N	\N
8	lnxdt2bvhmrx7kfe1cwocry0	1	6909d05eff6f8872b63860cc42ae928d	ab18ea948ff3f3cc605a25eb7d077ece	7aaf604f-f160-444b-b187-c02898de6816	admin	2025-11-26 16:20:07.717	2025-12-11 23:03:36.734	rotated	refresh	2025-11-12 16:20:07.718	2025-11-12 19:09:22.785	2025-11-12 16:20:07.725	\N	\N	\N
13	mq9b9a6a0w12mmlccanyemob	1	ab18ea948ff3f3cc605a25eb7d077ece	d8c99869f29757df700d2cf9e1bc3d9f	7aaf604f-f160-444b-b187-c02898de6816	admin	2025-11-26 19:09:22.766	2025-12-11 23:03:36.734	rotated	refresh	2025-11-12 19:09:22.767	2025-11-12 22:29:50.857	2025-11-12 19:09:22.768	\N	\N	\N
15	tfau91mar06o28um0e83lvce	1	4dec37c14aeb1bbdb3f5747b15ef7512	\N	fc925fec-b541-42e9-bfb0-8a2ff49c694a	admin	2025-11-26 22:45:22.062	2025-12-12 17:22:28.737	active	refresh	2025-11-12 22:45:22.062	2025-11-12 22:45:22.062	2025-11-12 22:45:22.063	\N	\N	\N
12	t03hc5hhlr8wihn163uhnynp	1	e91e38c94b615a3e3541cb6945cd9ca1	4dec37c14aeb1bbdb3f5747b15ef7512	fc925fec-b541-42e9-bfb0-8a2ff49c694a	admin	2025-11-26 18:08:31.524	2025-12-12 17:22:28.737	rotated	refresh	2025-11-12 18:08:31.524	2025-11-12 22:45:22.071	2025-11-12 18:08:31.524	\N	\N	\N
14	p3ed3254ph5nm0p895b6lojj	1	d8c99869f29757df700d2cf9e1bc3d9f	7212de5cf58a873412f9f46de9993a2f	7aaf604f-f160-444b-b187-c02898de6816	admin	2025-11-26 22:29:50.846	2025-12-11 23:03:36.734	rotated	refresh	2025-11-12 22:29:50.846	2025-11-13 10:15:31.56	2025-11-12 22:29:50.847	\N	\N	\N
16	gk238ac7qgpq2ny1yb1wwmhf	1	7212de5cf58a873412f9f46de9993a2f	363dd39f9659247afdf4dbf77c7a359e	7aaf604f-f160-444b-b187-c02898de6816	admin	2025-11-27 10:15:31.548	2025-12-11 23:03:36.734	rotated	refresh	2025-11-13 10:15:31.548	2025-11-13 10:15:31.774	2025-11-13 10:15:31.55	\N	\N	\N
17	g2v0pbpjr5zr8h0oo2s77ffh	1	363dd39f9659247afdf4dbf77c7a359e	ce1df9fd455bfb388d870327b61c0c89	7aaf604f-f160-444b-b187-c02898de6816	admin	2025-11-27 10:15:31.683	2025-12-11 23:03:36.734	rotated	refresh	2025-11-13 10:15:31.684	2025-11-13 13:51:35.318	2025-11-13 10:15:31.685	\N	\N	\N
18	bajv8p5xhdct1f5ew349mu7m	1	ce1df9fd455bfb388d870327b61c0c89	0efd201671347928bac5986c0e5a193c	7aaf604f-f160-444b-b187-c02898de6816	admin	2025-11-27 13:51:35.308	2025-12-11 23:03:36.734	rotated	refresh	2025-11-13 13:51:35.309	2025-11-13 17:34:49.294	2025-11-13 13:51:35.309	\N	\N	\N
19	z2uj36rzsdzzye2njr1a73ux	1	0efd201671347928bac5986c0e5a193c	36089ff70865863a0d14156cc6b1c7b3	7aaf604f-f160-444b-b187-c02898de6816	admin	2025-11-27 17:34:49.286	2025-12-11 23:03:36.734	rotated	refresh	2025-11-13 17:34:49.286	2025-11-14 11:20:01.464	2025-11-13 17:34:49.286	\N	\N	\N
20	p4zkpf4xzklx6gxcw9hbs8tz	1	36089ff70865863a0d14156cc6b1c7b3	d7fffcd3c30f6736f2ab33a04348bf82	7aaf604f-f160-444b-b187-c02898de6816	admin	2025-11-28 11:20:01.453	2025-12-11 23:03:36.734	rotated	refresh	2025-11-14 11:20:01.454	2025-11-14 11:56:20.7	2025-11-14 11:20:01.455	\N	\N	\N
21	b4kvj9atthkfy6ddiohda7do	1	d7fffcd3c30f6736f2ab33a04348bf82	22304d168a9bd807ea54c41f9aab7be3	7aaf604f-f160-444b-b187-c02898de6816	admin	2025-11-28 11:56:20.671	2025-12-11 23:03:36.734	rotated	refresh	2025-11-14 11:56:20.672	2025-11-14 13:53:15.066	2025-11-14 11:56:20.679	\N	\N	\N
22	d4cuxdiz1kivy6vy57dfbij1	1	22304d168a9bd807ea54c41f9aab7be3	5dc5884805d400abd9d67f42e267d56c	7aaf604f-f160-444b-b187-c02898de6816	admin	2025-11-28 13:53:15.053	2025-12-11 23:03:36.734	rotated	refresh	2025-11-14 13:53:15.053	2025-11-14 14:23:20.204	2025-11-14 13:53:15.053	\N	\N	\N
23	hm95j8as47be79gm9qmkujbl	1	5dc5884805d400abd9d67f42e267d56c	d6d09e6d727a4da5148623de03cd006e	7aaf604f-f160-444b-b187-c02898de6816	admin	2025-11-28 14:23:20.195	2025-12-11 23:03:36.734	rotated	refresh	2025-11-14 14:23:20.195	2025-11-14 14:56:55.883	2025-11-14 14:23:20.196	\N	\N	\N
24	n2buw1fcl16djxmvte522v3v	1	d6d09e6d727a4da5148623de03cd006e	57b0d617a68d2ab26f7bb7fb2eed4236	7aaf604f-f160-444b-b187-c02898de6816	admin	2025-11-28 14:56:55.853	2025-12-11 23:03:36.734	rotated	refresh	2025-11-14 14:56:55.854	2025-11-14 15:33:33.368	2025-11-14 14:56:55.863	\N	\N	\N
25	jzoev4j2nrpxrst0wpb8olhc	1	57b0d617a68d2ab26f7bb7fb2eed4236	7e2b3650043be1ee1dafce22faaa5551	7aaf604f-f160-444b-b187-c02898de6816	admin	2025-11-28 15:33:33.36	2025-12-11 23:03:36.734	rotated	refresh	2025-11-14 15:33:33.36	2025-11-15 10:19:02.417	2025-11-14 15:33:33.362	\N	\N	\N
26	b03lln5vpc2e7iflekyapfm3	1	7e2b3650043be1ee1dafce22faaa5551	d53306231e008ad737ce5d487023670d	7aaf604f-f160-444b-b187-c02898de6816	admin	2025-11-29 10:19:02.399	2025-12-11 23:03:36.734	rotated	refresh	2025-11-15 10:19:02.4	2025-11-15 10:52:41.002	2025-11-15 10:19:02.404	\N	\N	\N
28	b6y8sfi91f2nwrigmea3pxe9	1	d53306231e008ad737ce5d487023670d	c5bd115ef899d6b13095af80a8eba616	7aaf604f-f160-444b-b187-c02898de6816	admin	2025-11-29 10:52:40.993	2025-12-11 23:03:36.734	rotated	refresh	2025-11-15 10:52:40.993	2025-11-15 11:23:05.825	2025-11-15 10:52:40.994	\N	\N	\N
35	ld9zt8kh2uy6c93eugrhcm41	3	560c49857b35fd0d58deadbabaa43fda	\N	ebe0a5ce-bdea-4ceb-ae42-6328f7c7b8d4	admin	2025-11-15 13:52:07.578	2025-12-15 11:21:14.193	active	session	2025-11-15 11:52:07.578	2025-11-15 11:52:07.578	2025-11-15 11:52:07.578	\N	\N	\N
33	bzxx1y9dh82kg98epbl9c1h0	3	9a2600e25f028c011e36e640534df2b6	560c49857b35fd0d58deadbabaa43fda	ebe0a5ce-bdea-4ceb-ae42-6328f7c7b8d4	admin	2025-11-15 13:21:14.193	2025-12-15 11:21:14.193	rotated	session	2025-11-15 11:21:14.193	2025-11-15 11:52:07.585	2025-11-15 11:21:14.193	\N	\N	\N
34	a424a4dlm2brwxw05r66hfe0	1	c5bd115ef899d6b13095af80a8eba616	dcb55879f12d7463c226772381ad350d	7aaf604f-f160-444b-b187-c02898de6816	admin	2025-11-29 11:23:05.816	2025-12-11 23:03:36.734	rotated	refresh	2025-11-15 11:23:05.816	2025-11-15 12:38:00.733	2025-11-15 11:23:05.817	\N	\N	\N
37	agtu01psqcmw1eqysgudch3s	1	dcb55879f12d7463c226772381ad350d	eedbe14f437334b539fb366f7bbfe80b	7aaf604f-f160-444b-b187-c02898de6816	admin	2025-11-29 12:38:00.726	2025-12-11 23:03:36.734	rotated	refresh	2025-11-15 12:38:00.726	2025-11-15 13:37:50.367	2025-11-15 12:38:00.727	\N	\N	\N
38	soybf38dmaf77c29658fsrwb	2	c081d29bbb12edd930e32f52b76bfeeb	d61c838289782080b774a7be88e3d91b	393b4463-ed7e-49ec-a5b6-7d41e33e3211	admin	2025-11-15 14:39:21.166	2025-12-15 12:39:21.166	rotated	session	2025-11-15 12:39:21.166	2025-11-15 13:44:43.653	2025-11-15 12:39:21.166	\N	\N	\N
40	gdsf1xjb37ospbsskjizp1q9	2	d61c838289782080b774a7be88e3d91b	39996fa3dbaa04b27bbb8062cb29e182	393b4463-ed7e-49ec-a5b6-7d41e33e3211	admin	2025-11-15 15:44:43.642	2025-12-15 12:39:21.166	rotated	session	2025-11-15 13:44:43.642	2025-11-15 15:10:11.472	2025-11-15 13:44:43.643	\N	\N	\N
39	oxdg4s7e98w8skn92sgsk12z	1	eedbe14f437334b539fb366f7bbfe80b	f148263992f019b4852e34342a9927c4	7aaf604f-f160-444b-b187-c02898de6816	admin	2025-11-29 13:37:50.339	2025-12-11 23:03:36.734	rotated	refresh	2025-11-15 13:37:50.34	2025-11-15 15:26:57.669	2025-11-15 13:37:50.347	\N	\N	\N
41	qn83sfs3f8m8bzhbztzbja76	3	7c9bcdbe4538d9e42f26b2c5e540cd18	c1cb690c33f3b5247a89b18afd8eaf19	ebe0a5ce-bdea-4ceb-ae42-6328f7c7b8d4	admin	2025-11-29 14:03:59.846	2025-12-15 14:03:59.846	rotated	refresh	2025-11-15 14:03:59.846	2025-11-15 14:34:54.31	2025-11-15 14:03:59.846	\N	\N	\N
42	xo0usa6woin0qj4wj9vsca4f	3	c1cb690c33f3b5247a89b18afd8eaf19	59816eeb10a6c551c08b7bb245637e64	ebe0a5ce-bdea-4ceb-ae42-6328f7c7b8d4	admin	2025-11-29 14:34:54.297	2025-12-15 14:03:59.846	rotated	refresh	2025-11-15 14:34:54.298	2025-11-15 15:08:45.197	2025-11-15 14:34:54.299	\N	\N	\N
46	cn85avuhs1r002ahkpskyhjl	4	cd55bf15ea682069c696024301a722e6	0ba8e0d94cd2410720cc39fd8ee503d3	b95e0b95-9996-43b6-b34f-6997d05f244c	admin	2025-11-15 17:30:28.834	2025-12-15 15:30:28.834	rotated	session	2025-11-15 15:30:28.834	2025-11-15 16:02:46.012	2025-11-15 15:30:28.834	\N	\N	\N
48	dzicglei0pj6kfvo6ipcrx0c	2	3aa49c21828640a2c4bf3df93bd96696	\N	393b4463-ed7e-49ec-a5b6-7d41e33e3211	admin	2025-11-15 18:05:08.806	2025-12-15 12:39:21.166	active	session	2025-11-15 16:05:08.806	2025-11-15 16:05:08.806	2025-11-15 16:05:08.807	\N	\N	\N
44	pengkca9a3mfjio2k2ur9u01	2	39996fa3dbaa04b27bbb8062cb29e182	3aa49c21828640a2c4bf3df93bd96696	393b4463-ed7e-49ec-a5b6-7d41e33e3211	admin	2025-11-15 17:10:11.465	2025-12-15 12:39:21.166	rotated	session	2025-11-15 15:10:11.465	2025-11-15 16:05:08.817	2025-11-15 15:10:11.465	\N	\N	\N
45	fac2oj4e1v712cu9a7smkxcg	1	f148263992f019b4852e34342a9927c4	54d1d67ca3f27ab20560f69aa0e05b08	7aaf604f-f160-444b-b187-c02898de6816	admin	2025-11-29 15:26:57.661	2025-12-11 23:03:36.734	rotated	refresh	2025-11-15 15:26:57.661	2025-11-15 16:07:13.218	2025-11-15 15:26:57.662	\N	\N	\N
43	obahno5sztoh9qk3zawn3lhs	3	59816eeb10a6c551c08b7bb245637e64	eef3840a9512bb9b4b62cf403b1aa69c	ebe0a5ce-bdea-4ceb-ae42-6328f7c7b8d4	admin	2025-11-29 15:08:45.189	2025-12-15 14:03:59.846	rotated	refresh	2025-11-15 15:08:45.189	2025-11-15 16:12:58.295	2025-11-15 15:08:45.19	\N	\N	\N
51	xwomovgw64ct36fie5brbl1c	4	3790eb3b83fad86d3c3c46029a50a421	\N	b95e0b95-9996-43b6-b34f-6997d05f244c	admin	2025-11-15 18:34:13.251	2025-12-15 15:30:28.834	active	session	2025-11-15 16:34:13.251	2025-11-15 16:34:13.251	2025-11-15 16:34:13.251	\N	\N	\N
47	alld3f96l4ergcenuhl4yc35	4	0ba8e0d94cd2410720cc39fd8ee503d3	3790eb3b83fad86d3c3c46029a50a421	b95e0b95-9996-43b6-b34f-6997d05f244c	admin	2025-11-15 18:02:46	2025-12-15 15:30:28.834	rotated	session	2025-11-15 16:02:46	2025-11-15 16:34:13.26	2025-11-15 16:02:46.002	\N	\N	\N
52	z40j4546olirq8lwiw9nxca7	1	9e836c14bec052fe40e4ce799050524d	\N	7aaf604f-f160-444b-b187-c02898de6816	admin	2025-11-29 16:38:17.558	2025-12-11 23:03:36.734	active	refresh	2025-11-15 16:38:17.558	2025-11-15 16:38:17.558	2025-11-15 16:38:17.559	\N	\N	\N
49	qeqmho7pb7kl5bs02y0esszq	1	54d1d67ca3f27ab20560f69aa0e05b08	9e836c14bec052fe40e4ce799050524d	7aaf604f-f160-444b-b187-c02898de6816	admin	2025-11-29 16:07:13.209	2025-12-11 23:03:36.734	rotated	refresh	2025-11-15 16:07:13.209	2025-11-15 16:38:17.566	2025-11-15 16:07:13.21	\N	\N	\N
53	mcg2n9xurxbxil8vjqnjvfca	3	ecebd2ef82735c0ef1d775e729f741a1	\N	ebe0a5ce-bdea-4ceb-ae42-6328f7c7b8d4	admin	2025-11-29 16:47:06.226	2025-12-15 14:03:59.846	active	refresh	2025-11-15 16:47:06.227	2025-11-15 16:47:06.227	2025-11-15 16:47:06.227	\N	\N	\N
50	bzsbnvjvanfz8mz0r0u8jecs	3	eef3840a9512bb9b4b62cf403b1aa69c	ecebd2ef82735c0ef1d775e729f741a1	ebe0a5ce-bdea-4ceb-ae42-6328f7c7b8d4	admin	2025-11-29 16:12:58.278	2025-12-15 14:03:59.846	rotated	refresh	2025-11-15 16:12:58.278	2025-11-15 16:47:06.241	2025-11-15 16:12:58.279	\N	\N	\N
\.


--
-- Data for Name: strapi_transfer_token_permissions; Type: TABLE DATA; Schema: public; Owner: strapi
--

COPY public.strapi_transfer_token_permissions (id, document_id, action, created_at, updated_at, published_at, created_by_id, updated_by_id, locale) FROM stdin;
\.


--
-- Data for Name: strapi_transfer_token_permissions_token_lnk; Type: TABLE DATA; Schema: public; Owner: strapi
--

COPY public.strapi_transfer_token_permissions_token_lnk (id, transfer_token_permission_id, transfer_token_id, transfer_token_permission_ord) FROM stdin;
\.


--
-- Data for Name: strapi_transfer_tokens; Type: TABLE DATA; Schema: public; Owner: strapi
--

COPY public.strapi_transfer_tokens (id, document_id, name, description, access_key, last_used_at, expires_at, lifespan, created_at, updated_at, published_at, created_by_id, updated_by_id, locale) FROM stdin;
\.


--
-- Data for Name: strapi_webhooks; Type: TABLE DATA; Schema: public; Owner: strapi
--

COPY public.strapi_webhooks (id, name, url, headers, events, enabled) FROM stdin;
\.


--
-- Data for Name: strapi_workflows; Type: TABLE DATA; Schema: public; Owner: strapi
--

COPY public.strapi_workflows (id, document_id, name, content_types, created_at, updated_at, published_at, created_by_id, updated_by_id, locale) FROM stdin;
\.


--
-- Data for Name: strapi_workflows_stage_required_to_publish_lnk; Type: TABLE DATA; Schema: public; Owner: strapi
--

COPY public.strapi_workflows_stage_required_to_publish_lnk (id, workflow_id, workflow_stage_id) FROM stdin;
\.


--
-- Data for Name: strapi_workflows_stages; Type: TABLE DATA; Schema: public; Owner: strapi
--

COPY public.strapi_workflows_stages (id, document_id, name, color, created_at, updated_at, published_at, created_by_id, updated_by_id, locale) FROM stdin;
\.


--
-- Data for Name: strapi_workflows_stages_permissions_lnk; Type: TABLE DATA; Schema: public; Owner: strapi
--

COPY public.strapi_workflows_stages_permissions_lnk (id, workflow_stage_id, permission_id, permission_ord) FROM stdin;
\.


--
-- Data for Name: strapi_workflows_stages_workflow_lnk; Type: TABLE DATA; Schema: public; Owner: strapi
--

COPY public.strapi_workflows_stages_workflow_lnk (id, workflow_stage_id, workflow_id, workflow_stage_ord) FROM stdin;
\.


--
-- Data for Name: sujets; Type: TABLE DATA; Schema: public; Owner: strapi
--

COPY public.sujets (id, document_id, name, canton, created_at, updated_at, published_at, created_by_id, updated_by_id, locale, affiliation) FROM stdin;
3	xd7lsdb1szkopbzy5h21xxv2	Andreas Glarner	AG	2025-11-12 10:18:40.972	2025-11-14 11:57:01.028	\N	1	1	\N	SVP
9	xd7lsdb1szkopbzy5h21xxv2	Andreas Glarner	AG	2025-11-12 10:18:40.972	2025-11-14 11:57:01.028	2025-11-14 11:57:01.059	1	1	\N	SVP
1	h8091eq7oq3dx18v880fxnpz	Jean-Luc Addor	VS	2025-11-12 10:16:25.672	2025-11-14 12:16:44.703	\N	1	1	\N	SVP
10	h8091eq7oq3dx18v880fxnpz	Jean-Luc Addor	VS	2025-11-12 10:16:25.672	2025-11-14 12:16:44.703	2025-11-14 12:16:44.727	1	1	\N	SVP
13	vzowg1lovzikgwcrsivkg2oi	Nina Fehr Düsel	ZH	2025-11-14 14:09:33.75	2025-11-14 14:10:17.141	\N	1	1	\N	SVP
15	vzowg1lovzikgwcrsivkg2oi	Nina Fehr Düsel	ZH	2025-11-14 14:09:33.75	2025-11-14 14:10:17.141	2025-11-14 14:10:17.163	1	1	\N	SVP
16	ulcip41dfgbn366mwogw8gc7	Marcel Dettling	SZ	2025-11-14 14:35:34.448	2025-11-14 14:35:34.448	\N	1	1	\N	SVP
17	ulcip41dfgbn366mwogw8gc7	Marcel Dettling	SZ	2025-11-14 14:35:34.448	2025-11-14 14:35:34.448	2025-11-14 14:35:34.484	1	1	\N	SVP
11	xprlkttj42psz40zs89o0m1q	Natalie Rickli	ZH	2025-11-14 14:08:00.836	2025-11-15 11:09:46.845	\N	1	1	\N	SVP
21	xprlkttj42psz40zs89o0m1q	Natalie Rickli	ZH	2025-11-14 14:08:00.836	2025-11-15 11:09:46.845	2025-11-15 11:09:46.874	1	1	\N	SVP
18	x5unwqvnozb75hm7vsgx0530	SVP - UDC	CH	2025-11-15 10:43:39.361	2025-11-15 11:10:15.433	\N	1	1	\N	SVP
22	x5unwqvnozb75hm7vsgx0530	SVP - UDC	CH	2025-11-15 10:43:39.361	2025-11-15 11:10:15.433	2025-11-15 11:10:15.46	1	1	\N	SVP
20	wrklfb63bmbv6kguy3iut4vh	Patrick Saegesser	VS	2025-11-15 10:51:48.706	2025-11-15 12:39:30.976	\N	2	2	\N	SVP
24	wrklfb63bmbv6kguy3iut4vh	Patrick Saegesser	VS	2025-11-15 10:51:48.706	2025-11-15 12:39:30.976	2025-11-15 12:39:30.996	2	2	\N	SVP
23	jcqd1sld92anizjsn2tf25u4	Stéphane Montabert	VD	2025-11-15 11:39:22.37	2025-11-15 12:39:43.38	\N	3	2	\N	SVP
25	jcqd1sld92anizjsn2tf25u4	Stéphane Montabert	VD	2025-11-15 11:39:22.37	2025-11-15 12:39:43.38	2025-11-15 12:39:43.403	3	2	\N	SVP
26	w1dgb8sj9zlxvq7wxa9xus3y	Léo Rouvinez	VS	2025-11-15 14:18:52.599	2025-11-15 15:10:39.149	\N	3	2	\N	SVP
27	w1dgb8sj9zlxvq7wxa9xus3y	Léo Rouvinez	VS	2025-11-15 14:18:52.599	2025-11-15 15:10:39.149	2025-11-15 15:10:39.17	3	2	\N	SVP
28	ynqgo9e2ak3d23vv19urvvdl	Erich Hess	BE	2025-11-15 15:42:50.209	2025-11-15 16:05:18.384	\N	4	2	\N	SVP
29	ynqgo9e2ak3d23vv19urvvdl	Erich Hess	BE	2025-11-15 15:42:50.209	2025-11-15 16:05:18.384	2025-11-15 16:05:18.4	4	2	\N	SVP
\.


--
-- Data for Name: the_wall_of_shames; Type: TABLE DATA; Schema: public; Owner: strapi
--

COPY public.the_wall_of_shames (id, document_id, title, slug, incident_date, consequence, category, subject_role, incident_location, description, created_at, updated_at, published_at, created_by_id, updated_by_id, locale, visible) FROM stdin;
10	sbheprazpwp1nksnf4yd11og	Andreas Glarner rejette l’interdiction des symboles nazis	andreas-glarner-rejette-l-interdiction-des-symboles-nazis-apres-un-incident-dans-les-alpes	2025-07-27	\N	neonazism	Conseiller National	Parliament	Après la tournée d'un groupe dans les uniformes nazis à travers l'Oberland bernois, les politiciens exigent: Le Conseil fédéral devrait se dépêcher avec l'interdiction des symboles nazis. Le conseiller national de l'UDC Glarner le voit différemment.	2025-11-14 14:01:05.835	2025-11-14 14:03:29.481	2025-11-14 14:01:05.884	1	1	fr-CH	\N
11	sbheprazpwp1nksnf4yd11og	Andreas Glarner lehnt Verbot von Nazisymbolen	andreas-glarner-lehnt-verbot-von-nazisymbolen	2025-07-27	\N	neonazism	Nationalrat	Parliament	Nach der Tour einer Gruppe in Nazi-Uniformen durch das Berner Oberland fordern Politiker: Der Bundesrat solle sich beeilen mit dem Verbot von Nazisymbolen. SVP-Nationalrat Glarner sieht das anders.	2025-11-14 14:03:29.404	2025-11-14 14:03:29.404	\N	1	1	de-CH	\N
9	sbheprazpwp1nksnf4yd11og	Andreas Glarner rejette l’interdiction des symboles nazis	andreas-glarner-rejette-l-interdiction-des-symboles-nazis-apres-un-incident-dans-les-alpes	2025-07-27	\N	neonazism	Conseiller National	Parliament	Après la tournée d'un groupe dans les uniformes nazis à travers l'Oberland bernois, les politiciens exigent: Le Conseil fédéral devrait se dépêcher avec l'interdiction des symboles nazis. Le conseiller national de l'UDC Glarner le voit différemment.	2025-11-14 14:01:05.835	2025-11-14 14:03:29.429	\N	1	1	fr-CH	\N
12	sbheprazpwp1nksnf4yd11og	Andreas Glarner lehnt Verbot von Nazisymbolen	andreas-glarner-lehnt-verbot-von-nazisymbolen	2025-07-27	\N	neonazism	Nationalrat	Parliament	Nach der Tour einer Gruppe in Nazi-Uniformen durch das Berner Oberland fordern Politiker: Der Bundesrat solle sich beeilen mit dem Verbot von Nazisymbolen. SVP-Nationalrat Glarner sieht das anders.	2025-11-14 14:03:29.404	2025-11-14 14:03:29.404	2025-11-14 14:03:29.452	1	1	de-CH	\N
13	vfotiu2k90sugpn2w0j5zjkm	L'UDC veut interdire les opérations transgenres chez les mineurs	l-udc-veut-interdire-les-operations-transgenres-chez-les-mineurs	2025-07-09	\N	transphobia	Conseillère nationale	Parliament	Chaque année, deux à trois douzaines d'adolescentes peuvent se faire enlever chirurgicalement les seins. La conseillère nationale Nina Fehr Düsel veut faire arrêter cela.	2025-11-14 14:20:04.037	2025-11-14 14:26:06.041	\N	1	1	fr-CH	\N
15	vfotiu2k90sugpn2w0j5zjkm	SVP lanciert nationales OP-Verbot für trans Jugendliche	svp-lanciert-nationales-op-verbot-fuer-trans-jugendliche	2025-07-09	\N	transphobia	Nationalrätin	Parliament	Für Fehr Düsel geht es hier vor allem um die Frage des Jugendschutzes. Dass Jugendliche in der Pubertät oft Mühe mit ihrem Körper bekundeten und verunsichert seien, sei normal. Eine solche «Identitätskrise» mit einem irreversiblen operativen Eingriff zu lösen, könne aber keine Lösung sein, sagt Fehr Düsel. Die Folgen einer solch extremen Entscheidung seien für Jugendliche noch kaum abschätzbar. «Wer dann im Alter von 18 Jahren immer noch der Meinung ist, im falschen Körper zu leben, kann sich immer noch operieren lassen», sagt die Juristin.	2025-11-14 14:22:51.586	2025-11-14 14:26:06.066	\N	1	1	de-CH	\N
19	vfotiu2k90sugpn2w0j5zjkm	L'UDC veut interdire les opérations transgenres chez les mineurs	l-udc-veut-interdire-les-operations-transgenres-chez-les-mineurs	2025-07-09	\N	transphobia	Conseillère nationale	Parliament	Chaque année, deux à trois douzaines d'adolescentes peuvent se faire enlever chirurgicalement les seins. La conseillère nationale Nina Fehr Düsel veut faire arrêter cela.	2025-11-14 14:20:04.037	2025-11-14 14:26:06.041	2025-11-14 14:26:06.089	1	1	fr-CH	\N
16	vfotiu2k90sugpn2w0j5zjkm	SVP lanciert nationales OP-Verbot für trans Jugendliche	svp-lanciert-nationales-op-verbot-fuer-trans-jugendliche	2025-07-09	\N	transphobia	Nationalrätin	Parliament	Für Fehr Düsel geht es hier vor allem um die Frage des Jugendschutzes. Dass Jugendliche in der Pubertät oft Mühe mit ihrem Körper bekundeten und verunsichert seien, sei normal. Eine solche «Identitätskrise» mit einem irreversiblen operativen Eingriff zu lösen, könne aber keine Lösung sein, sagt Fehr Düsel. Die Folgen einer solch extremen Entscheidung seien für Jugendliche noch kaum abschätzbar. «Wer dann im Alter von 18 Jahren immer noch der Meinung ist, im falschen Körper zu leben, kann sich immer noch operieren lassen», sagt die Juristin.	2025-11-14 14:22:51.586	2025-11-14 14:26:06.126	2025-11-14 14:22:51.619	1	1	de-CH	\N
23	fqtof70043g2ogm4a1i5gxph	Einen Preis für den Kampf gegen muslimische Gräber	einen-preis-fuer-den-kampf-gegen-muslimische-graeber	2025-07-08	\N	islamophobia	Präsident der SVP Schweiz	Statement	Die SVP zeichnet den «persönlichen Mut und politischen Widerstand» des Referendumskomitees aus, das sich in Weinfelden TG gegen ein muslimisches Grabfeld eingesetzt hat. Der Prix Résistance ist ein Wanderpreis in Form einer handgeschnitzten Eringerkuh.	2025-11-14 14:56:57.355	2025-11-14 14:57:16.948	\N	1	1	de-CH	\N
20	fqtof70043g2ogm4a1i5gxph	L'UDC décerne un prix pour avoir combattu les tombes musulmanes	l-udc-decerne-un-prix-pour-avoir-combattu-les-tombes-musulmanes	2025-07-08	\N	islamophobia	Président de l'UDC Suisse	Statement	Le président de l'UDC Suisse rend personnellement hommage au comité référendaire contre les tombes musulmanes.\nLundi, il a présenté le Prix Résistance 2025 au Comité de base, qui avait fait campagne contre la révision de la réglementation du cimetière et en particulier contre les "tombes spéciales musulmanes".	2025-11-14 14:43:34.671	2025-11-14 14:57:16.982	\N	1	1	fr-CH	\N
25	fqtof70043g2ogm4a1i5gxph	Einen Preis für den Kampf gegen muslimische Gräber	einen-preis-fuer-den-kampf-gegen-muslimische-graeber	2025-07-08	\N	islamophobia	Präsident der SVP Schweiz	Statement	Die SVP zeichnet den «persönlichen Mut und politischen Widerstand» des Referendumskomitees aus, das sich in Weinfelden TG gegen ein muslimisches Grabfeld eingesetzt hat. Der Prix Résistance ist ein Wanderpreis in Form einer handgeschnitzten Eringerkuh.	2025-11-14 14:56:57.355	2025-11-14 14:57:16.948	2025-11-14 14:57:17.011	1	1	de-CH	\N
22	fqtof70043g2ogm4a1i5gxph	L'UDC décerne un prix pour avoir combattu les tombes musulmanes	l-udc-decerne-un-prix-pour-avoir-combattu-les-tombes-musulmanes	2025-07-08	\N	islamophobia	Président de l'UDC Suisse	Statement	Le président de l'UDC Suisse rend personnellement hommage au comité référendaire contre les tombes musulmanes.\nLundi, il a présenté le Prix Résistance 2025 au Comité de base, qui avait fait campagne contre la révision de la réglementation du cimetière et en particulier contre les "tombes spéciales musulmanes".	2025-11-14 14:43:34.671	2025-11-14 14:57:17.056	2025-11-14 14:43:40.185	1	1	fr-CH	\N
29	rt0bz1ft8le55assgjtnqcgj	SVP Stéphane Montabert verteidigt Qanon	svp-stephane-montabert-verteidigt-qanon	2020-08-04	\N	conspiracism	Gemeinderat	OtherMedia	Ein SVP-Gemeinderat aus Renens (VD) verbreitet auf seinem Blog QAnon-Verschwörungserzählungen. QAnon sei «[...] eine Gegenoffensive zu den Versuchen dieser Eliten, Pädophilie zu normalisieren [...]».	2025-11-15 11:56:31.887	2025-11-15 12:41:10.095	2025-11-15 12:41:10.142	3	2	de-CH	t
28	rt0bz1ft8le55assgjtnqcgj	L'UDC renanais Stéphane Montabert fait l'apologie de Qanon	l-udc-renanais-stephane-montabert-fait-l-apologie-de-qanon	2020-08-04	\N	conspiracism	conseiller communal	OtherMedia	Au niveau politique, QAnon a fait des apparitions dans les discours de l’UDC.» En août 2020, sur son blog, le conseiller communal et chef de groupe de Renens Stéphane Montabert estimait ainsi que «Q et QAnon ont le mérite de transmettre des informations dérangeantes sur certaines pratiques d'une élite dégénérée [...] et de les diffuser au sein du grand public.»	2025-11-15 11:52:07.741	2025-11-15 12:41:10.182	2025-11-15 12:40:50.441	3	2	fr-CH	t
27	rt0bz1ft8le55assgjtnqcgj	SVP Stéphane Montabert verteidigt Qanon	svp-stephane-montabert-verteidigt-qanon	2020-08-04	\N	conspiracism	Gemeinderat	OtherMedia	Ein SVP-Gemeinderat aus Renens (VD) verbreitet auf seinem Blog QAnon-Verschwörungserzählungen. QAnon sei «[...] eine Gegenoffensive zu den Versuchen dieser Eliten, Pädophilie zu normalisieren [...]».	2025-11-15 11:56:31.887	2025-11-15 12:41:10.095	\N	3	2	de-CH	t
26	rt0bz1ft8le55assgjtnqcgj	L'UDC renanais Stéphane Montabert fait l'apologie de Qanon	l-udc-renanais-stephane-montabert-fait-l-apologie-de-qanon	2020-08-04	\N	conspiracism	conseiller communal	OtherMedia	Au niveau politique, QAnon a fait des apparitions dans les discours de l’UDC.» En août 2020, sur son blog, le conseiller communal et chef de groupe de Renens Stéphane Montabert estimait ainsi que «Q et QAnon ont le mérite de transmettre des informations dérangeantes sur certaines pratiques d'une élite dégénérée [...] et de les diffuser au sein du grand public.»	2025-11-15 11:52:07.741	2025-11-15 12:41:10.127	\N	3	2	fr-CH	t
32	hrncvmmy8yirt485fahza9g3	Patrick Saegesser ironisiert über Schokoköpfe	patrick-saegesser-ironisiert-ueber-schokokoepfe	2025-11-06	\N	racism	Mitglied	Instagram	Patrick Saegesser nennt die Schokoladenköpfe „FLÜCHTLINGSKÖPFE”.	2025-11-15 13:47:59.703	2025-11-15 13:47:59.703	\N	2	2	de-CH	t
30	hrncvmmy8yirt485fahza9g3	Patrick Saegesser ironise sur les têtes au choco	the-wall-of-shame	2025-11-06	\N	racism	Membre	Instagram	Patrick Saegesser appelle les têtes au choco "TÊTE DE RÉFUGIÉ".	2025-11-15 13:44:27.737	2025-11-15 13:47:59.745	\N	1	2	fr-CH	t
33	hrncvmmy8yirt485fahza9g3	Patrick Saegesser ironisiert über Schokoköpfe	patrick-saegesser-ironisiert-ueber-schokokoepfe	2025-11-06	\N	racism	Mitglied	Instagram	Patrick Saegesser nennt die Schokoladenköpfe „FLÜCHTLINGSKÖPFE”.	2025-11-15 13:47:59.703	2025-11-15 13:47:59.703	2025-11-15 13:47:59.771	2	2	de-CH	t
31	hrncvmmy8yirt485fahza9g3	Patrick Saegesser ironise sur les têtes au choco	the-wall-of-shame	2025-11-06	\N	racism	Membre	Instagram	Patrick Saegesser appelle les têtes au choco "TÊTE DE RÉFUGIÉ".	2025-11-15 13:44:27.737	2025-11-15 13:47:59.821	2025-11-15 13:45:06.298	1	2	fr-CH	t
36	f70wdjz2b6nmvdbih6ussiem	Patrick Saegasser lehnt das Tragen von Kopftüchern im Jugendparlament ab	patrick-saegasser-lehnt-das-tragen-von-kopftuechern-im-jugendparlament-ab	2025-11-08	\N	islamophobia	Mitglied	Instagram	Patrick Saegasser, Mitglied der SVP in Cran Montana, bedauert, dass eine junge Muslimin während der Jugendparlamentssitzung einen Schleier trägt.	2025-11-15 14:10:23.839	2025-11-15 14:10:23.839	\N	2	2	de-CH	t
34	f70wdjz2b6nmvdbih6ussiem	Patrick Saegasser ne supporte pas le port du voile au parlement des jeunes	patrick-saegasser-ne-supporte-pas-le-port-du-voile-au-parlement-des-jeunes	2025-11-08	\N	islamophobia	Membre	Instagram	Patrick Saegasser. membre de l'UDC à Cran Montana, regrette qu'une jeune musulmane porte le voile pendant le parlement des jeunes.	2025-11-15 14:09:10.079	2025-11-15 14:10:23.866	\N	2	2	fr-CH	t
37	f70wdjz2b6nmvdbih6ussiem	Patrick Saegasser lehnt das Tragen von Kopftüchern im Jugendparlament ab	patrick-saegasser-lehnt-das-tragen-von-kopftuechern-im-jugendparlament-ab	2025-11-08	\N	islamophobia	Mitglied	Instagram	Patrick Saegasser, Mitglied der SVP in Cran Montana, bedauert, dass eine junge Muslimin während der Jugendparlamentssitzung einen Schleier trägt.	2025-11-15 14:10:23.839	2025-11-15 14:10:23.839	2025-11-15 14:10:23.885	2	2	de-CH	t
35	f70wdjz2b6nmvdbih6ussiem	Patrick Saegasser ne supporte pas le port du voile au parlement des jeunes	patrick-saegasser-ne-supporte-pas-le-port-du-voile-au-parlement-des-jeunes	2025-11-08	\N	islamophobia	Membre	Instagram	Patrick Saegasser. membre de l'UDC à Cran Montana, regrette qu'une jeune musulmane porte le voile pendant le parlement des jeunes.	2025-11-15 14:09:10.079	2025-11-15 14:10:23.937	2025-11-15 14:09:10.125	2	2	fr-CH	t
47	h9xe2z79fdsxj54wyc3runta	Erich Hess : "On a toujours le droit de dire n***"	erich-hess-on-a-toujours-le-droit-de-dire-negre	2021-02-17	\N	racism	Conseiller national	OtherMedia	Lors d'une table ronde au sujet de l'initiative populaire «Oui à l'interdiction de se dissimuler le visage» sur l'application Clubhouse (chat audio en ligne), le député a prononcé plusieurs fois le mot "nègre" et a nié l'existence du racisme. \nInterpellé, il a déclaré notamment que "la gauche n'a pas à lui dicter son vocabulaire". \n\nNote : ce n'est pas la première fois qu'il emploie le terme publiquement	2025-11-15 15:55:01.48	2025-11-15 16:06:38.392	2025-11-15 16:06:11.545	4	2	fr-CH	t
50	c2q1pal0gswg1nk97y7ihxux	Andreas Glarner zeigt die fremd klingenden Vornamen der Auszubildenden an	andreas-glarner-zeigt-die-fremd-klingenden-vornamen-der-auszubildenden-an-1	2020-07-20	\N	racism	Nationalrat	Facebook	Glarner stellte die Liste, die im Aldi-Kundenmagazin veröffentlicht worden war, auf Facebook. Sein Kommentar dazu: «Die Namen der Lehrabgänger bei Aldi in Perlen…» Dem Onlineportal «Nau »erklärte der Nationalrat, er habe «die Überfremdung unseres Landes aufzeigen» wollen.	2025-11-15 15:23:22.759	2025-11-15 16:12:07.153	2025-11-15 16:12:07.212	3	1	de-CH	t
48	h9xe2z79fdsxj54wyc3runta	Erich Hess : «N**** darf man eigentlich immer sagen»	erich-hess-n-darf-man-eigentlich-immer-sagen	2021-02-17	\N	racism	Nationalrat	OtherMedia	Auf der neuen Audio-App Clubhouse trafen sich am Mittwochabend im Raum «Freunde der SVP» Parteimitglieder und Interessierte zur Diskussion über die Burkainitiative. \n\nMit dabei: SVP-Nationalrat Erich Hess, Nils Fiechter und Adrian Spahr. \n\nAuf seine Aussage vor drei Jahren im Berner Stadtrat angesprochen («Tag für Tag sieht man vor der Reithalle hauptsächlich N**** am Dealen»), habe dabei Hess laut Anwesenden mehrmals das N-Wort benutzt – die deutsche Variante – und sich dabei rassistisch geäussert. \n\nNB : Nicht die erste Mal.	2025-11-15 15:57:29.927	2025-11-15 16:06:38.306	2025-11-15 16:06:38.352	4	2	de-CH	t
51	g2zmkacjgg5t6ir13qzvemzu	Erich Hess se plaint de n*** au Parlement de la Ville de Berne	erich-hess-se-plaint-de-n-au-parlement-de-la-ville-de-berne	2017-06-29	Les Jeunes Verts ont déposé plainte. \n\nLa plainte a été classée sans suite. 	racism	Conseiller National	Parliament	Lors d'un débat sur la revalorisation de la zone de la Schützenmatte, devant le centre alternatif de la Reitschule, Erich Hess a parlé de "nègres qui dealent" que l'on voit jour après jour à cet endroit.\n\nL'intéressé se justifie en disant ne pas trouver le mot "nègre" raciste ou offensant. Le mot vient de l'espagnol et signifie dans cette langue "noir". En Suisse, le terme est passé dans le langage quotidien et n'est pas utilisé de manière blessante.	2025-11-15 16:26:17.747	2025-11-15 16:51:43.267	\N	4	1	fr-CH	t
39	d1efgo26uvoxisb48jxd5ynk	Der junge Walliser SVP-Politiker Léo Rouvinez wirbt auf Facebook für eine Neonazi-Aktivistin	der-junge-walliser-svp-politiker-leo-rouvinez-wirbt-auf-facebook-fuer-eine-neonazi-aktivistin	2020-07-03	\N	neonazism	Mitglied	Facebook	Am 3. und 7. Juli 2020 bewarb dieser auf Facebook zwei Coverversionen von Songs der Neonazi-Bands Jungsturm und Kategorie C, die von der Sängerin EDELWEISS gepostet worden waren.\n\nAm 6. August 2020 wirbt er erneut für EDELWEISS, indem er seine Facebook-Seite mit dem Namen „Edelweiss 88” teilt. Bemerkenswert ist, dass er ohne zu zögern den neofaschistischen Slogan „Defend Europe” verwendet, um seinen Beitrag abzuschließen.\n\nEDELWEISS ist niemand anderes als Naomi Croset, eine Schweizerin, die dem neonazistischen Musiknetzwerk Blood & Honour C18 (B&H/C18) nahesteht und offensichtlich eine Freundin von Léo Rouvinez ist. Sie zögert nicht, das Motto der SS („Meine Ehre heißt Treue“) öffentlich auf ihrem Facebook-Profil (wo sie das Pseudonym Edel Weiss verwendet) zu zeigen.\n\nDer neonazistische Charakter der von Léo Rouvinez geteilten Videos ist ziemlich offensichtlich. Es handelt sich nicht nur um Coverversionen von Neonazi-Bands, sondern der Kanal, auf dem die Videos gepostet wurden, trug zum Zeitpunkt, als Léo Rouvinez sie teilte, den Namen „Edelweiss 88”, den auch die Facebook-Seite von EDELWEISS trägt. Die Zahl 88 ist eine verschlüsselte Schreibweise der Neonazis für „Heil Hitler” (die Zahl 8 entspricht dem Buchstaben H, dem achten Buchstaben des Alphabets). Der Name des Kanals wurde inzwischen geändert, wahrscheinlich um eine Sanktion durch YouTube zu vermeiden.	2025-11-15 14:59:59.804	2025-11-15 15:12:42.923	\N	3	2	de-CH	t
38	d1efgo26uvoxisb48jxd5ynk	Le jeune UDC valaisan Léo Rouvinez fait la promotion d’une néo-nazie sur Facebook	le-jeune-udc-valaisan-leo-rouvinez-fait-la-promotion-d-une-neo-nazie-sur-facebook	2020-07-03	\N	neonazism	Membre	Facebook	Le 3 et le 7 juillet 2020, sur Facebook, ce dernier a fait la promotion de deux reprises de chansons des groupes néo-nazis Jungsturm et Kategorie C postées par la chanteuse EDELWEISS.\n\nLe 6 août 2020, il fait encore une fois la promotion d’EDELWEISS en partageant sa page Facebook du nom d’“Edelweiss 88”. On notera qu’il n’hésite pas à utiliser le slogan néo-fasciste “Defend Europe” pour conclure sa publication.\n\nEDELWEISS n’est autre que Naomi Croset, une suissesse proche du réseau musical néo-nazi Blood & Honour C18 (B&H/C18) et manifestement une amie de Léo Rouvinez. Elle n’hésite pas à afficher publiquement la devise de la SS (“Meine Ehre heißt Treue”)  sur son profil Facebook (où elle utilise le pseudonyme Edel Weiss).\n\nLe caractère néo-nazi des vidéos partagées par Léo Rouvinez est assez évident. En plus d’être des reprises de groupes néo-nazis, la chaîne sur laquelle les vidéos sont postées portait, au moment où Léo Rouvinez les a partagées, le nom d’“Edelweiss 88”, nom que porte également la page Facebook d’EDELWEISS. Le chiffre 88 étant une manière dissimulée pour les néo-nazi.e.s d’écrire Heil Hitler (le chiffre 8 correspondant à la lettre H, huitième lettre de l’alphabet). Le nom de la chaîne a depuis été modifié, probablement pour éviter une sanction de Youtube.	2025-11-15 14:25:37.444	2025-11-15 15:12:42.946	\N	3	2	fr-CH	t
49	c2q1pal0gswg1nk97y7ihxux	Andreas Glarner affiche les prénoms à consonances étrangères des apprentis	andreas-glarner-affiche-les-prenoms-a-consonances-etrangeres-des-apprentis	2020-07-20	\N	racism	Conseiller national	Facebook	Il a repéré le nom d’une vingtaine d’apprentis dans un catalogue du distributeur Aldi. Il a publié cette liste sur son compte Facebook, avec ce simple commentaire: «Les noms des apprentis chez Aldi à Perlen…» Avec trois petits points pleins de sous-entendu. On y trouve: Yusuf, Mohamed, Drinesa ou Sumeja et quelques autres qui indiquent une origine migratoire. \nDans une précision ultérieure, Andreas Glarner explique qu’il veut démontrer par là «l’infiltration étrangère» de la Suisse.	2025-11-15 15:19:20.076	2025-11-15 16:12:07.266	2025-11-15 16:11:53.106	3	1	fr-CH	t
54	g2zmkacjgg5t6ir13qzvemzu	Erich Hess : "N*** am Dealen"	erich-hess-n-am-dealen	2017-06-29	Die Staatsanwaltschaft hat eine sogenannte Nichtanhandnahmeverfügung erlassen.	racism	Nationalrat	Parliament	Der Berner SVP-Nationalrat Erich Hess hat Ende Juni im Berner Stadtparlament, dem er angehört, von «Negern» gesprochen. Das bringt ihm nun eine Strafanzeige wegen angeblicher Verletzung der Rassismusstrafnorm ein.\n\n\n	2025-11-15 16:34:59.679	2025-11-15 16:51:43.18	2025-11-15 16:51:43.286	4	1	de-CH	t
53	g2zmkacjgg5t6ir13qzvemzu	Erich Hess se plaint de n*** au Parlement de la Ville de Berne	erich-hess-se-plaint-de-n-au-parlement-de-la-ville-de-berne	2017-06-29	Les Jeunes Verts ont déposé plainte. \n\nLa plainte a été classée sans suite. 	racism	Conseiller National	Parliament	Lors d'un débat sur la revalorisation de la zone de la Schützenmatte, devant le centre alternatif de la Reitschule, Erich Hess a parlé de "nègres qui dealent" que l'on voit jour après jour à cet endroit.\n\nL'intéressé se justifie en disant ne pas trouver le mot "nègre" raciste ou offensant. Le mot vient de l'espagnol et signifie dans cette langue "noir". En Suisse, le terme est passé dans le langage quotidien et n'est pas utilisé de manière blessante.	2025-11-15 16:26:17.747	2025-11-15 16:51:43.328	2025-11-15 16:51:35.861	4	1	fr-CH	t
42	d1efgo26uvoxisb48jxd5ynk	Der junge Walliser SVP-Politiker Léo Rouvinez wirbt auf Facebook für eine Neonazi-Aktivistin	der-junge-walliser-svp-politiker-leo-rouvinez-wirbt-auf-facebook-fuer-eine-neonazi-aktivistin	2020-07-03	\N	neonazism	Mitglied	Facebook	Am 3. und 7. Juli 2020 bewarb dieser auf Facebook zwei Coverversionen von Songs der Neonazi-Bands Jungsturm und Kategorie C, die von der Sängerin EDELWEISS gepostet worden waren.\n\nAm 6. August 2020 wirbt er erneut für EDELWEISS, indem er seine Facebook-Seite mit dem Namen „Edelweiss 88” teilt. Bemerkenswert ist, dass er ohne zu zögern den neofaschistischen Slogan „Defend Europe” verwendet, um seinen Beitrag abzuschließen.\n\nEDELWEISS ist niemand anderes als Naomi Croset, eine Schweizerin, die dem neonazistischen Musiknetzwerk Blood & Honour C18 (B&H/C18) nahesteht und offensichtlich eine Freundin von Léo Rouvinez ist. Sie zögert nicht, das Motto der SS („Meine Ehre heißt Treue“) öffentlich auf ihrem Facebook-Profil (wo sie das Pseudonym Edel Weiss verwendet) zu zeigen.\n\nDer neonazistische Charakter der von Léo Rouvinez geteilten Videos ist ziemlich offensichtlich. Es handelt sich nicht nur um Coverversionen von Neonazi-Bands, sondern der Kanal, auf dem die Videos gepostet wurden, trug zum Zeitpunkt, als Léo Rouvinez sie teilte, den Namen „Edelweiss 88”, den auch die Facebook-Seite von EDELWEISS trägt. Die Zahl 88 ist eine verschlüsselte Schreibweise der Neonazis für „Heil Hitler” (die Zahl 8 entspricht dem Buchstaben H, dem achten Buchstaben des Alphabets). Der Name des Kanals wurde inzwischen geändert, wahrscheinlich um eine Sanktion durch YouTube zu vermeiden.	2025-11-15 14:59:59.804	2025-11-15 15:12:42.923	2025-11-15 15:12:42.962	3	2	de-CH	t
41	d1efgo26uvoxisb48jxd5ynk	Le jeune UDC valaisan Léo Rouvinez fait la promotion d’une néo-nazie sur Facebook	le-jeune-udc-valaisan-leo-rouvinez-fait-la-promotion-d-une-neo-nazie-sur-facebook	2020-07-03	\N	neonazism	Membre	Facebook	Le 3 et le 7 juillet 2020, sur Facebook, ce dernier a fait la promotion de deux reprises de chansons des groupes néo-nazis Jungsturm et Kategorie C postées par la chanteuse EDELWEISS.\n\nLe 6 août 2020, il fait encore une fois la promotion d’EDELWEISS en partageant sa page Facebook du nom d’“Edelweiss 88”. On notera qu’il n’hésite pas à utiliser le slogan néo-fasciste “Defend Europe” pour conclure sa publication.\n\nEDELWEISS n’est autre que Naomi Croset, une suissesse proche du réseau musical néo-nazi Blood & Honour C18 (B&H/C18) et manifestement une amie de Léo Rouvinez. Elle n’hésite pas à afficher publiquement la devise de la SS (“Meine Ehre heißt Treue”)  sur son profil Facebook (où elle utilise le pseudonyme Edel Weiss).\n\nLe caractère néo-nazi des vidéos partagées par Léo Rouvinez est assez évident. En plus d’être des reprises de groupes néo-nazis, la chaîne sur laquelle les vidéos sont postées portait, au moment où Léo Rouvinez les a partagées, le nom d’“Edelweiss 88”, nom que porte également la page Facebook d’EDELWEISS. Le chiffre 88 étant une manière dissimulée pour les néo-nazi.e.s d’écrire Heil Hitler (le chiffre 8 correspondant à la lettre H, huitième lettre de l’alphabet). Le nom de la chaîne a depuis été modifié, probablement pour éviter une sanction de Youtube.	2025-11-15 14:25:37.444	2025-11-15 15:12:43.003	2025-11-15 15:12:30.38	3	2	fr-CH	t
44	c2q1pal0gswg1nk97y7ihxux	Andreas Glarner zeigt die fremd klingenden Vornamen der Auszubildenden an	andreas-glarner-zeigt-die-fremd-klingenden-vornamen-der-auszubildenden-an-1	2020-07-20	\N	racism	Nationalrat	Facebook	Glarner stellte die Liste, die im Aldi-Kundenmagazin veröffentlicht worden war, auf Facebook. Sein Kommentar dazu: «Die Namen der Lehrabgänger bei Aldi in Perlen…» Dem Onlineportal «Nau »erklärte der Nationalrat, er habe «die Überfremdung unseres Landes aufzeigen» wollen.	2025-11-15 15:23:22.759	2025-11-15 16:12:07.153	\N	3	1	de-CH	t
43	c2q1pal0gswg1nk97y7ihxux	Andreas Glarner affiche les prénoms à consonances étrangères des apprentis	andreas-glarner-affiche-les-prenoms-a-consonances-etrangeres-des-apprentis	2020-07-20	\N	racism	Conseiller national	Facebook	Il a repéré le nom d’une vingtaine d’apprentis dans un catalogue du distributeur Aldi. Il a publié cette liste sur son compte Facebook, avec ce simple commentaire: «Les noms des apprentis chez Aldi à Perlen…» Avec trois petits points pleins de sous-entendu. On y trouve: Yusuf, Mohamed, Drinesa ou Sumeja et quelques autres qui indiquent une origine migratoire. \nDans une précision ultérieure, Andreas Glarner explique qu’il veut démontrer par là «l’infiltration étrangère» de la Suisse.	2025-11-15 15:19:20.076	2025-11-15 16:12:07.193	\N	3	1	fr-CH	t
46	h9xe2z79fdsxj54wyc3runta	Erich Hess : «N**** darf man eigentlich immer sagen»	erich-hess-n-darf-man-eigentlich-immer-sagen	2021-02-17	\N	racism	Nationalrat	OtherMedia	Auf der neuen Audio-App Clubhouse trafen sich am Mittwochabend im Raum «Freunde der SVP» Parteimitglieder und Interessierte zur Diskussion über die Burkainitiative. \n\nMit dabei: SVP-Nationalrat Erich Hess, Nils Fiechter und Adrian Spahr. \n\nAuf seine Aussage vor drei Jahren im Berner Stadtrat angesprochen («Tag für Tag sieht man vor der Reithalle hauptsächlich N**** am Dealen»), habe dabei Hess laut Anwesenden mehrmals das N-Wort benutzt – die deutsche Variante – und sich dabei rassistisch geäussert. \n\nNB : Nicht die erste Mal.	2025-11-15 15:57:29.927	2025-11-15 16:06:38.306	\N	4	2	de-CH	t
45	h9xe2z79fdsxj54wyc3runta	Erich Hess : "On a toujours le droit de dire n***"	erich-hess-on-a-toujours-le-droit-de-dire-negre	2021-02-17	\N	racism	Conseiller national	OtherMedia	Lors d'une table ronde au sujet de l'initiative populaire «Oui à l'interdiction de se dissimuler le visage» sur l'application Clubhouse (chat audio en ligne), le député a prononcé plusieurs fois le mot "nègre" et a nié l'existence du racisme. \nInterpellé, il a déclaré notamment que "la gauche n'a pas à lui dicter son vocabulaire". \n\nNote : ce n'est pas la première fois qu'il emploie le terme publiquement	2025-11-15 15:55:01.48	2025-11-15 16:06:38.333	\N	4	2	fr-CH	t
52	g2zmkacjgg5t6ir13qzvemzu	Erich Hess : "N*** am Dealen"	erich-hess-n-am-dealen	2017-06-29	Die Staatsanwaltschaft hat eine sogenannte Nichtanhandnahmeverfügung erlassen.	racism	Nationalrat	Parliament	Der Berner SVP-Nationalrat Erich Hess hat Ende Juni im Berner Stadtparlament, dem er angehört, von «Negern» gesprochen. Das bringt ihm nun eine Strafanzeige wegen angeblicher Verletzung der Rassismusstrafnorm ein.\n\n\n	2025-11-15 16:34:59.679	2025-11-15 16:51:43.18	\N	4	1	de-CH	t
\.


--
-- Data for Name: the_wall_of_shames_cmps; Type: TABLE DATA; Schema: public; Owner: strapi
--

COPY public.the_wall_of_shames_cmps (id, entity_id, cmp_id, component_type, field, "order") FROM stdin;
133	50	102	link.link	sources	1
134	50	103	link.link	sources	2
135	50	104	link.link	sources	3
63	32	50	link.link	sources	1
64	30	51	link.link	sources	1
65	33	52	link.link	sources	1
66	31	53	link.link	sources	1
69	36	56	link.link	sources	1
12	11	9	link.link	sources	1
13	9	10	link.link	sources	1
14	12	11	link.link	sources	1
15	10	12	link.link	sources	1
70	34	57	link.link	sources	1
71	37	58	link.link	sources	1
72	35	59	link.link	sources	1
136	49	105	link.link	sources	1
137	49	106	link.link	sources	2
138	49	107	link.link	sources	3
19	13	16	link.link	sources	1
31	15	25	link.link	sources	1
32	19	26	link.link	sources	1
33	16	27	link.link	sources	1
82	39	66	link.link	sources	1
85	38	68	link.link	sources	1
86	42	69	link.link	sources	1
87	41	70	link.link	sources	1
38	23	31	link.link	sources	1
43	20	35	link.link	sources	1
44	25	36	link.link	sources	1
45	22	37	link.link	sources	1
54	27	43	link.link	sources	1
57	26	45	link.link	sources	1
58	29	46	link.link	sources	1
59	28	47	link.link	sources	1
110	46	87	link.link	sources	1
115	45	90	link.link	sources	1
116	48	91	link.link	sources	1
117	47	92	link.link	sources	1
213	52	148	link.link	sources	1
214	52	149	link.link	sources	2
121	44	93	link.link	sources	1
122	44	94	link.link	sources	2
123	44	95	link.link	sources	3
130	43	99	link.link	sources	1
131	43	100	link.link	sources	2
132	43	101	link.link	sources	3
215	52	150	link.link	sources	3
216	52	151	link.link	sources	4
225	51	156	link.link	sources	1
226	51	157	link.link	sources	2
227	51	158	link.link	sources	3
228	51	159	link.link	sources	4
229	54	160	link.link	sources	1
230	54	161	link.link	sources	2
231	54	162	link.link	sources	3
232	54	163	link.link	sources	4
233	53	164	link.link	sources	1
234	53	165	link.link	sources	2
235	53	166	link.link	sources	3
236	53	167	link.link	sources	4
\.


--
-- Data for Name: the_wall_of_shames_sujet_lnk; Type: TABLE DATA; Schema: public; Owner: strapi
--

COPY public.the_wall_of_shames_sujet_lnk (id, the_wall_of_shame_id, sujet_id, the_wall_of_shame_ord) FROM stdin;
14	9	3	2
15	10	9	2
16	11	3	3
17	12	9	3
18	13	13	1
20	15	13	2
21	16	15	2
24	19	15	1
25	20	16	1
27	22	17	1
28	23	16	2
30	25	17	2
31	26	23	1
32	27	23	2
33	28	25	1
34	29	25	2
35	30	20	1
36	31	24	1
37	32	20	2
38	33	24	2
39	34	20	3
40	35	24	3
41	36	20	4
42	37	24	4
43	38	26	1
44	39	26	2
46	41	27	1
47	42	27	2
48	43	3	4
49	44	3	5
50	45	28	1
51	46	28	2
52	47	29	1
53	48	29	2
54	49	9	4
55	50	9	5
56	51	28	3
57	52	28	4
58	53	29	3
59	54	29	4
\.


--
-- Data for Name: up_permissions; Type: TABLE DATA; Schema: public; Owner: strapi
--

COPY public.up_permissions (id, document_id, action, created_at, updated_at, published_at, created_by_id, updated_by_id, locale) FROM stdin;
1	te167gb6ivejbydbomgy4oxm	plugin::users-permissions.user.me	2025-11-11 22:34:28.33	2025-11-11 22:34:28.33	2025-11-11 22:34:28.331	\N	\N	\N
2	z885hdv623vff2b99j9svcnr	plugin::users-permissions.auth.changePassword	2025-11-11 22:34:28.33	2025-11-11 22:34:28.33	2025-11-11 22:34:28.332	\N	\N	\N
3	wfj4v48l5de303u1px9uv2z5	plugin::users-permissions.auth.callback	2025-11-11 22:34:28.345	2025-11-11 22:34:28.345	2025-11-11 22:34:28.345	\N	\N	\N
4	uba6bbvbjyt8mvd84c1lpe5c	plugin::users-permissions.auth.connect	2025-11-11 22:34:28.345	2025-11-11 22:34:28.345	2025-11-11 22:34:28.345	\N	\N	\N
5	ans37c5fh94v7jhxir61517d	plugin::users-permissions.auth.forgotPassword	2025-11-11 22:34:28.345	2025-11-11 22:34:28.345	2025-11-11 22:34:28.345	\N	\N	\N
6	uku2nytfri928mt3h3q2swh4	plugin::users-permissions.auth.resetPassword	2025-11-11 22:34:28.345	2025-11-11 22:34:28.345	2025-11-11 22:34:28.346	\N	\N	\N
7	okq2feeid6d57n1560kh08ke	plugin::users-permissions.auth.register	2025-11-11 22:34:28.345	2025-11-11 22:34:28.345	2025-11-11 22:34:28.346	\N	\N	\N
8	enkeqino2zhedufsgi8d12i0	plugin::users-permissions.auth.sendEmailConfirmation	2025-11-11 22:34:28.345	2025-11-11 22:34:28.345	2025-11-11 22:34:28.346	\N	\N	\N
9	xhg6dehz2mhm1j4b8o9844x0	plugin::users-permissions.auth.emailConfirmation	2025-11-11 22:34:28.345	2025-11-11 22:34:28.345	2025-11-11 22:34:28.346	\N	\N	\N
10	rcz0wqgrnwb2a7c7r17q4tlt	api::the-wall-of-shame.the-wall-of-shame.find	2025-11-12 15:14:12.569	2025-11-12 15:14:12.569	2025-11-12 15:14:12.572	\N	\N	\N
11	cro7diqq1ycricfmhintm7q1	api::sujet.sujet.find	2025-11-12 15:14:12.569	2025-11-12 15:14:12.569	2025-11-12 15:14:12.57	\N	\N	\N
12	jgk6eg13odsfb6vwohdjkafi	api::sujet.sujet.findOne	2025-11-12 15:14:12.569	2025-11-12 15:14:12.569	2025-11-12 15:14:12.571	\N	\N	\N
13	o49157xlh9p5wceo59zaiub7	api::the-wall-of-shame.the-wall-of-shame.findOne	2025-11-12 15:14:12.569	2025-11-12 15:14:12.569	2025-11-12 15:14:12.572	\N	\N	\N
\.


--
-- Data for Name: up_permissions_role_lnk; Type: TABLE DATA; Schema: public; Owner: strapi
--

COPY public.up_permissions_role_lnk (id, permission_id, role_id, permission_ord) FROM stdin;
1	1	1	1
2	2	1	1
3	3	2	1
4	8	2	2
5	4	2	2
6	7	2	2
7	5	2	2
8	6	2	2
9	9	2	3
10	11	2	4
11	10	2	4
12	12	2	4
13	13	2	5
\.


--
-- Data for Name: up_roles; Type: TABLE DATA; Schema: public; Owner: strapi
--

COPY public.up_roles (id, document_id, name, description, type, created_at, updated_at, published_at, created_by_id, updated_by_id, locale) FROM stdin;
1	n89nhiqgwhnicatcvtuu37o3	Authenticated	Default role given to authenticated user.	authenticated	2025-11-11 22:34:28.315	2025-11-11 22:34:28.315	2025-11-11 22:34:28.316	\N	\N	\N
2	ktzv4bj5q27wf7zwdlekh1nf	Public	Default role given to unauthenticated user.	public	2025-11-11 22:34:28.321	2025-11-12 15:14:12.561	2025-11-11 22:34:28.321	\N	\N	\N
\.


--
-- Data for Name: up_users; Type: TABLE DATA; Schema: public; Owner: strapi
--

COPY public.up_users (id, document_id, username, email, provider, password, reset_password_token, confirmation_token, confirmed, blocked, created_at, updated_at, published_at, created_by_id, updated_by_id, locale) FROM stdin;
\.


--
-- Data for Name: up_users_role_lnk; Type: TABLE DATA; Schema: public; Owner: strapi
--

COPY public.up_users_role_lnk (id, user_id, role_id, user_ord) FROM stdin;
\.


--
-- Data for Name: upload_folders; Type: TABLE DATA; Schema: public; Owner: strapi
--

COPY public.upload_folders (id, document_id, name, path_id, path, created_at, updated_at, published_at, created_by_id, updated_by_id, locale) FROM stdin;
\.


--
-- Data for Name: upload_folders_parent_lnk; Type: TABLE DATA; Schema: public; Owner: strapi
--

COPY public.upload_folders_parent_lnk (id, folder_id, inv_folder_id, folder_ord) FROM stdin;
\.


--
-- Name: admin_permissions_id_seq; Type: SEQUENCE SET; Schema: public; Owner: strapi
--

SELECT pg_catalog.setval('public.admin_permissions_id_seq', 154, true);


--
-- Name: admin_permissions_role_lnk_id_seq; Type: SEQUENCE SET; Schema: public; Owner: strapi
--

SELECT pg_catalog.setval('public.admin_permissions_role_lnk_id_seq', 169, true);


--
-- Name: admin_roles_id_seq; Type: SEQUENCE SET; Schema: public; Owner: strapi
--

SELECT pg_catalog.setval('public.admin_roles_id_seq', 4, true);


--
-- Name: admin_users_id_seq; Type: SEQUENCE SET; Schema: public; Owner: strapi
--

SELECT pg_catalog.setval('public.admin_users_id_seq', 5, true);


--
-- Name: admin_users_roles_lnk_id_seq; Type: SEQUENCE SET; Schema: public; Owner: strapi
--

SELECT pg_catalog.setval('public.admin_users_roles_lnk_id_seq', 10, true);


--
-- Name: components_link_links_id_seq; Type: SEQUENCE SET; Schema: public; Owner: strapi
--

SELECT pg_catalog.setval('public.components_link_links_id_seq', 167, true);


--
-- Name: files_folder_lnk_id_seq; Type: SEQUENCE SET; Schema: public; Owner: strapi
--

SELECT pg_catalog.setval('public.files_folder_lnk_id_seq', 1, false);


--
-- Name: files_id_seq; Type: SEQUENCE SET; Schema: public; Owner: strapi
--

SELECT pg_catalog.setval('public.files_id_seq', 28, true);


--
-- Name: files_related_mph_id_seq; Type: SEQUENCE SET; Schema: public; Owner: strapi
--

SELECT pg_catalog.setval('public.files_related_mph_id_seq', 159, true);


--
-- Name: i18n_locale_id_seq; Type: SEQUENCE SET; Schema: public; Owner: strapi
--

SELECT pg_catalog.setval('public.i18n_locale_id_seq', 4, true);


--
-- Name: strapi_ai_localization_jobs_id_seq; Type: SEQUENCE SET; Schema: public; Owner: strapi
--

SELECT pg_catalog.setval('public.strapi_ai_localization_jobs_id_seq', 1, false);


--
-- Name: strapi_api_token_permissions_id_seq; Type: SEQUENCE SET; Schema: public; Owner: strapi
--

SELECT pg_catalog.setval('public.strapi_api_token_permissions_id_seq', 1, false);


--
-- Name: strapi_api_token_permissions_token_lnk_id_seq; Type: SEQUENCE SET; Schema: public; Owner: strapi
--

SELECT pg_catalog.setval('public.strapi_api_token_permissions_token_lnk_id_seq', 1, false);


--
-- Name: strapi_api_tokens_id_seq; Type: SEQUENCE SET; Schema: public; Owner: strapi
--

SELECT pg_catalog.setval('public.strapi_api_tokens_id_seq', 2, true);


--
-- Name: strapi_core_store_settings_id_seq; Type: SEQUENCE SET; Schema: public; Owner: strapi
--

SELECT pg_catalog.setval('public.strapi_core_store_settings_id_seq', 31, true);


--
-- Name: strapi_database_schema_id_seq; Type: SEQUENCE SET; Schema: public; Owner: strapi
--

SELECT pg_catalog.setval('public.strapi_database_schema_id_seq', 4, true);


--
-- Name: strapi_history_versions_id_seq; Type: SEQUENCE SET; Schema: public; Owner: strapi
--

SELECT pg_catalog.setval('public.strapi_history_versions_id_seq', 1, false);


--
-- Name: strapi_migrations_id_seq; Type: SEQUENCE SET; Schema: public; Owner: strapi
--

SELECT pg_catalog.setval('public.strapi_migrations_id_seq', 1, false);


--
-- Name: strapi_migrations_internal_id_seq; Type: SEQUENCE SET; Schema: public; Owner: strapi
--

SELECT pg_catalog.setval('public.strapi_migrations_internal_id_seq', 6, true);


--
-- Name: strapi_release_actions_id_seq; Type: SEQUENCE SET; Schema: public; Owner: strapi
--

SELECT pg_catalog.setval('public.strapi_release_actions_id_seq', 1, false);


--
-- Name: strapi_release_actions_release_lnk_id_seq; Type: SEQUENCE SET; Schema: public; Owner: strapi
--

SELECT pg_catalog.setval('public.strapi_release_actions_release_lnk_id_seq', 1, false);


--
-- Name: strapi_releases_id_seq; Type: SEQUENCE SET; Schema: public; Owner: strapi
--

SELECT pg_catalog.setval('public.strapi_releases_id_seq', 1, false);


--
-- Name: strapi_sessions_id_seq; Type: SEQUENCE SET; Schema: public; Owner: strapi
--

SELECT pg_catalog.setval('public.strapi_sessions_id_seq', 53, true);


--
-- Name: strapi_transfer_token_permissions_id_seq; Type: SEQUENCE SET; Schema: public; Owner: strapi
--

SELECT pg_catalog.setval('public.strapi_transfer_token_permissions_id_seq', 1, false);


--
-- Name: strapi_transfer_token_permissions_token_lnk_id_seq; Type: SEQUENCE SET; Schema: public; Owner: strapi
--

SELECT pg_catalog.setval('public.strapi_transfer_token_permissions_token_lnk_id_seq', 1, false);


--
-- Name: strapi_transfer_tokens_id_seq; Type: SEQUENCE SET; Schema: public; Owner: strapi
--

SELECT pg_catalog.setval('public.strapi_transfer_tokens_id_seq', 1, false);


--
-- Name: strapi_webhooks_id_seq; Type: SEQUENCE SET; Schema: public; Owner: strapi
--

SELECT pg_catalog.setval('public.strapi_webhooks_id_seq', 1, false);


--
-- Name: strapi_workflows_id_seq; Type: SEQUENCE SET; Schema: public; Owner: strapi
--

SELECT pg_catalog.setval('public.strapi_workflows_id_seq', 1, false);


--
-- Name: strapi_workflows_stage_required_to_publish_lnk_id_seq; Type: SEQUENCE SET; Schema: public; Owner: strapi
--

SELECT pg_catalog.setval('public.strapi_workflows_stage_required_to_publish_lnk_id_seq', 1, false);


--
-- Name: strapi_workflows_stages_id_seq; Type: SEQUENCE SET; Schema: public; Owner: strapi
--

SELECT pg_catalog.setval('public.strapi_workflows_stages_id_seq', 1, false);


--
-- Name: strapi_workflows_stages_permissions_lnk_id_seq; Type: SEQUENCE SET; Schema: public; Owner: strapi
--

SELECT pg_catalog.setval('public.strapi_workflows_stages_permissions_lnk_id_seq', 1, false);


--
-- Name: strapi_workflows_stages_workflow_lnk_id_seq; Type: SEQUENCE SET; Schema: public; Owner: strapi
--

SELECT pg_catalog.setval('public.strapi_workflows_stages_workflow_lnk_id_seq', 1, false);


--
-- Name: sujets_id_seq; Type: SEQUENCE SET; Schema: public; Owner: strapi
--

SELECT pg_catalog.setval('public.sujets_id_seq', 29, true);


--
-- Name: the_wall_of_shames_cmps_id_seq; Type: SEQUENCE SET; Schema: public; Owner: strapi
--

SELECT pg_catalog.setval('public.the_wall_of_shames_cmps_id_seq', 236, true);


--
-- Name: the_wall_of_shames_id_seq; Type: SEQUENCE SET; Schema: public; Owner: strapi
--

SELECT pg_catalog.setval('public.the_wall_of_shames_id_seq', 54, true);


--
-- Name: the_wall_of_shames_sujet_lnk_id_seq; Type: SEQUENCE SET; Schema: public; Owner: strapi
--

SELECT pg_catalog.setval('public.the_wall_of_shames_sujet_lnk_id_seq', 59, true);


--
-- Name: up_permissions_id_seq; Type: SEQUENCE SET; Schema: public; Owner: strapi
--

SELECT pg_catalog.setval('public.up_permissions_id_seq', 13, true);


--
-- Name: up_permissions_role_lnk_id_seq; Type: SEQUENCE SET; Schema: public; Owner: strapi
--

SELECT pg_catalog.setval('public.up_permissions_role_lnk_id_seq', 13, true);


--
-- Name: up_roles_id_seq; Type: SEQUENCE SET; Schema: public; Owner: strapi
--

SELECT pg_catalog.setval('public.up_roles_id_seq', 2, true);


--
-- Name: up_users_id_seq; Type: SEQUENCE SET; Schema: public; Owner: strapi
--

SELECT pg_catalog.setval('public.up_users_id_seq', 1, false);


--
-- Name: up_users_role_lnk_id_seq; Type: SEQUENCE SET; Schema: public; Owner: strapi
--

SELECT pg_catalog.setval('public.up_users_role_lnk_id_seq', 1, false);


--
-- Name: upload_folders_id_seq; Type: SEQUENCE SET; Schema: public; Owner: strapi
--

SELECT pg_catalog.setval('public.upload_folders_id_seq', 1, false);


--
-- Name: upload_folders_parent_lnk_id_seq; Type: SEQUENCE SET; Schema: public; Owner: strapi
--

SELECT pg_catalog.setval('public.upload_folders_parent_lnk_id_seq', 1, false);


--
-- Name: admin_permissions admin_permissions_pkey; Type: CONSTRAINT; Schema: public; Owner: strapi
--

ALTER TABLE ONLY public.admin_permissions
    ADD CONSTRAINT admin_permissions_pkey PRIMARY KEY (id);


--
-- Name: admin_permissions_role_lnk admin_permissions_role_lnk_pkey; Type: CONSTRAINT; Schema: public; Owner: strapi
--

ALTER TABLE ONLY public.admin_permissions_role_lnk
    ADD CONSTRAINT admin_permissions_role_lnk_pkey PRIMARY KEY (id);


--
-- Name: admin_permissions_role_lnk admin_permissions_role_lnk_uq; Type: CONSTRAINT; Schema: public; Owner: strapi
--

ALTER TABLE ONLY public.admin_permissions_role_lnk
    ADD CONSTRAINT admin_permissions_role_lnk_uq UNIQUE (permission_id, role_id);


--
-- Name: admin_roles admin_roles_pkey; Type: CONSTRAINT; Schema: public; Owner: strapi
--

ALTER TABLE ONLY public.admin_roles
    ADD CONSTRAINT admin_roles_pkey PRIMARY KEY (id);


--
-- Name: admin_users admin_users_pkey; Type: CONSTRAINT; Schema: public; Owner: strapi
--

ALTER TABLE ONLY public.admin_users
    ADD CONSTRAINT admin_users_pkey PRIMARY KEY (id);


--
-- Name: admin_users_roles_lnk admin_users_roles_lnk_pkey; Type: CONSTRAINT; Schema: public; Owner: strapi
--

ALTER TABLE ONLY public.admin_users_roles_lnk
    ADD CONSTRAINT admin_users_roles_lnk_pkey PRIMARY KEY (id);


--
-- Name: admin_users_roles_lnk admin_users_roles_lnk_uq; Type: CONSTRAINT; Schema: public; Owner: strapi
--

ALTER TABLE ONLY public.admin_users_roles_lnk
    ADD CONSTRAINT admin_users_roles_lnk_uq UNIQUE (user_id, role_id);


--
-- Name: components_link_links components_link_links_pkey; Type: CONSTRAINT; Schema: public; Owner: strapi
--

ALTER TABLE ONLY public.components_link_links
    ADD CONSTRAINT components_link_links_pkey PRIMARY KEY (id);


--
-- Name: files_folder_lnk files_folder_lnk_pkey; Type: CONSTRAINT; Schema: public; Owner: strapi
--

ALTER TABLE ONLY public.files_folder_lnk
    ADD CONSTRAINT files_folder_lnk_pkey PRIMARY KEY (id);


--
-- Name: files_folder_lnk files_folder_lnk_uq; Type: CONSTRAINT; Schema: public; Owner: strapi
--

ALTER TABLE ONLY public.files_folder_lnk
    ADD CONSTRAINT files_folder_lnk_uq UNIQUE (file_id, folder_id);


--
-- Name: files files_pkey; Type: CONSTRAINT; Schema: public; Owner: strapi
--

ALTER TABLE ONLY public.files
    ADD CONSTRAINT files_pkey PRIMARY KEY (id);


--
-- Name: files_related_mph files_related_mph_pkey; Type: CONSTRAINT; Schema: public; Owner: strapi
--

ALTER TABLE ONLY public.files_related_mph
    ADD CONSTRAINT files_related_mph_pkey PRIMARY KEY (id);


--
-- Name: i18n_locale i18n_locale_pkey; Type: CONSTRAINT; Schema: public; Owner: strapi
--

ALTER TABLE ONLY public.i18n_locale
    ADD CONSTRAINT i18n_locale_pkey PRIMARY KEY (id);


--
-- Name: strapi_ai_localization_jobs strapi_ai_localization_jobs_pkey; Type: CONSTRAINT; Schema: public; Owner: strapi
--

ALTER TABLE ONLY public.strapi_ai_localization_jobs
    ADD CONSTRAINT strapi_ai_localization_jobs_pkey PRIMARY KEY (id);


--
-- Name: strapi_api_token_permissions strapi_api_token_permissions_pkey; Type: CONSTRAINT; Schema: public; Owner: strapi
--

ALTER TABLE ONLY public.strapi_api_token_permissions
    ADD CONSTRAINT strapi_api_token_permissions_pkey PRIMARY KEY (id);


--
-- Name: strapi_api_token_permissions_token_lnk strapi_api_token_permissions_token_lnk_pkey; Type: CONSTRAINT; Schema: public; Owner: strapi
--

ALTER TABLE ONLY public.strapi_api_token_permissions_token_lnk
    ADD CONSTRAINT strapi_api_token_permissions_token_lnk_pkey PRIMARY KEY (id);


--
-- Name: strapi_api_token_permissions_token_lnk strapi_api_token_permissions_token_lnk_uq; Type: CONSTRAINT; Schema: public; Owner: strapi
--

ALTER TABLE ONLY public.strapi_api_token_permissions_token_lnk
    ADD CONSTRAINT strapi_api_token_permissions_token_lnk_uq UNIQUE (api_token_permission_id, api_token_id);


--
-- Name: strapi_api_tokens strapi_api_tokens_pkey; Type: CONSTRAINT; Schema: public; Owner: strapi
--

ALTER TABLE ONLY public.strapi_api_tokens
    ADD CONSTRAINT strapi_api_tokens_pkey PRIMARY KEY (id);


--
-- Name: strapi_core_store_settings strapi_core_store_settings_pkey; Type: CONSTRAINT; Schema: public; Owner: strapi
--

ALTER TABLE ONLY public.strapi_core_store_settings
    ADD CONSTRAINT strapi_core_store_settings_pkey PRIMARY KEY (id);


--
-- Name: strapi_database_schema strapi_database_schema_pkey; Type: CONSTRAINT; Schema: public; Owner: strapi
--

ALTER TABLE ONLY public.strapi_database_schema
    ADD CONSTRAINT strapi_database_schema_pkey PRIMARY KEY (id);


--
-- Name: strapi_history_versions strapi_history_versions_pkey; Type: CONSTRAINT; Schema: public; Owner: strapi
--

ALTER TABLE ONLY public.strapi_history_versions
    ADD CONSTRAINT strapi_history_versions_pkey PRIMARY KEY (id);


--
-- Name: strapi_migrations_internal strapi_migrations_internal_pkey; Type: CONSTRAINT; Schema: public; Owner: strapi
--

ALTER TABLE ONLY public.strapi_migrations_internal
    ADD CONSTRAINT strapi_migrations_internal_pkey PRIMARY KEY (id);


--
-- Name: strapi_migrations strapi_migrations_pkey; Type: CONSTRAINT; Schema: public; Owner: strapi
--

ALTER TABLE ONLY public.strapi_migrations
    ADD CONSTRAINT strapi_migrations_pkey PRIMARY KEY (id);


--
-- Name: strapi_release_actions strapi_release_actions_pkey; Type: CONSTRAINT; Schema: public; Owner: strapi
--

ALTER TABLE ONLY public.strapi_release_actions
    ADD CONSTRAINT strapi_release_actions_pkey PRIMARY KEY (id);


--
-- Name: strapi_release_actions_release_lnk strapi_release_actions_release_lnk_pkey; Type: CONSTRAINT; Schema: public; Owner: strapi
--

ALTER TABLE ONLY public.strapi_release_actions_release_lnk
    ADD CONSTRAINT strapi_release_actions_release_lnk_pkey PRIMARY KEY (id);


--
-- Name: strapi_release_actions_release_lnk strapi_release_actions_release_lnk_uq; Type: CONSTRAINT; Schema: public; Owner: strapi
--

ALTER TABLE ONLY public.strapi_release_actions_release_lnk
    ADD CONSTRAINT strapi_release_actions_release_lnk_uq UNIQUE (release_action_id, release_id);


--
-- Name: strapi_releases strapi_releases_pkey; Type: CONSTRAINT; Schema: public; Owner: strapi
--

ALTER TABLE ONLY public.strapi_releases
    ADD CONSTRAINT strapi_releases_pkey PRIMARY KEY (id);


--
-- Name: strapi_sessions strapi_sessions_pkey; Type: CONSTRAINT; Schema: public; Owner: strapi
--

ALTER TABLE ONLY public.strapi_sessions
    ADD CONSTRAINT strapi_sessions_pkey PRIMARY KEY (id);


--
-- Name: strapi_transfer_token_permissions strapi_transfer_token_permissions_pkey; Type: CONSTRAINT; Schema: public; Owner: strapi
--

ALTER TABLE ONLY public.strapi_transfer_token_permissions
    ADD CONSTRAINT strapi_transfer_token_permissions_pkey PRIMARY KEY (id);


--
-- Name: strapi_transfer_token_permissions_token_lnk strapi_transfer_token_permissions_token_lnk_pkey; Type: CONSTRAINT; Schema: public; Owner: strapi
--

ALTER TABLE ONLY public.strapi_transfer_token_permissions_token_lnk
    ADD CONSTRAINT strapi_transfer_token_permissions_token_lnk_pkey PRIMARY KEY (id);


--
-- Name: strapi_transfer_token_permissions_token_lnk strapi_transfer_token_permissions_token_lnk_uq; Type: CONSTRAINT; Schema: public; Owner: strapi
--

ALTER TABLE ONLY public.strapi_transfer_token_permissions_token_lnk
    ADD CONSTRAINT strapi_transfer_token_permissions_token_lnk_uq UNIQUE (transfer_token_permission_id, transfer_token_id);


--
-- Name: strapi_transfer_tokens strapi_transfer_tokens_pkey; Type: CONSTRAINT; Schema: public; Owner: strapi
--

ALTER TABLE ONLY public.strapi_transfer_tokens
    ADD CONSTRAINT strapi_transfer_tokens_pkey PRIMARY KEY (id);


--
-- Name: strapi_webhooks strapi_webhooks_pkey; Type: CONSTRAINT; Schema: public; Owner: strapi
--

ALTER TABLE ONLY public.strapi_webhooks
    ADD CONSTRAINT strapi_webhooks_pkey PRIMARY KEY (id);


--
-- Name: strapi_workflows strapi_workflows_pkey; Type: CONSTRAINT; Schema: public; Owner: strapi
--

ALTER TABLE ONLY public.strapi_workflows
    ADD CONSTRAINT strapi_workflows_pkey PRIMARY KEY (id);


--
-- Name: strapi_workflows_stage_required_to_publish_lnk strapi_workflows_stage_required_to_publish_lnk_pkey; Type: CONSTRAINT; Schema: public; Owner: strapi
--

ALTER TABLE ONLY public.strapi_workflows_stage_required_to_publish_lnk
    ADD CONSTRAINT strapi_workflows_stage_required_to_publish_lnk_pkey PRIMARY KEY (id);


--
-- Name: strapi_workflows_stage_required_to_publish_lnk strapi_workflows_stage_required_to_publish_lnk_uq; Type: CONSTRAINT; Schema: public; Owner: strapi
--

ALTER TABLE ONLY public.strapi_workflows_stage_required_to_publish_lnk
    ADD CONSTRAINT strapi_workflows_stage_required_to_publish_lnk_uq UNIQUE (workflow_id, workflow_stage_id);


--
-- Name: strapi_workflows_stages_permissions_lnk strapi_workflows_stages_permissions_lnk_pkey; Type: CONSTRAINT; Schema: public; Owner: strapi
--

ALTER TABLE ONLY public.strapi_workflows_stages_permissions_lnk
    ADD CONSTRAINT strapi_workflows_stages_permissions_lnk_pkey PRIMARY KEY (id);


--
-- Name: strapi_workflows_stages_permissions_lnk strapi_workflows_stages_permissions_lnk_uq; Type: CONSTRAINT; Schema: public; Owner: strapi
--

ALTER TABLE ONLY public.strapi_workflows_stages_permissions_lnk
    ADD CONSTRAINT strapi_workflows_stages_permissions_lnk_uq UNIQUE (workflow_stage_id, permission_id);


--
-- Name: strapi_workflows_stages strapi_workflows_stages_pkey; Type: CONSTRAINT; Schema: public; Owner: strapi
--

ALTER TABLE ONLY public.strapi_workflows_stages
    ADD CONSTRAINT strapi_workflows_stages_pkey PRIMARY KEY (id);


--
-- Name: strapi_workflows_stages_workflow_lnk strapi_workflows_stages_workflow_lnk_pkey; Type: CONSTRAINT; Schema: public; Owner: strapi
--

ALTER TABLE ONLY public.strapi_workflows_stages_workflow_lnk
    ADD CONSTRAINT strapi_workflows_stages_workflow_lnk_pkey PRIMARY KEY (id);


--
-- Name: strapi_workflows_stages_workflow_lnk strapi_workflows_stages_workflow_lnk_uq; Type: CONSTRAINT; Schema: public; Owner: strapi
--

ALTER TABLE ONLY public.strapi_workflows_stages_workflow_lnk
    ADD CONSTRAINT strapi_workflows_stages_workflow_lnk_uq UNIQUE (workflow_stage_id, workflow_id);


--
-- Name: sujets sujets_pkey; Type: CONSTRAINT; Schema: public; Owner: strapi
--

ALTER TABLE ONLY public.sujets
    ADD CONSTRAINT sujets_pkey PRIMARY KEY (id);


--
-- Name: the_wall_of_shames_cmps the_wall_of_shames_cmps_pkey; Type: CONSTRAINT; Schema: public; Owner: strapi
--

ALTER TABLE ONLY public.the_wall_of_shames_cmps
    ADD CONSTRAINT the_wall_of_shames_cmps_pkey PRIMARY KEY (id);


--
-- Name: the_wall_of_shames the_wall_of_shames_pkey; Type: CONSTRAINT; Schema: public; Owner: strapi
--

ALTER TABLE ONLY public.the_wall_of_shames
    ADD CONSTRAINT the_wall_of_shames_pkey PRIMARY KEY (id);


--
-- Name: the_wall_of_shames_sujet_lnk the_wall_of_shames_sujet_lnk_pkey; Type: CONSTRAINT; Schema: public; Owner: strapi
--

ALTER TABLE ONLY public.the_wall_of_shames_sujet_lnk
    ADD CONSTRAINT the_wall_of_shames_sujet_lnk_pkey PRIMARY KEY (id);


--
-- Name: the_wall_of_shames_sujet_lnk the_wall_of_shames_sujet_lnk_uq; Type: CONSTRAINT; Schema: public; Owner: strapi
--

ALTER TABLE ONLY public.the_wall_of_shames_sujet_lnk
    ADD CONSTRAINT the_wall_of_shames_sujet_lnk_uq UNIQUE (the_wall_of_shame_id, sujet_id);


--
-- Name: the_wall_of_shames_cmps the_wall_of_shames_uq; Type: CONSTRAINT; Schema: public; Owner: strapi
--

ALTER TABLE ONLY public.the_wall_of_shames_cmps
    ADD CONSTRAINT the_wall_of_shames_uq UNIQUE (entity_id, cmp_id, field, component_type);


--
-- Name: up_permissions up_permissions_pkey; Type: CONSTRAINT; Schema: public; Owner: strapi
--

ALTER TABLE ONLY public.up_permissions
    ADD CONSTRAINT up_permissions_pkey PRIMARY KEY (id);


--
-- Name: up_permissions_role_lnk up_permissions_role_lnk_pkey; Type: CONSTRAINT; Schema: public; Owner: strapi
--

ALTER TABLE ONLY public.up_permissions_role_lnk
    ADD CONSTRAINT up_permissions_role_lnk_pkey PRIMARY KEY (id);


--
-- Name: up_permissions_role_lnk up_permissions_role_lnk_uq; Type: CONSTRAINT; Schema: public; Owner: strapi
--

ALTER TABLE ONLY public.up_permissions_role_lnk
    ADD CONSTRAINT up_permissions_role_lnk_uq UNIQUE (permission_id, role_id);


--
-- Name: up_roles up_roles_pkey; Type: CONSTRAINT; Schema: public; Owner: strapi
--

ALTER TABLE ONLY public.up_roles
    ADD CONSTRAINT up_roles_pkey PRIMARY KEY (id);


--
-- Name: up_users up_users_pkey; Type: CONSTRAINT; Schema: public; Owner: strapi
--

ALTER TABLE ONLY public.up_users
    ADD CONSTRAINT up_users_pkey PRIMARY KEY (id);


--
-- Name: up_users_role_lnk up_users_role_lnk_pkey; Type: CONSTRAINT; Schema: public; Owner: strapi
--

ALTER TABLE ONLY public.up_users_role_lnk
    ADD CONSTRAINT up_users_role_lnk_pkey PRIMARY KEY (id);


--
-- Name: up_users_role_lnk up_users_role_lnk_uq; Type: CONSTRAINT; Schema: public; Owner: strapi
--

ALTER TABLE ONLY public.up_users_role_lnk
    ADD CONSTRAINT up_users_role_lnk_uq UNIQUE (user_id, role_id);


--
-- Name: upload_folders_parent_lnk upload_folders_parent_lnk_pkey; Type: CONSTRAINT; Schema: public; Owner: strapi
--

ALTER TABLE ONLY public.upload_folders_parent_lnk
    ADD CONSTRAINT upload_folders_parent_lnk_pkey PRIMARY KEY (id);


--
-- Name: upload_folders_parent_lnk upload_folders_parent_lnk_uq; Type: CONSTRAINT; Schema: public; Owner: strapi
--

ALTER TABLE ONLY public.upload_folders_parent_lnk
    ADD CONSTRAINT upload_folders_parent_lnk_uq UNIQUE (folder_id, inv_folder_id);


--
-- Name: upload_folders upload_folders_path_id_index; Type: CONSTRAINT; Schema: public; Owner: strapi
--

ALTER TABLE ONLY public.upload_folders
    ADD CONSTRAINT upload_folders_path_id_index UNIQUE (path_id);


--
-- Name: upload_folders upload_folders_path_index; Type: CONSTRAINT; Schema: public; Owner: strapi
--

ALTER TABLE ONLY public.upload_folders
    ADD CONSTRAINT upload_folders_path_index UNIQUE (path);


--
-- Name: upload_folders upload_folders_pkey; Type: CONSTRAINT; Schema: public; Owner: strapi
--

ALTER TABLE ONLY public.upload_folders
    ADD CONSTRAINT upload_folders_pkey PRIMARY KEY (id);


--
-- Name: admin_permissions_created_by_id_fk; Type: INDEX; Schema: public; Owner: strapi
--

CREATE INDEX admin_permissions_created_by_id_fk ON public.admin_permissions USING btree (created_by_id);


--
-- Name: admin_permissions_documents_idx; Type: INDEX; Schema: public; Owner: strapi
--

CREATE INDEX admin_permissions_documents_idx ON public.admin_permissions USING btree (document_id, locale, published_at);


--
-- Name: admin_permissions_role_lnk_fk; Type: INDEX; Schema: public; Owner: strapi
--

CREATE INDEX admin_permissions_role_lnk_fk ON public.admin_permissions_role_lnk USING btree (permission_id);


--
-- Name: admin_permissions_role_lnk_ifk; Type: INDEX; Schema: public; Owner: strapi
--

CREATE INDEX admin_permissions_role_lnk_ifk ON public.admin_permissions_role_lnk USING btree (role_id);


--
-- Name: admin_permissions_role_lnk_oifk; Type: INDEX; Schema: public; Owner: strapi
--

CREATE INDEX admin_permissions_role_lnk_oifk ON public.admin_permissions_role_lnk USING btree (permission_ord);


--
-- Name: admin_permissions_updated_by_id_fk; Type: INDEX; Schema: public; Owner: strapi
--

CREATE INDEX admin_permissions_updated_by_id_fk ON public.admin_permissions USING btree (updated_by_id);


--
-- Name: admin_roles_created_by_id_fk; Type: INDEX; Schema: public; Owner: strapi
--

CREATE INDEX admin_roles_created_by_id_fk ON public.admin_roles USING btree (created_by_id);


--
-- Name: admin_roles_documents_idx; Type: INDEX; Schema: public; Owner: strapi
--

CREATE INDEX admin_roles_documents_idx ON public.admin_roles USING btree (document_id, locale, published_at);


--
-- Name: admin_roles_updated_by_id_fk; Type: INDEX; Schema: public; Owner: strapi
--

CREATE INDEX admin_roles_updated_by_id_fk ON public.admin_roles USING btree (updated_by_id);


--
-- Name: admin_users_created_by_id_fk; Type: INDEX; Schema: public; Owner: strapi
--

CREATE INDEX admin_users_created_by_id_fk ON public.admin_users USING btree (created_by_id);


--
-- Name: admin_users_documents_idx; Type: INDEX; Schema: public; Owner: strapi
--

CREATE INDEX admin_users_documents_idx ON public.admin_users USING btree (document_id, locale, published_at);


--
-- Name: admin_users_roles_lnk_fk; Type: INDEX; Schema: public; Owner: strapi
--

CREATE INDEX admin_users_roles_lnk_fk ON public.admin_users_roles_lnk USING btree (user_id);


--
-- Name: admin_users_roles_lnk_ifk; Type: INDEX; Schema: public; Owner: strapi
--

CREATE INDEX admin_users_roles_lnk_ifk ON public.admin_users_roles_lnk USING btree (role_id);


--
-- Name: admin_users_roles_lnk_ofk; Type: INDEX; Schema: public; Owner: strapi
--

CREATE INDEX admin_users_roles_lnk_ofk ON public.admin_users_roles_lnk USING btree (role_ord);


--
-- Name: admin_users_roles_lnk_oifk; Type: INDEX; Schema: public; Owner: strapi
--

CREATE INDEX admin_users_roles_lnk_oifk ON public.admin_users_roles_lnk USING btree (user_ord);


--
-- Name: admin_users_updated_by_id_fk; Type: INDEX; Schema: public; Owner: strapi
--

CREATE INDEX admin_users_updated_by_id_fk ON public.admin_users USING btree (updated_by_id);


--
-- Name: files_created_by_id_fk; Type: INDEX; Schema: public; Owner: strapi
--

CREATE INDEX files_created_by_id_fk ON public.files USING btree (created_by_id);


--
-- Name: files_documents_idx; Type: INDEX; Schema: public; Owner: strapi
--

CREATE INDEX files_documents_idx ON public.files USING btree (document_id, locale, published_at);


--
-- Name: files_folder_lnk_fk; Type: INDEX; Schema: public; Owner: strapi
--

CREATE INDEX files_folder_lnk_fk ON public.files_folder_lnk USING btree (file_id);


--
-- Name: files_folder_lnk_ifk; Type: INDEX; Schema: public; Owner: strapi
--

CREATE INDEX files_folder_lnk_ifk ON public.files_folder_lnk USING btree (folder_id);


--
-- Name: files_folder_lnk_oifk; Type: INDEX; Schema: public; Owner: strapi
--

CREATE INDEX files_folder_lnk_oifk ON public.files_folder_lnk USING btree (file_ord);


--
-- Name: files_related_mph_fk; Type: INDEX; Schema: public; Owner: strapi
--

CREATE INDEX files_related_mph_fk ON public.files_related_mph USING btree (file_id);


--
-- Name: files_related_mph_idix; Type: INDEX; Schema: public; Owner: strapi
--

CREATE INDEX files_related_mph_idix ON public.files_related_mph USING btree (related_id);


--
-- Name: files_related_mph_oidx; Type: INDEX; Schema: public; Owner: strapi
--

CREATE INDEX files_related_mph_oidx ON public.files_related_mph USING btree ("order");


--
-- Name: files_updated_by_id_fk; Type: INDEX; Schema: public; Owner: strapi
--

CREATE INDEX files_updated_by_id_fk ON public.files USING btree (updated_by_id);


--
-- Name: i18n_locale_created_by_id_fk; Type: INDEX; Schema: public; Owner: strapi
--

CREATE INDEX i18n_locale_created_by_id_fk ON public.i18n_locale USING btree (created_by_id);


--
-- Name: i18n_locale_documents_idx; Type: INDEX; Schema: public; Owner: strapi
--

CREATE INDEX i18n_locale_documents_idx ON public.i18n_locale USING btree (document_id, locale, published_at);


--
-- Name: i18n_locale_updated_by_id_fk; Type: INDEX; Schema: public; Owner: strapi
--

CREATE INDEX i18n_locale_updated_by_id_fk ON public.i18n_locale USING btree (updated_by_id);


--
-- Name: strapi_api_token_permissions_created_by_id_fk; Type: INDEX; Schema: public; Owner: strapi
--

CREATE INDEX strapi_api_token_permissions_created_by_id_fk ON public.strapi_api_token_permissions USING btree (created_by_id);


--
-- Name: strapi_api_token_permissions_documents_idx; Type: INDEX; Schema: public; Owner: strapi
--

CREATE INDEX strapi_api_token_permissions_documents_idx ON public.strapi_api_token_permissions USING btree (document_id, locale, published_at);


--
-- Name: strapi_api_token_permissions_token_lnk_fk; Type: INDEX; Schema: public; Owner: strapi
--

CREATE INDEX strapi_api_token_permissions_token_lnk_fk ON public.strapi_api_token_permissions_token_lnk USING btree (api_token_permission_id);


--
-- Name: strapi_api_token_permissions_token_lnk_ifk; Type: INDEX; Schema: public; Owner: strapi
--

CREATE INDEX strapi_api_token_permissions_token_lnk_ifk ON public.strapi_api_token_permissions_token_lnk USING btree (api_token_id);


--
-- Name: strapi_api_token_permissions_token_lnk_oifk; Type: INDEX; Schema: public; Owner: strapi
--

CREATE INDEX strapi_api_token_permissions_token_lnk_oifk ON public.strapi_api_token_permissions_token_lnk USING btree (api_token_permission_ord);


--
-- Name: strapi_api_token_permissions_updated_by_id_fk; Type: INDEX; Schema: public; Owner: strapi
--

CREATE INDEX strapi_api_token_permissions_updated_by_id_fk ON public.strapi_api_token_permissions USING btree (updated_by_id);


--
-- Name: strapi_api_tokens_created_by_id_fk; Type: INDEX; Schema: public; Owner: strapi
--

CREATE INDEX strapi_api_tokens_created_by_id_fk ON public.strapi_api_tokens USING btree (created_by_id);


--
-- Name: strapi_api_tokens_documents_idx; Type: INDEX; Schema: public; Owner: strapi
--

CREATE INDEX strapi_api_tokens_documents_idx ON public.strapi_api_tokens USING btree (document_id, locale, published_at);


--
-- Name: strapi_api_tokens_updated_by_id_fk; Type: INDEX; Schema: public; Owner: strapi
--

CREATE INDEX strapi_api_tokens_updated_by_id_fk ON public.strapi_api_tokens USING btree (updated_by_id);


--
-- Name: strapi_history_versions_created_by_id_fk; Type: INDEX; Schema: public; Owner: strapi
--

CREATE INDEX strapi_history_versions_created_by_id_fk ON public.strapi_history_versions USING btree (created_by_id);


--
-- Name: strapi_release_actions_created_by_id_fk; Type: INDEX; Schema: public; Owner: strapi
--

CREATE INDEX strapi_release_actions_created_by_id_fk ON public.strapi_release_actions USING btree (created_by_id);


--
-- Name: strapi_release_actions_documents_idx; Type: INDEX; Schema: public; Owner: strapi
--

CREATE INDEX strapi_release_actions_documents_idx ON public.strapi_release_actions USING btree (document_id, locale, published_at);


--
-- Name: strapi_release_actions_release_lnk_fk; Type: INDEX; Schema: public; Owner: strapi
--

CREATE INDEX strapi_release_actions_release_lnk_fk ON public.strapi_release_actions_release_lnk USING btree (release_action_id);


--
-- Name: strapi_release_actions_release_lnk_ifk; Type: INDEX; Schema: public; Owner: strapi
--

CREATE INDEX strapi_release_actions_release_lnk_ifk ON public.strapi_release_actions_release_lnk USING btree (release_id);


--
-- Name: strapi_release_actions_release_lnk_oifk; Type: INDEX; Schema: public; Owner: strapi
--

CREATE INDEX strapi_release_actions_release_lnk_oifk ON public.strapi_release_actions_release_lnk USING btree (release_action_ord);


--
-- Name: strapi_release_actions_updated_by_id_fk; Type: INDEX; Schema: public; Owner: strapi
--

CREATE INDEX strapi_release_actions_updated_by_id_fk ON public.strapi_release_actions USING btree (updated_by_id);


--
-- Name: strapi_releases_created_by_id_fk; Type: INDEX; Schema: public; Owner: strapi
--

CREATE INDEX strapi_releases_created_by_id_fk ON public.strapi_releases USING btree (created_by_id);


--
-- Name: strapi_releases_documents_idx; Type: INDEX; Schema: public; Owner: strapi
--

CREATE INDEX strapi_releases_documents_idx ON public.strapi_releases USING btree (document_id, locale, published_at);


--
-- Name: strapi_releases_updated_by_id_fk; Type: INDEX; Schema: public; Owner: strapi
--

CREATE INDEX strapi_releases_updated_by_id_fk ON public.strapi_releases USING btree (updated_by_id);


--
-- Name: strapi_sessions_created_by_id_fk; Type: INDEX; Schema: public; Owner: strapi
--

CREATE INDEX strapi_sessions_created_by_id_fk ON public.strapi_sessions USING btree (created_by_id);


--
-- Name: strapi_sessions_documents_idx; Type: INDEX; Schema: public; Owner: strapi
--

CREATE INDEX strapi_sessions_documents_idx ON public.strapi_sessions USING btree (document_id, locale, published_at);


--
-- Name: strapi_sessions_updated_by_id_fk; Type: INDEX; Schema: public; Owner: strapi
--

CREATE INDEX strapi_sessions_updated_by_id_fk ON public.strapi_sessions USING btree (updated_by_id);


--
-- Name: strapi_transfer_token_permissions_created_by_id_fk; Type: INDEX; Schema: public; Owner: strapi
--

CREATE INDEX strapi_transfer_token_permissions_created_by_id_fk ON public.strapi_transfer_token_permissions USING btree (created_by_id);


--
-- Name: strapi_transfer_token_permissions_documents_idx; Type: INDEX; Schema: public; Owner: strapi
--

CREATE INDEX strapi_transfer_token_permissions_documents_idx ON public.strapi_transfer_token_permissions USING btree (document_id, locale, published_at);


--
-- Name: strapi_transfer_token_permissions_token_lnk_fk; Type: INDEX; Schema: public; Owner: strapi
--

CREATE INDEX strapi_transfer_token_permissions_token_lnk_fk ON public.strapi_transfer_token_permissions_token_lnk USING btree (transfer_token_permission_id);


--
-- Name: strapi_transfer_token_permissions_token_lnk_ifk; Type: INDEX; Schema: public; Owner: strapi
--

CREATE INDEX strapi_transfer_token_permissions_token_lnk_ifk ON public.strapi_transfer_token_permissions_token_lnk USING btree (transfer_token_id);


--
-- Name: strapi_transfer_token_permissions_token_lnk_oifk; Type: INDEX; Schema: public; Owner: strapi
--

CREATE INDEX strapi_transfer_token_permissions_token_lnk_oifk ON public.strapi_transfer_token_permissions_token_lnk USING btree (transfer_token_permission_ord);


--
-- Name: strapi_transfer_token_permissions_updated_by_id_fk; Type: INDEX; Schema: public; Owner: strapi
--

CREATE INDEX strapi_transfer_token_permissions_updated_by_id_fk ON public.strapi_transfer_token_permissions USING btree (updated_by_id);


--
-- Name: strapi_transfer_tokens_created_by_id_fk; Type: INDEX; Schema: public; Owner: strapi
--

CREATE INDEX strapi_transfer_tokens_created_by_id_fk ON public.strapi_transfer_tokens USING btree (created_by_id);


--
-- Name: strapi_transfer_tokens_documents_idx; Type: INDEX; Schema: public; Owner: strapi
--

CREATE INDEX strapi_transfer_tokens_documents_idx ON public.strapi_transfer_tokens USING btree (document_id, locale, published_at);


--
-- Name: strapi_transfer_tokens_updated_by_id_fk; Type: INDEX; Schema: public; Owner: strapi
--

CREATE INDEX strapi_transfer_tokens_updated_by_id_fk ON public.strapi_transfer_tokens USING btree (updated_by_id);


--
-- Name: strapi_workflows_created_by_id_fk; Type: INDEX; Schema: public; Owner: strapi
--

CREATE INDEX strapi_workflows_created_by_id_fk ON public.strapi_workflows USING btree (created_by_id);


--
-- Name: strapi_workflows_documents_idx; Type: INDEX; Schema: public; Owner: strapi
--

CREATE INDEX strapi_workflows_documents_idx ON public.strapi_workflows USING btree (document_id, locale, published_at);


--
-- Name: strapi_workflows_stage_required_to_publish_lnk_fk; Type: INDEX; Schema: public; Owner: strapi
--

CREATE INDEX strapi_workflows_stage_required_to_publish_lnk_fk ON public.strapi_workflows_stage_required_to_publish_lnk USING btree (workflow_id);


--
-- Name: strapi_workflows_stage_required_to_publish_lnk_ifk; Type: INDEX; Schema: public; Owner: strapi
--

CREATE INDEX strapi_workflows_stage_required_to_publish_lnk_ifk ON public.strapi_workflows_stage_required_to_publish_lnk USING btree (workflow_stage_id);


--
-- Name: strapi_workflows_stages_created_by_id_fk; Type: INDEX; Schema: public; Owner: strapi
--

CREATE INDEX strapi_workflows_stages_created_by_id_fk ON public.strapi_workflows_stages USING btree (created_by_id);


--
-- Name: strapi_workflows_stages_documents_idx; Type: INDEX; Schema: public; Owner: strapi
--

CREATE INDEX strapi_workflows_stages_documents_idx ON public.strapi_workflows_stages USING btree (document_id, locale, published_at);


--
-- Name: strapi_workflows_stages_permissions_lnk_fk; Type: INDEX; Schema: public; Owner: strapi
--

CREATE INDEX strapi_workflows_stages_permissions_lnk_fk ON public.strapi_workflows_stages_permissions_lnk USING btree (workflow_stage_id);


--
-- Name: strapi_workflows_stages_permissions_lnk_ifk; Type: INDEX; Schema: public; Owner: strapi
--

CREATE INDEX strapi_workflows_stages_permissions_lnk_ifk ON public.strapi_workflows_stages_permissions_lnk USING btree (permission_id);


--
-- Name: strapi_workflows_stages_permissions_lnk_ofk; Type: INDEX; Schema: public; Owner: strapi
--

CREATE INDEX strapi_workflows_stages_permissions_lnk_ofk ON public.strapi_workflows_stages_permissions_lnk USING btree (permission_ord);


--
-- Name: strapi_workflows_stages_updated_by_id_fk; Type: INDEX; Schema: public; Owner: strapi
--

CREATE INDEX strapi_workflows_stages_updated_by_id_fk ON public.strapi_workflows_stages USING btree (updated_by_id);


--
-- Name: strapi_workflows_stages_workflow_lnk_fk; Type: INDEX; Schema: public; Owner: strapi
--

CREATE INDEX strapi_workflows_stages_workflow_lnk_fk ON public.strapi_workflows_stages_workflow_lnk USING btree (workflow_stage_id);


--
-- Name: strapi_workflows_stages_workflow_lnk_ifk; Type: INDEX; Schema: public; Owner: strapi
--

CREATE INDEX strapi_workflows_stages_workflow_lnk_ifk ON public.strapi_workflows_stages_workflow_lnk USING btree (workflow_id);


--
-- Name: strapi_workflows_stages_workflow_lnk_oifk; Type: INDEX; Schema: public; Owner: strapi
--

CREATE INDEX strapi_workflows_stages_workflow_lnk_oifk ON public.strapi_workflows_stages_workflow_lnk USING btree (workflow_stage_ord);


--
-- Name: strapi_workflows_updated_by_id_fk; Type: INDEX; Schema: public; Owner: strapi
--

CREATE INDEX strapi_workflows_updated_by_id_fk ON public.strapi_workflows USING btree (updated_by_id);


--
-- Name: sujets_created_by_id_fk; Type: INDEX; Schema: public; Owner: strapi
--

CREATE INDEX sujets_created_by_id_fk ON public.sujets USING btree (created_by_id);


--
-- Name: sujets_documents_idx; Type: INDEX; Schema: public; Owner: strapi
--

CREATE INDEX sujets_documents_idx ON public.sujets USING btree (document_id, locale, published_at);


--
-- Name: sujets_updated_by_id_fk; Type: INDEX; Schema: public; Owner: strapi
--

CREATE INDEX sujets_updated_by_id_fk ON public.sujets USING btree (updated_by_id);


--
-- Name: the_wall_of_shames_component_type_idx; Type: INDEX; Schema: public; Owner: strapi
--

CREATE INDEX the_wall_of_shames_component_type_idx ON public.the_wall_of_shames_cmps USING btree (component_type);


--
-- Name: the_wall_of_shames_created_by_id_fk; Type: INDEX; Schema: public; Owner: strapi
--

CREATE INDEX the_wall_of_shames_created_by_id_fk ON public.the_wall_of_shames USING btree (created_by_id);


--
-- Name: the_wall_of_shames_documents_idx; Type: INDEX; Schema: public; Owner: strapi
--

CREATE INDEX the_wall_of_shames_documents_idx ON public.the_wall_of_shames USING btree (document_id, locale, published_at);


--
-- Name: the_wall_of_shames_entity_fk; Type: INDEX; Schema: public; Owner: strapi
--

CREATE INDEX the_wall_of_shames_entity_fk ON public.the_wall_of_shames_cmps USING btree (entity_id);


--
-- Name: the_wall_of_shames_field_idx; Type: INDEX; Schema: public; Owner: strapi
--

CREATE INDEX the_wall_of_shames_field_idx ON public.the_wall_of_shames_cmps USING btree (field);


--
-- Name: the_wall_of_shames_sujet_lnk_fk; Type: INDEX; Schema: public; Owner: strapi
--

CREATE INDEX the_wall_of_shames_sujet_lnk_fk ON public.the_wall_of_shames_sujet_lnk USING btree (the_wall_of_shame_id);


--
-- Name: the_wall_of_shames_sujet_lnk_ifk; Type: INDEX; Schema: public; Owner: strapi
--

CREATE INDEX the_wall_of_shames_sujet_lnk_ifk ON public.the_wall_of_shames_sujet_lnk USING btree (sujet_id);


--
-- Name: the_wall_of_shames_sujet_lnk_oifk; Type: INDEX; Schema: public; Owner: strapi
--

CREATE INDEX the_wall_of_shames_sujet_lnk_oifk ON public.the_wall_of_shames_sujet_lnk USING btree (the_wall_of_shame_ord);


--
-- Name: the_wall_of_shames_updated_by_id_fk; Type: INDEX; Schema: public; Owner: strapi
--

CREATE INDEX the_wall_of_shames_updated_by_id_fk ON public.the_wall_of_shames USING btree (updated_by_id);


--
-- Name: up_permissions_created_by_id_fk; Type: INDEX; Schema: public; Owner: strapi
--

CREATE INDEX up_permissions_created_by_id_fk ON public.up_permissions USING btree (created_by_id);


--
-- Name: up_permissions_documents_idx; Type: INDEX; Schema: public; Owner: strapi
--

CREATE INDEX up_permissions_documents_idx ON public.up_permissions USING btree (document_id, locale, published_at);


--
-- Name: up_permissions_role_lnk_fk; Type: INDEX; Schema: public; Owner: strapi
--

CREATE INDEX up_permissions_role_lnk_fk ON public.up_permissions_role_lnk USING btree (permission_id);


--
-- Name: up_permissions_role_lnk_ifk; Type: INDEX; Schema: public; Owner: strapi
--

CREATE INDEX up_permissions_role_lnk_ifk ON public.up_permissions_role_lnk USING btree (role_id);


--
-- Name: up_permissions_role_lnk_oifk; Type: INDEX; Schema: public; Owner: strapi
--

CREATE INDEX up_permissions_role_lnk_oifk ON public.up_permissions_role_lnk USING btree (permission_ord);


--
-- Name: up_permissions_updated_by_id_fk; Type: INDEX; Schema: public; Owner: strapi
--

CREATE INDEX up_permissions_updated_by_id_fk ON public.up_permissions USING btree (updated_by_id);


--
-- Name: up_roles_created_by_id_fk; Type: INDEX; Schema: public; Owner: strapi
--

CREATE INDEX up_roles_created_by_id_fk ON public.up_roles USING btree (created_by_id);


--
-- Name: up_roles_documents_idx; Type: INDEX; Schema: public; Owner: strapi
--

CREATE INDEX up_roles_documents_idx ON public.up_roles USING btree (document_id, locale, published_at);


--
-- Name: up_roles_updated_by_id_fk; Type: INDEX; Schema: public; Owner: strapi
--

CREATE INDEX up_roles_updated_by_id_fk ON public.up_roles USING btree (updated_by_id);


--
-- Name: up_users_created_by_id_fk; Type: INDEX; Schema: public; Owner: strapi
--

CREATE INDEX up_users_created_by_id_fk ON public.up_users USING btree (created_by_id);


--
-- Name: up_users_documents_idx; Type: INDEX; Schema: public; Owner: strapi
--

CREATE INDEX up_users_documents_idx ON public.up_users USING btree (document_id, locale, published_at);


--
-- Name: up_users_role_lnk_fk; Type: INDEX; Schema: public; Owner: strapi
--

CREATE INDEX up_users_role_lnk_fk ON public.up_users_role_lnk USING btree (user_id);


--
-- Name: up_users_role_lnk_ifk; Type: INDEX; Schema: public; Owner: strapi
--

CREATE INDEX up_users_role_lnk_ifk ON public.up_users_role_lnk USING btree (role_id);


--
-- Name: up_users_role_lnk_oifk; Type: INDEX; Schema: public; Owner: strapi
--

CREATE INDEX up_users_role_lnk_oifk ON public.up_users_role_lnk USING btree (user_ord);


--
-- Name: up_users_updated_by_id_fk; Type: INDEX; Schema: public; Owner: strapi
--

CREATE INDEX up_users_updated_by_id_fk ON public.up_users USING btree (updated_by_id);


--
-- Name: upload_files_created_at_index; Type: INDEX; Schema: public; Owner: strapi
--

CREATE INDEX upload_files_created_at_index ON public.files USING btree (created_at);


--
-- Name: upload_files_ext_index; Type: INDEX; Schema: public; Owner: strapi
--

CREATE INDEX upload_files_ext_index ON public.files USING btree (ext);


--
-- Name: upload_files_folder_path_index; Type: INDEX; Schema: public; Owner: strapi
--

CREATE INDEX upload_files_folder_path_index ON public.files USING btree (folder_path);


--
-- Name: upload_files_name_index; Type: INDEX; Schema: public; Owner: strapi
--

CREATE INDEX upload_files_name_index ON public.files USING btree (name);


--
-- Name: upload_files_size_index; Type: INDEX; Schema: public; Owner: strapi
--

CREATE INDEX upload_files_size_index ON public.files USING btree (size);


--
-- Name: upload_files_updated_at_index; Type: INDEX; Schema: public; Owner: strapi
--

CREATE INDEX upload_files_updated_at_index ON public.files USING btree (updated_at);


--
-- Name: upload_folders_created_by_id_fk; Type: INDEX; Schema: public; Owner: strapi
--

CREATE INDEX upload_folders_created_by_id_fk ON public.upload_folders USING btree (created_by_id);


--
-- Name: upload_folders_documents_idx; Type: INDEX; Schema: public; Owner: strapi
--

CREATE INDEX upload_folders_documents_idx ON public.upload_folders USING btree (document_id, locale, published_at);


--
-- Name: upload_folders_parent_lnk_fk; Type: INDEX; Schema: public; Owner: strapi
--

CREATE INDEX upload_folders_parent_lnk_fk ON public.upload_folders_parent_lnk USING btree (folder_id);


--
-- Name: upload_folders_parent_lnk_ifk; Type: INDEX; Schema: public; Owner: strapi
--

CREATE INDEX upload_folders_parent_lnk_ifk ON public.upload_folders_parent_lnk USING btree (inv_folder_id);


--
-- Name: upload_folders_parent_lnk_oifk; Type: INDEX; Schema: public; Owner: strapi
--

CREATE INDEX upload_folders_parent_lnk_oifk ON public.upload_folders_parent_lnk USING btree (folder_ord);


--
-- Name: upload_folders_updated_by_id_fk; Type: INDEX; Schema: public; Owner: strapi
--

CREATE INDEX upload_folders_updated_by_id_fk ON public.upload_folders USING btree (updated_by_id);


--
-- Name: admin_permissions admin_permissions_created_by_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: strapi
--

ALTER TABLE ONLY public.admin_permissions
    ADD CONSTRAINT admin_permissions_created_by_id_fk FOREIGN KEY (created_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;


--
-- Name: admin_permissions_role_lnk admin_permissions_role_lnk_fk; Type: FK CONSTRAINT; Schema: public; Owner: strapi
--

ALTER TABLE ONLY public.admin_permissions_role_lnk
    ADD CONSTRAINT admin_permissions_role_lnk_fk FOREIGN KEY (permission_id) REFERENCES public.admin_permissions(id) ON DELETE CASCADE;


--
-- Name: admin_permissions_role_lnk admin_permissions_role_lnk_ifk; Type: FK CONSTRAINT; Schema: public; Owner: strapi
--

ALTER TABLE ONLY public.admin_permissions_role_lnk
    ADD CONSTRAINT admin_permissions_role_lnk_ifk FOREIGN KEY (role_id) REFERENCES public.admin_roles(id) ON DELETE CASCADE;


--
-- Name: admin_permissions admin_permissions_updated_by_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: strapi
--

ALTER TABLE ONLY public.admin_permissions
    ADD CONSTRAINT admin_permissions_updated_by_id_fk FOREIGN KEY (updated_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;


--
-- Name: admin_roles admin_roles_created_by_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: strapi
--

ALTER TABLE ONLY public.admin_roles
    ADD CONSTRAINT admin_roles_created_by_id_fk FOREIGN KEY (created_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;


--
-- Name: admin_roles admin_roles_updated_by_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: strapi
--

ALTER TABLE ONLY public.admin_roles
    ADD CONSTRAINT admin_roles_updated_by_id_fk FOREIGN KEY (updated_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;


--
-- Name: admin_users admin_users_created_by_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: strapi
--

ALTER TABLE ONLY public.admin_users
    ADD CONSTRAINT admin_users_created_by_id_fk FOREIGN KEY (created_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;


--
-- Name: admin_users_roles_lnk admin_users_roles_lnk_fk; Type: FK CONSTRAINT; Schema: public; Owner: strapi
--

ALTER TABLE ONLY public.admin_users_roles_lnk
    ADD CONSTRAINT admin_users_roles_lnk_fk FOREIGN KEY (user_id) REFERENCES public.admin_users(id) ON DELETE CASCADE;


--
-- Name: admin_users_roles_lnk admin_users_roles_lnk_ifk; Type: FK CONSTRAINT; Schema: public; Owner: strapi
--

ALTER TABLE ONLY public.admin_users_roles_lnk
    ADD CONSTRAINT admin_users_roles_lnk_ifk FOREIGN KEY (role_id) REFERENCES public.admin_roles(id) ON DELETE CASCADE;


--
-- Name: admin_users admin_users_updated_by_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: strapi
--

ALTER TABLE ONLY public.admin_users
    ADD CONSTRAINT admin_users_updated_by_id_fk FOREIGN KEY (updated_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;


--
-- Name: files files_created_by_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: strapi
--

ALTER TABLE ONLY public.files
    ADD CONSTRAINT files_created_by_id_fk FOREIGN KEY (created_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;


--
-- Name: files_folder_lnk files_folder_lnk_fk; Type: FK CONSTRAINT; Schema: public; Owner: strapi
--

ALTER TABLE ONLY public.files_folder_lnk
    ADD CONSTRAINT files_folder_lnk_fk FOREIGN KEY (file_id) REFERENCES public.files(id) ON DELETE CASCADE;


--
-- Name: files_folder_lnk files_folder_lnk_ifk; Type: FK CONSTRAINT; Schema: public; Owner: strapi
--

ALTER TABLE ONLY public.files_folder_lnk
    ADD CONSTRAINT files_folder_lnk_ifk FOREIGN KEY (folder_id) REFERENCES public.upload_folders(id) ON DELETE CASCADE;


--
-- Name: files_related_mph files_related_mph_fk; Type: FK CONSTRAINT; Schema: public; Owner: strapi
--

ALTER TABLE ONLY public.files_related_mph
    ADD CONSTRAINT files_related_mph_fk FOREIGN KEY (file_id) REFERENCES public.files(id) ON DELETE CASCADE;


--
-- Name: files files_updated_by_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: strapi
--

ALTER TABLE ONLY public.files
    ADD CONSTRAINT files_updated_by_id_fk FOREIGN KEY (updated_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;


--
-- Name: i18n_locale i18n_locale_created_by_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: strapi
--

ALTER TABLE ONLY public.i18n_locale
    ADD CONSTRAINT i18n_locale_created_by_id_fk FOREIGN KEY (created_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;


--
-- Name: i18n_locale i18n_locale_updated_by_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: strapi
--

ALTER TABLE ONLY public.i18n_locale
    ADD CONSTRAINT i18n_locale_updated_by_id_fk FOREIGN KEY (updated_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;


--
-- Name: strapi_api_token_permissions strapi_api_token_permissions_created_by_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: strapi
--

ALTER TABLE ONLY public.strapi_api_token_permissions
    ADD CONSTRAINT strapi_api_token_permissions_created_by_id_fk FOREIGN KEY (created_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;


--
-- Name: strapi_api_token_permissions_token_lnk strapi_api_token_permissions_token_lnk_fk; Type: FK CONSTRAINT; Schema: public; Owner: strapi
--

ALTER TABLE ONLY public.strapi_api_token_permissions_token_lnk
    ADD CONSTRAINT strapi_api_token_permissions_token_lnk_fk FOREIGN KEY (api_token_permission_id) REFERENCES public.strapi_api_token_permissions(id) ON DELETE CASCADE;


--
-- Name: strapi_api_token_permissions_token_lnk strapi_api_token_permissions_token_lnk_ifk; Type: FK CONSTRAINT; Schema: public; Owner: strapi
--

ALTER TABLE ONLY public.strapi_api_token_permissions_token_lnk
    ADD CONSTRAINT strapi_api_token_permissions_token_lnk_ifk FOREIGN KEY (api_token_id) REFERENCES public.strapi_api_tokens(id) ON DELETE CASCADE;


--
-- Name: strapi_api_token_permissions strapi_api_token_permissions_updated_by_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: strapi
--

ALTER TABLE ONLY public.strapi_api_token_permissions
    ADD CONSTRAINT strapi_api_token_permissions_updated_by_id_fk FOREIGN KEY (updated_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;


--
-- Name: strapi_api_tokens strapi_api_tokens_created_by_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: strapi
--

ALTER TABLE ONLY public.strapi_api_tokens
    ADD CONSTRAINT strapi_api_tokens_created_by_id_fk FOREIGN KEY (created_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;


--
-- Name: strapi_api_tokens strapi_api_tokens_updated_by_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: strapi
--

ALTER TABLE ONLY public.strapi_api_tokens
    ADD CONSTRAINT strapi_api_tokens_updated_by_id_fk FOREIGN KEY (updated_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;


--
-- Name: strapi_history_versions strapi_history_versions_created_by_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: strapi
--

ALTER TABLE ONLY public.strapi_history_versions
    ADD CONSTRAINT strapi_history_versions_created_by_id_fk FOREIGN KEY (created_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;


--
-- Name: strapi_release_actions strapi_release_actions_created_by_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: strapi
--

ALTER TABLE ONLY public.strapi_release_actions
    ADD CONSTRAINT strapi_release_actions_created_by_id_fk FOREIGN KEY (created_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;


--
-- Name: strapi_release_actions_release_lnk strapi_release_actions_release_lnk_fk; Type: FK CONSTRAINT; Schema: public; Owner: strapi
--

ALTER TABLE ONLY public.strapi_release_actions_release_lnk
    ADD CONSTRAINT strapi_release_actions_release_lnk_fk FOREIGN KEY (release_action_id) REFERENCES public.strapi_release_actions(id) ON DELETE CASCADE;


--
-- Name: strapi_release_actions_release_lnk strapi_release_actions_release_lnk_ifk; Type: FK CONSTRAINT; Schema: public; Owner: strapi
--

ALTER TABLE ONLY public.strapi_release_actions_release_lnk
    ADD CONSTRAINT strapi_release_actions_release_lnk_ifk FOREIGN KEY (release_id) REFERENCES public.strapi_releases(id) ON DELETE CASCADE;


--
-- Name: strapi_release_actions strapi_release_actions_updated_by_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: strapi
--

ALTER TABLE ONLY public.strapi_release_actions
    ADD CONSTRAINT strapi_release_actions_updated_by_id_fk FOREIGN KEY (updated_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;


--
-- Name: strapi_releases strapi_releases_created_by_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: strapi
--

ALTER TABLE ONLY public.strapi_releases
    ADD CONSTRAINT strapi_releases_created_by_id_fk FOREIGN KEY (created_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;


--
-- Name: strapi_releases strapi_releases_updated_by_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: strapi
--

ALTER TABLE ONLY public.strapi_releases
    ADD CONSTRAINT strapi_releases_updated_by_id_fk FOREIGN KEY (updated_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;


--
-- Name: strapi_sessions strapi_sessions_created_by_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: strapi
--

ALTER TABLE ONLY public.strapi_sessions
    ADD CONSTRAINT strapi_sessions_created_by_id_fk FOREIGN KEY (created_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;


--
-- Name: strapi_sessions strapi_sessions_updated_by_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: strapi
--

ALTER TABLE ONLY public.strapi_sessions
    ADD CONSTRAINT strapi_sessions_updated_by_id_fk FOREIGN KEY (updated_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;


--
-- Name: strapi_transfer_token_permissions strapi_transfer_token_permissions_created_by_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: strapi
--

ALTER TABLE ONLY public.strapi_transfer_token_permissions
    ADD CONSTRAINT strapi_transfer_token_permissions_created_by_id_fk FOREIGN KEY (created_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;


--
-- Name: strapi_transfer_token_permissions_token_lnk strapi_transfer_token_permissions_token_lnk_fk; Type: FK CONSTRAINT; Schema: public; Owner: strapi
--

ALTER TABLE ONLY public.strapi_transfer_token_permissions_token_lnk
    ADD CONSTRAINT strapi_transfer_token_permissions_token_lnk_fk FOREIGN KEY (transfer_token_permission_id) REFERENCES public.strapi_transfer_token_permissions(id) ON DELETE CASCADE;


--
-- Name: strapi_transfer_token_permissions_token_lnk strapi_transfer_token_permissions_token_lnk_ifk; Type: FK CONSTRAINT; Schema: public; Owner: strapi
--

ALTER TABLE ONLY public.strapi_transfer_token_permissions_token_lnk
    ADD CONSTRAINT strapi_transfer_token_permissions_token_lnk_ifk FOREIGN KEY (transfer_token_id) REFERENCES public.strapi_transfer_tokens(id) ON DELETE CASCADE;


--
-- Name: strapi_transfer_token_permissions strapi_transfer_token_permissions_updated_by_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: strapi
--

ALTER TABLE ONLY public.strapi_transfer_token_permissions
    ADD CONSTRAINT strapi_transfer_token_permissions_updated_by_id_fk FOREIGN KEY (updated_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;


--
-- Name: strapi_transfer_tokens strapi_transfer_tokens_created_by_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: strapi
--

ALTER TABLE ONLY public.strapi_transfer_tokens
    ADD CONSTRAINT strapi_transfer_tokens_created_by_id_fk FOREIGN KEY (created_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;


--
-- Name: strapi_transfer_tokens strapi_transfer_tokens_updated_by_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: strapi
--

ALTER TABLE ONLY public.strapi_transfer_tokens
    ADD CONSTRAINT strapi_transfer_tokens_updated_by_id_fk FOREIGN KEY (updated_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;


--
-- Name: strapi_workflows strapi_workflows_created_by_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: strapi
--

ALTER TABLE ONLY public.strapi_workflows
    ADD CONSTRAINT strapi_workflows_created_by_id_fk FOREIGN KEY (created_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;


--
-- Name: strapi_workflows_stage_required_to_publish_lnk strapi_workflows_stage_required_to_publish_lnk_fk; Type: FK CONSTRAINT; Schema: public; Owner: strapi
--

ALTER TABLE ONLY public.strapi_workflows_stage_required_to_publish_lnk
    ADD CONSTRAINT strapi_workflows_stage_required_to_publish_lnk_fk FOREIGN KEY (workflow_id) REFERENCES public.strapi_workflows(id) ON DELETE CASCADE;


--
-- Name: strapi_workflows_stage_required_to_publish_lnk strapi_workflows_stage_required_to_publish_lnk_ifk; Type: FK CONSTRAINT; Schema: public; Owner: strapi
--

ALTER TABLE ONLY public.strapi_workflows_stage_required_to_publish_lnk
    ADD CONSTRAINT strapi_workflows_stage_required_to_publish_lnk_ifk FOREIGN KEY (workflow_stage_id) REFERENCES public.strapi_workflows_stages(id) ON DELETE CASCADE;


--
-- Name: strapi_workflows_stages strapi_workflows_stages_created_by_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: strapi
--

ALTER TABLE ONLY public.strapi_workflows_stages
    ADD CONSTRAINT strapi_workflows_stages_created_by_id_fk FOREIGN KEY (created_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;


--
-- Name: strapi_workflows_stages_permissions_lnk strapi_workflows_stages_permissions_lnk_fk; Type: FK CONSTRAINT; Schema: public; Owner: strapi
--

ALTER TABLE ONLY public.strapi_workflows_stages_permissions_lnk
    ADD CONSTRAINT strapi_workflows_stages_permissions_lnk_fk FOREIGN KEY (workflow_stage_id) REFERENCES public.strapi_workflows_stages(id) ON DELETE CASCADE;


--
-- Name: strapi_workflows_stages_permissions_lnk strapi_workflows_stages_permissions_lnk_ifk; Type: FK CONSTRAINT; Schema: public; Owner: strapi
--

ALTER TABLE ONLY public.strapi_workflows_stages_permissions_lnk
    ADD CONSTRAINT strapi_workflows_stages_permissions_lnk_ifk FOREIGN KEY (permission_id) REFERENCES public.admin_permissions(id) ON DELETE CASCADE;


--
-- Name: strapi_workflows_stages strapi_workflows_stages_updated_by_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: strapi
--

ALTER TABLE ONLY public.strapi_workflows_stages
    ADD CONSTRAINT strapi_workflows_stages_updated_by_id_fk FOREIGN KEY (updated_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;


--
-- Name: strapi_workflows_stages_workflow_lnk strapi_workflows_stages_workflow_lnk_fk; Type: FK CONSTRAINT; Schema: public; Owner: strapi
--

ALTER TABLE ONLY public.strapi_workflows_stages_workflow_lnk
    ADD CONSTRAINT strapi_workflows_stages_workflow_lnk_fk FOREIGN KEY (workflow_stage_id) REFERENCES public.strapi_workflows_stages(id) ON DELETE CASCADE;


--
-- Name: strapi_workflows_stages_workflow_lnk strapi_workflows_stages_workflow_lnk_ifk; Type: FK CONSTRAINT; Schema: public; Owner: strapi
--

ALTER TABLE ONLY public.strapi_workflows_stages_workflow_lnk
    ADD CONSTRAINT strapi_workflows_stages_workflow_lnk_ifk FOREIGN KEY (workflow_id) REFERENCES public.strapi_workflows(id) ON DELETE CASCADE;


--
-- Name: strapi_workflows strapi_workflows_updated_by_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: strapi
--

ALTER TABLE ONLY public.strapi_workflows
    ADD CONSTRAINT strapi_workflows_updated_by_id_fk FOREIGN KEY (updated_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;


--
-- Name: sujets sujets_created_by_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: strapi
--

ALTER TABLE ONLY public.sujets
    ADD CONSTRAINT sujets_created_by_id_fk FOREIGN KEY (created_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;


--
-- Name: sujets sujets_updated_by_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: strapi
--

ALTER TABLE ONLY public.sujets
    ADD CONSTRAINT sujets_updated_by_id_fk FOREIGN KEY (updated_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;


--
-- Name: the_wall_of_shames the_wall_of_shames_created_by_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: strapi
--

ALTER TABLE ONLY public.the_wall_of_shames
    ADD CONSTRAINT the_wall_of_shames_created_by_id_fk FOREIGN KEY (created_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;


--
-- Name: the_wall_of_shames_cmps the_wall_of_shames_entity_fk; Type: FK CONSTRAINT; Schema: public; Owner: strapi
--

ALTER TABLE ONLY public.the_wall_of_shames_cmps
    ADD CONSTRAINT the_wall_of_shames_entity_fk FOREIGN KEY (entity_id) REFERENCES public.the_wall_of_shames(id) ON DELETE CASCADE;


--
-- Name: the_wall_of_shames_sujet_lnk the_wall_of_shames_sujet_lnk_fk; Type: FK CONSTRAINT; Schema: public; Owner: strapi
--

ALTER TABLE ONLY public.the_wall_of_shames_sujet_lnk
    ADD CONSTRAINT the_wall_of_shames_sujet_lnk_fk FOREIGN KEY (the_wall_of_shame_id) REFERENCES public.the_wall_of_shames(id) ON DELETE CASCADE;


--
-- Name: the_wall_of_shames_sujet_lnk the_wall_of_shames_sujet_lnk_ifk; Type: FK CONSTRAINT; Schema: public; Owner: strapi
--

ALTER TABLE ONLY public.the_wall_of_shames_sujet_lnk
    ADD CONSTRAINT the_wall_of_shames_sujet_lnk_ifk FOREIGN KEY (sujet_id) REFERENCES public.sujets(id) ON DELETE CASCADE;


--
-- Name: the_wall_of_shames the_wall_of_shames_updated_by_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: strapi
--

ALTER TABLE ONLY public.the_wall_of_shames
    ADD CONSTRAINT the_wall_of_shames_updated_by_id_fk FOREIGN KEY (updated_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;


--
-- Name: up_permissions up_permissions_created_by_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: strapi
--

ALTER TABLE ONLY public.up_permissions
    ADD CONSTRAINT up_permissions_created_by_id_fk FOREIGN KEY (created_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;


--
-- Name: up_permissions_role_lnk up_permissions_role_lnk_fk; Type: FK CONSTRAINT; Schema: public; Owner: strapi
--

ALTER TABLE ONLY public.up_permissions_role_lnk
    ADD CONSTRAINT up_permissions_role_lnk_fk FOREIGN KEY (permission_id) REFERENCES public.up_permissions(id) ON DELETE CASCADE;


--
-- Name: up_permissions_role_lnk up_permissions_role_lnk_ifk; Type: FK CONSTRAINT; Schema: public; Owner: strapi
--

ALTER TABLE ONLY public.up_permissions_role_lnk
    ADD CONSTRAINT up_permissions_role_lnk_ifk FOREIGN KEY (role_id) REFERENCES public.up_roles(id) ON DELETE CASCADE;


--
-- Name: up_permissions up_permissions_updated_by_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: strapi
--

ALTER TABLE ONLY public.up_permissions
    ADD CONSTRAINT up_permissions_updated_by_id_fk FOREIGN KEY (updated_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;


--
-- Name: up_roles up_roles_created_by_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: strapi
--

ALTER TABLE ONLY public.up_roles
    ADD CONSTRAINT up_roles_created_by_id_fk FOREIGN KEY (created_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;


--
-- Name: up_roles up_roles_updated_by_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: strapi
--

ALTER TABLE ONLY public.up_roles
    ADD CONSTRAINT up_roles_updated_by_id_fk FOREIGN KEY (updated_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;


--
-- Name: up_users up_users_created_by_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: strapi
--

ALTER TABLE ONLY public.up_users
    ADD CONSTRAINT up_users_created_by_id_fk FOREIGN KEY (created_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;


--
-- Name: up_users_role_lnk up_users_role_lnk_fk; Type: FK CONSTRAINT; Schema: public; Owner: strapi
--

ALTER TABLE ONLY public.up_users_role_lnk
    ADD CONSTRAINT up_users_role_lnk_fk FOREIGN KEY (user_id) REFERENCES public.up_users(id) ON DELETE CASCADE;


--
-- Name: up_users_role_lnk up_users_role_lnk_ifk; Type: FK CONSTRAINT; Schema: public; Owner: strapi
--

ALTER TABLE ONLY public.up_users_role_lnk
    ADD CONSTRAINT up_users_role_lnk_ifk FOREIGN KEY (role_id) REFERENCES public.up_roles(id) ON DELETE CASCADE;


--
-- Name: up_users up_users_updated_by_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: strapi
--

ALTER TABLE ONLY public.up_users
    ADD CONSTRAINT up_users_updated_by_id_fk FOREIGN KEY (updated_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;


--
-- Name: upload_folders upload_folders_created_by_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: strapi
--

ALTER TABLE ONLY public.upload_folders
    ADD CONSTRAINT upload_folders_created_by_id_fk FOREIGN KEY (created_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;


--
-- Name: upload_folders_parent_lnk upload_folders_parent_lnk_fk; Type: FK CONSTRAINT; Schema: public; Owner: strapi
--

ALTER TABLE ONLY public.upload_folders_parent_lnk
    ADD CONSTRAINT upload_folders_parent_lnk_fk FOREIGN KEY (folder_id) REFERENCES public.upload_folders(id) ON DELETE CASCADE;


--
-- Name: upload_folders_parent_lnk upload_folders_parent_lnk_ifk; Type: FK CONSTRAINT; Schema: public; Owner: strapi
--

ALTER TABLE ONLY public.upload_folders_parent_lnk
    ADD CONSTRAINT upload_folders_parent_lnk_ifk FOREIGN KEY (inv_folder_id) REFERENCES public.upload_folders(id) ON DELETE CASCADE;


--
-- Name: upload_folders upload_folders_updated_by_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: strapi
--

ALTER TABLE ONLY public.upload_folders
    ADD CONSTRAINT upload_folders_updated_by_id_fk FOREIGN KEY (updated_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;


--
-- PostgreSQL database dump complete
--

\unrestrict u2V25gaKq2IgCtBhkX8cO4X4T5NW0fhcFoA1UhZuieX3mb80STrUPFBHvJJ0g26

