-- Offices
INSERT INTO offices (office_id, city, address) VALUES (1, 'Bucharest', 'Bucharest Office');
INSERT INTO offices (office_id, city, address) VALUES (2, 'Brasov', 'Brasov Office');
INSERT INTO offices (office_id, city, address) VALUES (3, 'Cluj-Napoca', 'Cluj-Napoca Office');
INSERT INTO offices (office_id, city, address) VALUES (4, 'Iasi', 'Iasi Office');
INSERT INTO offices (office_id, city, address) VALUES (5, 'Pitesti', 'Pitesti Office');
INSERT INTO offices (office_id, city, address) VALUES (6, 'Suceava', 'Suceava Office');
INSERT INTO offices (office_id, city, address) VALUES (7, 'Targu Mures', 'Targu Mures Office');
INSERT INTO offices (office_id, city, address) VALUES (8, 'Timisoara', 'Timisoara Office');

-- Admin
INSERT INTO app_users(full_name,email,role_code,line_manager_id,office_id)
VALUES('System Administrator','System.Administrator@endava.com','ADMIN',NULL,1);

-- HR
INSERT INTO app_users(full_name,email,role_code,line_manager_id,office_id)
VALUES('Teohari-Anamaria Diaconu','Teohari-Anamaria.Diaconu@endava.com','HR',NULL,1);
INSERT INTO app_users(full_name,email,role_code,line_manager_id,office_id)
VALUES('Octavia-Luciana Florea','Octavia-Luciana.Florea@endava.com','HR',NULL,1);
INSERT INTO app_users(full_name,email,role_code,line_manager_id,office_id)
VALUES('Donald Garcia','Donald.Garcia@endava.com','HR',NULL,1);
INSERT INTO app_users(full_name,email,role_code,line_manager_id,office_id)
VALUES('Joy-Brittany Gardner','Joy-Brittany.Gardner@endava.com','HR',NULL,1);
INSERT INTO app_users(full_name,email,role_code,line_manager_id,office_id)
VALUES('Andreea-Crenguța Ababei','Andreea-Crenguta.Ababei@endava.com','HR',NULL,2);
INSERT INTO app_users(full_name,email,role_code,line_manager_id,office_id)
VALUES('Loredana Ene','Loredana.Ene@endava.com','HR',NULL,2);
INSERT INTO app_users(full_name,email,role_code,line_manager_id,office_id)
VALUES('Gicu-Anca Suciu','Gicu-Anca.Suciu@endava.com','HR',NULL,3);
INSERT INTO app_users(full_name,email,role_code,line_manager_id,office_id)
VALUES('Matei Dumitrescu','Matei.Dumitrescu@endava.com','HR',NULL,3);
INSERT INTO app_users(full_name,email,role_code,line_manager_id,office_id)
VALUES('Valter Stan','Valter.Stan@endava.com','HR',NULL,4);
INSERT INTO app_users(full_name,email,role_code,line_manager_id,office_id)
VALUES('Robert-Joshua Cole','Robert-Joshua.Cole@endava.com','HR',NULL,4);
INSERT INTO app_users(full_name,email,role_code,line_manager_id,office_id)
VALUES('Misty Blake','Misty.Blake@endava.com','HR',NULL,5);
INSERT INTO app_users(full_name,email,role_code,line_manager_id,office_id)
VALUES('Gențiana-Ștefania Niță','Gentiana-Stefania.Nita@endava.com','HR',NULL,6);
INSERT INTO app_users(full_name,email,role_code,line_manager_id,office_id)
VALUES('Joshua Lewis','Joshua.Lewis@endava.com','HR',NULL,7);
INSERT INTO app_users(full_name,email,role_code,line_manager_id,office_id)
VALUES('Steluța-Cosmina Diaconescu','Steluta-Cosmina.Diaconescu@endava.com','HR',NULL,8);
INSERT INTO app_users(full_name,email,role_code,line_manager_id,office_id)
VALUES('Noah Howard','Noah.Howard@endava.com','HR',NULL,8);

-- Managers
INSERT INTO app_users(full_name,email,role_code,line_manager_id,office_id)
VALUES('Maurice Baker','Maurice.Baker@endava.com','LINE_MANAGER',NULL,1);
INSERT INTO app_users(full_name,email,role_code,line_manager_id,office_id)
VALUES('Ariana Pop','Ariana.Pop@endava.com','LINE_MANAGER',NULL,1);
INSERT INTO app_users(full_name,email,role_code,line_manager_id,office_id)
VALUES('Jean Diaconu','Jean.Diaconu@endava.com','LINE_MANAGER',NULL,1);
INSERT INTO app_users(full_name,email,role_code,line_manager_id,office_id)
VALUES('Teresa Gray','Teresa.Gray@endava.com','LINE_MANAGER',NULL,1);
INSERT INTO app_users(full_name,email,role_code,line_manager_id,office_id)
VALUES('Andrea Calderon','Andrea.Calderon@endava.com','LINE_MANAGER',NULL,2);
INSERT INTO app_users(full_name,email,role_code,line_manager_id,office_id)
VALUES('Christine-Barbara Hensley','Christine-Barbara.Hensley@endava.com','LINE_MANAGER',NULL,2);
INSERT INTO app_users(full_name,email,role_code,line_manager_id,office_id)
VALUES('Caterina-Voicu Albu','Caterina-Voicu.Albu@endava.com','LINE_MANAGER',NULL,3);
INSERT INTO app_users(full_name,email,role_code,line_manager_id,office_id)
VALUES('Luminița-Clara Ionescu','Luminita-Clara.Ionescu@endava.com','LINE_MANAGER',NULL,3);
INSERT INTO app_users(full_name,email,role_code,line_manager_id,office_id)
VALUES('Mara-Achim Diaconescu','Mara-Achim.Diaconescu@endava.com','LINE_MANAGER',NULL,4);
INSERT INTO app_users(full_name,email,role_code,line_manager_id,office_id)
VALUES('Olga Pop','Olga.Pop@endava.com','LINE_MANAGER',NULL,4);
INSERT INTO app_users(full_name,email,role_code,line_manager_id,office_id)
VALUES('Șerban-Georgiana Mocanu','Serban-Georgiana.Mocanu@endava.com','LINE_MANAGER',NULL,5);
INSERT INTO app_users(full_name,email,role_code,line_manager_id,office_id)
VALUES('Vlădelina Mazilescu','Vladelina.Mazilescu@endava.com','LINE_MANAGER',NULL,6);
INSERT INTO app_users(full_name,email,role_code,line_manager_id,office_id)
VALUES('Letiția Tudor','Letitia.Tudor@endava.com','LINE_MANAGER',NULL,7);
INSERT INTO app_users(full_name,email,role_code,line_manager_id,office_id)
VALUES('Natașa Voinea','Natasa.Voinea@endava.com','LINE_MANAGER',NULL,8);
INSERT INTO app_users(full_name,email,role_code,line_manager_id,office_id)
VALUES('Valentin Barbu','Valentin.Barbu@endava.com','LINE_MANAGER',NULL,8);

-- Employees
INSERT INTO app_users(full_name,email,role_code,line_manager_id,office_id)
VALUES('Chelsea Jackson','Chelsea.Jackson@endava.com','EMPLOYEE',10,1);
INSERT INTO app_users(full_name,email,role_code,line_manager_id,office_id)
VALUES('Marta Dobre','Marta.Dobre@endava.com','EMPLOYEE',10,1);
INSERT INTO app_users(full_name,email,role_code,line_manager_id,office_id)
VALUES('Steven Nelson','Steven.Nelson@endava.com','EMPLOYEE',10,1);
INSERT INTO app_users(full_name,email,role_code,line_manager_id,office_id)
VALUES('Theodor-Lorelei Stancu','Theodor-Lorelei.Stancu@endava.com','EMPLOYEE',10,1);
INSERT INTO app_users(full_name,email,role_code,line_manager_id,office_id)
VALUES('Simina-Magdalena Ardelean','Simina-Magdalena.Ardelean@endava.com','EMPLOYEE',10,1);
INSERT INTO app_users(full_name,email,role_code,line_manager_id,office_id)
VALUES('Andreea Manole','Andreea.Manole@endava.com','EMPLOYEE',10,1);
INSERT INTO app_users(full_name,email,role_code,line_manager_id,office_id)
VALUES('Richard Jones','Richard.Jones@endava.com','EMPLOYEE',10,1);
INSERT INTO app_users(full_name,email,role_code,line_manager_id,office_id)
VALUES('Mihnea Manole','Mihnea.Manole@endava.com','EMPLOYEE',10,1);
INSERT INTO app_users(full_name,email,role_code,line_manager_id,office_id)
VALUES('Jason Porter','Jason.Porter@endava.com','EMPLOYEE',10,1);
INSERT INTO app_users(full_name,email,role_code,line_manager_id,office_id)
VALUES('Titus-Fabiana Pop','Titus-Fabiana.Pop@endava.com','EMPLOYEE',10,1);
INSERT INTO app_users(full_name,email,role_code,line_manager_id,office_id)
VALUES('Narcisa-Mădălina Dima','Narcisa-Madalina.Dima@endava.com','EMPLOYEE',10,1);
INSERT INTO app_users(full_name,email,role_code,line_manager_id,office_id)
VALUES('Matei Stan','Matei.Stan@endava.com','EMPLOYEE',10,1);
INSERT INTO app_users(full_name,email,role_code,line_manager_id,office_id)
VALUES('Monica-Casian Stănescu','Monica-Casian.Stanescu@endava.com','EMPLOYEE',10,1);
INSERT INTO app_users(full_name,email,role_code,line_manager_id,office_id)
VALUES('Rachael Ross','Rachael.Ross@endava.com','EMPLOYEE',10,1);
INSERT INTO app_users(full_name,email,role_code,line_manager_id,office_id)
VALUES('Lorelei-Grigore Dima','Lorelei-Grigore.Dima@endava.com','EMPLOYEE',10,1);
INSERT INTO app_users(full_name,email,role_code,line_manager_id,office_id)
VALUES('Frederic Cristea','Frederic.Cristea@endava.com','EMPLOYEE',10,1);
INSERT INTO app_users(full_name,email,role_code,line_manager_id,office_id)
VALUES('Katelyn Callahan','Katelyn.Callahan@endava.com','EMPLOYEE',10,1);
INSERT INTO app_users(full_name,email,role_code,line_manager_id,office_id)
VALUES('Floriana Toma','Floriana.Toma@endava.com','EMPLOYEE',10,1);
INSERT INTO app_users(full_name,email,role_code,line_manager_id,office_id)
VALUES('Ernest Becker','Ernest.Becker@endava.com','EMPLOYEE',10,1);
INSERT INTO app_users(full_name,email,role_code,line_manager_id,office_id)
VALUES('Candace Cruz','Candace.Cruz@endava.com','EMPLOYEE',10,1);
INSERT INTO app_users(full_name,email,role_code,line_manager_id,office_id)
VALUES('Panagachie Pop','Panagachie.Pop@endava.com','EMPLOYEE',11,1);
INSERT INTO app_users(full_name,email,role_code,line_manager_id,office_id)
VALUES('Irinel Georgescu','Irinel.Georgescu@endava.com','EMPLOYEE',11,1);
INSERT INTO app_users(full_name,email,role_code,line_manager_id,office_id)
VALUES('Ludovic Aanei','Ludovic.Aanei@endava.com','EMPLOYEE',11,1);
INSERT INTO app_users(full_name,email,role_code,line_manager_id,office_id)
VALUES('Domnica Voinea','Domnica.Voinea@endava.com','EMPLOYEE',11,1);
INSERT INTO app_users(full_name,email,role_code,line_manager_id,office_id)
VALUES('Jean Gheorghiu','Jean.Gheorghiu@endava.com','EMPLOYEE',11,1);
INSERT INTO app_users(full_name,email,role_code,line_manager_id,office_id)
VALUES('Kayla-Kelly Peterson','Kayla-Kelly.Peterson@endava.com','EMPLOYEE',11,1);
INSERT INTO app_users(full_name,email,role_code,line_manager_id,office_id)
VALUES('Gabriela-Adelina Pop','Gabriela-Adelina.Pop@endava.com','EMPLOYEE',11,1);
INSERT INTO app_users(full_name,email,role_code,line_manager_id,office_id)
VALUES('Stephanie Liu','Stephanie.Liu@endava.com','EMPLOYEE',11,1);
INSERT INTO app_users(full_name,email,role_code,line_manager_id,office_id)
VALUES('Monica Preda','Monica.Preda@endava.com','EMPLOYEE',11,1);
INSERT INTO app_users(full_name,email,role_code,line_manager_id,office_id)
VALUES('Ina-Denisa Preda','Ina-Denisa.Preda@endava.com','EMPLOYEE',11,1);
INSERT INTO app_users(full_name,email,role_code,line_manager_id,office_id)
VALUES('Monica Evans','Monica.Evans@endava.com','EMPLOYEE',11,1);
INSERT INTO app_users(full_name,email,role_code,line_manager_id,office_id)
VALUES('Danielle Lynch','Danielle.Lynch@endava.com','EMPLOYEE',11,1);
INSERT INTO app_users(full_name,email,role_code,line_manager_id,office_id)
VALUES('Floriana Mocanu','Floriana.Mocanu@endava.com','EMPLOYEE',11,1);
INSERT INTO app_users(full_name,email,role_code,line_manager_id,office_id)
VALUES('Georgia Stan','Georgia.Stan@endava.com','EMPLOYEE',11,1);
INSERT INTO app_users(full_name,email,role_code,line_manager_id,office_id)
VALUES('Stephanie Nielsen','Stephanie.Nielsen@endava.com','EMPLOYEE',11,1);
INSERT INTO app_users(full_name,email,role_code,line_manager_id,office_id)
VALUES('Ada-Silviana Suciu','Ada-Silviana.Suciu@endava.com','EMPLOYEE',11,1);
INSERT INTO app_users(full_name,email,role_code,line_manager_id,office_id)
VALUES('Tracy Rodriguez','Tracy.Rodriguez@endava.com','EMPLOYEE',11,1);
INSERT INTO app_users(full_name,email,role_code,line_manager_id,office_id)
VALUES('Veta Ioniță','Veta.Ionita@endava.com','EMPLOYEE',11,1);
INSERT INTO app_users(full_name,email,role_code,line_manager_id,office_id)
VALUES('Maricica Ardelean','Maricica.Ardelean@endava.com','EMPLOYEE',11,1);
INSERT INTO app_users(full_name,email,role_code,line_manager_id,office_id)
VALUES('John-Christian Bradley','John-Christian.Bradley@endava.com','EMPLOYEE',11,1);
INSERT INTO app_users(full_name,email,role_code,line_manager_id,office_id)
VALUES('Filip Barbu','Filip.Barbu@endava.com','EMPLOYEE',12,1);
INSERT INTO app_users(full_name,email,role_code,line_manager_id,office_id)
VALUES('Iustin Dima','Iustin.Dima@endava.com','EMPLOYEE',12,1);
INSERT INTO app_users(full_name,email,role_code,line_manager_id,office_id)
VALUES('Elisaveta-Emanuil Tudor','Elisaveta-Emanuil.Tudor@endava.com','EMPLOYEE',12,1);
INSERT INTO app_users(full_name,email,role_code,line_manager_id,office_id)
VALUES('Luca Dobre','Luca.Dobre@endava.com','EMPLOYEE',12,1);
INSERT INTO app_users(full_name,email,role_code,line_manager_id,office_id)
VALUES('Narcisa Pușcașu','Narcisa.Puscasu@endava.com','EMPLOYEE',12,1);
INSERT INTO app_users(full_name,email,role_code,line_manager_id,office_id)
VALUES('Monique Henderson','Monique.Henderson@endava.com','EMPLOYEE',12,1);
INSERT INTO app_users(full_name,email,role_code,line_manager_id,office_id)
VALUES('Liana Stan','Liana.Stan@endava.com','EMPLOYEE',12,1);
INSERT INTO app_users(full_name,email,role_code,line_manager_id,office_id)
VALUES('Larisa-Angel Ioniță','Larisa-Angel.Ionita@endava.com','EMPLOYEE',12,1);
INSERT INTO app_users(full_name,email,role_code,line_manager_id,office_id)
VALUES('Valter Mocanu','Valter.Mocanu@endava.com','EMPLOYEE',12,1);
INSERT INTO app_users(full_name,email,role_code,line_manager_id,office_id)
VALUES('Codruț-Dacian Pușcașu','Codrut-Dacian.Puscasu@endava.com','EMPLOYEE',12,1);
INSERT INTO app_users(full_name,email,role_code,line_manager_id,office_id)
VALUES('Dumitra Florea','Dumitra.Florea@endava.com','EMPLOYEE',12,1);
INSERT INTO app_users(full_name,email,role_code,line_manager_id,office_id)
VALUES('Ludmila Barbu','Ludmila.Barbu@endava.com','EMPLOYEE',12,1);
INSERT INTO app_users(full_name,email,role_code,line_manager_id,office_id)
VALUES('Matthew-Jerry Chapman','Matthew-Jerry.Chapman@endava.com','EMPLOYEE',12,1);
INSERT INTO app_users(full_name,email,role_code,line_manager_id,office_id)
VALUES('Lorena Aanei','Lorena.Aanei@endava.com','EMPLOYEE',12,1);
INSERT INTO app_users(full_name,email,role_code,line_manager_id,office_id)
VALUES('Catinca-Blanduzia Toma','Catinca-Blanduzia.Toma@endava.com','EMPLOYEE',12,1);
INSERT INTO app_users(full_name,email,role_code,line_manager_id,office_id)
VALUES('Jeremy Whitehead','Jeremy.Whitehead@endava.com','EMPLOYEE',12,1);
INSERT INTO app_users(full_name,email,role_code,line_manager_id,office_id)
VALUES('Sorina Barbu','Sorina.Barbu@endava.com','EMPLOYEE',12,1);
INSERT INTO app_users(full_name,email,role_code,line_manager_id,office_id)
VALUES('Willie-Todd Ramirez','Willie-Todd.Ramirez@endava.com','EMPLOYEE',12,1);
INSERT INTO app_users(full_name,email,role_code,line_manager_id,office_id)
VALUES('Lascăr Dima','Lascar.Dima@endava.com','EMPLOYEE',12,1);
INSERT INTO app_users(full_name,email,role_code,line_manager_id,office_id)
VALUES('Mitruț Stoica','Mitrut.Stoica@endava.com','EMPLOYEE',12,1);
INSERT INTO app_users(full_name,email,role_code,line_manager_id,office_id)
VALUES('Thomas Mueller','Thomas.Mueller@endava.com','EMPLOYEE',13,1);
INSERT INTO app_users(full_name,email,role_code,line_manager_id,office_id)
VALUES('Lindsey-Collin Lee','Lindsey-Collin.Lee@endava.com','EMPLOYEE',13,1);
INSERT INTO app_users(full_name,email,role_code,line_manager_id,office_id)
VALUES('Cătălin Mazilescu','Catalin.Mazilescu@endava.com','EMPLOYEE',13,1);
INSERT INTO app_users(full_name,email,role_code,line_manager_id,office_id)
VALUES('Rodney-Jessica Owens','Rodney-Jessica.Owens@endava.com','EMPLOYEE',13,1);
INSERT INTO app_users(full_name,email,role_code,line_manager_id,office_id)
VALUES('Vicențiu Tomescu','Vicentiu.Tomescu@endava.com','EMPLOYEE',13,1);
INSERT INTO app_users(full_name,email,role_code,line_manager_id,office_id)
VALUES('Daiana-Antonie Ardelean','Daiana-Antonie.Ardelean@endava.com','EMPLOYEE',13,1);
INSERT INTO app_users(full_name,email,role_code,line_manager_id,office_id)
VALUES('Ștefana Diaconescu','Stefana.Diaconescu@endava.com','EMPLOYEE',13,1);
INSERT INTO app_users(full_name,email,role_code,line_manager_id,office_id)
VALUES('Mărioara Dumitrescu','Marioara.Dumitrescu@endava.com','EMPLOYEE',13,1);
INSERT INTO app_users(full_name,email,role_code,line_manager_id,office_id)
VALUES('Iuliana-Cristian Stan','Iuliana-Cristian.Stan@endava.com','EMPLOYEE',13,1);
INSERT INTO app_users(full_name,email,role_code,line_manager_id,office_id)
VALUES('Donald White','Donald.White@endava.com','EMPLOYEE',13,1);
INSERT INTO app_users(full_name,email,role_code,line_manager_id,office_id)
VALUES('Steven Baxter','Steven.Baxter@endava.com','EMPLOYEE',13,1);
INSERT INTO app_users(full_name,email,role_code,line_manager_id,office_id)
VALUES('Charles-Melissa Morton','Charles-Melissa.Morton@endava.com','EMPLOYEE',13,1);
INSERT INTO app_users(full_name,email,role_code,line_manager_id,office_id)
VALUES('Daiana-Vasilică Ardelean','Daiana-Vasilica.Ardelean@endava.com','EMPLOYEE',13,1);
INSERT INTO app_users(full_name,email,role_code,line_manager_id,office_id)
VALUES('Laurențiu-Crenguța Aanei','Laurentiu-Crenguta.Aanei@endava.com','EMPLOYEE',13,1);
INSERT INTO app_users(full_name,email,role_code,line_manager_id,office_id)
VALUES('Margareta Dobre','Margareta.Dobre@endava.com','EMPLOYEE',13,1);
INSERT INTO app_users(full_name,email,role_code,line_manager_id,office_id)
VALUES('Arsenie Popescu','Arsenie.Popescu@endava.com','EMPLOYEE',13,1);
INSERT INTO app_users(full_name,email,role_code,line_manager_id,office_id)
VALUES('Eugen Eftimie','Eugen.Eftimie@endava.com','EMPLOYEE',13,1);
INSERT INTO app_users(full_name,email,role_code,line_manager_id,office_id)
VALUES('Michelle Barrera','Michelle.Barrera@endava.com','EMPLOYEE',13,1);
INSERT INTO app_users(full_name,email,role_code,line_manager_id,office_id)
VALUES('Gherghina Nemeș','Gherghina.Nemes@endava.com','EMPLOYEE',13,1);
INSERT INTO app_users(full_name,email,role_code,line_manager_id,office_id)
VALUES('Adelaida-Narcisa Nemeș','Adelaida-Narcisa.Nemes@endava.com','EMPLOYEE',13,1);
INSERT INTO app_users(full_name,email,role_code,line_manager_id,office_id)
VALUES('Sara Glover','Sara.Glover@endava.com','EMPLOYEE',14,2);
INSERT INTO app_users(full_name,email,role_code,line_manager_id,office_id)
VALUES('Patricia Niță','Patricia.Nita@endava.com','EMPLOYEE',14,2);
INSERT INTO app_users(full_name,email,role_code,line_manager_id,office_id)
VALUES('Marcu Tudor','Marcu.Tudor@endava.com','EMPLOYEE',14,2);
INSERT INTO app_users(full_name,email,role_code,line_manager_id,office_id)
VALUES('Fiodor Dinu','Fiodor.Dinu@endava.com','EMPLOYEE',14,2);
INSERT INTO app_users(full_name,email,role_code,line_manager_id,office_id)
VALUES('Iuliana Ionescu','Iuliana.Ionescu@endava.com','EMPLOYEE',14,2);
INSERT INTO app_users(full_name,email,role_code,line_manager_id,office_id)
VALUES('Livia-Nicodim Ardelean','Livia-Nicodim.Ardelean@endava.com','EMPLOYEE',14,2);
INSERT INTO app_users(full_name,email,role_code,line_manager_id,office_id)
VALUES('Lazăr Ardelean','Lazar.Ardelean@endava.com','EMPLOYEE',14,2);
INSERT INTO app_users(full_name,email,role_code,line_manager_id,office_id)
VALUES('Salomea-Aura Ardelean','Salomea-Aura.Ardelean@endava.com','EMPLOYEE',14,2);
INSERT INTO app_users(full_name,email,role_code,line_manager_id,office_id)
VALUES('Breanna-Melissa Shaw','Breanna-Melissa.Shaw@endava.com','EMPLOYEE',14,2);
INSERT INTO app_users(full_name,email,role_code,line_manager_id,office_id)
VALUES('Gabriela Ardelean','Gabriela.Ardelean@endava.com','EMPLOYEE',14,2);
INSERT INTO app_users(full_name,email,role_code,line_manager_id,office_id)
VALUES('Gregorian Cristea','Gregorian.Cristea@endava.com','EMPLOYEE',14,2);
INSERT INTO app_users(full_name,email,role_code,line_manager_id,office_id)
VALUES('Irina Barbu','Irina.Barbu@endava.com','EMPLOYEE',14,2);
INSERT INTO app_users(full_name,email,role_code,line_manager_id,office_id)
VALUES('Pamfil Barbu','Pamfil.Barbu@endava.com','EMPLOYEE',14,2);
INSERT INTO app_users(full_name,email,role_code,line_manager_id,office_id)
VALUES('Marcheta Nistor','Marcheta.Nistor@endava.com','EMPLOYEE',14,2);
INSERT INTO app_users(full_name,email,role_code,line_manager_id,office_id)
VALUES('Draga-Mădălina Stoica','Draga-Madalina.Stoica@endava.com','EMPLOYEE',14,2);
INSERT INTO app_users(full_name,email,role_code,line_manager_id,office_id)
VALUES('Nicoară Suciu','Nicoara.Suciu@endava.com','EMPLOYEE',14,2);
INSERT INTO app_users(full_name,email,role_code,line_manager_id,office_id)
VALUES('Antonela Tabacu','Antonela.Tabacu@endava.com','EMPLOYEE',14,2);
INSERT INTO app_users(full_name,email,role_code,line_manager_id,office_id)
VALUES('Christopher Sandoval','Christopher.Sandoval@endava.com','EMPLOYEE',14,2);
INSERT INTO app_users(full_name,email,role_code,line_manager_id,office_id)
VALUES('Mihai-Saveta Pușcașu','Mihai-Saveta.Puscasu@endava.com','EMPLOYEE',14,2);
INSERT INTO app_users(full_name,email,role_code,line_manager_id,office_id)
VALUES('Mona Eftimie','Mona.Eftimie@endava.com','EMPLOYEE',14,2);
INSERT INTO app_users(full_name,email,role_code,line_manager_id,office_id)
VALUES('Elizabeth Edwards','Elizabeth.Edwards@endava.com','EMPLOYEE',15,2);
INSERT INTO app_users(full_name,email,role_code,line_manager_id,office_id)
VALUES('Narcisa-Elvira Nistor','Narcisa-Elvira.Nistor@endava.com','EMPLOYEE',15,2);
INSERT INTO app_users(full_name,email,role_code,line_manager_id,office_id)
VALUES('Emily Evans','Emily.Evans@endava.com','EMPLOYEE',15,2);
INSERT INTO app_users(full_name,email,role_code,line_manager_id,office_id)
VALUES('Saveta Barbu','Saveta.Barbu@endava.com','EMPLOYEE',15,2);
INSERT INTO app_users(full_name,email,role_code,line_manager_id,office_id)
VALUES('Aida-Sava Pop','Aida-Sava.Pop@endava.com','EMPLOYEE',15,2);
INSERT INTO app_users(full_name,email,role_code,line_manager_id,office_id)
VALUES('Yolanda-Charles Ferrell','Yolanda-Charles.Ferrell@endava.com','EMPLOYEE',15,2);
INSERT INTO app_users(full_name,email,role_code,line_manager_id,office_id)
VALUES('Ligia Preda','Ligia.Preda@endava.com','EMPLOYEE',15,2);
INSERT INTO app_users(full_name,email,role_code,line_manager_id,office_id)
VALUES('Narcisa-Timea Dima','Narcisa-Timea.Dima@endava.com','EMPLOYEE',15,2);
INSERT INTO app_users(full_name,email,role_code,line_manager_id,office_id)
VALUES('Casiana Florea','Casiana.Florea@endava.com','EMPLOYEE',15,2);
INSERT INTO app_users(full_name,email,role_code,line_manager_id,office_id)
VALUES('Viviana Ionescu','Viviana.Ionescu@endava.com','EMPLOYEE',15,2);
INSERT INTO app_users(full_name,email,role_code,line_manager_id,office_id)
VALUES('Eric-Jade Bass','Eric-Jade.Bass@endava.com','EMPLOYEE',15,2);
INSERT INTO app_users(full_name,email,role_code,line_manager_id,office_id)
VALUES('Răducu-Irinel Tomescu','Raducu-Irinel.Tomescu@endava.com','EMPLOYEE',15,2);
INSERT INTO app_users(full_name,email,role_code,line_manager_id,office_id)
VALUES('Agripina Tudor','Agripina.Tudor@endava.com','EMPLOYEE',15,2);
INSERT INTO app_users(full_name,email,role_code,line_manager_id,office_id)
VALUES('Lisa-Elizabeth Evans','Lisa-Elizabeth.Evans@endava.com','EMPLOYEE',15,2);
INSERT INTO app_users(full_name,email,role_code,line_manager_id,office_id)
VALUES('Erica-Dora Georgescu','Erica-Dora.Georgescu@endava.com','EMPLOYEE',15,2);
INSERT INTO app_users(full_name,email,role_code,line_manager_id,office_id)
VALUES('Despina Stancu','Despina.Stancu@endava.com','EMPLOYEE',15,2);
INSERT INTO app_users(full_name,email,role_code,line_manager_id,office_id)
VALUES('Francesca-Otilia Gheorghiu','Francesca-Otilia.Gheorghiu@endava.com','EMPLOYEE',15,2);
INSERT INTO app_users(full_name,email,role_code,line_manager_id,office_id)
VALUES('Cassandra Robbins','Cassandra.Robbins@endava.com','EMPLOYEE',15,2);
INSERT INTO app_users(full_name,email,role_code,line_manager_id,office_id)
VALUES('Lavinia-Stelian Voinea','Lavinia-Stelian.Voinea@endava.com','EMPLOYEE',15,2);
INSERT INTO app_users(full_name,email,role_code,line_manager_id,office_id)
VALUES('Nadia Preda','Nadia.Preda@endava.com','EMPLOYEE',15,2);
INSERT INTO app_users(full_name,email,role_code,line_manager_id,office_id)
VALUES('Tracy Whitehead','Tracy.Whitehead@endava.com','EMPLOYEE',16,3);
INSERT INTO app_users(full_name,email,role_code,line_manager_id,office_id)
VALUES('Meghan Davis','Meghan.Davis@endava.com','EMPLOYEE',16,3);
INSERT INTO app_users(full_name,email,role_code,line_manager_id,office_id)
VALUES('Bucur-Arina Gheorghiu','Bucur-Arina.Gheorghiu@endava.com','EMPLOYEE',16,3);
INSERT INTO app_users(full_name,email,role_code,line_manager_id,office_id)
VALUES('Adelina Marin','Adelina.Marin@endava.com','EMPLOYEE',16,3);
INSERT INTO app_users(full_name,email,role_code,line_manager_id,office_id)
VALUES('Kellie Walsh','Kellie.Walsh@endava.com','EMPLOYEE',16,3);
INSERT INTO app_users(full_name,email,role_code,line_manager_id,office_id)
VALUES('Jose-Andrea Figueroa','Jose-Andrea.Figueroa@endava.com','EMPLOYEE',16,3);
INSERT INTO app_users(full_name,email,role_code,line_manager_id,office_id)
VALUES('Carol-Aida Stancu','Carol-Aida.Stancu@endava.com','EMPLOYEE',16,3);
INSERT INTO app_users(full_name,email,role_code,line_manager_id,office_id)
VALUES('Daniel Landry','Daniel.Landry@endava.com','EMPLOYEE',16,3);
INSERT INTO app_users(full_name,email,role_code,line_manager_id,office_id)
VALUES('Floarea Stan','Floarea.Stan@endava.com','EMPLOYEE',16,3);
INSERT INTO app_users(full_name,email,role_code,line_manager_id,office_id)
VALUES('Anghelina Mocanu','Anghelina.Mocanu@endava.com','EMPLOYEE',16,3);
INSERT INTO app_users(full_name,email,role_code,line_manager_id,office_id)
VALUES('Brandi Hernandez','Brandi.Hernandez@endava.com','EMPLOYEE',16,3);
INSERT INTO app_users(full_name,email,role_code,line_manager_id,office_id)
VALUES('David Parker','David.Parker@endava.com','EMPLOYEE',16,3);
INSERT INTO app_users(full_name,email,role_code,line_manager_id,office_id)
VALUES('Antonela Mazilescu','Antonela.Mazilescu@endava.com','EMPLOYEE',16,3);
INSERT INTO app_users(full_name,email,role_code,line_manager_id,office_id)
VALUES('Lia Voinea','Lia.Voinea@endava.com','EMPLOYEE',16,3);
INSERT INTO app_users(full_name,email,role_code,line_manager_id,office_id)
VALUES('John Garcia','John.Garcia@endava.com','EMPLOYEE',16,3);
INSERT INTO app_users(full_name,email,role_code,line_manager_id,office_id)
VALUES('Kimberly-Richard Henson','Kimberly-Richard.Henson@endava.com','EMPLOYEE',16,3);
INSERT INTO app_users(full_name,email,role_code,line_manager_id,office_id)
VALUES('Christine-Sarah Moore','Christine-Sarah.Moore@endava.com','EMPLOYEE',16,3);
INSERT INTO app_users(full_name,email,role_code,line_manager_id,office_id)
VALUES('Michelle Cherry','Michelle.Cherry@endava.com','EMPLOYEE',16,3);
INSERT INTO app_users(full_name,email,role_code,line_manager_id,office_id)
VALUES('Ilona Nistor','Ilona.Nistor@endava.com','EMPLOYEE',16,3);
INSERT INTO app_users(full_name,email,role_code,line_manager_id,office_id)
VALUES('Anamaria Dochioiu','Anamaria.Dochioiu@endava.com','EMPLOYEE',16,3);
INSERT INTO app_users(full_name,email,role_code,line_manager_id,office_id)
VALUES('Jill-Sarah Cook','Jill-Sarah.Cook@endava.com','EMPLOYEE',17,3);
INSERT INTO app_users(full_name,email,role_code,line_manager_id,office_id)
VALUES('Mărioara-Gențiana Gheorghiu','Marioara-Gentiana.Gheorghiu@endava.com','EMPLOYEE',17,3);
INSERT INTO app_users(full_name,email,role_code,line_manager_id,office_id)
VALUES('Diana Nemeș','Diana.Nemes@endava.com','EMPLOYEE',17,3);
INSERT INTO app_users(full_name,email,role_code,line_manager_id,office_id)
VALUES('Monica-Jeffrey Garrison','Monica-Jeffrey.Garrison@endava.com','EMPLOYEE',17,3);
INSERT INTO app_users(full_name,email,role_code,line_manager_id,office_id)
VALUES('Dominic Mazilescu','Dominic.Mazilescu@endava.com','EMPLOYEE',17,3);
INSERT INTO app_users(full_name,email,role_code,line_manager_id,office_id)
VALUES('Kevin Pope','Kevin.Pope@endava.com','EMPLOYEE',17,3);
INSERT INTO app_users(full_name,email,role_code,line_manager_id,office_id)
VALUES('Jeremy-James Johnson','Jeremy-James.Johnson@endava.com','EMPLOYEE',17,3);
INSERT INTO app_users(full_name,email,role_code,line_manager_id,office_id)
VALUES('Mark-Tammy Lin','Mark-Tammy.Lin@endava.com','EMPLOYEE',17,3);
INSERT INTO app_users(full_name,email,role_code,line_manager_id,office_id)
VALUES('Joshua-Ricardo May','Joshua-Ricardo.May@endava.com','EMPLOYEE',17,3);
INSERT INTO app_users(full_name,email,role_code,line_manager_id,office_id)
VALUES('Jean Marin','Jean.Marin@endava.com','EMPLOYEE',17,3);
INSERT INTO app_users(full_name,email,role_code,line_manager_id,office_id)
VALUES('Sheila Wilson','Sheila.Wilson@endava.com','EMPLOYEE',17,3);
INSERT INTO app_users(full_name,email,role_code,line_manager_id,office_id)
VALUES('Mona Dochioiu','Mona.Dochioiu@endava.com','EMPLOYEE',17,3);
INSERT INTO app_users(full_name,email,role_code,line_manager_id,office_id)
VALUES('Nicolae Georgescu','Nicolae.Georgescu@endava.com','EMPLOYEE',17,3);
INSERT INTO app_users(full_name,email,role_code,line_manager_id,office_id)
VALUES('Antoaneta Diaconescu','Antoaneta.Diaconescu@endava.com','EMPLOYEE',17,3);
INSERT INTO app_users(full_name,email,role_code,line_manager_id,office_id)
VALUES('Panagachie Niță','Panagachie.Nita@endava.com','EMPLOYEE',17,3);
INSERT INTO app_users(full_name,email,role_code,line_manager_id,office_id)
VALUES('Teodora Manole','Teodora.Manole@endava.com','EMPLOYEE',17,3);
INSERT INTO app_users(full_name,email,role_code,line_manager_id,office_id)
VALUES('Samuel Joyce','Samuel.Joyce@endava.com','EMPLOYEE',17,3);
INSERT INTO app_users(full_name,email,role_code,line_manager_id,office_id)
VALUES('Dora-Nelu Nemeș','Dora-Nelu.Nemes@endava.com','EMPLOYEE',17,3);
INSERT INTO app_users(full_name,email,role_code,line_manager_id,office_id)
VALUES('Iuliana Georgescu','Iuliana.Georgescu@endava.com','EMPLOYEE',17,3);
INSERT INTO app_users(full_name,email,role_code,line_manager_id,office_id)
VALUES('Arina Niță','Arina.Nita@endava.com','EMPLOYEE',17,3);
INSERT INTO app_users(full_name,email,role_code,line_manager_id,office_id)
VALUES('Aaron Frost','Aaron.Frost@endava.com','EMPLOYEE',18,4);
INSERT INTO app_users(full_name,email,role_code,line_manager_id,office_id)
VALUES('Ladislau Voinea','Ladislau.Voinea@endava.com','EMPLOYEE',18,4);
INSERT INTO app_users(full_name,email,role_code,line_manager_id,office_id)
VALUES('Jasmina-Cătălin Mocanu','Jasmina-Catalin.Mocanu@endava.com','EMPLOYEE',18,4);
INSERT INTO app_users(full_name,email,role_code,line_manager_id,office_id)
VALUES('Caterina Tudor','Caterina.Tudor@endava.com','EMPLOYEE',18,4);
INSERT INTO app_users(full_name,email,role_code,line_manager_id,office_id)
VALUES('Samantha Hanson','Samantha.Hanson@endava.com','EMPLOYEE',18,4);
INSERT INTO app_users(full_name,email,role_code,line_manager_id,office_id)
VALUES('Elizabeth Martinez','Elizabeth.Martinez@endava.com','EMPLOYEE',18,4);
INSERT INTO app_users(full_name,email,role_code,line_manager_id,office_id)
VALUES('Roberta Preda','Roberta.Preda@endava.com','EMPLOYEE',18,4);
INSERT INTO app_users(full_name,email,role_code,line_manager_id,office_id)
VALUES('Ruxanda-Aurel Tudor','Ruxanda-Aurel.Tudor@endava.com','EMPLOYEE',18,4);
INSERT INTO app_users(full_name,email,role_code,line_manager_id,office_id)
VALUES('Smaranda Nistor','Smaranda.Nistor@endava.com','EMPLOYEE',18,4);
INSERT INTO app_users(full_name,email,role_code,line_manager_id,office_id)
VALUES('Raluca Stancu','Raluca.Stancu@endava.com','EMPLOYEE',18,4);
INSERT INTO app_users(full_name,email,role_code,line_manager_id,office_id)
VALUES('Elisabeta-Bernard Dumitrescu','Elisabeta-Bernard.Dumitrescu@endava.com','EMPLOYEE',18,4);
INSERT INTO app_users(full_name,email,role_code,line_manager_id,office_id)
VALUES('Zoe Voinea','Zoe.Voinea@endava.com','EMPLOYEE',18,4);
INSERT INTO app_users(full_name,email,role_code,line_manager_id,office_id)
VALUES('Kaitlin-Ashley Thompson','Kaitlin-Ashley.Thompson@endava.com','EMPLOYEE',18,4);
INSERT INTO app_users(full_name,email,role_code,line_manager_id,office_id)
VALUES('Aristide Stancu','Aristide.Stancu@endava.com','EMPLOYEE',18,4);
INSERT INTO app_users(full_name,email,role_code,line_manager_id,office_id)
VALUES('Ada Ioniță','Ada.Ionita@endava.com','EMPLOYEE',18,4);
INSERT INTO app_users(full_name,email,role_code,line_manager_id,office_id)
VALUES('Justin Jordan','Justin.Jordan@endava.com','EMPLOYEE',18,4);
INSERT INTO app_users(full_name,email,role_code,line_manager_id,office_id)
VALUES('Nicodim-Victor Suciu','Nicodim-Victor.Suciu@endava.com','EMPLOYEE',18,4);
INSERT INTO app_users(full_name,email,role_code,line_manager_id,office_id)
VALUES('Silvana-Corvin Pop','Silvana-Corvin.Pop@endava.com','EMPLOYEE',18,4);
INSERT INTO app_users(full_name,email,role_code,line_manager_id,office_id)
VALUES('Corvin Voinea','Corvin.Voinea@endava.com','EMPLOYEE',18,4);
INSERT INTO app_users(full_name,email,role_code,line_manager_id,office_id)
VALUES('Jason-Rachel Kennedy','Jason-Rachel.Kennedy@endava.com','EMPLOYEE',18,4);
INSERT INTO app_users(full_name,email,role_code,line_manager_id,office_id)
VALUES('Grațiela Tudor','Gratiela.Tudor@endava.com','EMPLOYEE',19,4);
INSERT INTO app_users(full_name,email,role_code,line_manager_id,office_id)
VALUES('Codrina Ionescu','Codrina.Ionescu@endava.com','EMPLOYEE',19,4);
INSERT INTO app_users(full_name,email,role_code,line_manager_id,office_id)
VALUES('Iacob-Stancu Tudor','Iacob-Stancu.Tudor@endava.com','EMPLOYEE',19,4);
INSERT INTO app_users(full_name,email,role_code,line_manager_id,office_id)
VALUES('Sandu-Crenguța Marin','Sandu-Crenguta.Marin@endava.com','EMPLOYEE',19,4);
INSERT INTO app_users(full_name,email,role_code,line_manager_id,office_id)
VALUES('Loretta Potter','Loretta.Potter@endava.com','EMPLOYEE',19,4);
INSERT INTO app_users(full_name,email,role_code,line_manager_id,office_id)
VALUES('Ruxandra Ene','Ruxandra.Ene@endava.com','EMPLOYEE',19,4);
INSERT INTO app_users(full_name,email,role_code,line_manager_id,office_id)
VALUES('Julia Dinu','Julia.Dinu@endava.com','EMPLOYEE',19,4);
INSERT INTO app_users(full_name,email,role_code,line_manager_id,office_id)
VALUES('Anamaria-Marta Albu','Anamaria-Marta.Albu@endava.com','EMPLOYEE',19,4);
INSERT INTO app_users(full_name,email,role_code,line_manager_id,office_id)
VALUES('Emanuil Tabacu','Emanuil.Tabacu@endava.com','EMPLOYEE',19,4);
INSERT INTO app_users(full_name,email,role_code,line_manager_id,office_id)
VALUES('Catrinel Pop','Catrinel.Pop@endava.com','EMPLOYEE',19,4);
INSERT INTO app_users(full_name,email,role_code,line_manager_id,office_id)
VALUES('Bartolomeu Toma','Bartolomeu.Toma@endava.com','EMPLOYEE',19,4);
INSERT INTO app_users(full_name,email,role_code,line_manager_id,office_id)
VALUES('Nechifor Dumitrescu','Nechifor.Dumitrescu@endava.com','EMPLOYEE',19,4);
INSERT INTO app_users(full_name,email,role_code,line_manager_id,office_id)
VALUES('Jennifer Cruz','Jennifer.Cruz@endava.com','EMPLOYEE',19,4);
INSERT INTO app_users(full_name,email,role_code,line_manager_id,office_id)
VALUES('Reginald Hernandez','Reginald.Hernandez@endava.com','EMPLOYEE',19,4);
INSERT INTO app_users(full_name,email,role_code,line_manager_id,office_id)
VALUES('Grace Stafford','Grace.Stafford@endava.com','EMPLOYEE',19,4);
INSERT INTO app_users(full_name,email,role_code,line_manager_id,office_id)
VALUES('Michelle Mcclure','Michelle.Mcclure@endava.com','EMPLOYEE',19,4);
INSERT INTO app_users(full_name,email,role_code,line_manager_id,office_id)
VALUES('Camil-Ilinca Ene','Camil-Ilinca.Ene@endava.com','EMPLOYEE',19,4);
INSERT INTO app_users(full_name,email,role_code,line_manager_id,office_id)
VALUES('Ieremia Pop','Ieremia.Pop@endava.com','EMPLOYEE',19,4);
INSERT INTO app_users(full_name,email,role_code,line_manager_id,office_id)
VALUES('Brent Wright','Brent.Wright@endava.com','EMPLOYEE',19,4);
INSERT INTO app_users(full_name,email,role_code,line_manager_id,office_id)
VALUES('Dumitrana-Emilia Pop','Dumitrana-Emilia.Pop@endava.com','EMPLOYEE',19,4);
INSERT INTO app_users(full_name,email,role_code,line_manager_id,office_id)
VALUES('Dorinel-Iuliu Tudor','Dorinel-Iuliu.Tudor@endava.com','EMPLOYEE',20,5);
INSERT INTO app_users(full_name,email,role_code,line_manager_id,office_id)
VALUES('Marius Suciu','Marius.Suciu@endava.com','EMPLOYEE',20,5);
INSERT INTO app_users(full_name,email,role_code,line_manager_id,office_id)
VALUES('Savina-Răzvan Oprea','Savina-Razvan.Oprea@endava.com','EMPLOYEE',20,5);
INSERT INTO app_users(full_name,email,role_code,line_manager_id,office_id)
VALUES('Gică Niță','Gica.Nita@endava.com','EMPLOYEE',20,5);
INSERT INTO app_users(full_name,email,role_code,line_manager_id,office_id)
VALUES('Maria-Phyllis Kelley','Maria-Phyllis.Kelley@endava.com','EMPLOYEE',20,5);
INSERT INTO app_users(full_name,email,role_code,line_manager_id,office_id)
VALUES('Emanuil Oprea','Emanuil.Oprea@endava.com','EMPLOYEE',20,5);
INSERT INTO app_users(full_name,email,role_code,line_manager_id,office_id)
VALUES('Mirona-Teodor Florea','Mirona-Teodor.Florea@endava.com','EMPLOYEE',20,5);
INSERT INTO app_users(full_name,email,role_code,line_manager_id,office_id)
VALUES('Ofelia Pușcașu','Ofelia.Puscasu@endava.com','EMPLOYEE',20,5);
INSERT INTO app_users(full_name,email,role_code,line_manager_id,office_id)
VALUES('Felix Toma','Felix.Toma@endava.com','EMPLOYEE',20,5);
INSERT INTO app_users(full_name,email,role_code,line_manager_id,office_id)
VALUES('John Gonzales','John.Gonzales@endava.com','EMPLOYEE',20,5);
INSERT INTO app_users(full_name,email,role_code,line_manager_id,office_id)
VALUES('Patricia-Nora Florea','Patricia-Nora.Florea@endava.com','EMPLOYEE',20,5);
INSERT INTO app_users(full_name,email,role_code,line_manager_id,office_id)
VALUES('Steliana Manole','Steliana.Manole@endava.com','EMPLOYEE',20,5);
INSERT INTO app_users(full_name,email,role_code,line_manager_id,office_id)
VALUES('Patricia Miller','Patricia.Miller@endava.com','EMPLOYEE',20,5);
INSERT INTO app_users(full_name,email,role_code,line_manager_id,office_id)
VALUES('Florența Ene','Florenta.Ene@endava.com','EMPLOYEE',20,5);
INSERT INTO app_users(full_name,email,role_code,line_manager_id,office_id)
VALUES('Adi Dinu','Adi.Dinu@endava.com','EMPLOYEE',20,5);
INSERT INTO app_users(full_name,email,role_code,line_manager_id,office_id)
VALUES('Lili-Bartolomeu Barbu','Lili-Bartolomeu.Barbu@endava.com','EMPLOYEE',20,5);
INSERT INTO app_users(full_name,email,role_code,line_manager_id,office_id)
VALUES('Augustin-Lazăr Marin','Augustin-Lazar.Marin@endava.com','EMPLOYEE',20,5);
INSERT INTO app_users(full_name,email,role_code,line_manager_id,office_id)
VALUES('Dragoș Nistor','Dragos.Nistor@endava.com','EMPLOYEE',20,5);
INSERT INTO app_users(full_name,email,role_code,line_manager_id,office_id)
VALUES('Camelia-Bernard Eftimie','Camelia-Bernard.Eftimie@endava.com','EMPLOYEE',20,5);
INSERT INTO app_users(full_name,email,role_code,line_manager_id,office_id)
VALUES('Alex-Amanda Stănescu','Alex-Amanda.Stanescu@endava.com','EMPLOYEE',20,5);
INSERT INTO app_users(full_name,email,role_code,line_manager_id,office_id)
VALUES('Nechifor-Emilian Nemeș','Nechifor-Emilian.Nemes@endava.com','EMPLOYEE',21,6);
INSERT INTO app_users(full_name,email,role_code,line_manager_id,office_id)
VALUES('Agata Mazilescu','Agata.Mazilescu@endava.com','EMPLOYEE',21,6);
INSERT INTO app_users(full_name,email,role_code,line_manager_id,office_id)
VALUES('Renata Nemeș','Renata.Nemes@endava.com','EMPLOYEE',21,6);
INSERT INTO app_users(full_name,email,role_code,line_manager_id,office_id)
VALUES('Benone Stan','Benone.Stan@endava.com','EMPLOYEE',21,6);
INSERT INTO app_users(full_name,email,role_code,line_manager_id,office_id)
VALUES('Lică Suciu','Lica.Suciu@endava.com','EMPLOYEE',21,6);
INSERT INTO app_users(full_name,email,role_code,line_manager_id,office_id)
VALUES('Lorena Popescu','Lorena.Popescu@endava.com','EMPLOYEE',21,6);
INSERT INTO app_users(full_name,email,role_code,line_manager_id,office_id)
VALUES('Jeffrey Graham','Jeffrey.Graham@endava.com','EMPLOYEE',21,6);
INSERT INTO app_users(full_name,email,role_code,line_manager_id,office_id)
VALUES('Anthony Rogers','Anthony.Rogers@endava.com','EMPLOYEE',21,6);
INSERT INTO app_users(full_name,email,role_code,line_manager_id,office_id)
VALUES('Arian-Ducu Dobre','Arian-Ducu.Dobre@endava.com','EMPLOYEE',21,6);
INSERT INTO app_users(full_name,email,role_code,line_manager_id,office_id)
VALUES('Elisabeta Tabacu','Elisabeta.Tabacu@endava.com','EMPLOYEE',21,6);
INSERT INTO app_users(full_name,email,role_code,line_manager_id,office_id)
VALUES('Amanda Meadows','Amanda.Meadows@endava.com','EMPLOYEE',21,6);
INSERT INTO app_users(full_name,email,role_code,line_manager_id,office_id)
VALUES('Olimpiu Stoica','Olimpiu.Stoica@endava.com','EMPLOYEE',21,6);
INSERT INTO app_users(full_name,email,role_code,line_manager_id,office_id)
VALUES('Zamfir Ababei','Zamfir.Ababei@endava.com','EMPLOYEE',21,6);
INSERT INTO app_users(full_name,email,role_code,line_manager_id,office_id)
VALUES('Christopher-Michelle Patterson','Christopher-Michelle.Patterson@endava.com','EMPLOYEE',21,6);
INSERT INTO app_users(full_name,email,role_code,line_manager_id,office_id)
VALUES('Ionela-Miruna Ardelean','Ionela-Miruna.Ardelean@endava.com','EMPLOYEE',21,6);
INSERT INTO app_users(full_name,email,role_code,line_manager_id,office_id)
VALUES('Zoe Manole','Zoe.Manole@endava.com','EMPLOYEE',21,6);
INSERT INTO app_users(full_name,email,role_code,line_manager_id,office_id)
VALUES('Liana-Smaranda Pop','Liana-Smaranda.Pop@endava.com','EMPLOYEE',21,6);
INSERT INTO app_users(full_name,email,role_code,line_manager_id,office_id)
VALUES('Suzana Nemeș','Suzana.Nemes@endava.com','EMPLOYEE',21,6);
INSERT INTO app_users(full_name,email,role_code,line_manager_id,office_id)
VALUES('Olga Nistor','Olga.Nistor@endava.com','EMPLOYEE',21,6);
INSERT INTO app_users(full_name,email,role_code,line_manager_id,office_id)
VALUES('Johnny-Andrew Miller','Johnny-Andrew.Miller@endava.com','EMPLOYEE',21,6);
INSERT INTO app_users(full_name,email,role_code,line_manager_id,office_id)
VALUES('Amber Cooke','Amber.Cooke@endava.com','EMPLOYEE',22,7);
INSERT INTO app_users(full_name,email,role_code,line_manager_id,office_id)
VALUES('Tinca-Valter Ene','Tinca-Valter.Ene@endava.com','EMPLOYEE',22,7);
INSERT INTO app_users(full_name,email,role_code,line_manager_id,office_id)
VALUES('Casiana Tomescu','Casiana.Tomescu@endava.com','EMPLOYEE',22,7);
INSERT INTO app_users(full_name,email,role_code,line_manager_id,office_id)
VALUES('Billy Johnson','Billy.Johnson@endava.com','EMPLOYEE',22,7);
INSERT INTO app_users(full_name,email,role_code,line_manager_id,office_id)
VALUES('John-Christine Combs','John-Christine.Combs@endava.com','EMPLOYEE',22,7);
INSERT INTO app_users(full_name,email,role_code,line_manager_id,office_id)
VALUES('Mariana Dima','Mariana.Dima@endava.com','EMPLOYEE',22,7);
INSERT INTO app_users(full_name,email,role_code,line_manager_id,office_id)
VALUES('Emanoil Tudor','Emanoil.Tudor@endava.com','EMPLOYEE',22,7);
INSERT INTO app_users(full_name,email,role_code,line_manager_id,office_id)
VALUES('Danny Gould','Danny.Gould@endava.com','EMPLOYEE',22,7);
INSERT INTO app_users(full_name,email,role_code,line_manager_id,office_id)
VALUES('Doru Georgescu','Doru.Georgescu@endava.com','EMPLOYEE',22,7);
INSERT INTO app_users(full_name,email,role_code,line_manager_id,office_id)
VALUES('Katie Jackson','Katie.Jackson@endava.com','EMPLOYEE',22,7);
INSERT INTO app_users(full_name,email,role_code,line_manager_id,office_id)
VALUES('Pompiliu Diaconu','Pompiliu.Diaconu@endava.com','EMPLOYEE',22,7);
INSERT INTO app_users(full_name,email,role_code,line_manager_id,office_id)
VALUES('Geta Ioniță','Geta.Ionita@endava.com','EMPLOYEE',22,7);
INSERT INTO app_users(full_name,email,role_code,line_manager_id,office_id)
VALUES('Daniel Johnson','Daniel.Johnson@endava.com','EMPLOYEE',22,7);
INSERT INTO app_users(full_name,email,role_code,line_manager_id,office_id)
VALUES('Sabrina Stoica','Sabrina.Stoica@endava.com','EMPLOYEE',22,7);
INSERT INTO app_users(full_name,email,role_code,line_manager_id,office_id)
VALUES('Zaraza Nistor','Zaraza.Nistor@endava.com','EMPLOYEE',22,7);
INSERT INTO app_users(full_name,email,role_code,line_manager_id,office_id)
VALUES('Shelly Gonzalez','Shelly.Gonzalez@endava.com','EMPLOYEE',22,7);
INSERT INTO app_users(full_name,email,role_code,line_manager_id,office_id)
VALUES('Brittany Rivas','Brittany.Rivas@endava.com','EMPLOYEE',22,7);
INSERT INTO app_users(full_name,email,role_code,line_manager_id,office_id)
VALUES('Marinela Diaconescu','Marinela.Diaconescu@endava.com','EMPLOYEE',22,7);
INSERT INTO app_users(full_name,email,role_code,line_manager_id,office_id)
VALUES('Robertina Voinea','Robertina.Voinea@endava.com','EMPLOYEE',22,7);
INSERT INTO app_users(full_name,email,role_code,line_manager_id,office_id)
VALUES('Pătru Diaconu','Patru.Diaconu@endava.com','EMPLOYEE',22,7);
INSERT INTO app_users(full_name,email,role_code,line_manager_id,office_id)
VALUES('Mihail Albu','Mihail.Albu@endava.com','EMPLOYEE',23,8);
INSERT INTO app_users(full_name,email,role_code,line_manager_id,office_id)
VALUES('Michael-Mitchell Patterson','Michael-Mitchell.Patterson@endava.com','EMPLOYEE',23,8);
INSERT INTO app_users(full_name,email,role_code,line_manager_id,office_id)
VALUES('William-Melissa Peterson','William-Melissa.Peterson@endava.com','EMPLOYEE',23,8);
INSERT INTO app_users(full_name,email,role_code,line_manager_id,office_id)
VALUES('Florentin Diaconescu','Florentin.Diaconescu@endava.com','EMPLOYEE',23,8);
INSERT INTO app_users(full_name,email,role_code,line_manager_id,office_id)
VALUES('Cezar-Șerban Mocanu','Cezar-Serban.Mocanu@endava.com','EMPLOYEE',23,8);
INSERT INTO app_users(full_name,email,role_code,line_manager_id,office_id)
VALUES('Patricia-Eric Stevens','Patricia-Eric.Stevens@endava.com','EMPLOYEE',23,8);
INSERT INTO app_users(full_name,email,role_code,line_manager_id,office_id)
VALUES('Ilinca Pușcașu','Ilinca.Puscasu@endava.com','EMPLOYEE',23,8);
INSERT INTO app_users(full_name,email,role_code,line_manager_id,office_id)
VALUES('Vasile Gheorghiu','Vasile.Gheorghiu@endava.com','EMPLOYEE',23,8);
INSERT INTO app_users(full_name,email,role_code,line_manager_id,office_id)
VALUES('Christina-Kim Gillespie','Christina-Kim.Gillespie@endava.com','EMPLOYEE',23,8);
INSERT INTO app_users(full_name,email,role_code,line_manager_id,office_id)
VALUES('Doru Niță','Doru.Nita@endava.com','EMPLOYEE',23,8);
INSERT INTO app_users(full_name,email,role_code,line_manager_id,office_id)
VALUES('Olimpiu Gheorghiu','Olimpiu.Gheorghiu@endava.com','EMPLOYEE',23,8);
INSERT INTO app_users(full_name,email,role_code,line_manager_id,office_id)
VALUES('Silvia Florea','Silvia.Florea@endava.com','EMPLOYEE',23,8);
INSERT INTO app_users(full_name,email,role_code,line_manager_id,office_id)
VALUES('Constanța Gheorghiu','Constanta.Gheorghiu@endava.com','EMPLOYEE',23,8);
INSERT INTO app_users(full_name,email,role_code,line_manager_id,office_id)
VALUES('Cristofor Florea','Cristofor.Florea@endava.com','EMPLOYEE',23,8);
INSERT INTO app_users(full_name,email,role_code,line_manager_id,office_id)
VALUES('Dorinel-Rareș Stoica','Dorinel-Rares.Stoica@endava.com','EMPLOYEE',23,8);
INSERT INTO app_users(full_name,email,role_code,line_manager_id,office_id)
VALUES('Zoe Marin','Zoe.Marin@endava.com','EMPLOYEE',23,8);
INSERT INTO app_users(full_name,email,role_code,line_manager_id,office_id)
VALUES('Anda Popescu','Anda.Popescu@endava.com','EMPLOYEE',23,8);
INSERT INTO app_users(full_name,email,role_code,line_manager_id,office_id)
VALUES('Simina Dochioiu','Simina.Dochioiu@endava.com','EMPLOYEE',23,8);
INSERT INTO app_users(full_name,email,role_code,line_manager_id,office_id)
VALUES('Tony Kelly','Tony.Kelly@endava.com','EMPLOYEE',23,8);
INSERT INTO app_users(full_name,email,role_code,line_manager_id,office_id)
VALUES('Jonathan-Caitlyn Ramirez','Jonathan-Caitlyn.Ramirez@endava.com','EMPLOYEE',23,8);
INSERT INTO app_users(full_name,email,role_code,line_manager_id,office_id)
VALUES('Octaviana-Alberta Stancu','Octaviana-Alberta.Stancu@endava.com','EMPLOYEE',24,8);
INSERT INTO app_users(full_name,email,role_code,line_manager_id,office_id)
VALUES('Ianis-Codruța Dumitrescu','Ianis-Codruta.Dumitrescu@endava.com','EMPLOYEE',24,8);
INSERT INTO app_users(full_name,email,role_code,line_manager_id,office_id)
VALUES('Marina Nistor','Marina.Nistor@endava.com','EMPLOYEE',24,8);
INSERT INTO app_users(full_name,email,role_code,line_manager_id,office_id)
VALUES('Florea-Marilena Stancu','Florea-Marilena.Stancu@endava.com','EMPLOYEE',24,8);
INSERT INTO app_users(full_name,email,role_code,line_manager_id,office_id)
VALUES('Emil Tomescu','Emil.Tomescu@endava.com','EMPLOYEE',24,8);
INSERT INTO app_users(full_name,email,role_code,line_manager_id,office_id)
VALUES('Jennifer West','Jennifer.West@endava.com','EMPLOYEE',24,8);
INSERT INTO app_users(full_name,email,role_code,line_manager_id,office_id)
VALUES('Alis-Rafila Cristea','Alis-Rafila.Cristea@endava.com','EMPLOYEE',24,8);
INSERT INTO app_users(full_name,email,role_code,line_manager_id,office_id)
VALUES('Luana-Marioara Nistor','Luana-Marioara.Nistor@endava.com','EMPLOYEE',24,8);
INSERT INTO app_users(full_name,email,role_code,line_manager_id,office_id)
VALUES('Roxelana-Nicolaie Tudor','Roxelana-Nicolaie.Tudor@endava.com','EMPLOYEE',24,8);
INSERT INTO app_users(full_name,email,role_code,line_manager_id,office_id)
VALUES('Virginia-Ludovic Popa','Virginia-Ludovic.Popa@endava.com','EMPLOYEE',24,8);
INSERT INTO app_users(full_name,email,role_code,line_manager_id,office_id)
VALUES('Alyssa Coleman','Alyssa.Coleman@endava.com','EMPLOYEE',24,8);
INSERT INTO app_users(full_name,email,role_code,line_manager_id,office_id)
VALUES('Lucențiu-Tudora Marin','Lucentiu-Tudora.Marin@endava.com','EMPLOYEE',24,8);
INSERT INTO app_users(full_name,email,role_code,line_manager_id,office_id)
VALUES('Jacqueline Nelson','Jacqueline.Nelson@endava.com','EMPLOYEE',24,8);
INSERT INTO app_users(full_name,email,role_code,line_manager_id,office_id)
VALUES('John Martinez','John.Martinez@endava.com','EMPLOYEE',24,8);
INSERT INTO app_users(full_name,email,role_code,line_manager_id,office_id)
VALUES('Izabela Manole','Izabela.Manole@endava.com','EMPLOYEE',24,8);
INSERT INTO app_users(full_name,email,role_code,line_manager_id,office_id)
VALUES('Draga-Iridenta Stan','Draga-Iridenta.Stan@endava.com','EMPLOYEE',24,8);
INSERT INTO app_users(full_name,email,role_code,line_manager_id,office_id)
VALUES('James Rodgers','James.Rodgers@endava.com','EMPLOYEE',24,8);
INSERT INTO app_users(full_name,email,role_code,line_manager_id,office_id)
VALUES('Joshua Lawrence','Joshua.Lawrence@endava.com','EMPLOYEE',24,8);
INSERT INTO app_users(full_name,email,role_code,line_manager_id,office_id)
VALUES('Ionel Suciu','Ionel.Suciu@endava.com','EMPLOYEE',24,8);
INSERT INTO app_users(full_name,email,role_code,line_manager_id,office_id)
VALUES('Ozana-Jana Diaconescu','Ozana-Jana.Diaconescu@endava.com','EMPLOYEE',24,8);
