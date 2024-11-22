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


-- playwright.current_unfilled_schedule source

CREATE OR REPLACE VIEW playwright.current_unfilled_schedule
AS SELECT ss.show_date,
    rc.actor_id,
    rc.role_id,
    s.start_time
   FROM playwright.show_schedule ss
     JOIN playwright.showtime s ON ss.showtime_id = s.id
     LEFT JOIN playwright.role_certification rc ON ss.role_cert_id = rc.id
  WHERE (ss.actor_approved_date IS NULL OR ss.role_cert_id IS NULL) AND ss.show_date >= CURRENT_DATE AND ss.show_date <= (CURRENT_DATE + '14 days'::interval);


-- playwright.ticket_stats_alltime source

CREATE OR REPLACE VIEW playwright.ticket_stats_alltime
AS SELECT avg(showtime_id) AS popular_showing,
    avg(show_date - date_purchased) AS avg_days_bought_before_show,
    count(*) AS tickets_bought_day,
    show_date
   FROM playwright.ticket t
  GROUP BY show_date;



-- DROP FUNCTION playwright.approve_full_day_shifts();

CREATE OR REPLACE FUNCTION playwright.approve_full_day_shifts()
 RETURNS trigger
 LANGUAGE plpgsql
AS $function$
BEGIN
IF NEW.actor_approved_date IS NOT NULL THEN
UPDATE playwright.show_schedule
SET actor_approved_date = NEW.actor_approved_date
WHERE show_date = NEW.show_date
AND role_cert_id IN (
SELECT rc.id
FROM role_certification rc
WHERE rc.actor_id = (SELECT actor_id FROM
role_certification WHERE id = NEW.role_cert_id)
)
AND actor_approved_date IS NULL;
END IF;
RETURN NEW;
END;
$function$
;

-- DROP FUNCTION playwright.calculate_actor_total_time(int4, date);

CREATE OR REPLACE FUNCTION playwright.calculate_actor_total_time(checking_actor_id integer, schedule_show_date date)
 RETURNS double precision
 LANGUAGE plpgsql
AS $function$
    declare
        first_showtime_start time;
        last_showtime_end time;
    begin
        -- getting first and last showtime
        select min(s.start_time), max(s.end_time)
        into first_showtime_start, last_showtime_end
        from playwright.show_schedule ss
        inner join playwright.showtime s on (ss.showtime_id = s.id)
        inner join role_certification rc on (rc.id = ss.role_cert_id)
        where ss.show_date = schedule_show_date
        and rc.actor_id = checking_actor_id;

        -- if start and end times are null, they aren't scheduled for any hours
        if first_showtime_start is null or last_showtime_end is null then
            return 0;
        else
            return extract(epoch from (last_showtime_end - first_showtime_start)) / 3600;
        end if;
    end;
$function$
;

-- DROP PROCEDURE playwright.generate_schedule_for_days(date, date);

CREATE OR REPLACE PROCEDURE playwright.generate_schedule_for_days(IN start_date date, IN end_date date)
 LANGUAGE plpgsql
AS $procedure$
declare 
	dt record;
begin 
	for dt in select generate_series(start_date::date, end_date::date, '1 day'::interval) as d loop
		call playwright.make_daily_schedule(dt.d::date);
	end loop;
end;
$procedure$
;


-- DROP PROCEDURE playwright.generate_ticket_sales(date, date);

CREATE OR REPLACE PROCEDURE playwright.generate_ticket_sales(IN startdate date, IN enddate date)
 LANGUAGE plpgsql
AS $procedure$
begin
	insert into ticket(showtime_id, show_date, date_purchased, customer_id)
	select (floor(random()*13+1)) as id , date(showdate) as show_date, (date(showdate)-floor(random() * 10 + 1)::int) as date_purchased, c.id
	from customer c, (select generate_series(startdate, enddate, '1 day') showdate) ;
end
$procedure$
;

-- DROP FUNCTION playwright.get_unapproved_schedule_by_actor(int4);

CREATE OR REPLACE FUNCTION playwright.get_unapproved_schedule_by_actor(a_id integer)
 RETURNS TABLE(show_date date, actor_id integer, role_id integer, start_time time without time zone)
 LANGUAGE plpgsql
AS $function$
begin
return query
	select * from current_unapproved_schedule cus
	where cus.actor_id = a_id;
end;
$function$
;

-- DROP PROCEDURE playwright.make_daily_schedule(date);

CREATE OR REPLACE PROCEDURE playwright.make_daily_schedule(IN schedule_show_date date)
 LANGUAGE plpgsql
AS $procedure$
declare 
    showtime record;
    actor record;
    paired_cert record;
    part_id int;
    stage_id int := 1;
	current_total_time float;
    new_show_duration float;
    show_duration interval;
    actor_total_time float;
	role_3_total_time float;
    role_4_total_time float;
    showtimes cursor for 
        select id, start_time, end_time
        from playwright.showtime
        order by start_time;
begin

    for showtime in showtimes loop
        for part_id in 1..9 loop
            if part_id in (3, 4) then
                -- checking for paired certifications
                select pc.*
                into paired_cert
                from playwright.paired_cert pc
                inner join playwright.role_certification rc3 on (pc.role_3_cert_id = rc3.id)
                inner join playwright.role_certification rc4 on (pc.role_4_cert_id = rc4.id)
                where (rc3.expiration_date is null or rc3.expiration_date > schedule_show_date)
                  and (rc4.expiration_date is null or rc4.expiration_date > schedule_show_date)
                  and rc3.actor_id in (
                      select id from playwright.actor
                      where end_date is null
                  )
                  and rc4.actor_id in (
                      select id from playwright.actor
                      where end_date is null
                  )
					and rc3.actor_id not in (
                      select sc.role_cert_id
                      from playwright.show_schedule sc
                      inner join playwright.role_certification rc on sc.role_cert_id = rc.id
                      where sc.showtime_id = showtime.id
                  )
                  and rc4.actor_id not in (
                      select sc.role_cert_id
                      from playwright.show_schedule sc
                      inner join playwright.role_certification rc on sc.role_cert_id = rc.id
                      where sc.showtime_id = showtime.id
                  )
                  and exists (
                      select 1
                      from playwright.actor_normalneed an
                      where an.dayofweek_id = extract(DOW from schedule_show_date)
                        and an.preferred_showtime_id = showtime.id
                        and an.pair_cert_id = pc.id

                  )
                limit 1;
				

				-- union rules: make sure this show won't put them over the 6 hr limit
				select calculate_actor_total_time(rc3.actor_id, schedule_show_date)
				into role_3_total_time
				from playwright.paired_cert pc
				inner join playwright.role_certification rc3 on pc.role_3_cert_id = rc3.id
				where pc.id = paired_cert.id;

				select calculate_actor_total_time(rc4.actor_id, schedule_show_date)
				into role_4_total_time
				from playwright.paired_cert pc
				inner join playwright.role_certification rc4 on pc.role_4_cert_id = rc4.id
				where pc.id = paired_cert.id;

				show_duration :=  interval '1 hour 45 minutes';
                new_show_duration := extract(epoch from show_duration) / 3600;
                
                if role_3_total_time + new_show_duration <= 6 and role_4_total_time + new_show_duration <= 6 then

                	insert into playwright.show_schedule (show_date, stage_id, showtime_id, role_cert_id, pair_cert_id)
                	values (
                    	schedule_show_date,
                    	stage_id,
                    	showtime.id,
                    	case when part_id = 3 then coalesce(paired_cert.role_3_cert_id, null)
                         when part_id = 4 then coalesce(paired_cert.role_4_cert_id, null)
                    	end,
                    	coalesce(paired_cert.id, null)
                );
				else
                    -- if not found, insert with null cert ids
                    insert into playwright.show_schedule (show_date, stage_id, showtime_id, role_cert_id, pair_cert_id)
                    values (schedule_show_date, stage_id, showtime.id, null, null);
                end if;
            else
                select rc.*
                into actor
                from playwright.role_certification rc
                inner join playwright.actor a on (rc.actor_id = a.id)
                where rc.role_id = part_id
                  and (rc.expiration_date is null or rc.expiration_date > schedule_show_date)
                  and a.end_date is null
				  and rc.actor_id not in (
                      select sc.role_cert_id
                      from playwright.show_schedule sc
                      inner join playwright.role_certification rc2 on sc.role_cert_id = rc2.id
                      where sc.showtime_id = showtime.id
                  )
                  and exists (
                      select 1
                      from playwright.actor_normalneed an
					  inner join playwright.role_certification rc_sub on (an.role_cert_id = rc_sub.id)
                      where rc_sub.actor_id = a.id
                        and an.dayofweek_id = extract(DOW from schedule_show_date)
                        and an.preferred_showtime_id = showtime.id
						and rc_sub.actor_id is not null  
                  )
				order by random()
                limit 1;

				select calculate_actor_total_time(actor.actor_id, schedule_show_date)
				into current_total_time;

				show_duration := interval '1 hour 45 minutes';
                new_show_duration := extract(epoch from show_duration) / 3600;


				if current_total_time + new_show_duration <= 6 then
	
              	    insert into playwright.show_schedule (show_date, stage_id, showtime_id, role_cert_id, pair_cert_id)
                	values (
                    	schedule_show_date,
                    	stage_id,
                    	showtime.id,
                    	coalesce(actor.id, null),
                    	null
                );
			else
				--if none found, insert with null cert ids
                    insert into playwright.show_schedule (show_date, stage_id, showtime_id, role_cert_id, pair_cert_id)
                    values (schedule_show_date, stage_id, showtime.id, null, null);
                end if;
            end if;
        end loop;

		-- this makes sure the stages alternate for adjacent showtimes
        stage_id := case when stage_id = 1 then 2 else 1 end; 
    end loop;
end;
$procedure$
;

-- DROP FUNCTION playwright.remove_actor_from_schedule();

CREATE OR REPLACE FUNCTION playwright.remove_actor_from_schedule()
 RETURNS trigger
 LANGUAGE plpgsql
AS $function$
declare
rec record;
begin
for rec in
select ss.id, ss.role_cert_id,
ss.actor_approved_date from show_schedule ss
inner join role_certification rc on (rc.id =
ss.role_cert_id)
inner join actor a on (a.id = rc.actor_id)
where a.id = new.id
and ss.show_date >= new.end_date
loop
RAISE NOTICE 'Updating show_schedule for show ID:
%', rec.id;
update show_schedule set role_cert_id = null,
actor_approved_date = null
where id = rec.id;
end loop;
return null;
END;
$function$
;