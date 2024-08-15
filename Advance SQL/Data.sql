use data;
create table company_divisions (
    department varchar(100),
    company_division varchar(100),
    primary key (department)
  );


SET AUTOCOMMIT = 1;
insert into company_divisions values ('Beauty','Domestic');
insert into company_divisions values ('Clothing','Domestic');
insert into company_divisions values ('Computers','Electronic Equipment');
insert into company_divisions values ('Electronics','Electronic Equipment');
insert into company_divisions values ('Games','Domestic');
insert into company_divisions values ('Garden','Outdoors & Garden');
insert into company_divisions values ('Grocery','Domestic');
insert into company_divisions values ('Health','Domestic');
insert into company_divisions values ('Home','Domestic');
insert into company_divisions values ('Industrial','Auto & Hardware');
insert into company_divisions values ('Jewelery','Fashion');
insert into company_divisions values ('Kids','Domestic');
insert into company_divisions values ('Movies','Entertainment');
insert into company_divisions values ('Music','Entertainment');
insert into company_divisions values ('Outdoors','Outdoors & Garden');
insert into company_divisions values ('Shoes','Domestic');
insert into company_divisions values ('Sports','Games & Sports');
insert into company_divisions values ('Tools','Auto & Hardware');
insert into company_divisions values ('Toys','Games & Sports');

create table company_regions (
   region_id int,
   company_regions varchar(20),
   country varchar(20),
   primary key (region_id)
  );

SET AUTOCOMMIT =1 ;
insert into company_regions values (2, 'Southeast', 'USA');
insert into company_regions values (3, 'Northwest', 'USA');
insert into company_regions values (4, 'Southwest', 'USA');
insert into company_regions values (5, 'British Columbia', 'Canada');
insert into company_regions values (6, 'Quebec', 'Canada');
insert into company_regions values (1, 'Northeast', 'USA');


create table staff
  (
      id integer,
      last_name varchar(100),
      email varchar(200),
      gender varchar(10),
      department varchar(100),
      start_date date,
      salary integer,
      job_title varchar(100),
      region_id int,
      primary key (id)
  );
  
SET AUTOCOMMIT =1;

INSERT INTO staff VALUES (6,'Phillips','bphillips5@time.com','Male','Tools','2013-08-21',118497,'Executive Secretary',1);
INSERT INTO staff VALUES (7,'Williamson','rwilliamson6@ted.com','Male','Computers','2006-05-14',65889,'Dental Hygienist',6);
INSERT INTO staff VALUES (8,'Harris','aharris7@ucoz.com','Female','Toys','2003-08-12',84427,'Safety Technician I',4);
INSERT INTO staff VALUES (9,'James','rjames8@prnewswire.com','Male','Jewelery','2005-09-07',108657,'Sales Associate',2);
INSERT INTO staff VALUES (10,'Sanchez','rsanchez9@cloudflare.com','Male','Movies','2013-03-13',108093,'Sales Representative',1);
INSERT INTO staff VALUES (11,'Jacobs','jjacobsa@sbwire.com','Female','Jewelery','2003-11-27',121966,'Community Outreach Specialist',7);
INSERT INTO staff VALUES (12,'Black','mblackb@edublogs.org','Male','Clothing','2003-02-04',44179,'Data Coordiator',7);
INSERT INTO staff VALUES (13,'Schmidt','sschmidtc@state.gov','Male','Baby','2002-10-13',85227,'Compensation Analyst',3);
INSERT INTO staff VALUES (14,'Webb','awebbd@baidu.com','Female','Computers','2006-10-22',59763,'Software Test Engineer III',4);
INSERT INTO staff VALUES (15,'Jacobs','ajacobse@google.it','Female','Games','2007-03-04',141139,'Community Outreach Specialist',7);
INSERT INTO staff VALUES (16,'Medina','smedinaf@amazonaws.com','Female','Baby','2008-03-14',106659,'Web Developer III',1);
INSERT INTO staff VALUES (17,'Morgan','dmorgang@123-reg.co.uk','Female','Kids','2011-05-04',148952,'Programmer IV',6);
INSERT INTO staff VALUES (18,'Nguyen','jnguyenh@google.com','Male','Home','2014-11-03',93804,'Geologist II',5);
INSERT INTO staff VALUES (19,'Day','rdayi@chronoengine.com','Male','Electronics','2004-09-22',109890,'VP Sales',3);
INSERT INTO staff VALUES (20,'Carr','dcarrj@ocn.ne.jp','Female','Movies','2007-11-22',115274,'VP Quality Control',5);
INSERT INTO staff VALUES (21,'Bryant','sbryantk@wunderground.com','Female','Industrial','2005-08-12',78052,'Software Consultant',3);
INSERT INTO staff VALUES (22,'Alexander','kalexanderl@marketwatch.com','Male','Automotive','2011-12-26',144724,'Marketing Assistant',2);
INSERT INTO staff VALUES (23,'Chapman','jchapmanm@archive.org','Female','Jewelery','2001-04-12',126103,'Senior Developer',4);
INSERT INTO staff VALUES (24,'Kelly','ekellyn@weibo.com','Male','Garden','2006-06-29',144965,'Nurse Practicioner',2);
INSERT INTO staff VALUES (25,'Stephens','jstephenso@ow.ly','Male','Toys','2004-06-04',70613,'Business Systems Development Analyst',1);
INSERT INTO staff VALUES (26,'Porter','vporterp@yelp.com','Female','Home','2011-05-30',90746,'Dental Hygienist',2);
INSERT INTO staff VALUES (27,'Owens','cowensq@shareasale.com','Female','Home','2005-05-26',78698,'Executive Secretary',2);
INSERT INTO staff VALUES (28,'Scott','cscottr@sphinn.com','Female','Books','2008-03-02',63336,'Sales Representative',4);
INSERT INTO staff VALUES (29,'Price','cprices@usa.gov','Female','Clothing','2013-07-05',95436,'Quality Engineer',3);
INSERT INTO staff VALUES (30,'Weaver','dweavert@shinystat.com','Male','Beauty','2012-02-17',83144,'Account Representative III',2);
INSERT INTO staff VALUES (31,'Willis','hwillisu@army.mil','Female','Tools','2012-10-21',113507,'Accountant I',7);
INSERT INTO staff VALUES (32,'Torres','ltorresv@amazon.de','Male','Games','2014-04-07',78245,'Nuclear Power Engineer',6);
INSERT INTO staff VALUES (33,'Greene','wgreenew@blogspot.com','Male','Movies','2000-03-21',87057,'Assistant Manager',1);
INSERT INTO staff VALUES (34,'Reed','areedx@cisco.com','Male','Movies','2002-11-28',120579,'Assistant Media Planner',6);
INSERT INTO staff VALUES (35,'Smith','bsmithy@statcounter.com','Female','Books','2013-06-13',94884,'Librarian',7);
INSERT INTO staff VALUES (36,'Bradley','nbradleyz@goodreads.com','Male','Outdoors','2008-12-28',107222,'Payment Adjustment Coordinator',3);
INSERT INTO staff VALUES (37,'Cruz','rcruz10@blinklist.com','Female','Home','2000-05-20',61739,'Quality Engineer',1);
INSERT INTO staff VALUES (38,'Williamson','dwilliamson11@rediff.com','Female','Garden','2012-01-25',82026,'Nurse',2);
INSERT INTO staff VALUES (39,'Kennedy','skennedy12@rediff.com','Male','Baby','2011-07-02',79339,'Civil Engineer',1);
INSERT INTO staff VALUES (40,'Hawkins','phawkins13@twitpic.com','Female','Clothing','2011-08-20',76809,'Quality Engineer',6);
INSERT INTO staff VALUES (41,'Allen','jallen14@ustream.tv','Female','Baby','2001-05-10',89680,'Web Developer III',6);
INSERT INTO staff VALUES (42,'Watkins','mwatkins15@wiley.com','Male','Computers','2008-04-01',125668,'Executive Secretary',7);
INSERT INTO staff VALUES (43,'Ferguson','mferguson16@qq.com','Male','Sports','2009-05-29',82960,'Account Representative III',6);
INSERT INTO staff VALUES (44,'Simmons','asimmons17@csmonitor.com','Male','Movies','2013-12-21',113857,'Developer III',2);
INSERT INTO staff VALUES (45,'Nguyen','mnguyen18@biblegateway.com','Male','Automotive','2002-01-24',108378,'Electrical Engineer',7);
INSERT INTO staff VALUES (46,'Lawrence','jlawrence19@linkedin.com','Male','Outdoors','2011-12-11',133424,'Junior Executive',7);
INSERT INTO staff VALUES (47,'Oliver','joliver1a@cnbc.com','Female','Clothing','2013-08-30',42797,'Software Engineer III',5);
INSERT INTO staff VALUES (48,'Johnson','jjohnson1b@usgs.gov','Male','Computers','2004-04-26',134940,'Financial Advisor',4);
INSERT INTO staff VALUES (49,'Crawford','hcrawford1c@dell.com','Male','Home','2008-12-21',119471,'Editor',6);
INSERT INTO staff VALUES (50,'Armstrong','parmstrong1d@hc360.com','Female','Automotive','2010-03-16',89969,'Senior Editor',4);
INSERT INTO staff VALUES (51,'Dixon','jdixon1e@dot.gov','Male','Baby','2006-09-26',106281,'Senior Developer',3);
INSERT INTO staff VALUES (52,'Snyder','ssnyder1f@ca.gov','Female','Kids','2002-09-26',141678,'Design Engineer',3);
INSERT INTO staff VALUES (53,'Coleman','dcoleman1g@dedecms.com','Male','Computers','2008-06-14',110839,'Automation Specialist I',1);
INSERT INTO staff VALUES (54,'Reed','sreed1h@intel.com','Female','Toys','2001-04-15',84275,'VP Marketing',5);
INSERT INTO staff VALUES (55,'Ross','jross1i@infoseek.co.jp','Male','Automotive','2004-04-21',71363,'Environmental Tech',3);
INSERT INTO staff VALUES (56,'Watkins','kwatkins1j@youtu.be','Male','Garden','2002-12-02',93680,'VP Accounting',3);
INSERT INTO staff VALUES (57,'Allen','jallen1k@google.cn','Female','Outdoors','2000-11-20',73755,'Geologist II',3);
INSERT INTO staff VALUES (58,'Crawford','kcrawford1l@privacy.gov.au','Male','Computers','2004-01-02',116522,'Automation Specialist I',3);
INSERT INTO staff VALUES (59,'Ferguson','jferguson1m@psu.edu','Female','Computers','2010-09-16',121090,'Professor',3);
INSERT INTO staff VALUES (60,'Elliott','aelliott1n@ihg.com','Female','Toys','2001-07-07',89699,'Programmer Analyst I',1);
INSERT INTO staff VALUES (61,'Dunn','jdunn1o@usnews.com','Female','Shoes','2007-09-11',124674,'Help Desk Technician',4);
INSERT INTO staff VALUES (62,'Gonzalez','lgonzalez1p@washingtonpost.com','Male','Movies','2011-06-23',90777,'Sales Associate',6);
INSERT INTO staff VALUES (63,'Arnold','darnold1q@webeden.co.uk','Male','Toys','2009-10-01',63206,'Budget/Accounting Analyst I',6);
INSERT INTO staff VALUES (64,'Little','llittle1r@mac.com','Female','Home','2009-04-11',123028,'Payment Adjustment Coordinator',2);
INSERT INTO staff VALUES (65,'Hernandez','chernandez1s@ucoz.com','Male','Movies','2012-06-25',93202,'Environmental Tech',7);
INSERT INTO staff VALUES (66,'Mendoza','lmendoza1t@yellowbook.com','Female','Clothing','2005-08-24',106893,'Help Desk Operator',7);
INSERT INTO staff VALUES (67, 'Mills', 'jmills1u@printfriendly.com', 'Female', 'Grocery', '2004-08-08', 114200, 'Senior Sales Associate', 7);
INSERT INTO staff VALUES (68, 'Coleman', 'kcoleman1v@360.cn', 'Male', 'Beauty', '2012-09-02', 121378, 'Web Developer I', 7);
INSERT INTO staff VALUES (69, 'Stewart', 'dstewart1w@usnews.com', 'Male', 'Toys', '2000-08-22', 148144, 'Data Coordiator', 4);
INSERT INTO staff VALUES (70, 'Jordan', 'ajordan1x@moonfruit.com', 'Female', 'Games', '2004-11-13', 93839, 'Database Administrator III', 2);
INSERT INTO staff VALUES (71, 'Vasquez', 'evasquez1y@behance.net', 'Male', 'Baby', '2002-10-20', 77285, 'Operator', 6);
INSERT INTO staff VALUES (72, 'Knight', 'tknight1z@weibo.com', 'Female', 'Music', '2002-10-13', 135688, 'Statistician I', 4);
INSERT INTO staff VALUES (73, 'Palmer', 'ipalmer20@newsvine.com', 'Male', 'Sports', '2002-04-03', 78828, 'Director of Sales', 2);
INSERT INTO staff VALUES (74, 'Washington', 'jwashington21@squidoo.com', 'Female', 'Home', '2000-07-11', 47206, 'Programmer III', 3);
INSERT INTO staff VALUES (75, 'Sanchez', 'dsanchez22@blog.com', 'Female', 'Outdoors', '2013-10-06', 78157, 'Senior Financial Analyst', 1);
INSERT INTO staff VALUES (76, 'Grant', 'egrant23@prlog.org', 'Female', 'Electronics', '2000-07-23', 49296, 'Software Test Engineer II', 6);
INSERT INTO staff VALUES (77, 'Daniels', 'ndaniels24@google.ca', 'Male', 'Tools', '2013-02-07', 139061, 'Environmental Specialist', 3);
INSERT INTO staff VALUES (78, 'Medina', 'jmedina25@dot.gov', 'Female', 'Games', '2005-09-16', 114989, 'Marketing Assistant', 3);
INSERT INTO staff VALUES (79, 'Cunningham', 'acunningham26@simplemachines.org', 'Male', 'Clothing', '2002-09-15', 88345, 'Junior Executive', 6);
INSERT INTO staff VALUES (80, 'Little', 'klittle27@un.org', 'Male', 'Music', '2001-09-12', 114647, 'Editor', 5);
INSERT INTO staff VALUES (81, 'Welch', 'jwelch28@1und1.de', 'Male', 'Outdoors', '2004-07-24', 118514, 'Accounting Assistant III', 5);
INSERT INTO staff VALUES (82, 'Gilbert', 'hgilbert29@xrea.com', 'Female', 'Home', '2003-05-11', 93712, 'Junior Executive', 7);
INSERT INTO staff VALUES (83, 'George', 'ageorge2a@gmpg.org', 'Male', 'Industrial', '2009-05-02', 86373, 'Compensation Analyst', 7);
INSERT INTO staff VALUES (84, 'Hughes', 'mhughes2b@youtube.com', 'Male', 'Kids', '2013-01-28', 122110, 'Structural Engineer', 6);
INSERT INTO staff VALUES (85, 'Williams', 'jwilliams2c@businesswire.com', 'Female', 'Games', '2006-03-26', 95542, 'Nurse', 2);
INSERT INTO staff VALUES (86, 'Martinez', 'wmartinez2d@barnesandnoble.com', 'Female', 'Outdoors', '2013-05-25', 131392, 'Systems Administrator II', 2);
INSERT INTO staff VALUES (87, 'Hamilton', 'hhamilton2e@google.de', 'Male', 'Music', '2010-10-23', 98401, 'VP Quality Control', 1);
INSERT INTO staff VALUES (88, 'Gomez', 'jgomez2f@mtv.com', 'Female', 'Tools', '2004-09-19', 103806, 'Accounting Assistant I', 3);
INSERT INTO staff VALUES (89, 'Webb', 'awebb2g@springer.com', 'Male', 'Health', '2014-04-10', 73686, 'Tax Accountant', 2);
INSERT INTO staff VALUES (90, 'Thomas', 'tthomas2h@webnode.com', 'Male', 'Games', '2011-11-03', 55002, 'Research Assistant IV', 6);
INSERT INTO staff VALUES (91, 'Wallace', 'swallace2i@state.tx.us', 'Male', 'Baby', '2005-03-07', 65216, 'Registered Nurse', 4);
INSERT INTO staff VALUES (92, 'Ortiz', 'aortiz2j@jigsy.com', 'Female', 'Automotive', '2010-06-22', 113231, 'Senior Editor', 7);
INSERT INTO staff VALUES (93, 'Knight', 'nknight2k@cafepress.com', 'Female', 'Electronics', '2014-04-03', 125847, 'Chemical Engineer', 5);
INSERT INTO staff VALUES (94, 'Hunt', 'thunt2l@twitpic.com', 'Female', 'Music', '2000-05-31', 140430, 'Senior Cost Accountant', 2);
INSERT INTO staff VALUES (95, 'Franklin', 'sfranklin2m@wordpress.com', 'Male', 'Movies', '2013-11-06', 117105, 'VP Quality Control', 5);
INSERT INTO staff VALUES (96, 'Mason', 'wmason2n@xrea.com', 'Male', 'Beauty', '2004-02-21', 96673, 'Accounting Assistant I', 1);
INSERT INTO staff VALUES (97, 'Williams', 'wwilliams2o@berkeley.edu', 'Female', 'Games', '2013-03-14', 79267, 'VP Quality Control', 7);
INSERT INTO staff VALUES (98, 'Freeman', 'lfreeman2p@tiny.cc', 'Female', 'Kids', '2007-10-11', 109154, 'Accountant I', 4);
INSERT INTO staff VALUES (99, 'Palmer', 'ipalmer2q@youku.com', 'Female', 'Books', '2002-04-24', 138815, 'Physical Therapy Assistant', 3);
INSERT INTO staff VALUES (100, 'Bell', 'rbell2r@utexas.edu', 'Male', 'Sports', '2007-08-03', 68210, 'Registered Nurse', 4);
INSERT INTO staff VALUES (101, 'Rivera', 'jrivera2s@oakley.com', 'Male', 'Games', '2002-11-16', 137281, 'VP Sales', 3);

SET AUTOCOMMIT =1 ;


INSERT INTO staff VALUES (102, 'Matthews', 'kmatthews2t@oaic.gov.au', 'Male', 'Health', '2008-08-09', 114970, 'Statistician IV', 2);
INSERT INTO staff VALUES (103, 'Reed', 'dreed2u@arstechnica.com', 'Male', 'Automotive', '2003-07-19', 126001, 'Structural Engineer', 6);
INSERT INTO staff VALUES (104, 'Adams', 'eadams2v@yandex.ru', 'Male', 'Grocery', '2003-09-16', 78736, 'Financial Analyst', 6);
INSERT INTO staff VALUES (105, 'Young', 'syoung2w@cmu.edu', 'Male', 'Shoes', '2009-09-16', 80830, 'Quality Control Specialist', 4);
INSERT INTO staff VALUES (106, 'Gardner', 'rgardner2x@theguardian.com', 'Male', 'Kids', '2009-08-06', 47879, 'Product Engineer', 5);
INSERT INTO staff VALUES (107, 'Castillo', 'bcastillo2y@cornell.edu', 'Female', 'Computers', '2004-03-31', 132634, 'Civil Engineer', 2);
INSERT INTO staff VALUES (108, 'Perkins', 'jperkins2z@prlog.org', 'Male', 'Clothing', '2005-07-14', 68344, 'Senior Cost Accountant', 7);
INSERT INTO staff VALUES (109, 'Freeman', 'bfreeman30@fda.gov', 'Female', 'Clothing', '2007-10-14', 147868, 'General Manager', 6);
INSERT INTO staff VALUES (110, 'Howell', 'whowell31@free.fr', 'Male', 'Books', '2011-04-15', 67255, 'Geologist III', 4);
INSERT INTO staff VALUES (111, 'Austin', 'naustin32@discuz.net', 'Female', 'Computers', '2012-06-13', 47494, 'Help Desk Operator', 6);
INSERT INTO staff VALUES (112, 'Morris', 'amorris33@irs.gov', 'Female', 'Movies', '2013-07-19', 127645, 'Legal Assistant', 1);
INSERT INTO staff VALUES (113, 'Moore', 'kmoore34@shareasale.com', 'Male', 'Baby', '2000-03-01', 54413, 'Operator', 5);
INSERT INTO staff VALUES (114, 'Sims', 'msims35@i2i.jp', 'Male', 'Grocery', '2012-12-06', 136790, 'Nuclear Power Engineer', 2);
INSERT INTO staff VALUES (115, 'Nguyen', 'rnguyen36@bandcamp.com', 'Female', 'Clothing', '2007-06-30', 58420, 'Graphic Designer', 1);
INSERT INTO staff VALUES (116, 'Wells', 'awells37@theatlantic.com', 'Male', 'Industrial', '2002-01-17', 73813, 'Occupational Therapist', 3);
INSERT INTO staff VALUES (117, 'Martin', 'jmartin38@chron.com', 'Male', 'Movies', '2012-10-02', 49644, 'Senior Developer', 4);
INSERT INTO staff VALUES (118, 'Fox', 'pfox39@discovery.com', 'Male', 'Automotive', '2009-09-03', 87134, 'Assistant Manager', 3);
INSERT INTO staff VALUES (119, 'Washington', 'wwashington3a@dot.gov', 'Female', 'Clothing', '2008-10-06', 148408, 'Speech Pathologist', 3);
INSERT INTO staff VALUES (120, 'Evans', 'wevans3b@scientificamerican.com', 'Female', 'Toys', '2008-01-23', 77335, 'Chemical Engineer', 4);
INSERT INTO staff VALUES (121, 'Elliott', 'belliott3c@jiathis.com', 'Female', 'Sports', '2007-08-05', 131409, 'Technical Writer', 7);
INSERT INTO staff VALUES (122, 'Wagner', 'jwagner3d@fotki.com', 'Male', 'Baby', '2001-02-26', 77530, 'Librarian', 1);
INSERT INTO staff VALUES (123, 'Griffin', 'agriffin3e@mtv.com', 'Female', 'Garden', '2002-04-26', 101875, 'Business Systems Development Analyst', 4);
INSERT INTO staff VALUES (124, 'Chavez', 'mchavez3f@sohu.com', 'Female', 'Grocery', '2005-12-07', 144028, 'Executive Secretary', 6);
INSERT INTO staff VALUES (125, 'Dean', 'ldean3g@blogspot.com', 'Female', 'Movies', '2012-05-05', 140708, 'Nurse', 1);
INSERT INTO staff VALUES (126, 'Burton', 'bburton3h@360.cn', 'Male', 'Shoes', '2013-07-11', 79172, 'Associate Professor', 7);
INSERT INTO staff VALUES (127, 'Harper', 'sharper3i@slideshare.net', 'Female', 'Outdoors', '2000-05-18', 144639, 'VP Quality Control', 7);
INSERT INTO staff VALUES (128, 'Gibson', 'tgibson3j@ucoz.com', 'Male', 'Computers', '2003-03-24', 109449, 'Engineer II', 7);
INSERT INTO staff VALUES (129, 'Grant', 'lgrant3k@live.com', 'Female', 'Computers', '2006-10-15', 108441, 'Nurse', 6);
INSERT INTO staff VALUES (130, 'Nichols', 'bnichols3l@dropbox.com', 'Female', 'Games', '2008-07-03', 145692, 'Recruiting Manager', 5);
INSERT INTO staff VALUES (131, 'Kelley', 'wkelley3m@domainmarket.com', 'Male', 'Shoes', '2000-02-24', 120377, 'Research Nurse', 4);
INSERT INTO staff VALUES (132, 'Montgomery', 'rmontgomery3n@chicagotribune.com', 'Female', 'Home', '2003-05-14', 63929, 'Research Assistant IV', 5);
INSERT INTO staff VALUES (133, 'Martinez', 'dmartinez3o@deviantart.com', 'Male', 'Games', '2001-02-01', 124853, 'Systems Administrator III', 2);
INSERT INTO staff VALUES (134, 'Harvey', 'jharvey3p@angelfire.com', 'Female', 'Outdoors', '2010-06-03', 99854, 'VP Marketing', 6);
INSERT INTO staff VALUES (135, 'Hicks', 'ahicks3q@pcworld.com', 'Female', 'Kids', '2013-08-11', 58675, 'Technical Writer', 3);
INSERT INTO staff VALUES (136, 'Rose', 'lrose3r@slideshare.net', 'Female', 'Beauty', '2007-05-16', 50060, 'Accountant IV', 1);
INSERT INTO staff VALUES (137, 'Simmons', 'jsimmons3s@imageshack.us', 'Female', 'Sports', '2014-08-09', 72748, 'Quality Control Specialist', 3);
INSERT INTO staff VALUES (138, 'Montgomery', 'wmontgomery3t@taobao.com', 'Male', 'Electronics', '2005-09-01', 71082, 'Geologist III', 7);
INSERT INTO staff VALUES (139, 'Hart', 'rhart3u@wsj.com', 'Male', 'Jewelry', '2012-01-08', 119773, 'Pharmacist', 3);
INSERT INTO staff VALUES (140, 'Wheeler', 'bwheeler3v@google.co.uk', 'Male', 'Computers', '2001-01-22', 82358, 'Information Systems Manager', 4);
INSERT INTO staff VALUES (141, 'Williamson', 'rwilliamson3w@amazon.co.jp', 'Male', 'Games', '2005-12-12', 145575, 'VP Accounting', 1);
INSERT INTO staff VALUES (142, 'Burton', 'gburton3x@umich.edu', 'Male', 'Industrial', '2009-12-06', 105810, 'Recruiter', 5);
Set AUTOCOMMIT =1;
INSERT INTO staff VALUES (171,'Harris','mharris4q@squarespace.com','Female','Movies','2004-09-27',110912,'Geologist I',5);
INSERT INTO staff VALUES (172,'Fields','rfields4r@amazon.co.uk','Male','Books','2009-09-05',101520,'Project Manager',1);
INSERT INTO staff VALUES (173,'Fox','ffox4s@geocities.com','Female','Books','2005-11-21',55633,'Systems Administrator IV',1);
INSERT INTO staff VALUES (174,'Reynolds','dreynolds4t@biglobe.ne.jp','Female','Books','2010-10-08',91561,'VP Product Management',7);
INSERT INTO staff VALUES (175,'Daniels','cdaniels4u@rambler.ru','Male','Grocery','2013-11-07',77307,'Biostatistician IV',7);
INSERT INTO staff VALUES (176,'Fisher','rfisher4v@jigsy.com','Male','Clothing','2012-10-14',67942,'Financial Advisor',6);
INSERT INTO staff VALUES (177,'Ferguson','nferguson4w@networksolutions.com','Female','Clothing','2008-09-18',80397,'Compensation Analyst',1);
INSERT INTO staff VALUES (178,'Butler','cbutler4x@amazon.de','Female','Sports','2003-02-17',78157,'Librarian',1);
INSERT INTO staff VALUES (179,'Reynolds','rreynolds4y@miitbeian.gov.cn','Female','Garden','2004-01-29',121836,'VP Accounting',7);
INSERT INTO staff VALUES (180,'Williamson','nwilliamson4z@dropbox.com','Male','Outdoors','2008-11-08',76063,'Administrative Assistant II',6);
INSERT INTO staff VALUES (181,'Shaw','sshaw50@instagram.com','Female','Garden','2001-05-02',56923,'Social Worker',2);
INSERT INTO staff VALUES (182,'Gomez','rgomez51@baidu.com','Female','Industrial','2009-04-04',76932,'Legal Assistant',5);
INSERT INTO staff VALUES (183,'Harrison','jharrison52@scientificamerican.com','Female','Games','2002-08-03',64410,'Senior Developer',2);
INSERT INTO staff VALUES (184,'Watson','ewatson53@latimes.com','Female','Books','2008-02-02',111873,'Payment Adjustment Coordinator',2);
INSERT INTO staff VALUES (185,'Watson','rwatson54@webeden.co.uk','Female','Clothing','2001-09-22',74648,'Health Coach III',2);
INSERT INTO staff VALUES (186,'Larson','dlarson55@technorati.com','Female','Toys','2011-09-17',144991,'Technical Writer',7);
INSERT INTO staff VALUES (187,'Gordon','kgordon56@techcrunch.com','Female','Outdoors','2005-11-04',107407,'Systems Administrator II',3);
INSERT INTO staff VALUES (188,'Rose','erose57@guardian.co.uk','Male','Grocery','2012-03-17',120225,'Editor',7);
INSERT INTO staff VALUES (189,'Anderson','banderson58@wsj.com','Male','Home','2014-12-02',122272,'Environmental Specialist',2);
INSERT INTO staff VALUES (190,'Powell','hpowell59@geocities.com','Female','Health','2002-11-13',120577,'Web Designer III',1);
INSERT INTO staff VALUES (191,'Woods','dwoods5a@businesswire.com','Female','Electronics','2008-04-29',148986,'Structural Analysis Engineer',1);
INSERT INTO staff VALUES (192,'Morales','jmorales5b@joomla.org','Male','Games','2000-02-10',101855,'Engineer IV',4);
INSERT INTO staff VALUES (193,'Stanley','dstanley5c@is.gd','Female','Industrial','2006-02-17',140850,'Financial Analyst',4);
INSERT INTO staff VALUES (194,'Wagner','ewagner5d@cornell.edu','Male','Toys','2006-02-01',142516,'Professor',1);
INSERT INTO staff VALUES (195,'Meyer','nmeyer5e@about.me','Male','Shoes','2012-11-09',48829,'Accountant I',1);
INSERT INTO staff VALUES (196,'Jacobs','rjacobs5f@oracle.com','Male','Outdoors','2006-09-16',81270,'Geological Engineer',1);
INSERT INTO staff VALUES (197,'Hayes','jhayes5g@jiathis.com','Female','Beauty','2011-01-03',130097,'Office Assistant IV',5);
INSERT INTO staff VALUES (198,'Sanders','esanders5h@ihg.com','Female','Industrial','2000-01-24',117905,'Dental Hygienist',4);
INSERT INTO staff VALUES (199,'Reed','sreed5i@bloglovin.com','Female','Shoes','2010-11-12',142483,'Social Worker',3);
INSERT INTO staff VALUES (200,'George','mgeorge5j@cdc.gov','Male','Movies','2004-09-20',89633,'Software Consultant',4);
INSERT INTO staff VALUES (201,'Andrews','jandrews5k@free.fr','Male','Home','2009-03-18',48684,'Nurse Practitioner',6);
INSERT INTO staff VALUES (202,'Morris','lmorris5l@patch.com','Female','Automotive','2004-01-23',91932,'Analyst Programmer',1);
INSERT INTO staff VALUES (203,'Moreno','jmoreno5m@xing.com','Female','Grocery','2005-10-07',112004,'Internal Auditor',7);
INSERT INTO staff VALUES (204,'Powell','cpowell5n@cocolog-nifty.com','Female','Beauty','2000-09-25',116013,'Tax Accountant',4);
INSERT INTO staff VALUES (205,'Graham','jgraham5o@printfriendly.com','Female','Games','2008-09-10',109058,'Chemical Engineer',7);
INSERT INTO staff VALUES (206,'Riley','hriley5p@dailymotion.com','Male','Toys','2012-05-06',61992,'Sales Representative',4);
INSERT INTO staff VALUES (207,'Harris','mharris5q@utexas.edu','Female','Movies','2008-10-02',129527,'Statistician II',2);
INSERT INTO staff VALUES (208,'Gilbert','rgilbert5r@domainmarket.com','Female','Grocery','2001-12-15',67746,'Director of Sales',2);
INSERT INTO staff VALUES (209,'Peterson','jpeterson5s@t-online.de','Male','Books','2010-03-14',104530,'VP Marketing',2);
INSERT INTO staff VALUES (210,'Foster','jfoster5t@icq.com','Female','Music','2008-01-17',42759,'Social Worker',4);
INSERT INTO staff VALUES (211,'Fowler','afowler5u@parallels.com','Female','Kids','2011-02-25',43097,'Associate Professor',2);
INSERT INTO staff VALUES (212,'Matthews','fmatthews5v@theatlantic.com','Female','Outdoors','2005-11-22',123936,'Internal Auditor',1);
INSERT INTO staff VALUES (213,'Thomas','gthomas5w@slate.com','Male','Tools','2006-11-28',128239,'Teacher',6);
INSERT INTO staff VALUES (214,'West','gwest5x@hao123.com','Male','Computers','2003-10-31',66084,'Electrical Engineer',6);
INSERT INTO staff VALUES (215,'Stevens','estevens5y@salon.com','Male','Games','2009-03-14',106729,'Occupational Therapist',5);
INSERT INTO staff VALUES (216,'Howard','dhoward5z@soundcloud.com','Male','Jewelry','2009-03-15',87269,'General Manager',4);
INSERT INTO staff VALUES (217,'Boyd','mboyd60@jimdo.com','Male','Home','2004-12-01',128765,'Senior Financial Analyst',2);
INSERT INTO staff VALUES (218,'Ross','iross61@jimdo.com','Male','Games','2003-05-25',104671,'VP Marketing',7);
INSERT INTO staff VALUES (219,'Harrison','vharrison62@networkadvertising.org','Male','Shoes','2011-05-01',55073,'Assistant Professor',4);
INSERT INTO staff VALUES (220,'Ellis','lellis63@ucla.edu','Female','Outdoors','2007-11-21',146256,'Paralegal',1);
INSERT INTO staff VALUES (221,'Diaz','sdiaz64@disqus.com','Female','Home','2005-01-15',55077,'Registered Nurse',7);

