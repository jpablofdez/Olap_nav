
  
  -- DROP TABLE contacts;

CREATE TABLE contacts
(
  id serial NOT NULL,
  firstname text NOT NULL,
  lastname text NOT NULL,
  telephone character varying(20) NOT NULL,
  email character varying(20) NOT NULL,
  created timestamp without time zone DEFAULT now(),
  CONSTRAINT contacts_pkey PRIMARY KEY (id)
)
WITH (
  OIDS=FALSE
);
ALTER TABLE contacts
  OWNER TO postgres;

  -- Table: room

-- DROP TABLE room;


CREATE TABLE room
(
  id_room serial NOT NULL,
  name text NOT NULL,
  location text NOT NULL,
  created timestamp without time zone DEFAULT now(),
  phone text,
  type integer,
  email text,
  CONSTRAINT room_pkey PRIMARY KEY (id_room)
)
WITH (
  OIDS=FALSE
);
ALTER TABLE room
  OWNER TO postgres;

  
CREATE TABLE users
(
  id_user serial NOT NULL,
  firstname text NOT NULL,
  lastname text NOT NULL,
  user_name character varying(20) NOT NULL,
  password character varying(20) NOT NULL,
  telephone character varying(20) NOT NULL,
  email character varying(75) NOT NULL,
  created timestamp without time zone DEFAULT now(),
  CONSTRAINT users_pkey PRIMARY KEY (id_user)
)
WITH (
  OIDS=FALSE
);
ALTER TABLE users
  OWNER TO postgres;
  
- DROP TABLE room_by_user;

CREATE TABLE room_by_user
(
  id_rxu serial NOT NULL,
  id_user integer NOT NULL,
  id_room integer NOT NULL,
  description text NOT NULL,
  date_start timestamp without time zone,
  date_end timestamp without time zone,
  emergency boolean,
  CONSTRAINT room_by_user_pkey PRIMARY KEY (id_rxu)
)
WITH (
  OIDS=FALSE
);
ALTER TABLE room_by_user
  OWNER TO postgres;


CREATE TABLE accessories
(
  id_accessory serial NOT NULL,
  name_accessory text,
  CONSTRAINT "PK_Accessories_Table" PRIMARY KEY (id_accessory)
)
WITH (
  OIDS=FALSE
);
ALTER TABLE accessories
  OWNER TO postgres;

CREATE TABLE accessories_in_the_room
(
  id_room integer NOT NULL,
  id_accessory integer NOT NULL,
  CONSTRAINT "PK_accesories_in_the_room" PRIMARY KEY (id_room, id_accessory),
  CONSTRAINT "FK_Accessory_In_Room" FOREIGN KEY (id_accessory)
      REFERENCES accessories (id_accessory) MATCH SIMPLE
      ON UPDATE NO ACTION ON DELETE NO ACTION,
  CONSTRAINT "FK_Room_In_Accessories_In_Room" FOREIGN KEY (id_room)
      REFERENCES room (id_room) MATCH SIMPLE
      ON UPDATE NO ACTION ON DELETE NO ACTION
)
WITH (
  OIDS=FALSE
);
ALTER TABLE accessories_in_the_room
  OWNER TO postgres;

CREATE TABLE status_report
(
  id_status_report serial NOT NULL,
  description text,
  id_room_by_user integer,
  CONSTRAINT "PK_Status_Report" PRIMARY KEY (id_status_report),
  CONSTRAINT id_room_by_user FOREIGN KEY (id_room_by_user)
      REFERENCES room_by_user (id_rxu) MATCH SIMPLE
      ON UPDATE NO ACTION ON DELETE NO ACTION
)
WITH (
  OIDS=FALSE
);
ALTER TABLE status_report
  OWNER TO postgres;

-- Index: fki_id_room_by_user

-- DROP INDEX fki_id_room_by_user;

CREATE INDEX fki_id_room_by_user
  ON status_report
  USING btree
  (id_room_by_user);
