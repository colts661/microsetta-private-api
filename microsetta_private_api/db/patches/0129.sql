-- Translation adjustments
UPDATE ag.survey_question SET spanish = '¿Cuántas de las personas con las que vive no son parte de su familia?', spain_spanish = '¿Cuántas de las personas con las que vive no son parte de su familia?' WHERE survey_question_id = 17;
UPDATE ag.survey_question SET spanish = '¿Tiene alguna otra mascota en casa (que no sea perro o gato)?', spain_spanish = '¿Tiene alguna otra mascota en casa (que no sea perro o gato)?' WHERE survey_question_id = 149;
UPDATE ag.survey_response SET spanish = 'No preparo alimentos fermentados', spain_spanish = 'No preparo alimentos fermentados' WHERE american = 'I do not produce fermented foods';
