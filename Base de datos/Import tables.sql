CREATE TABLE public.mediciones (
	medicionid serial NOT NULL,
	luz int4 NULL,
	humedad int4 NULL,
	temperatura int4 NULL,
	hora int4 NULL,
	id_riego int4 NULL,
	CONSTRAINT medicion_pkey PRIMARY KEY (medicionid)
);


CREATE TABLE public.riego (
	riegoid serial NOT NULL,
	duracion int4 NULL,
	CONSTRAINT riego_pkey PRIMARY KEY (riegoid)
);


CREATE TABLE public.sensores (
	sensorid serial NOT NULL,
	estado bool NULL,
	tipo varchar(50) NULL,
	CONSTRAINT sensor_pkey PRIMARY KEY (sensorid)
);