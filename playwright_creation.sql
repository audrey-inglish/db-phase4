-- DROP SCHEMA playwright;

CREATE SCHEMA playwright;

-- DROP SEQUENCE playwright.actor_id_seq;

CREATE SEQUENCE playwright.actor_id_seq
	INCREMENT BY 1
	MINVALUE 1
	MAXVALUE 2147483647
	START 1
	CACHE 1
	NO CYCLE;
-- DROP SEQUENCE playwright.actor_normalneed_id_seq;

CREATE SEQUENCE playwright.actor_normalneed_id_seq
	INCREMENT BY 1
	MINVALUE 1
	MAXVALUE 2147483647
	START 1
	CACHE 1
	NO CYCLE;
-- DROP SEQUENCE playwright.customer_id_seq;

CREATE SEQUENCE playwright.customer_id_seq
	INCREMENT BY 1
	MINVALUE 1
	MAXVALUE 2147483647
	START 1
	CACHE 1
	NO CYCLE;
-- DROP SEQUENCE playwright.paired_cert_id_seq;

CREATE SEQUENCE playwright.paired_cert_id_seq
	INCREMENT BY 1
	MINVALUE 1
	MAXVALUE 2147483647
	START 1
	CACHE 1
	NO CYCLE;
-- DROP SEQUENCE playwright.play_role_id_seq;

CREATE SEQUENCE playwright.play_role_id_seq
	INCREMENT BY 1
	MINVALUE 1
	MAXVALUE 2147483647
	START 1
	CACHE 1
	NO CYCLE;
-- DROP SEQUENCE playwright.role_certification_id_seq;

CREATE SEQUENCE playwright.role_certification_id_seq
	INCREMENT BY 1
	MINVALUE 1
	MAXVALUE 2147483647
	START 1
	CACHE 1
	NO CYCLE;
-- DROP SEQUENCE playwright.show_schedule_id_seq;

CREATE SEQUENCE playwright.show_schedule_id_seq
	INCREMENT BY 1
	MINVALUE 1
	MAXVALUE 2147483647
	START 1
	CACHE 1
	NO CYCLE;
-- DROP SEQUENCE playwright.showtime_id_seq;

CREATE SEQUENCE playwright.showtime_id_seq
	INCREMENT BY 1
	MINVALUE 1
	MAXVALUE 2147483647
	START 1
	CACHE 1
	NO CYCLE;
-- DROP SEQUENCE playwright.stage_id_seq;

CREATE SEQUENCE playwright.stage_id_seq
	INCREMENT BY 1
	MINVALUE 1
	MAXVALUE 2147483647
	START 1
	CACHE 1
	NO CYCLE;
-- DROP SEQUENCE playwright.ticket_id_seq;

CREATE SEQUENCE playwright.ticket_id_seq
	INCREMENT BY 1
	MINVALUE 1
	MAXVALUE 2147483647
	START 1
	CACHE 1
	NO CYCLE;-- playwright.actor definition

-- Drop table

-- DROP TABLE playwright.actor;

CREATE TABLE playwright.actor (
	id int4 GENERATED ALWAYS AS IDENTITY( INCREMENT BY 1 MINVALUE 1 MAXVALUE 2147483647 START 1 CACHE 1 NO CYCLE) NOT NULL,
	actor_name varchar(255) NOT NULL,
	start_date date NOT NULL,
	end_date date NULL,
	CONSTRAINT actor_pkey PRIMARY KEY (id)
);

-- Table Triggers

create trigger trigger_remove_actor_after_enddate after
update
    of end_date on
    playwright.actor for each row execute function playwright.remove_actor_from_schedule();


-- playwright.customer definition

-- Drop table

-- DROP TABLE playwright.customer;

CREATE TABLE playwright.customer (
	id int4 GENERATED ALWAYS AS IDENTITY( INCREMENT BY 1 MINVALUE 1 MAXVALUE 2147483647 START 1 CACHE 1 NO CYCLE) NOT NULL,
	customer_name varchar(60) NOT NULL,
	email varchar(70) NOT NULL,
	CONSTRAINT customer_pkey PRIMARY KEY (id)
);


-- playwright.dayofweek definition

-- Drop table

-- DROP TABLE playwright.dayofweek;

CREATE TABLE playwright.dayofweek (
	id int4 NOT NULL,
	day_name varchar(25) NOT NULL,
	CONSTRAINT dayofweek_pkey PRIMARY KEY (id)
);


-- playwright.play_role definition

-- Drop table

-- DROP TABLE playwright.play_role;

CREATE TABLE playwright.play_role (
	id int4 GENERATED ALWAYS AS IDENTITY( INCREMENT BY 1 MINVALUE 1 MAXVALUE 2147483647 START 1 CACHE 1 NO CYCLE) NOT NULL,
	role_name varchar(255) NOT NULL,
	CONSTRAINT play_role_pkey PRIMARY KEY (id)
);


-- playwright.showtime definition

-- Drop table

-- DROP TABLE playwright.showtime;

CREATE TABLE playwright.showtime (
	id int4 GENERATED ALWAYS AS IDENTITY( INCREMENT BY 1 MINVALUE 1 MAXVALUE 2147483647 START 1 CACHE 1 NO CYCLE) NOT NULL,
	start_time time NOT NULL,
	end_time time NOT NULL,
	CONSTRAINT showtime_pkey PRIMARY KEY (id)
);


-- playwright.stage definition

-- Drop table

-- DROP TABLE playwright.stage;

CREATE TABLE playwright.stage (
	id int4 GENERATED ALWAYS AS IDENTITY( INCREMENT BY 1 MINVALUE 1 MAXVALUE 2147483647 START 1 CACHE 1 NO CYCLE) NOT NULL,
	stage_name varchar(255) NOT NULL,
	CONSTRAINT stage_pkey PRIMARY KEY (id)
);


-- playwright.role_certification definition

-- Drop table

-- DROP TABLE playwright.role_certification;

CREATE TABLE playwright.role_certification (
	id int4 GENERATED ALWAYS AS IDENTITY( INCREMENT BY 1 MINVALUE 1 MAXVALUE 2147483647 START 1 CACHE 1 NO CYCLE) NOT NULL,
	actor_id int4 NOT NULL,
	role_id int4 NOT NULL,
	certification_date date NOT NULL,
	expiration_date date NULL,
	CONSTRAINT role_certification_pkey PRIMARY KEY (id),
	CONSTRAINT role_certification_actor_id_fkey FOREIGN KEY (actor_id) REFERENCES playwright.actor(id),
	CONSTRAINT role_certification_role_id_fkey FOREIGN KEY (role_id) REFERENCES playwright.play_role(id)
);


-- playwright.ticket definition

-- Drop table

-- DROP TABLE playwright.ticket;

CREATE TABLE playwright.ticket (
	id int4 GENERATED ALWAYS AS IDENTITY( INCREMENT BY 1 MINVALUE 1 MAXVALUE 2147483647 START 1 CACHE 1 NO CYCLE) NOT NULL,
	showtime_id int4 NOT NULL,
	show_date date NOT NULL,
	date_purchased date NOT NULL,
	customer_id int4 NOT NULL,
	CONSTRAINT ticket_pkey PRIMARY KEY (id),
	CONSTRAINT ticket_customer_id_fkey FOREIGN KEY (customer_id) REFERENCES playwright.customer(id),
	CONSTRAINT ticket_showtime_id_fkey FOREIGN KEY (showtime_id) REFERENCES playwright.showtime(id)
);


-- playwright.paired_cert definition

-- Drop table

-- DROP TABLE playwright.paired_cert;

CREATE TABLE playwright.paired_cert (
	id int4 GENERATED BY DEFAULT AS IDENTITY( INCREMENT BY 1 MINVALUE 1 MAXVALUE 2147483647 START 1 CACHE 1 NO CYCLE) NOT NULL,
	role_3_cert_id int4 NOT NULL,
	role_4_cert_id int4 NOT NULL,
	CONSTRAINT paired_cert_pkey PRIMARY KEY (id),
	CONSTRAINT paired_cert_role_3_cert_id_fkey FOREIGN KEY (role_3_cert_id) REFERENCES playwright.role_certification(id),
	CONSTRAINT paired_cert_role_4_cert_id_fkey FOREIGN KEY (role_4_cert_id) REFERENCES playwright.role_certification(id)
);


-- playwright.show_schedule definition

-- Drop table

-- DROP TABLE playwright.show_schedule;

CREATE TABLE playwright.show_schedule (
	id int4 GENERATED ALWAYS AS IDENTITY( INCREMENT BY 1 MINVALUE 1 MAXVALUE 2147483647 START 1 CACHE 1 NO CYCLE) NOT NULL,
	role_cert_id int4 NULL,
	show_date date NOT NULL,
	stage_id int4 NOT NULL,
	showtime_id int4 NOT NULL,
	actor_approved_date date NULL,
	pair_cert_id int4 NULL,
	CONSTRAINT show_schedule_pkey PRIMARY KEY (id),
	CONSTRAINT show_schedule_pair_cert_id_fkey FOREIGN KEY (pair_cert_id) REFERENCES playwright.paired_cert(id),
	CONSTRAINT show_schedule_role_cert_id_fkey FOREIGN KEY (role_cert_id) REFERENCES playwright.role_certification(id),
	CONSTRAINT show_schedule_showtime_id_fkey FOREIGN KEY (showtime_id) REFERENCES playwright.showtime(id),
	CONSTRAINT show_schedule_stage_id_fkey FOREIGN KEY (stage_id) REFERENCES playwright.stage(id)
);

-- Table Triggers

create trigger trigger_approve_all_shifts after
update
    of actor_approved_date on
    playwright.show_schedule for each row execute function playwright.approve_full_day_shifts();


-- playwright.actor_normalneed definition

-- Drop table

-- DROP TABLE playwright.actor_normalneed;

CREATE TABLE playwright.actor_normalneed (
	id int4 GENERATED ALWAYS AS IDENTITY( INCREMENT BY 1 MINVALUE 1 MAXVALUE 2147483647 START 1 CACHE 1 NO CYCLE) NOT NULL,
	role_cert_id int4 NULL,
	dayofweek_id int4 NOT NULL,
	preferred_showtime_id int4 NOT NULL,
	pair_cert_id int4 NULL,
	CONSTRAINT actor_normalneed_pkey PRIMARY KEY (id),
	CONSTRAINT actor_normalneed_dayofweek_id_fkey FOREIGN KEY (dayofweek_id) REFERENCES playwright.dayofweek(id),
	CONSTRAINT actor_normalneed_pair_cert_id_fkey FOREIGN KEY (pair_cert_id) REFERENCES playwright.paired_cert(id),
	CONSTRAINT actor_normalneed_preferred_showtime_id_fkey FOREIGN KEY (preferred_showtime_id) REFERENCES playwright.showtime(id),
	CONSTRAINT actor_normalneed_role_cert_id_fkey FOREIGN KEY (role_cert_id) REFERENCES playwright.role_certification(id)
);