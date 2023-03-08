-- Standardize the frequency-oriented questions to the legacy responses. The new, shorter responses have not actually been used so it's safe to change them.
-- However, we need to temporarily drop the constraint on ag.survey_question_triggers.
ALTER TABLE ag.survey_question_triggers DROP CONSTRAINT fk_survey_question_triggers0;
-- Update the triggers table
UPDATE ag.survey_question_triggers SET triggering_response = 'Rarely (a few times/month)' WHERE triggering_response = 'Few times/month';
UPDATE ag.survey_question_triggers SET triggering_response = 'Occasionally (1-2 times/week)' WHERE triggering_response = '1-2 times/week';
UPDATE ag.survey_question_triggers SET triggering_response = 'Regularly (3-5 times/week)' WHERE triggering_response = '3-5 times/week';
-- Update the association between questions and valid responses
UPDATE ag.survey_question_response SET response = 'Rarely (a few times/month)' WHERE response = 'Few times/month';
UPDATE ag.survey_question_response SET response = 'Occasionally (1-2 times/week)' WHERE response = '1-2 times/week';
UPDATE ag.survey_question_response SET response = 'Regularly (3-5 times/week)' WHERE response = '3-5 times/week';
-- Now we'll recreate the constraint
ALTER TABLE ag.survey_question_triggers ADD CONSTRAINT fk_survey_question_triggers0 FOREIGN KEY (survey_question_id, triggering_response)
    REFERENCES ag.survey_question_response(survey_question_id, response);

-- Adjust some questions/responses
UPDATE ag.survey_question SET american = 'Have you ever been diagnosed with irritable bowel syndrome (IBS)? Note: IBS should not be confused with IBD. IBS is defined by symptoms, usually recurrent abdominal pain and changes in bowel movements. IBD is marked by inflammation or damage to the lining of the gastrointestinal tract.' WHERE survey_question_id = 79;
UPDATE ag.survey_question SET american = 'Please rate the current (i.e. last 2 weeks) severity of any difficulty falling asleep.' WHERE survey_question_id = 229;
UPDATE ag.survey_question SET american = 'Please rate the current (i.e. last 2 weeks) severity of any difficulty staying asleep.' WHERE survey_question_id = 230;
UPDATE ag.survey_question SET american = 'Please rate the current (i.e. last 2 weeks) severity of any problems waking up too early.' WHERE survey_question_id = 231;
UPDATE ag.survey_question SET american = 'How satisfied/dissatisfied are you with your current sleep pattern?' WHERE survey_question_id = 232;
UPDATE ag.survey_question SET american = 'How noticeable to others do you think your sleep problem is in terms of impairing the quality of your life?' WHERE survey_question_id = 233;
UPDATE ag.survey_question SET american = 'How worried/distressed are you about your current sleep problem?' WHERE survey_question_id = 234;
UPDATE ag.survey_question SET american = 'To what extent do you consider your sleep problem to interfere with your daily functioning (e.g. daytime fatigue, mood, ability to function at work/daily chores, concentration, memory, mood, etc.) currently?' WHERE survey_question_id = 235;

INSERT INTO ag.survey_question_response (survey_question_id, response, display_index) VALUES
    (428, '12:00AM', 25),
    (428, '12:30AM', 26),
    (428, '1:00AM', 27),
    (428, '1:30AM', 28),
    (428, '2:00AM', 29),
    (428, '2:30AM', 30),
    (428, '3:00AM', 31),
    (428, '3:30AM', 32),
    (428, '4:00AM', 33),
    (428, '4:30AM', 34),
    (428, '5:00AM', 35),
    (428, '5:30AM', 36),
    (428, '6:00AM', 37),
    (428, '6:30AM', 38),
    (428, '7:00AM', 39),
    (428, '7:30AM', 40),
    (428, '8:00AM', 41),
    (428, '8:30AM', 42),
    (428, '9:00AM', 43),
    (428, '9:30AM', 44),
    (428, '10:00AM', 45),
    (428, '10:30AM', 46),
    (428, '11:00AM', 47),
    (428, '11:30AM', 48);

INSERT INTO ag.survey_question_response (survey_question_id, response, display_index) VALUES
    (344, '12:00PM', 25),
    (344, '12:30PM', 26),
    (344, '1:00PM', 27),
    (344, '1:30PM', 28),
    (344, '2:00PM', 29),
    (344, '2:30PM', 30),
    (344, '3:00PM', 31),
    (344, '3:30PM', 32),
    (344, '4:00PM', 33),
    (344, '4:30PM', 34),
    (344, '5:00PM', 35),
    (344, '5:30PM', 36),
    (344, '6:00PM', 37),
    (344, '6:30PM', 38),
    (344, '7:00PM', 39),
    (344, '7:30PM', 40),
    (344, '8:00PM', 41),
    (344, '8:30PM', 42),
    (344, '9:00PM', 43),
    (344, '9:30PM', 44),
    (344, '10:00PM', 45),
    (344, '10:30PM', 46),
    (344, '11:00PM', 47),
    (344, '11:30PM', 48);

INSERT INTO ag.survey_question_response (survey_question_id, response, display_index) VALUES
    (345, '12:00AM', 25),
    (345, '12:30AM', 26),
    (345, '1:00AM', 27),
    (345, '1:30AM', 28),
    (345, '2:00AM', 29),
    (345, '2:30AM', 30),
    (345, '3:00AM', 31),
    (345, '3:30AM', 32),
    (345, '4:00AM', 33),
    (345, '4:30AM', 34),
    (345, '5:00AM', 35),
    (345, '5:30AM', 36),
    (345, '6:00AM', 37),
    (345, '6:30AM', 38),
    (345, '7:00AM', 39),
    (345, '7:30AM', 40),
    (345, '8:00AM', 41),
    (345, '8:30AM', 42),
    (345, '9:00AM', 43),
    (345, '9:30AM', 44),
    (345, '10:00AM', 45),
    (345, '10:30AM', 46),
    (345, '11:00AM', 47),
    (345, '11:30AM', 48);

INSERT INTO ag.survey_question_response (survey_question_id, response, display_index) VALUES
    (346, '12:00PM', 25),
    (346, '12:30PM', 26),
    (346, '1:00PM', 27),
    (346, '1:30PM', 28),
    (346, '2:00PM', 29),
    (346, '2:30PM', 30),
    (346, '3:00PM', 31),
    (346, '3:30PM', 32),
    (346, '4:00PM', 33),
    (346, '4:30PM', 34),
    (346, '5:00PM', 35),
    (346, '5:30PM', 36),
    (346, '6:00PM', 37),
    (346, '6:30PM', 38),
    (346, '7:00PM', 39),
    (346, '7:30PM', 40),
    (346, '8:00PM', 41),
    (346, '8:30PM', 42),
    (346, '9:00PM', 43),
    (346, '9:30PM', 44),
    (346, '10:00PM', 45),
    (346, '10:30PM', 46),
    (346, '11:00PM', 47),
    (346, '11:30PM', 48);

INSERT INTO ag.survey_question_response (survey_question_id, response, display_index) VALUES
    (347, '12:00AM', 25),
    (347, '12:30AM', 26),
    (347, '1:00AM', 27),
    (347, '1:30AM', 28),
    (347, '2:00AM', 29),
    (347, '2:30AM', 30),
    (347, '3:00AM', 31),
    (347, '3:30AM', 32),
    (347, '4:00AM', 33),
    (347, '4:30AM', 34),
    (347, '5:00AM', 35),
    (347, '5:30AM', 36),
    (347, '6:00AM', 37),
    (347, '6:30AM', 38),
    (347, '7:00AM', 39),
    (347, '7:30AM', 40),
    (347, '8:00AM', 41),
    (347, '8:30AM', 42),
    (347, '9:00AM', 43),
    (347, '9:30AM', 44),
    (347, '10:00AM', 45),
    (347, '10:30AM', 46),
    (347, '11:00AM', 47),
    (347, '11:30AM', 48);

-- All of the queries need to update two locales, for which we've determined there aren't any relevant differences
-- 1) Mexican Spanish (es_mx) - column suffix is _spanish
-- 2) Spanish Spanish (es_es) - column suffix is _spain_spanish

-- Update survey_group names
UPDATE ag.survey_group SET spanish = 'Información básica', spain_spanish = 'Información básica' WHERE group_order = -10; -- Basic Information
UPDATE ag.survey_group SET spanish = 'En casa', spain_spanish = 'En casa' WHERE group_order = -11; -- At Home
UPDATE ag.survey_group SET spanish = 'Estilo de vida', spain_spanish = 'Estilo de vida' WHERE group_order = -12; -- Lifestyle
UPDATE ag.survey_group SET spanish = 'Intestino', spain_spanish = 'Intestino' WHERE group_order = -13; -- Gut
UPDATE ag.survey_group SET spanish = 'Salud general', spain_spanish = 'Salud general' WHERE group_order = -14; -- General Health
UPDATE ag.survey_group SET spanish = 'Diagnóstico de Salud', spain_spanish = 'Diagnóstico de Salud' WHERE group_order = -15; -- Health Diagnosis
UPDATE ag.survey_group SET spanish = 'Alergias', spain_spanish = 'Alergias' WHERE group_order = -16; -- Allergies
UPDATE ag.survey_group SET spanish = 'Dieta', spain_spanish = 'Dieta' WHERE group_order = -17; -- Diet
UPDATE ag.survey_group SET spanish = 'Dieta detallada', spain_spanish = 'Dieta detallada' WHERE group_order = -18; -- Detailed Diet
UPDATE ag.survey_group SET spanish = 'Otro', spain_spanish = 'Otro' WHERE group_order = -22; -- Other

-- Update survey_question entries
UPDATE ag.survey_question SET spanish = 'Sexo biológico asignado al nacer', spain_spanish = 'Sexo biológico asignado al nacer' WHERE survey_question_id = 502;
UPDATE ag.survey_question SET spanish = '¿Cuál de las siguientes le describe mejor?', spain_spanish = '¿Cuál de las siguientes le describe mejor?' WHERE survey_question_id = 492;
UPDATE ag.survey_question SET spanish = '¿Cuál es su nivel de educación más alto?', spain_spanish = '¿Cuál es su nivel de educación más alto?' WHERE survey_question_id = 493;
UPDATE ag.survey_question SET spanish = '¿Cuál de las siguientes opciones describe mejor el área en la que vive?', spain_spanish = '¿Cuál de las siguientes opciones describe mejor el área en la que vive?' WHERE survey_question_id = 313;
UPDATE ag.survey_question SET spanish = '¿Tiene contacto frecuente y regular con animales de granja?', spain_spanish = '¿Tiene contacto frecuente y regular con animales de granja?' WHERE survey_question_id = 326;
UPDATE ag.survey_question SET spanish = '¿Cuál es su relación con las personas de este estudio que voluntariamente le informaron de su participación (por ejemplo, pareja, hijos)? Tenga en cuenta que solo utilizaremos la información que ambas partes proporcionen. Esta información es útil porque los estudios han demostrado que nuestros genes afectan nuestro microbioma.', spain_spanish = '¿Cuál es su relación con las personas de este estudio que voluntariamente le informaron de su participación (por ejemplo, pareja, hijos)? Tenga en cuenta que solo utilizaremos la información que ambas partes proporcionen. Esta información es útil porque los estudios han demostrado que nuestros genes afectan nuestro microbioma.' WHERE survey_question_id = 316;
UPDATE ag.survey_question SET spanish = 'En las noches antes de ir a la escuela o al trabajo, ¿a qué hora se acuesta?', spain_spanish = 'En las noches antes de ir a la escuela o al trabajo, ¿a qué hora se acuesta?' WHERE survey_question_id = 345;
UPDATE ag.survey_question SET spanish = 'Tipo/marca', spain_spanish = 'Tipo/marca' WHERE survey_question_id = 490;
UPDATE ag.survey_question SET spanish = '¿Quiénes son sus compañeros de cuarto que voluntariamente le han informado de su participación en este estudio? Tenga en cuenta que solo utilizaremos la información que ambas partes proporcionen. Esta información es útil porque los estudios han demostrado que las personas con las que vivimos afectan nuestro microbioma.', spain_spanish = '¿Quiénes son sus compañeros de cuarto que voluntariamente le han informado de su participación en este estudio? Tenga en cuenta que solo utilizaremos la información que ambas partes proporcionen. Esta información es útil porque los estudios han demostrado que las personas con las que vivimos afectan nuestro microbioma.' WHERE survey_question_id = 319;
UPDATE ag.survey_question SET spanish = 'Nombre del participante', spain_spanish = 'Nombre del participante' WHERE survey_question_id = 508;
UPDATE ag.survey_question SET spanish = '¿Están genéticamente relacionados?', spain_spanish = '¿Están genéticamente relacionados?' WHERE survey_question_id = 509;
UPDATE ag.survey_question SET spanish = '¿Esta persona vive con usted?', spain_spanish = '¿Esta persona vive con usted?' WHERE survey_question_id = 510;
UPDATE ag.survey_question SET spanish = '¿Dónde se quedan principalmente su(s) perro(s)?', spain_spanish = '¿Dónde se quedan principalmente su(s) perro(s)?' WHERE survey_question_id = 501;
UPDATE ag.survey_question SET spanish = '¿Dónde se quedan principalmente su(s) gatos(s)?', spain_spanish = '¿Dónde se quedan principalmente su(s) gatos(s)?' WHERE survey_question_id = 503;
UPDATE ag.survey_question SET spanish = 'Durante la última semana, ¿cómo calificaría la calidad de su sueño?', spain_spanish = 'Durante la última semana, ¿cómo calificaría la calidad de su sueño?' WHERE survey_question_id = 350;
UPDATE ag.survey_question SET spanish = '¿Con qué frecuencia se cepilla los dientes?', spain_spanish = '¿Con qué frecuencia se cepilla los dientes?' WHERE survey_question_id = 495;
UPDATE ag.survey_question SET spanish = '¿Hace un seguimiento de cualquiera de las siguientes opciones mediante el uso de una aplicación(s)? Seleccione todas las que correspondan.', spain_spanish = '¿Hace un seguimiento de cualquiera de las siguientes opciones mediante el uso de una aplicación(s)? Seleccione todas las que correspondan.' WHERE survey_question_id = 328;
UPDATE ag.survey_question SET spanish = '¿Con qué frecuencia participa en deportes de equipo?', spain_spanish = '¿Con qué frecuencia participa en deportes de equipo?' WHERE survey_question_id = 333;
UPDATE ag.survey_question SET spanish = 'Cuando el clima lo permite, ¿con qué frecuencia hace jardinería ?', spain_spanish = 'Cuando el clima lo permite, ¿con qué frecuencia hace jardinería ?' WHERE survey_question_id = 334;
UPDATE ag.survey_question SET spanish = '¿Qué tipo de ejercicio suele hacer? Seleccione todas las que correspondan.', spain_spanish = '¿Qué tipo de ejercicio suele hacer? Seleccione todas las que correspondan.' WHERE survey_question_id = 331;
UPDATE ag.survey_question SET spanish = '¿Qué nivel de intensidad de ejercicio suele hacer? Seleccione todas las que correspondan.', spain_spanish = '¿Qué nivel de intensidad de ejercicio suele hacer? Seleccione todas las que correspondan.' WHERE survey_question_id = 332;
UPDATE ag.survey_question SET spanish = '¿Qué tipo(s) de alcohol consume normalmente? Seleccione todas las que correspondan.', spain_spanish = '¿Qué tipo(s) de alcohol consume normalmente? Seleccione todas las que correspondan.' WHERE survey_question_id = 494;
UPDATE ag.survey_question SET spanish = 'En los días que tiene escuela o trabajo, ¿a qué hora se levanta por la mañana?', spain_spanish = 'En los días que tiene escuela o trabajo, ¿a qué hora se levanta por la mañana?' WHERE survey_question_id = 344;
UPDATE ag.survey_question SET spanish = 'En sus días libres (cuando no tiene escuela ni trabajo), ¿a qué hora se levanta por la mañana?', spain_spanish = 'En sus días libres (cuando no tiene escuela ni trabajo), ¿a qué hora se levanta por la mañana?' WHERE survey_question_id = 346;
UPDATE ag.survey_question SET spanish = 'En sus días libres (cuando no tiene escuela ni trabajo), ¿a qué hora se acuesta?', spain_spanish = 'En sus días libres (cuando no tiene escuela ni trabajo), ¿a qué hora se acuesta?' WHERE survey_question_id = 347;
UPDATE ag.survey_question SET spanish = 'Nitratos', spain_spanish = 'Nitratos' WHERE survey_question_id = 517;
UPDATE ag.survey_question SET spanish = '¿Tiene un trabajo o alguna otra situación que requiera que trabaje y duerma en horarios atípicos (por ejemplo, trabaje entre las 10 pm y las 6 am y duerma entre las 9 am y las 5 pm)?', spain_spanish = '¿Tiene un trabajo o alguna otra situación que requiera que trabaje y duerma en horarios atípicos (por ejemplo, trabaje entre las 10 pm y las 6 am y duerma entre las 9 am y las 5 pm)?' WHERE survey_question_id = 348;
UPDATE ag.survey_question SET spanish = 'Si usa dispositivos electrónicos que emiten luz, como un teléfono o una computadora portátil, justo antes de acostarse, ¿los usa en modo nocturno u oscuro?', spain_spanish = 'Si usa dispositivos electrónicos que emiten luz, como un teléfono o una computadora portátil, justo antes de acostarse, ¿los usa en modo nocturno u oscuro?' WHERE survey_question_id = 349;
UPDATE ag.survey_question SET spanish = '¿Usted surfea en el mar regularmente?', spain_spanish = '¿Usted surfea en el mar regularmente?' WHERE survey_question_id = 354;
UPDATE ag.survey_question SET spanish = 'Si respondió "sí", ¿qué tipo de EII tiene?', spain_spanish = 'Si respondió "sí", ¿qué tipo de EII tiene?' WHERE survey_question_id = 360;
UPDATE ag.survey_question SET spanish = 'Durante la última semana, ¿con qué frecuencia ha tenido dolor abdominal o malestar abdominal?', spain_spanish = 'Durante la última semana, ¿con qué frecuencia ha tenido dolor abdominal o malestar abdominal?' WHERE survey_question_id = 362;
UPDATE ag.survey_question SET spanish = 'Durante la última semana, ¿con qué frecuencia ha tenido distensión abdominal?', spain_spanish = 'Durante la última semana, ¿con qué frecuencia ha tenido distensión abdominal?' WHERE survey_question_id = 363;
UPDATE ag.survey_question SET spanish = 'Durante la última semana, ¿con qué frecuencia ha tenido flatulencias (expulsión de gases)?', spain_spanish = 'Durante la última semana, ¿con qué frecuencia ha tenido flatulencias (expulsión de gases)?' WHERE survey_question_id = 364;
UPDATE ag.survey_question SET spanish = 'Durante la última semana, ¿con qué frecuencia ha tenido borborigmos/ruidos estomacales?', spain_spanish = 'Durante la última semana, ¿con qué frecuencia ha tenido borborigmos/ruidos estomacales?' WHERE survey_question_id = 365;
UPDATE ag.survey_question SET spanish = 'Hormonas', spain_spanish = 'Hormonas' WHERE survey_question_id = 518;
UPDATE ag.survey_question SET spanish = '¿Alguna vez le han diagnosticado una afección de la piel?', spain_spanish = '¿Alguna vez le han diagnosticado una afección de la piel?' WHERE survey_question_id = 500;
UPDATE ag.survey_question SET spanish = '¿Está utilizando actualmente algún tipo de anticonceptivo?', spain_spanish = '¿Está utilizando actualmente algún tipo de anticonceptivo?' WHERE survey_question_id = 497;
UPDATE ag.survey_question SET spanish = '¿Qué tipo de afección de la piel le han diagnosticado?', spain_spanish = '¿Qué tipo de afección de la piel le han diagnosticado?' WHERE survey_question_id = 374;
UPDATE ag.survey_question SET spanish = '¿Quién diagnosticó su condición de la piel?', spain_spanish = '¿Quién diagnosticó su condición de la piel?' WHERE survey_question_id = 375;
UPDATE ag.survey_question SET spanish = 'Fecha estimada de parto:', spain_spanish = 'Fecha estimada de parto:' WHERE survey_question_id = 370;
UPDATE ag.survey_question SET spanish = 'En una escala del 1 al 10, donde 1 significa que tiene poco o nada de estrés y 10 significa que tiene mucho estrés, ¿cómo calificaría su nivel promedio de estrés durante el último mes?', spain_spanish = 'En una escala del 1 al 10, donde 1 significa que tiene poco o nada de estrés y 10 significa que tiene mucho estrés, ¿cómo calificaría su nivel promedio de estrés durante el último mes?' WHERE survey_question_id = 387;
UPDATE ag.survey_question SET spanish = '¿Aproximadamente cuándo le diagnosticaron?', spain_spanish = '¿Aproximadamente cuándo le diagnosticaron?' WHERE survey_question_id = 407;
UPDATE ag.survey_question SET spanish = '¿Alguna vez le han diagnosticado una enfermedad de salud mental?', spain_spanish = '¿Alguna vez le han diagnosticado una enfermedad de salud mental?' WHERE survey_question_id = 504;
UPDATE ag.survey_question SET spanish = '¿Qué tipo de cáncer(es) tuvo/tiene? Seleccione todas las que correspondan.', spain_spanish = '¿Qué tipo de cáncer(es) tuvo/tiene? Seleccione todas las que correspondan.' WHERE survey_question_id = 409;
UPDATE ag.survey_question SET spanish = '¿Qué tipo de tratamiento(s) tomó/toma? Seleccione todas las que correspondan.', spain_spanish = '¿Qué tipo de tratamiento(s) tomó/toma? Seleccione todas las que correspondan.' WHERE survey_question_id = 410;
UPDATE ag.survey_question SET spanish = 'De los siguientes, marque todos los síntomas que presenta con una migraña:', spain_spanish = 'De los siguientes, marque todos los síntomas que presenta con una migraña:' WHERE survey_question_id = 487;
UPDATE ag.survey_question SET spanish = 'Si respondió "sí", por favor seleccione qué trastorno(s) de la siguiente lista:', spain_spanish = 'Si respondió "sí", por favor seleccione qué trastorno(s) de la siguiente lista:' WHERE survey_question_id = 505;
UPDATE ag.survey_question SET spanish = '¿Quién le diagnosticó esto?', spain_spanish = '¿Quién le diagnosticó esto?' WHERE survey_question_id = 413;
UPDATE ag.survey_question SET spanish = '¿Con qué frecuencia experimenta migrañas?', spain_spanish = '¿Con qué frecuencia experimenta migrañas?' WHERE survey_question_id = 485;
UPDATE ag.survey_question SET spanish = 'Si respondió "sí", seleccione qué tipo de diabetes:', spain_spanish = 'Si respondió "sí", seleccione qué tipo de diabetes:' WHERE survey_question_id = 506;
UPDATE ag.survey_question SET spanish = '¿Actualmente tiene cáncer?', spain_spanish = '¿Actualmente tiene cáncer?' WHERE survey_question_id = 408;
UPDATE ag.survey_question SET spanish = '¿Alguno de sus familiares de primer grado sufre de migraña?', spain_spanish = '¿Alguno de sus familiares de primer grado sufre de migraña?' WHERE survey_question_id = 488;
UPDATE ag.survey_question SET spanish = '¿Toma algún medicamento para la migraña?', spain_spanish = '¿Toma algún medicamento para la migraña?' WHERE survey_question_id = 489;
UPDATE ag.survey_question SET spanish = 'Para las preguntas 11b - 11i, clasifique el factor del listado basado en la probabilidad de que le provoque sus migrañas, donde "1" es el más probable, "2" es el segundo más probable, etc. Si el factor no causa migrañas, elija N /A', spain_spanish = 'Para las preguntas 11b - 11i, clasifique el factor del listado basado en la probabilidad de que le provoque sus migrañas, donde "1" es el más probable, "2" es el segundo más probable, etc. Si el factor no causa migrañas, elija N /A' WHERE survey_question_id = 511;
UPDATE ag.survey_question SET spanish = 'Cafeína', spain_spanish = 'Cafeína' WHERE survey_question_id = 512;
UPDATE ag.survey_question SET spanish = 'Depresión', spain_spanish = 'Depresión' WHERE survey_question_id = 513;
UPDATE ag.survey_question SET spanish = 'Falta de sueño', spain_spanish = 'Falta de sueño' WHERE survey_question_id = 514;
UPDATE ag.survey_question SET spanish = 'Alimentos (vino, chocolate, fresas)', spain_spanish = 'Alimentos (vino, chocolate, fresas)' WHERE survey_question_id = 515;
UPDATE ag.survey_question SET spanish = 'Medicamentos que contienen barbitúricos o opioides', spain_spanish = 'Medicamentos que contienen barbitúricos o opioides' WHERE survey_question_id = 516;
UPDATE ag.survey_question SET spanish = '¿Alguna vez le han diagnosticado alguna otra condición clínica relevante?', spain_spanish = '¿Alguna vez le han diagnosticado alguna otra condición clínica relevante?' WHERE survey_question_id = 499;
UPDATE ag.survey_question SET spanish = '¿Alguna vez le han diagnosticado cáncer?', spain_spanish = '¿Alguna vez le han diagnosticado cáncer?' WHERE survey_question_id = 507;
UPDATE ag.survey_question SET spanish = '¿Toma medicamentos para aliviar sus síntomas?', spain_spanish = '¿Toma medicamentos para aliviar sus síntomas?' WHERE survey_question_id = 415;
UPDATE ag.survey_question SET spanish = 'Si practicas el ayuno intermitente, ¿qué tipo sigues?', spain_spanish = 'Si practicas el ayuno intermitente, ¿qué tipo sigues?' WHERE survey_question_id = 423;
UPDATE ag.survey_question SET spanish = '¿Cuántas comidas sueles comer al día?', spain_spanish = '¿Cuántas comidas sueles comer al día?' WHERE survey_question_id = 425;
UPDATE ag.survey_question SET spanish = '¿Cuántas meriendas/snacks comes típicamente al día?', spain_spanish = '¿Cuántas meriendas/snacks comes típicamente al día?' WHERE survey_question_id = 426;
UPDATE ag.survey_question SET spanish = '¿Cuándo consume la mayor parte de sus calorías diarias?', spain_spanish = '¿Cuándo consume la mayor parte de sus calorías diarias?' WHERE survey_question_id = 427;
UPDATE ag.survey_question SET spanish = 'Si toma un suplemento de fibra, ¿qué tipo toma? Seleccione todas las que correspondan.', spain_spanish = 'Si toma un suplemento de fibra, ¿qué tipo toma? Seleccione todas las que correspondan.' WHERE survey_question_id = 433;
UPDATE ag.survey_question SET spanish = '¿Es usted un bebé que recibe la mayor parte de su nutrición de la leche materna o fórmula, o un adulto que recibe la mayor parte (más del 75 % de las calorías diarias) de su alimentación de batidos nutricionales para adultos (por ejemplo, Ensure)?', spain_spanish = '¿Es usted un bebé que recibe la mayor parte de su nutrición de la leche materna o fórmula, o un adulto que recibe la mayor parte (más del 75 % de las calorías diarias) de su alimentación de batidos nutricionales para adultos (por ejemplo, Ensure)?' WHERE survey_question_id = 498;
UPDATE ag.survey_question SET spanish = 'Enumere/describa cualquier otra restricción dietética especial que siga que no se haya indicado anteriormente.', spain_spanish = 'Enumere/describa cualquier otra restricción dietética especial que siga que no se haya indicado anteriormente.' WHERE survey_question_id = 424;
UPDATE ag.survey_question SET spanish = '¿A qué hora suele comer su última comida o merienda antes de irse a dormir?', spain_spanish = '¿A qué hora suele comer su última comida o merienda antes de irse a dormir?' WHERE survey_question_id = 428;
UPDATE ag.survey_question SET spanish = '¿Con qué frecuencia toma un suplemento de fibra?', spain_spanish = '¿Con qué frecuencia toma un suplemento de fibra?' WHERE survey_question_id = 434;
UPDATE ag.survey_question SET spanish = 'En una semana promedio, ¿con qué frecuencia consume alimentos fortificados con alto contenido de fibra (por ejemplo, Fiber One)?', spain_spanish = 'En una semana promedio, ¿con qué frecuencia consume alimentos fortificados con alto contenido de fibra (por ejemplo, Fiber One)?' WHERE survey_question_id = 443;
UPDATE ag.survey_question SET spanish = '¿Con qué frecuencia consume alimentos que contienen edulcorantes no nutritivos o bajos en calorías?', spain_spanish = '¿Con qué frecuencia consume alimentos que contienen edulcorantes no nutritivos o bajos en calorías?' WHERE survey_question_id = 463;
UPDATE ag.survey_question SET spanish = 'En casa, ¿cuál es la principal fuente de agua potable sin saborizantes? Esto puede incluir agua sin gas o con gas/carbonatada. *En las opciones a continuación, "embotellado" incluye botellas, jarras, enfriadores de agua o dispensadores de agua.', spain_spanish = 'En casa, ¿cuál es la principal fuente de agua potable sin saborizantes? Esto puede incluir agua sin gas o con gas/carbonatada. *En las opciones a continuación, "embotellado" incluye botellas, jarras, enfriadores de agua o dispensadores de agua.' WHERE survey_question_id = 474;
UPDATE ag.survey_question SET spanish = 'Cuando está fuera de casa, ¿cuál es la principal fuente de agua potable sin saborizantes? Esto puede incluir agua sin gas o con gas/carbonatada. *En las opciones a continuación, "embotellado" incluye botellas, jarras, enfriadores de agua o dispensadores de agua.', spain_spanish = 'Cuando está fuera de casa, ¿cuál es la principal fuente de agua potable sin saborizantes? Esto puede incluir agua sin gas o con gas/carbonatada. *En las opciones a continuación, "embotellado" incluye botellas, jarras, enfriadores de agua o dispensadores de agua.' WHERE survey_question_id = 476;
UPDATE ag.survey_question SET spanish = '¿Cuándo empezaste a consumir alimentos fermentados?', spain_spanish = '¿Cuándo empezaste a consumir alimentos fermentados?' WHERE survey_question_id = 478;
UPDATE ag.survey_question SET spanish = '¿Cuánto consume normalmente en una sentada?', spain_spanish = '¿Cuánto consume normalmente en una sentada?' WHERE survey_question_id = 462;
UPDATE ag.survey_question SET spanish = 'Si respondió "sí" a consumir bebidas y/o alimentos que contienen edulcorantes no nutritivos o bajos en calorías, ¿qué tipo de edulcorantes no nutritivos o bajos en calorías consume regularmente? Seleccione todas las que correspondan.', spain_spanish = 'Si respondió "sí" a consumir bebidas y/o alimentos que contienen edulcorantes no nutritivos o bajos en calorías, ¿qué tipo de edulcorantes no nutritivos o bajos en calorías consume regularmente? Seleccione todas las que correspondan.' WHERE survey_question_id = 464;
UPDATE ag.survey_question SET spanish = 'Si respondió "sí" a la pregunta anterior, ¿cuáles son los síntomas? Seleccione todas las que correspondan.', spain_spanish = 'Si respondió "sí" a la pregunta anterior, ¿cuáles son los síntomas? Seleccione todas las que correspondan.' WHERE survey_question_id = 466;
UPDATE ag.survey_question SET spanish = 'Cuando consume alimentos o bebidas que contienen edulcorantes no nutritivos o bajos en calorías, ¿tiende a experimentar sintomas gastrointestinales posteriores, como gases, inflamación y/o diarrea?', spain_spanish = 'Cuando consume alimentos o bebidas que contienen edulcorantes no nutritivos o bajos en calorías, ¿tiende a experimentar sintomas gastrointestinales posteriores, como gases, inflamación y/o diarrea?' WHERE survey_question_id = 465;
UPDATE ag.survey_question SET spanish = 'En casa, ¿aplica tratamiento adicional (sin incluir el filtrado) al agua que bebe antes de su consumo (p. ej., hervir, tabletas de purificación, cloro/lejía)?', spain_spanish = 'En casa, ¿aplica tratamiento adicional (sin incluir el filtrado) al agua que bebe antes de su consumo (p. ej., hervir, tabletas de purificación, cloro/lejía)?' WHERE survey_question_id = 475;
UPDATE ag.survey_question SET spanish = 'Cuando está fuera de casa, ¿aplica tratamiento adicional al agua que bebe antes de consumirla (p. ej., hervir, tabletas de purificación, cloro/lejía)?', spain_spanish = 'Cuando está fuera de casa, ¿aplica tratamiento adicional al agua que bebe antes de consumirla (p. ej., hervir, tabletas de purificación, cloro/lejía)?' WHERE survey_question_id = 477;
UPDATE ag.survey_question SET spanish = 'Por favor, describa su principal fuente de agua en el hogar:', spain_spanish = 'Por favor, describa su principal fuente de agua en el hogar:' WHERE survey_question_id = 519;
UPDATE ag.survey_question SET spanish = 'Por favor, describa su principal fuente de agua fuera del hogar:', spain_spanish = 'Por favor, describa su principal fuente de agua fuera del hogar:' WHERE survey_question_id = 520;
UPDATE ag.survey_question SET spanish = 'En el último mes, ¿ha estado expuesto a alguien que probablemente tenga coronavirus/COVID-19? (marque todas las que correspondan)', spain_spanish = 'En el último mes, ¿ha estado expuesto a alguien que probablemente tenga coronavirus/COVID-19? (marque todas las que correspondan)' WHERE survey_question_id = 211;
UPDATE ag.survey_question SET spanish = 'En el último mes, ¿ha sido sospechoso de tener una infección por Coronavirus/COVID-19?', spain_spanish = 'En el último mes, ¿ha sido sospechoso de tener una infección por Coronavirus/COVID-19?' WHERE survey_question_id = 212;
UPDATE ag.survey_question SET spanish = 'En las últimas 6 semanas, ¿ha tenido alguno de los siguientes síntomas? (marque todos los que correspondan)', spain_spanish = 'En las últimas 6 semanas, ¿ha tenido alguno de los siguientes síntomas? (marque todos los que correspondan)' WHERE survey_question_id = 214;
UPDATE ag.survey_question SET spanish = '¿Cuántas veces se has contagiado de Coronavirus/COVID-19?', spain_spanish = '¿Cuántas veces se has contagiado de Coronavirus/COVID-19?' WHERE survey_question_id = 521;
UPDATE ag.survey_question SET spanish = 'Describa la calidad de la evacuación:<br /><div class="bristol-img-container"><img src="/static/img/bristol_1.png" id="bristol-chart-1" /></div><span class="bristol-chart-text">Tipo 1: Heces en bolas duras y separadas. Como frutos secos.<br />Tipo 2: Heces con forma alargada como una salchicha pero con relieves como formada por bolas unidas.</span><div class="bristol-img-container"><img src="/static/img/bristol_2.png" id="bristol-chart-2" /></div><span class="bristol-chart-text">Tipo 3: Heces con forma alargada como una salchicha, con grietas en la superficie.<br />Tipo 4: Heces con forma alargada como una salchicha, lisa y blanda.</span><div class="bristol-img-container"><img src="/static/img/bristol_3.png" id="bristol-chart-3" /></div><span class="bristol-chart-text">Tipo 5: Heces blandas y a trozos separadas o con bordes definidos.<br />Tipo 6: Heces blandas y a trozos separadas o con bordes pegados como mermelada o puré.<br />Tipo 7: Heces líquidas sin trozos sólidos.</span>', spain_spanish = 'Describa la calidad de la evacuación:<br /><div class="bristol-img-container"><img src="/static/img/bristol_1.png" id="bristol-chart-1" /></div><span class="bristol-chart-text">Tipo 1: Heces en bolas duras y separadas. Como frutos secos.<br />Tipo 2: Heces con forma alargada como una salchicha pero con relieves como formada por bolas unidas.</span><div class="bristol-img-container"><img src="/static/img/bristol_2.png" id="bristol-chart-2" /></div><span class="bristol-chart-text">Tipo 3: Heces con forma alargada como una salchicha, con grietas en la superficie.<br />Tipo 4: Heces con forma alargada como una salchicha, lisa y blanda.</span><div class="bristol-img-container"><img src="/static/img/bristol_3.png" id="bristol-chart-3" /></div><span class="bristol-chart-text">Tipo 5: Heces blandas y a trozos separadas o con bordes definidos.<br />Tipo 6: Heces blandas y a trozos separadas o con bordes pegados como mermelada o puré.<br />Tipo 7: Heces líquidas sin trozos sólidos.</span>' WHERE survey_question_id = 38;

-- Update survey_response entries
UPDATE ag.survey_response SET spanish = 'Prediabetes', spain_spanish = 'Prediabetes' WHERE american = 'Prediabetes';
UPDATE ag.survey_response SET spanish = 'Blanco', spain_spanish = 'Blanco' WHERE american = 'White';
UPDATE ag.survey_response SET spanish = '0', spain_spanish = '0' WHERE american = '0';
UPDATE ag.survey_response SET spanish = '1-2 veces/semana', spain_spanish = '1-2 veces/semana' WHERE american = '1-2 times/week';
UPDATE ag.survey_response SET spanish = '10', spain_spanish = '10' WHERE american = '10';
UPDATE ag.survey_response SET spanish = '10:00AM', spain_spanish = '10:00AM' WHERE american = '10:00AM';
UPDATE ag.survey_response SET spanish = '10:00PM', spain_spanish = '10:00PM' WHERE american = '10:00PM';
UPDATE ag.survey_response SET spanish = '10:30AM', spain_spanish = '10:30AM' WHERE american = '10:30AM';
UPDATE ag.survey_response SET spanish = '10:30PM', spain_spanish = '10:30PM' WHERE american = '10:30PM';
UPDATE ag.survey_response SET spanish = '11:00AM', spain_spanish = '11:00AM' WHERE american = '11:00AM';
UPDATE ag.survey_response SET spanish = '11:00PM', spain_spanish = '11:00PM' WHERE american = '11:00PM';
UPDATE ag.survey_response SET spanish = '11:30AM', spain_spanish = '11:30AM' WHERE american = '11:30AM';
UPDATE ag.survey_response SET spanish = '11:30PM', spain_spanish = '11:30PM' WHERE american = '11:30PM';
UPDATE ag.survey_response SET spanish = '12-16 fl oz (355-473 ml)', spain_spanish = '12-16 fl oz (355-473 ml)' WHERE american = '12-16 fl oz (355-473 ml)';
UPDATE ag.survey_response SET spanish = '12:00AM', spain_spanish = '12:00AM' WHERE american = '12:00AM';
UPDATE ag.survey_response SET spanish = '12:00PM', spain_spanish = '12:00PM' WHERE american = '12:00PM';
UPDATE ag.survey_response SET spanish = '12:30AM', spain_spanish = '12:30AM' WHERE american = '12:30AM';
UPDATE ag.survey_response SET spanish = '12:30PM', spain_spanish = '12:30PM' WHERE american = '12:30PM';
UPDATE ag.survey_response SET spanish = '16-20 fl oz (473-591 ml)', spain_spanish = '16-20 fl oz (473-591 ml)' WHERE american = '16-20 fl oz (473-591 ml)';
UPDATE ag.survey_response SET spanish = '1:00AM', spain_spanish = '1:00AM' WHERE american = '1:00AM';
UPDATE ag.survey_response SET spanish = '1:00PM', spain_spanish = '1:00PM' WHERE american = '1:00PM';
UPDATE ag.survey_response SET spanish = '1:30AM', spain_spanish = '1:30AM' WHERE american = '1:30AM';
UPDATE ag.survey_response SET spanish = '1:30PM', spain_spanish = '1:30PM' WHERE american = '1:30PM';
UPDATE ag.survey_response SET spanish = '2', spain_spanish = '2' WHERE american = '2';
UPDATE ag.survey_response SET spanish = '2 veces al día', spain_spanish = '2 veces al día' WHERE american = '2 times a day';
UPDATE ag.survey_response SET spanish = '2-3 días por semana', spain_spanish = '2-3 días por semana' WHERE american = '2-3 days per week';
UPDATE ag.survey_response SET spanish = 'Ayuno de 24 horas ', spain_spanish = 'Ayuno de 24 horas ' WHERE american = '24 hour fast (aka eat-stop-eat method)';
UPDATE ag.survey_response SET spanish = '2:00AM', spain_spanish = '2:00AM' WHERE american = '2:00AM';
UPDATE ag.survey_response SET spanish = '2:00PM', spain_spanish = '2:00PM' WHERE american = '2:00PM';
UPDATE ag.survey_response SET spanish = '2:30AM', spain_spanish = '2:30AM' WHERE american = '2:30AM';
UPDATE ag.survey_response SET spanish = '2:30PM', spain_spanish = '2:30PM' WHERE american = '2:30PM';
UPDATE ag.survey_response SET spanish = '3', spain_spanish = '3' WHERE american = '3';
UPDATE ag.survey_response SET spanish = '3-5 veces/semana', spain_spanish = '3-5 veces/semana' WHERE american = '3-5 times/week';
UPDATE ag.survey_response SET spanish = '3:00AM', spain_spanish = '3:00AM' WHERE american = '3:00AM';
UPDATE ag.survey_response SET spanish = '3:00PM', spain_spanish = '3:00PM' WHERE american = '3:00PM';
UPDATE ag.survey_response SET spanish = '3:30AM', spain_spanish = '3:30AM' WHERE american = '3:30AM';
UPDATE ag.survey_response SET spanish = '3:30PM', spain_spanish = '3:30PM' WHERE american = '3:30PM';
UPDATE ag.survey_response SET spanish = '4', spain_spanish = '4' WHERE american = '4';
UPDATE ag.survey_response SET spanish = '4-6 días por semana', spain_spanish = '4-6 días por semana' WHERE american = '4-6 days per week';
UPDATE ag.survey_response SET spanish = '4-8 fl oz (118-237 ml)', spain_spanish = '4-8 fl oz (118-237 ml)' WHERE american = '4-8 fl oz (118-237 ml)';
UPDATE ag.survey_response SET spanish = '4:00AM', spain_spanish = '4:00AM' WHERE american = '4:00AM';
UPDATE ag.survey_response SET spanish = '4:00PM', spain_spanish = '4:00PM' WHERE american = '4:00PM';
UPDATE ag.survey_response SET spanish = '4:30AM', spain_spanish = '4:30AM' WHERE american = '4:30AM';
UPDATE ag.survey_response SET spanish = '4:30PM', spain_spanish = '4:30PM' WHERE american = '4:30PM';
UPDATE ag.survey_response SET spanish = '5', spain_spanish = '5' WHERE american = '5';
UPDATE ag.survey_response SET spanish = '5:00AM', spain_spanish = '5:00AM' WHERE american = '5:00AM';
UPDATE ag.survey_response SET spanish = '5:00PM', spain_spanish = '5:00PM' WHERE american = '5:00PM';
UPDATE ag.survey_response SET spanish = 'Método 5:2 ', spain_spanish = 'Método 5:2 ' WHERE american = '5:2 method';
UPDATE ag.survey_response SET spanish = '5:30AM', spain_spanish = '5:30AM' WHERE american = '5:30AM';
UPDATE ag.survey_response SET spanish = '5:30PM', spain_spanish = '5:30PM' WHERE american = '5:30PM';
UPDATE ag.survey_response SET spanish = '6', spain_spanish = '6' WHERE american = '6';
UPDATE ag.survey_response SET spanish = '6:00AM', spain_spanish = '6:00AM' WHERE american = '6:00AM';
UPDATE ag.survey_response SET spanish = '6:00PM', spain_spanish = '6:00PM' WHERE american = '6:00PM';
UPDATE ag.survey_response SET spanish = '6:30AM', spain_spanish = '6:30AM' WHERE american = '6:30AM';
UPDATE ag.survey_response SET spanish = '6:30PM', spain_spanish = '6:30PM' WHERE american = '6:30PM';
UPDATE ag.survey_response SET spanish = '7', spain_spanish = '7' WHERE american = '7';
UPDATE ag.survey_response SET spanish = '7:00AM', spain_spanish = '7:00AM' WHERE american = '7:00AM';
UPDATE ag.survey_response SET spanish = '7:00PM', spain_spanish = '7:00PM' WHERE american = '7:00PM';
UPDATE ag.survey_response SET spanish = '7:30AM', spain_spanish = '7:30AM' WHERE american = '7:30AM';
UPDATE ag.survey_response SET spanish = '7:30PM', spain_spanish = '7:30PM' WHERE american = '7:30PM';
UPDATE ag.survey_response SET spanish = '8', spain_spanish = '8' WHERE american = '8';
UPDATE ag.survey_response SET spanish = '8-12 fl oz (237-355 ml)', spain_spanish = '8-12 fl oz (237-355 ml)' WHERE american = '8-12 fl oz (237-355 ml)';
UPDATE ag.survey_response SET spanish = '8:00AM', spain_spanish = '8:00AM' WHERE american = '8:00AM';
UPDATE ag.survey_response SET spanish = '8:00PM', spain_spanish = '8:00PM' WHERE american = '8:00PM';
UPDATE ag.survey_response SET spanish = '8:30AM', spain_spanish = '8:30AM' WHERE american = '8:30AM';
UPDATE ag.survey_response SET spanish = '8:30PM', spain_spanish = '8:30PM' WHERE american = '8:30PM';
UPDATE ag.survey_response SET spanish = '9', spain_spanish = '9' WHERE american = '9';
UPDATE ag.survey_response SET spanish = '9:00AM', spain_spanish = '9:00AM' WHERE american = '9:00AM';
UPDATE ag.survey_response SET spanish = '9:00PM', spain_spanish = '9:00PM' WHERE american = '9:00PM';
UPDATE ag.survey_response SET spanish = '9:30AM', spain_spanish = '9:30AM' WHERE american = '9:30AM';
UPDATE ag.survey_response SET spanish = '9:30PM', spain_spanish = '9:30PM' WHERE american = '9:30PM';
UPDATE ag.survey_response SET spanish = '<4 fl oz (<118 ml)', spain_spanish = '<4 fl oz (<118 ml)' WHERE american = '<4 fl oz (<118 ml)';
UPDATE ag.survey_response SET spanish = '>20 fl oz (>591 ml)', spain_spanish = '>20 fl oz (>591 ml)' WHERE american = '>20 fl oz (>591 ml)';
UPDATE ag.survey_response SET spanish = 'Algunas veces al año', spain_spanish = 'Algunas veces al año' WHERE american = 'A few times a year';
UPDATE ag.survey_response SET spanish = 'Acesulfamo de potasio', spain_spanish = 'Acesulfamo de potasio' WHERE american = 'Acesulfame potassium';
UPDATE ag.survey_response SET spanish = 'Actividad/ejercicio', spain_spanish = 'Actividad/ejercicio' WHERE american = 'Activity/exercise';
UPDATE ag.survey_response SET spanish = 'Cáncer suprarrenal', spain_spanish = 'Cáncer suprarrenal' WHERE american = 'Adrenal cancer';
UPDATE ag.survey_response SET spanish = 'Entrenamiento aeróbico/cardio', spain_spanish = 'Entrenamiento aeróbico/cardio' WHERE american = 'Aerobic/cardio training';
UPDATE ag.survey_response SET spanish = 'Ayuno en días alternos', spain_spanish = 'Ayuno en días alternos' WHERE american = 'Alternate day fasting';
UPDATE ag.survey_response SET spanish = 'Fibra de manzana', spain_spanish = 'Fibra de manzana' WHERE american = 'Apple fiber';
UPDATE ag.survey_response SET spanish = 'Asiático', spain_spanish = 'Asiático' WHERE american = 'Asian';
UPDATE ag.survey_response SET spanish = 'Aspartame', spain_spanish = 'Aspartame' WHERE american = 'Aspartame';
UPDATE ag.survey_response SET spanish = 'Certificados de grado asociados (generalmente de 2 años)', spain_spanish = 'Certificados de grado asociados (generalmente de 2 años)' WHERE american = 'Associate''s degree (e.g. AA, AS))';
UPDATE ag.survey_response SET spanish = 'Aura', spain_spanish = 'Aura' WHERE american = 'Aura';
UPDATE ag.survey_response SET spanish = 'Título de licenciatura', spain_spanish = 'Título de licenciatura' WHERE american = 'Bachelor''s degree (e.g. BA, BS)';
UPDATE ag.survey_response SET spanish = 'Entrenamiento de equilibrio', spain_spanish = 'Entrenamiento de equilibrio' WHERE american = 'Balance training';
UPDATE ag.survey_response SET spanish = 'Negro o afroamericano', spain_spanish = 'Negro o afroamericano' WHERE american = 'Black or African American';
UPDATE ag.survey_response SET spanish = 'Cáncer de vejiga', spain_spanish = 'Cáncer de vejiga' WHERE american = 'Bladder cancer';
UPDATE ag.survey_response SET spanish = 'Dolor corporal donde no debería existir;', spain_spanish = 'Dolor corporal donde no debería existir;' WHERE american = 'Body pain where it shouldn''t exist;';
UPDATE ag.survey_response SET spanish = 'Agua purificada embotellada* (no indica "agua de manantial" o "agua mineral natural" en la etiqueta)', spain_spanish = 'Agua purificada embotellada* (no indica "agua de manantial" o "agua mineral natural" en la etiqueta)' WHERE american = 'Bottled* purified water (does not indicate "spring water" or "natural mineral water" on the label)';
UPDATE ag.survey_response SET spanish = 'Cáncer cerebral (incluye gliomas y glioblastomas)', spain_spanish = 'Cáncer cerebral (incluye gliomas y glioblastomas)' WHERE american = 'Brain cancer (includes gliomas and glioblastomas)';
UPDATE ag.survey_response SET spanish = 'Cáncer de mama', spain_spanish = 'Cáncer de mama' WHERE american = 'Breast cancer';
UPDATE ag.survey_response SET spanish = 'Las calorías son distribuidas uniformemente a lo largo del día.', spain_spanish = 'Las calorías son distribuidas uniformemente a lo largo del día.' WHERE american = 'Calories are evenly distributed throughout the day';
UPDATE ag.survey_response SET spanish = 'Cáncer de cuello uterino', spain_spanish = 'Cáncer de cuello uterino' WHERE american = 'Cervical cancer';
UPDATE ag.survey_response SET spanish = 'Colangiocarcinoma', spain_spanish = 'Colangiocarcinoma' WHERE american = 'Cholangiocarcinoma';
UPDATE ag.survey_response SET spanish = 'Cáncer de colon', spain_spanish = 'Cáncer de colon' WHERE american = 'Colon cancer';
UPDATE ag.survey_response SET spanish = 'Enfermedad de Crohn colónica', spain_spanish = 'Enfermedad de Crohn colónica' WHERE american = 'Colonic Crohn''s disease';
UPDATE ag.survey_response SET spanish = 'Estriñimiento', spain_spanish = 'Estriñimiento' WHERE american = 'Constipation';
UPDATE ag.survey_response SET spanish = 'Kinder a Secundaria', spain_spanish = 'Kinder a Secundaria' WHERE american = 'Currently in K-12';
UPDATE ag.survey_response SET spanish = 'Alimentación restringida en el tiempo (TRE)', spain_spanish = 'Alimentación restringida en el tiempo (TRE)' WHERE american = 'Daily time-restricted eating (TRE)';
UPDATE ag.survey_response SET spanish = 'Dieta', spain_spanish = 'Dieta' WHERE american = 'Diet';
UPDATE ag.survey_response SET spanish = 'Título de Doctor', spain_spanish = 'Título de Doctor' WHERE american = 'Doctorate (eg. PhD, EdD)';
UPDATE ag.survey_response SET spanish = 'No sé', spain_spanish = 'No sé' WHERE american = 'Don''t know';
UPDATE ag.survey_response SET spanish = 'Cáncer de esófago', spain_spanish = 'Cáncer de esófago' WHERE american = 'Esophageal cancer';
UPDATE ag.survey_response SET spanish = 'Pocas veces/mes', spain_spanish = 'Pocas veces/mes' WHERE american = 'Few times/month';
UPDATE ag.survey_response SET spanish = 'Pocas veces/año', spain_spanish = 'Pocas veces/año' WHERE american = 'Few times/year';
UPDATE ag.survey_response SET spanish = 'Agua del grifo filtrada (jarra con filtro, grifo o purificadores de agua debajo del fregadero, sistemas de ósmosis inversa, ablandador de agua)', spain_spanish = 'Agua del grifo filtrada (jarra con filtro, grifo o purificadores de agua debajo del fregadero, sistemas de ósmosis inversa, ablandador de agua)' WHERE american = 'Filtered tap water (pitcher, faucet or under the sink water purifiers, reverse osmosis systems, water softener)';
UPDATE ag.survey_response SET spanish = 'Entrenamiento de flexibilidad', spain_spanish = 'Entrenamiento de flexibilidad' WHERE american = 'Flexibility training';
UPDATE ag.survey_response SET spanish = 'Vino fortificado', spain_spanish = 'Vino fortificado' WHERE american = 'Fortified wine';
UPDATE ag.survey_response SET spanish = 'Alimentos funcionales (por ejemplo, semillas de chía, salvado de trigo)', spain_spanish = 'Alimentos funcionales (por ejemplo, semillas de chía, salvado de trigo)' WHERE american = 'Functional food (e.g. chia seeds, wheat bran)';
UPDATE ag.survey_response SET spanish = 'Trastorno de ansiedad generalizada', spain_spanish = 'Trastorno de ansiedad generalizada' WHERE american = 'Generalized anxiety disorder';
UPDATE ag.survey_response SET spanish = 'Hard cider', spain_spanish = 'Hard cider' WHERE american = 'Hard cider';
UPDATE ag.survey_response SET spanish = 'Hard kombucha', spain_spanish = 'Hard kombucha' WHERE american = 'Hard kombucha';
UPDATE ag.survey_response SET spanish = 'Hard seltzer', spain_spanish = 'Hard seltzer' WHERE american = 'Hard seltzer';
UPDATE ag.survey_response SET spanish = 'Hard tea', spain_spanish = 'Hard tea' WHERE american = 'Hard tea';
UPDATE ag.survey_response SET spanish = 'Cáncer de cabeza y cuello', spain_spanish = 'Cáncer de cabeza y cuello' WHERE american = 'Head and Neck cancer';
UPDATE ag.survey_response SET spanish = 'Preparatoria', spain_spanish = 'Preparatoria' WHERE american = 'High school diploma or GED equivalent';
UPDATE ag.survey_response SET spanish = 'Hispano o latino', spain_spanish = 'Hispano o latino' WHERE american = 'Hispanic or Latino';
UPDATE ag.survey_response SET spanish = 'Medicamentos homeopáticos', spain_spanish = 'Medicamentos homeopáticos' WHERE american = 'Homeopathic medicines';
UPDATE ag.survey_response SET spanish = 'Terapia hormonal', spain_spanish = 'Terapia hormonal' WHERE american = 'Hormone therapy';
UPDATE ag.survey_response SET spanish = 'Hipertermia', spain_spanish = 'Hipertermia' WHERE american = 'Hyperthermia';
UPDATE ag.survey_response SET spanish = 'No como alimentos fermentados', spain_spanish = 'No como alimentos fermentados' WHERE american = 'I do not eat fermented foods';
UPDATE ag.survey_response SET spanish = 'No practico el ayuno intermitente', spain_spanish = 'No practico el ayuno intermitente' WHERE american = 'I do not practice intermittent fasting';
UPDATE ag.survey_response SET spanish = 'No tomo suplementos de fibra', spain_spanish = 'No tomo suplementos de fibra' WHERE american = 'I do not take fiber supplements';
UPDATE ag.survey_response SET spanish = 'No registro ninguna de mis actividades.', spain_spanish = 'No registro ninguna de mis actividades.' WHERE american = 'I do not track any of my activities';
UPDATE ag.survey_response SET spanish = 'No uso estos dispositivos antes de acostarme.', spain_spanish = 'No uso estos dispositivos antes de acostarme.' WHERE american = 'I do not use these devices before bed';
UPDATE ag.survey_response SET spanish = 'No bebo agua natural, sin sabor', spain_spanish = 'No bebo agua natural, sin sabor' WHERE american = 'I don''t drink plain, unflavored water';
UPDATE ag.survey_response SET spanish = 'Tomo un suplemento, pero no sé de qué tipo.', spain_spanish = 'Tomo un suplemento, pero no sé de qué tipo.' WHERE american = 'I take a supplement, but do not know what kind';
UPDATE ag.survey_response SET spanish = 'Enfermedad de Crohn ileal', spain_spanish = 'Enfermedad de Crohn ileal' WHERE american = 'Ileal Crohn''s disease';
UPDATE ag.survey_response SET spanish = 'Enfermedad de Crohn ileal y colónica', spain_spanish = 'Enfermedad de Crohn ileal y colónica' WHERE american = 'Ileal and Colonic Crohn''s disease';
UPDATE ag.survey_response SET spanish = 'Inmunoterapia', spain_spanish = 'Inmunoterapia' WHERE american = 'Immunotherapy';
UPDATE ag.survey_response SET spanish = 'Por la tarde', spain_spanish = 'Por la tarde' WHERE american = 'In the afternoon';
UPDATE ag.survey_response SET spanish = 'Por la noche', spain_spanish = 'Por la noche' WHERE american = 'In the evening';
UPDATE ag.survey_response SET spanish = 'Por la mañana', spain_spanish = 'Por la mañana' WHERE american = 'In the morning';
UPDATE ag.survey_response SET spanish = 'Inulina (por ejemplo, fiber choice)', spain_spanish = 'Inulina (por ejemplo, fiber choice)' WHERE american = 'Inulin (e.g. Fiber Choice)';
UPDATE ag.survey_response SET spanish = 'Irritabilidad o evitación de la rutina;', spain_spanish = 'Irritabilidad o evitación de la rutina;' WHERE american = 'Irritability or avoidance of routine;';
UPDATE ag.survey_response SET spanish = 'Casa/propiedad aislada (la población es inferior a 100)', spain_spanish = 'Casa/propiedad aislada (la población es inferior a 100)' WHERE american = 'Isolated house/farm (population is less than 100)';
UPDATE ag.survey_response SET spanish = 'Cáncer de riñon', spain_spanish = 'Cáncer de riñon' WHERE american = 'Kidney cancer';
UPDATE ag.survey_response SET spanish = 'Leucemia', spain_spanish = 'Leucemia' WHERE american = 'Leukemia';
UPDATE ag.survey_response SET spanish = 'Cáncer de hígado', spain_spanish = 'Cáncer de hígado' WHERE american = 'Liver cancer';
UPDATE ag.survey_response SET spanish = 'Cáncer de pulmón', spain_spanish = 'Cáncer de pulmón' WHERE american = 'Lung cancer';
UPDATE ag.survey_response SET spanish = 'Linfoma', spain_spanish = 'Linfoma' WHERE american = 'Lymphoma';
UPDATE ag.survey_response SET spanish = 'Licor de malta', spain_spanish = 'Licor de malta' WHERE american = 'Malt liquor';
UPDATE ag.survey_response SET spanish = 'Título de Maestría', spain_spanish = 'Título de Maestría' WHERE american = 'Master''s degree (e.g. MS, MA)';
UPDATE ag.survey_response SET spanish = 'Melanoma (piel)', spain_spanish = 'Melanoma (piel)' WHERE american = 'Melanoma (skin)';
UPDATE ag.survey_response SET spanish = 'Metilcelulosa (por ejemplo, Citrucel)', spain_spanish = 'Metilcelulosa (por ejemplo, Citrucel)' WHERE american = 'Methylcellulose (e.g. Citrucel)';
UPDATE ag.survey_response SET spanish = 'Metrópolis (la población es más de 1 millón)', spain_spanish = 'Metrópolis (la población es más de 1 millón)' WHERE american = 'Metropolis (population is more than 1 million)';
UPDATE ag.survey_response SET spanish = 'Fruta del monje', spain_spanish = 'Fruta del monje' WHERE american = 'Monk fruit';
UPDATE ag.survey_response SET spanish = 'Mensual', spain_spanish = 'Mensual' WHERE american = 'Monthly';
UPDATE ag.survey_response SET spanish = 'Más de 2 veces al día', spain_spanish = 'Más de 2 veces al día' WHERE american = 'More than 2 times a day';
UPDATE ag.survey_response SET spanish = 'Más de 4', spain_spanish = 'Más de 4' WHERE american = 'More than 4';
UPDATE ag.survey_response SET spanish = 'Multirracial', spain_spanish = 'Multirracial' WHERE american = 'Multiracial';
UPDATE ag.survey_response SET spanish = 'Nativo Americano o Nativo de Alaska', spain_spanish = 'Nativo Americano o Nativo de Alaska' WHERE american = 'Native American or Alaska Native';
UPDATE ag.survey_response SET spanish = 'Nativo Hawaiano u otro Isleño del Pacífico', spain_spanish = 'Nativo Hawaiano u otro Isleño del Pacífico' WHERE american = 'Native Hawaiian or Other Pacific Islander';
UPDATE ag.survey_response SET spanish = 'Agua mineral natural o de manantial embotellada* en otro país de la Unión Europea o del Reino Unido', spain_spanish = 'Agua mineral natural o de manantial embotellada* en otro país de la Unión Europea o del Reino Unido' WHERE american = 'Natural mineral or spring water bottled* in another country in the European Union or the UK';
UPDATE ag.survey_response SET spanish = 'Agua mineral natural o de manantial embotellada* en otro país fuera de la Unión Europea o el Reino Unido', spain_spanish = 'Agua mineral natural o de manantial embotellada* en otro país fuera de la Unión Europea o el Reino Unido' WHERE american = 'Natural mineral or spring water bottled* in another country not in the European Union or the UK';
UPDATE ag.survey_response SET spanish = 'Agua mineral natural o de manantial embotellada* localmente (es decir, en su país de residencia)', spain_spanish = 'Agua mineral natural o de manantial embotellada* localmente (es decir, en su país de residencia)' WHERE american = 'Natural mineral or spring water bottled* locally (i.e. in your country of residence)';
UPDATE ag.survey_response SET spanish = 'Náuseas y/o vómitos;', spain_spanish = 'Náuseas y/o vómitos;' WHERE american = 'Nausea and/or vomiting;';
UPDATE ag.survey_response SET spanish = 'Sin estudios formales', spain_spanish = 'Sin estudios formales' WHERE american = 'No formal education';
UPDATE ag.survey_response SET spanish = 'No, no tengo esta condición', spain_spanish = 'No, no tengo esta condición' WHERE american = 'No, I do not have this condition';
UPDATE ag.survey_response SET spanish = 'No, no tomo ningún medicamento para mis alergias', spain_spanish = 'No, no tomo ningún medicamento para mis alergias' WHERE american = 'No, I do not take any medications for my allergies';
UPDATE ag.survey_response SET spanish = 'No, ya no tengo cáncer', spain_spanish = 'No, ya no tengo cáncer' WHERE american = 'No, I no longer have cancer';
UPDATE ag.survey_response SET spanish = 'Fibra de avena', spain_spanish = 'Fibra de avena' WHERE american = 'Oat fiber';
UPDATE ag.survey_response SET spanish = 'Una vez por semana', spain_spanish = 'Una vez por semana' WHERE american = 'Once per week';
UPDATE ag.survey_response SET spanish = 'Solo durante el Ramadán', spain_spanish = 'Solo durante el Ramadán' WHERE american = 'Only during Ramadan';
UPDATE ag.survey_response SET spanish = 'Cáncer de ovarios', spain_spanish = 'Cáncer de ovarios' WHERE american = 'Ovarian cancer';
UPDATE ag.survey_response SET spanish = 'Cáncer de páncreas', spain_spanish = 'Cáncer de páncreas' WHERE american = 'Pancreatic cancer';
UPDATE ag.survey_response SET spanish = 'Ayuno periódico', spain_spanish = 'Ayuno periódico' WHERE american = 'Periodic fasting';
UPDATE ag.survey_response SET spanish = 'Cáncer de feocromocitoma y paraganglioma', spain_spanish = 'Cáncer de feocromocitoma y paraganglioma' WHERE american = 'Pheochromocytoma and paraganglioma cancer';
UPDATE ag.survey_response SET spanish = 'Fonofobia (sensibilidad al sonido);', spain_spanish = 'Fonofobia (sensibilidad al sonido);' WHERE american = 'Phonophobia (sensitivity to sound);';
UPDATE ag.survey_response SET spanish = 'Terapia fotodinámica', spain_spanish = 'Terapia fotodinámica' WHERE american = 'Photodynamic therapy';
UPDATE ag.survey_response SET spanish = 'Fotofobia (sensibilidad a la luz);', spain_spanish = 'Fotofobia (sensibilidad a la luz);' WHERE american = 'Photophobia (sensitivity to light);';
UPDATE ag.survey_response SET spanish = 'Título professional (quiropractico, veterinario)', spain_spanish = 'Título professional (quiropractico, veterinario)' WHERE american = 'Professional degree (e.g. MD,DDS, DVM)';
UPDATE ag.survey_response SET spanish = 'Cáncer de prostata', spain_spanish = 'Cáncer de prostata' WHERE american = 'Prostate cancer';
UPDATE ag.survey_response SET spanish = 'Psyllium (por ejemplo, Metamucil)', spain_spanish = 'Psyllium (por ejemplo, Metamucil)' WHERE american = 'Psyllium (e.g. Metamucil)';
UPDATE ag.survey_response SET spanish = 'Radioterapia', spain_spanish = 'Radioterapia' WHERE american = 'Radiotherapy';
UPDATE ag.survey_response SET spanish = 'Cáncer de recto', spain_spanish = 'Cáncer de recto' WHERE american = 'Rectal cancer';
UPDATE ag.survey_response SET spanish = 'Vino rosado', spain_spanish = 'Vino rosado' WHERE american = 'Rose wine';
UPDATE ag.survey_response SET spanish = 'Sacarina', spain_spanish = 'Sacarina' WHERE american = 'Saccharin';
UPDATE ag.survey_response SET spanish = 'Sake', spain_spanish = 'Sake' WHERE american = 'Sake';
UPDATE ag.survey_response SET spanish = 'Sarcoma', spain_spanish = 'Sarcoma' WHERE american = 'Sarcoma';
UPDATE ag.survey_response SET spanish = 'Desde la infancia/niñez', spain_spanish = 'Desde la infancia/niñez' WHERE american = 'Since infancy/childhood';
UPDATE ag.survey_response SET spanish = 'Dormir', spain_spanish = 'Dormir' WHERE american = 'Sleep';
UPDATE ag.survey_response SET spanish = 'Ciudad pequeña o pueblo (la población es de más de 100 y menos de 1000)', spain_spanish = 'Ciudad pequeña o pueblo (la población es de más de 100 y menos de 1000)' WHERE american = 'Small town or village (population is more than 100 and less than 1,000)';
UPDATE ag.survey_response SET spanish = 'Heces blandas', spain_spanish = 'Heces blandas' WHERE american = 'Soft stools';
UPDATE ag.survey_response SET spanish = 'Cerveza agria', spain_spanish = 'Cerveza agria' WHERE american = 'Sour beer';
UPDATE ag.survey_response SET spanish = 'Vino espumoso', spain_spanish = 'Vino espumoso' WHERE american = 'Sparkling wine';
UPDATE ag.survey_response SET spanish = 'Licores/cócteles', spain_spanish = 'Licores/cócteles' WHERE american = 'Spirits/liquors/hard alcohol';
UPDATE ag.survey_response SET spanish = 'Trasplante de células madre', spain_spanish = 'Trasplante de células madre' WHERE american = 'Stem cell transplant';
UPDATE ag.survey_response SET spanish = 'Stevia', spain_spanish = 'Stevia' WHERE american = 'Stevia';
UPDATE ag.survey_response SET spanish = 'Cáncer de estómago', spain_spanish = 'Cáncer de estómago' WHERE american = 'Stomach cancer';
UPDATE ag.survey_response SET spanish = 'Dolor de estómago', spain_spanish = 'Dolor de estómago' WHERE american = 'Stomachache';
UPDATE ag.survey_response SET spanish = 'Entrenamiento de fuerza', spain_spanish = 'Entrenamiento de fuerza' WHERE american = 'Strength training';
UPDATE ag.survey_response SET spanish = 'Sucralosa', spain_spanish = 'Sucralosa' WHERE american = 'Sucralose';
UPDATE ag.survey_response SET spanish = 'Alcoholes de azúcar (sorbitol, xilitol, lactitol, manitol, eritritol y maltitol)', spain_spanish = 'Alcoholes de azúcar (sorbitol, xilitol, lactitol, manitol, eritritol y maltitol)' WHERE american = 'Sugar alcohols (sorbitol, xylitol, lactitol, mannitol, erythritol, and maltitol)';
UPDATE ag.survey_response SET spanish = 'Cirugía', spain_spanish = 'Cirugía' WHERE american = 'Surgery';
UPDATE ag.survey_response SET spanish = 'Agua del grifo', spain_spanish = 'Agua del grifo' WHERE american = 'Tap water';
UPDATE ag.survey_response SET spanish = 'Terapia farmacológica dirigida ', spain_spanish = 'Terapia farmacológica dirigida ' WHERE american = 'Targeted (medication) therapy';
UPDATE ag.survey_response SET spanish = 'Cáncer testicular de células germinales', spain_spanish = 'Cáncer testicular de células germinales' WHERE american = 'Testicular germ cell cancer';
UPDATE ag.survey_response SET spanish = 'Cáncer de tiroides', spain_spanish = 'Cáncer de tiroides' WHERE american = 'Thyroid cancer';
UPDATE ag.survey_response SET spanish = 'Ciudad (la población es de más de 1000 y menos de 100 000)', spain_spanish = 'Ciudad (la población es de más de 1000 y menos de 100 000)' WHERE american = 'Town (population is more than 1,000 and less than 100,000)';
UPDATE ag.survey_response SET spanish = 'Colitis ulcerosa', spain_spanish = 'Colitis ulcerosa' WHERE american = 'Ulcerative Colitis';
UPDATE ag.survey_response SET spanish = 'Cáncer uterino', spain_spanish = 'Cáncer uterino' WHERE american = 'Uterine cancer';
UPDATE ag.survey_response SET spanish = 'Melanoma uveal', spain_spanish = 'Melanoma uveal' WHERE american = 'Uveal melanoma';
UPDATE ag.survey_response SET spanish = 'Vigoroso', spain_spanish = 'Vigoroso' WHERE american = 'Vigorous';
UPDATE ag.survey_response SET spanish = 'Especializaciones vocacionales', spain_spanish = 'Especializaciones vocacionales' WHERE american = 'Vocational training';
UPDATE ag.survey_response SET spanish = 'Semanalmente', spain_spanish = 'Semanalmente' WHERE american = 'Weekly';
UPDATE ag.survey_response SET spanish = 'Agua de pozo', spain_spanish = 'Agua de pozo' WHERE american = 'Well water';
UPDATE ag.survey_response SET spanish = 'Dextrina de trigo (por ejemplo, Benefiber)', spain_spanish = 'Dextrina de trigo (por ejemplo, Benefiber)' WHERE american = 'Wheat dextrin (e.g. Benefiber)';
UPDATE ag.survey_response SET spanish = 'En los últimos 10 años', spain_spanish = 'En los últimos 10 años' WHERE american = 'Within the last 10 years';
UPDATE ag.survey_response SET spanish = 'En los últimos 5 años', spain_spanish = 'En los últimos 5 años' WHERE american = 'Within the last 5 years';
UPDATE ag.survey_response SET spanish = 'En el último año', spain_spanish = 'En el último año' WHERE american = 'Within the last year';
UPDATE ag.survey_response SET spanish = 'Sí, actualmente tengo cáncer', spain_spanish = 'Sí, actualmente tengo cáncer' WHERE american = 'Yes, I currently have cancer';
UPDATE ag.survey_response SET spanish = 'Sí, tomo medicamentos homeopáticos', spain_spanish = 'Sí, tomo medicamentos homeopáticos' WHERE american = 'Yes, I take homeopathic medication';
UPDATE ag.survey_response SET spanish = 'Sí, tomo medicamentos de venta libre (sin receta)', spain_spanish = 'Sí, tomo medicamentos de venta libre (sin receta)' WHERE american = 'Yes, I take over-the-counter medication';
UPDATE ag.survey_response SET spanish = 'Sí, tomo medicamentos de venta con receta', spain_spanish = 'Sí, tomo medicamentos de venta con receta' WHERE american = 'Yes, I take prescription medication';
UPDATE ag.survey_response SET spanish = 'Sí, uso un parche anticonceptivo', spain_spanish = 'Sí, uso un parche anticonceptivo' WHERE american = 'Yes, I use a contraceptive patch';
UPDATE ag.survey_response SET spanish = 'Sí, uso un anillo vaginal anticonceptivo', spain_spanish = 'Sí, uso un anillo vaginal anticonceptivo' WHERE american = 'Yes, I use a contraceptive vaginal ring';
UPDATE ag.survey_response SET spanish = 'Sí, uso un DIU de cobre', spain_spanish = 'Sí, uso un DIU de cobre' WHERE american = 'Yes, I use a copper IUD';
UPDATE ag.survey_response SET spanish = 'Sí, uso un DIU hormonal/implante ', spain_spanish = 'Sí, uso un DIU hormonal/implante ' WHERE american = 'Yes, I use a hormonal IUD/implant';
UPDATE ag.survey_response SET spanish = 'Sí, uso un anticonceptivo inyectado', spain_spanish = 'Sí, uso un anticonceptivo inyectado' WHERE american = 'Yes, I use an injected contraceptive';
UPDATE ag.survey_response SET spanish = 'Sí, uso otros tipos de medicamentos que no son mencionados en esta lista', spain_spanish = 'Sí, uso otros tipos de medicamentos que no son mencionados en esta lista' WHERE american = 'Yes, I use other types of medication not listed here';
UPDATE ag.survey_response SET spanish = 'Sí, diagnosticado por un profesional médico especializado el área de la salud mental', spain_spanish = 'Sí, diagnosticado por un profesional médico especializado el área de la salud mental' WHERE american = 'Yes, diagnosed by a licensed mental health professional';
UPDATE ag.survey_response SET spanish = 'Sí, diagnosticado por un médico general o un asistente médico', spain_spanish = 'Sí, diagnosticado por un médico general o un asistente médico' WHERE american = 'Yes, diagnosed by a medical professional (doctor, physician assistant)';
UPDATE ag.survey_response SET spanish = 'Sí, diagnosticado por un médico alternativo o complementario', spain_spanish = 'Sí, diagnosticado por un médico alternativo o complementario' WHERE american = 'Yes, diagnosed by an alternative or complementary practitioner';
UPDATE ag.survey_response SET spanish = 'Ambos por igual', spain_spanish = 'Ambos por igual' WHERE american = 'Both equally';
UPDATE ag.survey_response SET spanish = 'Ciudad (la población es de más de 100.000 y menos de 1 millón)', spain_spanish = 'Ciudad (la población es de más de 100.000 y menos de 1 millón)' WHERE american = 'City (population is more than 100,000 and less than 1 million)';
UPDATE ag.survey_response SET spanish = '2021', spain_spanish = '2021' WHERE american = '2021';
UPDATE ag.survey_response SET spanish = '2022', spain_spanish = '2022' WHERE american = '2022';
UPDATE ag.survey_response SET spanish = 'N/A', spain_spanish = 'N/A' WHERE american = 'N/A';
UPDATE ag.survey_response SET spanish = 'Falta de aire o dificultad para respirar', spain_spanish = 'Falta de aire o dificultad para respirar' WHERE american = 'Shortness of breath or difficulty breathing';
UPDATE ag.survey_response SET spanish = 'Dolores de cabeza', spain_spanish = 'Dolores de cabeza' WHERE american = 'Headaches';
UPDATE ag.survey_response SET spanish = 'Dolores musculares', spain_spanish = 'Dolores musculares' WHERE american = 'Muscle aches';
UPDATE ag.survey_response SET spanish = 'Escurrimiento o congestión nasal', spain_spanish = 'Escurrimiento o congestión nasal' WHERE american = 'Runny or stuffy nose';
UPDATE ag.survey_response SET spanish = 'Sibilancias', spain_spanish = 'Sibilancias' WHERE american = 'Wheezing';
UPDATE ag.survey_response SET spanish = '3 o más', spain_spanish = '3 o más' WHERE american = '3 or more';
UPDATE ag.survey_response SET spanish = 'Escuela o carrera técnica', spain_spanish = 'Escuela o carrera técnica' WHERE american = 'Some college or technical school';