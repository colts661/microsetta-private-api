-- create tables to match new models for sessions and percent energy data
DROP TABLE IF EXISTS ag.vioscreen_percentenergy;
DROP TABLE IF EXISTS ag.vioscreen_dietaryscore;
DROP TABLE IF EXISTS ag.vioscreen_foodconsumption;
DROP TABLE IF EXISTS ag.vioscreen_eatingpatterns;
DROP TABLE IF EXISTS ag.vioscreen_mpeds;
DROP TABLE IF EXISTS ag.vioscreen_percentenergy;
DROP TABLE IF EXISTS ag.vioscreen_foodcomponents;

CREATE TABLE ag.vioscreen_sessions (
    sessionId varchar PRIMARY KEY,
    username varchar NOT NULL,
    protocolId int NOT NULL,
    status varchar NOT NULL,
    startDate timestamp NOT NULL,
    endDate timestamp,
    cultureCode varchar NOT NULL,
    created timestamp NOT NULL,
    modified timestamp NOT NULL,
    FOREIGN KEY (username) REFERENCES ag.vioscreen_registry (vio_id)
);
CREATE INDEX vio_sess_by_username ON ag.vioscreen_sessions(username);

CREATE TABLE ag.vioscreen_percentenergy_code (
    code varchar PRIMARY KEY,
    description varchar NOT NULL,
    shortDescription varchar NOT NULL,
    units varchar NOT NULL
);

CREATE TABLE ag.vioscreen_percentenergy (
    id uuid DEFAULT uuid_generate_v4() NOT NULL,
    sessionId varchar NOT NULL,
    code varchar NOT NULL,
    amount float NOT NULL,
    CONSTRAINT vioscreen_percentenergy_pkey PRIMARY KEY ( id ),
    UNIQUE (sessionId, code),
    FOREIGN KEY (sessionId) REFERENCES ag.vioscreen_sessions (sessionId),
    FOREIGN KEY (code) REFERENCES ag.vioscreen_percentenergy_code (code)
);

CREATE TABLE ag.vioscreen_dietaryscore_code (
    id uuid DEFAULT uuid_generate_v4() NOT NULL,
    scoresType varchar NOT NULL,
    code varchar NOT NULL,
    name varchar NOT NULL,
    lowerLimit float NOT NULL,
    upperLimit float NOT NULL,
    CONSTRAINT vioscreen_dietaryscore_code_pkey PRIMARY KEY ( id ),
    UNIQUE (scoresType, code),
    
);

CREATE TABLE ag.vioscreen_dietaryscore (
    id uuid DEFAULT uuid_generate_v4() NOT NULL,
    sessionId varchar NOT NULL,
    scoresType varchar NOT NULL,
    code varchar NOT NULL,
    score float NOT NULL
    CONSTRAINT vioscreen_dietaryscore_pkey PRIMARY KEY ( id ),
    UNIQUE (sessionId, scoresType, code),
    FOREIGN KEY (sessionId) REFERENCES ag.vioscreen_sessions (sessionId),
    FOREIGN KEY (scoresType, code) REFERENCES ag.vioscreen_dietaryscore_code(scoresType, code)
);

CREATE TABLE ag.vioscreen_supplements (
    id uuid DEFAULT uuid_generate_v4() NOT NULL,
    sessionId varchar NOT NULL,
    supplement varchar NOT NULL,
    frequency varchar NOT NULL,
    amount varchar NOT NULL,
    average varchar NOT NULL,
    CONSTRAINT vioscreen_supplements_pkey PRIMARY KEY ( id ),
    UNIQUE (sessionId, supplement),
    FOREIGN KEY (sessionId) REFERENCES ag.vioscreen_sessions (sessionId)
);

INSERT INTO ag.vioscreen_percentenergy_code
    (code, description, shortDescription, units)
    VALUES ('%mfatot', 'Percent of calories from Monounsaturated Fat', 'Monounsaturated Fat', '%');
INSERT INTO ag.vioscreen_percentenergy_code
    (code, description, shortDescription, units)
    VALUES ('%pfatot', 'Percent of calories from Polyunsaturated Fat', 'Polyunsaturated Fat', '%');
INSERT INTO ag.vioscreen_percentenergy_code
    (code, description, shortDescription, units)
    VALUES ('%carbo', 'Percent of calories from Carbohydrate', 'Carbohydrate', '%');
INSERT INTO ag.vioscreen_percentenergy_code
    (code, description, shortDescription, units)
    VALUES ('%sfatot', 'Percent of calories from Saturated Fat', 'Saturated Fat', '%');
INSERT INTO ag.vioscreen_percentenergy_code
    (code, description, shortDescription, units)
    VALUES ('%alcohol', 'Percent of calories from Alcohol', 'Alcohol', '%');
INSERT INTO ag.vioscreen_percentenergy_code
    (code, description, shortDescription, units)
    VALUES ('%protein', 'Percent of calories from Protein', 'Protein', '%');
INSERT INTO ag.vioscreen_percentenergy_code
    (code, description, shortDescription, units)
    VALUES ('%adsugtot', 'Percent of calories from Added Sugar', 'Added Sugar', '%');
INSERT INTO ag.vioscreen_percentenergy_code
    (code, description, shortDescription, units)
    VALUES ('%fat', 'Percent of calories from Fat', 'Fat', '%');

INSERT INTO ag.vioscreen_dietaryscore_code
    (scoresType, code, name, lowerLimit, upperLimit)
    VALUES ('Hei2010','TotalVegetables','Total Vegetables',0.0,5.0);
INSERT INTO ag.vioscreen_dietaryscore_code
    (scoresType, code, name, lowerLimit, upperLimit)
    VALUES ('Hei2010','GreensAndBeans','Greens and Beans',0.0,5.0);
INSERT INTO ag.vioscreen_dietaryscore_code
    (scoresType, code, name, lowerLimit, upperLimit)
    VALUES ('Hei2010','TotalFruit','Total Fruit',0.0,5.0);
INSERT INTO ag.vioscreen_dietaryscore_code
    (scoresType, code, name, lowerLimit, upperLimit)
    VALUES ('Hei2010','WholeFruit','Whole Fruit',0.0,5.0);
INSERT INTO ag.vioscreen_dietaryscore_code
    (scoresType, code, name, lowerLimit, upperLimit)
    VALUES ('Hei2010','WholeGrains','Whole Grains',0.0,10.0);
INSERT INTO ag.vioscreen_dietaryscore_code
    (scoresType, code, name, lowerLimit, upperLimit)
    VALUES ('Hei2010','Dairy','Dairy',0.0,10.0);
INSERT INTO ag.vioscreen_dietaryscore_code
    (scoresType, code, name, lowerLimit, upperLimit)
    VALUES ('Hei2010','TotalProteins','Total Protein Foods',0.0,5.0);
INSERT INTO ag.vioscreen_dietaryscore_code
    (scoresType, code, name, lowerLimit, upperLimit)
    VALUES ('Hei2010','SeafoodAndPlantProteins','Seafood and Plant Proteins',0.0,5.0);
INSERT INTO ag.vioscreen_dietaryscore_code
    (scoresType, code, name, lowerLimit, upperLimit)
    VALUES ('Hei2010','FattyAcids','Fatty Acids',0.0,10.0);
INSERT INTO ag.vioscreen_dietaryscore_code
    (scoresType, code, name, lowerLimit, upperLimit)
    VALUES ('Hei2010','RefinedGrains','Refined Grains',0.0,10.0);
INSERT INTO ag.vioscreen_dietaryscore_code
    (scoresType, code, name, lowerLimit, upperLimit)
    VALUES ('Hei2010','Sodium','Sodium',0.0,10.0);
INSERT INTO ag.vioscreen_dietaryscore_code
    (scoresType, code, name, lowerLimit, upperLimit)
    VALUES ('Hei2010','EmptyCalories','Empty Calories',0.0,20.0);
INSERT INTO ag.vioscreen_dietaryscore_code
    (scoresType, code, name, lowerLimit, upperLimit)
    VALUES ('Hei2010','TotalScore','Total HEI Score',0.0,100.0);