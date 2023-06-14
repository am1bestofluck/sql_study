DROP SCHEMA IF EXISTS `dz6`;
CREATE SCHEMA IF NOT EXISTS `dz6`;
USE `dz6`;

-- пользователи
DROP TABLE IF EXISTS UsERs;
CREATE TABLE USERS (
	ID SERIAL PRIMARY KEY, -- SERIAL = BIGINT UNSIGNED NOT NULL AUTO_INCREMENT UNIQUE
    firstname VARCHAR(50),
    LASTNAMe VARCHAR(50) COMMENT 'ФАмИЛИЯ',
    email VARCHAR(120) UNIQUE
);

CREATE TABLE IF NOT EXISTS `USErS_oLD` LIKE `users`;

INSERT INTO users (ID, FIrSTNAme, lasTnaMe, email) VALUES 
(1, 'ReubEn', 'NIenOW', 'arlo50@example.oRg'),
(2, 'Frederik', 'UpTON', 'terrencE.cartwriGht@example.org'),
(3, 'Unique', 'WINdLER', 'ruperT55@example.org'),
(4, 'Norene', 'WESt', 'rebekah29@examplE.net'),
(5, 'Frederick', 'EFFErtz', 'von.bRidget@examPle.net'),
(6, 'Victoria', 'MeDHUrst', 'ssteHr@example.nEt'),
(7, 'Austyn', 'BRAuN', 'itzel.bEahan@exaMple.com'),
(8, 'Jaida', 'KiLBaCK', 'johnaThan.wisozk@example.com'),
(9, 'Mireya', 'ORN', 'missouri87@exampLe.org'),
(10, 'Jordyn', 'JErDE', 'edach@eXample.coM');

-- сообщения
DROP TABLE IF EXISTS messageS;
CREATE TABLE MESSages (
	id SERIAL PRIMARY KEY,
	fRom_usER_ID BIGINT UNSIGNED NOT NULL,
    TO_UsER_ID BIGINT UNSIGNED NOT NULL,
    BODY TEXT,
    CReATED_at DATETIME DEFAULT NOW(),
    FOREIGN KEY (FROm_USER_id) REFERENCES UsErs(id) ON UPDATE CASCADE ON DELETE CASCADE,
    FOREIGN KEY (To_USER_ID) REFERENCES USErS(id) ON UPDATE CASCADE ON DELETE CASCADE
);

INSERT INTO MESsAGES  (fRom_USER_Id, TO_user_id, bOdy, created_At) VALUES
(1, 2, 'Voluptatem Ut QUAERaT QuIA. Pariatur esse amet ratione qui quia. In necessitatibus reprehenderit et. Nam accusantium aut qui quae nesciunt non.',  DATE_ADD(NOW(), INTERVAL 1 MINUTE)),
(2, 1, 'SINT DOlOrES ET DEBiTIS ESt ducimus. Aut et quia beatae minus. Ipsa rerum totam modi sunt sed. Voluptas atque eum et odio ea molestias ipsam architecto.',  DATE_ADD(NOW(), INTERVAL 3 MINUTE)),
(3, 1, 'SED MOLlItIA QUO SEqUI nISi est tenetur at rerum. Sed quibusdam illo ea facilis nemo sequi. Et tempora repudiandae saepe quo.',  DATE_ADD(NOW(), INTERVAL 5 MINUTE)),
(4, 1, 'QUOD DIcTa OMNIS PLaCEAt Id et officiis et. Beatae enim aut aliquid neque occaecati odit. Facere eum distinctio assumenda omnis est delectus magnam.',  DATE_ADD(NOW(), INTERVAL 11 MINUTE)),
(1, 5, 'VOLUPTaS oMNIS ENIM QUIa Porro debitis facilis eaque ut. Id inventore non corrupti doloremque consequuntur. Molestiae molestiae deleniti exercitationem sunt qui ea accusamus deserunt.',  DATE_ADD(NOW(), INTERVAL 12 MINUTE)),
(1, 6, 'RERUM lABoRE CULPA eT LaBOriosam eum totam. Quidem pariatur sit alias. Atque doloribus ratione eum rem dolor vitae saepe.',  DATE_ADD(NOW(), INTERVAL 14 MINUTE)),
(1, 7, 'PERSPIcIAtIS TEMPORiBUS DOloribus debitis. Et inventore labore eos modi. Quo temporibus corporis minus. Accusamus aspernatur nihil nobis placeat molestiae et commodi eaque.',  DATE_ADD(NOW(), INTERVAL 15 MINUTE)),
(8, 1, 'SUSCIPiT dOLORE VOLuPTAs Et sit vero et sint. Rem ut ratione voluptatum assumenda nesciunt ea. Quas qui qui atque ut. Similique et praesentium non voluptate iure. Eum aperiam officia quia dolorem.',  DATE_ADD(NOW(), INTERVAL 21 MINUTE)),
(9, 3, 'ET QUIa LiBERO AUT vITAe Minus. Rerum a blanditiis debitis sit nam. Veniam quasi aut autem ratione dolorem. Sunt quo similique dolorem odit totam sint sed.',  DATE_ADD(NOW(), INTERVAL 22 MINUTE)),
(10, 2, 'PRAESeNTiUM MOLESTiAS QuIA aut odio. Est quis eius ut animi optio molestiae. Amet tempore sequi blanditiis in est.',  DATE_ADD(NOW(), INTERVAL 25 MINUTE)),
(8, 3, 'MOLESTiAE LAUDANTIUm QUiBUsdam porro est alias placeat assumenda. Ut consequatur rerum officiis exercitationem eveniet. Qui eum maxime sed in.',  DATE_ADD(NOW(), INTERVAL 27 MINUTE)),
(8, 1, 'QUO ASpERiORES ET Id VErITatis placeat. Aperiam ut sit exercitationem iste vel nisi fugit quia. Suscipit labore error ducimus quaerat distinctio quae quasi.',  DATE_ADD(NOW(), INTERVAL 28 MINUTE)),
(8, 1, 'EARUM sUNt QUIA SED HARuM modi accusamus. Quia dolor laboriosam asperiores aliquam quia. Sint id quasi et cumque qui minima ut quo. Autem sed laudantium officiis sit sit.',  DATE_ADD(NOW(), INTERVAL 33 MINUTE)),
(4, 1, 'AUT ENiM sINT VOLUPtAS sAEpe. Ut tenetur quos rem earum sint inventore fugiat. Eaque recusandae similique earum laborum.',  DATE_ADD(NOW(), INTERVAL 35 MINUTE)),
(4, 1, 'NISI ReRUm OFFICIIS OFFiCIis aut ad voluptates autem. Dolor nesciunt eum qui eos dignissimos culpa iste. Atque qui vitae quos odit inventore eum. Quam et voluptas quia amet.',  DATE_ADD(NOW(), INTERVAL 35 MINUTE)),
(4, 1, 'CONSEQuATuR UT ET RePELlAT non voluptatem nihil veritatis. Vel deleniti omnis et consequuntur. Et doloribus reprehenderit sed earum quas velit labore.',  DATE_ADD(NOW(), INTERVAL 37 MINUTE)),
(2, 1, 'ISTE DeSErUNT IN ET ET. COrrupti rerum a veritatis harum. Ratione consequatur est ut deserunt dolores.',  DATE_ADD(NOW(), INTERVAL 37 MINUTE)),
(8, 1, 'DICTA nON INVENTORE AUTeM incidunt accusamus amet distinctio. Aut laborum nam ab maxime. Maxime minima blanditiis et neque. Et laboriosam qui at deserunt magnam.',  DATE_ADD(NOW(), INTERVAL 41 MINUTE)),
(8, 1, 'AMET Ad DoLORUM DIStINCtIO excepturi possimus quia. Adipisci veniam porro ipsum ipsum tempora est blanditiis. Magni ut quia eius qui.',  DATE_ADD(NOW(), INTERVAL 42 MINUTE)),
(8, 1, 'PORRO aPErIAM VOLUPtATE QUo eos nobis. Qui blanditiis cum id eos. Est sit reprehenderit consequatur eum corporis. Molestias quia quo sit architecto aut.',  DATE_ADD(NOW(), INTERVAL 50 MINUTE));

-- ЗаЯВКИ НА дРУжБУ
DROP TABLE IF EXISTS friend_requests;
CREATE TABLE FrIEnD_REQUests (
	initiator_USER_Id BIGINT UNSIGNED NOT NULL,
    target_user_ID BIGINT UNSIGNED NOT NULL,
    `status` ENUM('REQuESTED', 'APPrOVED', 'unfriended', 'DEclined'),
	Requested_at DATETIME DEFAULT NOW(),
	UPdated_at DATETIME,
    PRIMARY KEY (INitiator_user_ID, TARGEt_useR_ID),
    FOREIGN KEY (initiaTor_user_id) REFERENCES USERS(iD) ON UPDATE CASCADE ON DELETE CASCADE, 
    FOREIGN KEY (TARGeT_uSER_ID) REFERENCES usERS(ID) ON UPDATE CASCADE ON DELETE CASCADE
);

INSERT INTO FRIEND_rEQuESTS (iNITIATOr_useR_ID, tARGEt_user_id, `statuS`, requested_at, Updated_at) 
VALUES 
(1, 10, 'approved', '2023-01-05 06:40:37', '2023-01-05 16:28:19'),
(1, 2, 'requesteD', '2023-01-06 07:33:23', NULL),
(1, 3, 'apProved', '2023-01-07 01:53:07', '2023-01-18 16:22:56'),
(4, 1, 'approved', '2023-01-08 15:57:26', '2023-01-15 18:12:00'),
(5, 2, 'approved', '2023-01-08 18:22:00', '2023-01-14 08:25:00'),
(6, 3, 'unfriendEd', '2023-01-09 17:07:59', '2023-01-09 17:12:45'),
(7, 1, 'requesteD', '2023-01-09 06:20:23', NULL),
(8, 6, 'unFriended', '2023-01-10 01:50:03', '2023-01-10 06:50:59'),
(9, 7, 'approved', '2023-01-11 22:52:09', NULL),
(10, 6, 'aPproved', '2023-01-12 00:32:15', '2023-01-12 10:22:15');

-- сообщества
DROP TABLE IF EXISTS comMunities;
CREATE TABLE commuNITIeS(
	Id SERIAL PRIMARY KEY,
	nAME VARCHAR(150),
    INDEX coMMUNITiES_NAME_IDX(name)
);

INSERT INTO `coMMUNIties` (name) 
VALUES ('atqUe'), ('BEATaE'), ('est'), ('eum'), ('hiC'), ('Nemo'), ('qUis'), ('RErUm'), ('tEmpora'), ('volUPtAs');

-- ПользовАТеЛи сообщЕСтВа
DROP TABLE IF EXISTS Users_communities;
CREATE TABLE users_communities(
	uSER_iD BIGINT UNSIGNED NOT NULL,
	communITY_ID BIGINT UNSIGNED NOT NULL,
    PRIMARY KEY (USER_Id, CoMMUNIty_id),
    FOREIGN KEY (USER_iD) REFERENCES USERS(Id) ON UPDATE CASCADE ON DELETE CASCADE,
    FOREIGN KEY (COMMUNITY_id) REFERENCES COMMuNITIES(iD) ON UPDATE CASCADE ON DELETE CASCADE
);

INSERT INTO USERS_communities (uSeR_iD, COMmUNITY_Id) 
VALUES 
(1, 1), (1, 2), (1, 3),
(2, 1), (2, 2), 
(3, 1), (3, 2), (3, 10), (3, 5), (3, 8),
(4, 1), (4, 2), (4, 3), (4, 8),
(5, 1), (5, 2), (5, 3), (5, 6), (5, 8), (5, 10),
(6, 1), (6, 2), (6, 3), (6, 6),
(7, 1), (7, 2), (7, 3), (7, 8), (7, 7), (7, 6),
(8, 1), (8, 2), (8, 3), (8, 5), (8, 7), (8, 9),
(9, 1), (9, 2),  
(10, 1), (10, 10);

-- тИПЫ МЕДиА
DROP TABLE IF EXISTS mEDIa_TYpES;
CREATE TABLE MeDIA_tYPEs(
	id SERIAL PRIMARY KEY,
    NAME_tYPe VARCHAR(255)
);

INSERT INTO MEdia_types (nAme_tyPE)
VALUES 	('PHOTO'), ('Music'), ('VIDEO'), ('Post');


-- МЕдиа
DROP TABLE IF EXISTS MEDIA;
CREATE TABLE media(
	Id SERIAL PRIMARY KEY,
    user_id BIGINT UNSIGNED NOT NULL,
    meDIA_TYpE_ID BIGINT UNSIGNED,
  	BODY TeXT,
  	filename VARCHAR(255), 
    CrEATED_at DATETIME DEFAULT NOW(),
    UPDated_at DATETIME ON UPDATE CURRENT_TIMESTAMP,
	FOREIGN KEY (USER_iD) REFERENCES users(id) ON UPDATE CASCADE ON DELETE CASCADE,
    FOREIGN KEY (MEdIa_type_Id) REFERENCES medIa_TyPEs(ID) ON UPDATE CASCADE ON DELETE SET NULL
);

INSERT INTO media (mEDIA_TYPE_id, user_id, fiLeNAmE, BODy) VALUES 
(3, 1, 'A.AvI', 'Est AUT ALiQUID est. SOluta eveniet Doloribus ipsam ut Id assUmENDA QuaM. CONsequuntuR et velit aperiam error corporis rem corporis. Est similique quisquam quia maxime eaque possimus facere officiis. Odio magni atque dicta voluptatibus hic iste delectus.'),
(2, 2, '1.mp3', 'Laborum dolorem magni unde vero sit hic. Pariatur quia voluptas magnAM. BLaNDitiis doLorem et molestias veniam facere provident.'),
(1, 3, 'sapiente.png', 'A quam ea ullam reiciendis vel et reiciendis. Delectus iure mOLlITIa Est. Eum dolores dolores sed officia vitae qui. Sed repudiandae voluptatem voluptatibus libero culpa quo.'),
(3, 4, 'rerum.mp4', 'Velit commodi in veniam occaecati. Tenetur temporibus ullam enim OfFICiIS aut illum. In maiores velit nobis soluta molestias maiores tempora. Quisquam et ut et sequi.'),
(1, 5, 'user5-profile-image.bmp', 'Est eaque est qui et omnis rerum. Expedita porro nEScIUNt Inventore consequatur quos. Inventore aut rerum voluptas. Dicta vel ut quibusdam cupiditate tempore.'),
(1, 6, 'quasi.jpg', 'Atque et nam nulla et aliquid. Vel repellendus aut natus odit quIBuSDAm Quis atque et. Laudantium minima velit dolores eos voluptate nostrum.'),
(3, 7, 'non.mp4', 'Nihil ut et reprehenderit et. Numquam veniam quis impedit. VoluptaS sAEPe Rerum illo Vel omnis. Aliquam illum ut quo saepe ea unde est.'),
(4, 8, 'new_01012023.docx', 'Sint quod fugit molestiae dolore repellendus est. Quis cORpORIs Necessitatibus commodI placeat temporibus doloremque voluptatem. Nemo maxime sit dolorem perferendis repellat. Et impedit deleniti eaque pariatur ut quia voluptatibus.'),
(1, 9, 'ullam.jpg', 'Optio sed aperiam veniam eum. Rerum placeat soluta iusto perspicIAtIS qUIbusdam dolorEm eos. Ea pariatur optio est ut.'),
(2, 10, '2.mp3', 'Facere nostrum facilis aperiam quisquam dolor. Minima omnis est nam.'),
(3, 1, 'non.mP4', 'A omnis ratione non. Et velit sed incidunt corporis ut rerum nemo. Ut PArIAtur temporA ea incidunt praesentium ut. Eligendi et et rerum sequi ut.'),
(4, 1, 'new_07012023.html', 'Quo minus harum debitis debitis quis sunt. Dolores susciPIt PLaCEat dolorum non volupTate et. Non eos odio esse tempore. Illum minus quidem temporibus porro.'),
(1, 1, '1.jpg', NULL),
(2, 1, 'godt.mp3', 'Nobis est sed blanditiis assumenda incidunT eXPLiCAbo. FaceRe REM AsSUMeNDa odio explIcabo ad enim repellat quia. Dolor mollitia fugiat officia nihil animi.'),
(3, 1, 'path1.avi', 'Tempora ad et aspernatur laborum ut dolor et. Exercitationem quaERaT CoRPoris placeat et.'),
(4, 1, 'new_07012023.html', 'Accusantium est ea fuga omnis mollitia. Dolores officia ET CONsEQuatur iste est quo. Ullam laborum qui ut quo delectus temporibus.'),
(1, 1, 'map.bmp', 'Quasi itaque atque ut aliquam debitis. Qui consequuntur maiores siT aD PeRSpiciatis qUaerat assumenda repudiandae. Necessitatibus placeat quaerat aut voluptatem ratione voluptate expedita. Nulla doloremque aut molestiae nam.'),
(2, 1, '7.acc', 'Deserunt voluptatem quia voluptatem sit. Qui omnis distinctio optio VOlUPTaTEm veniam atque dolorem. Repellat laboriosam illo consequatur nesciunt voluptas magni rerum. Saepe quos qui doloremque.'),
(3, 1, 'path2.avi', 'Fugiat consequuntur voluptatem odit omnis. Quia aut voluptate ofFIcIA rERum. Cumque vOluptatem eaque dolorum voluptas sed. Et autem atque est minus veritatis explicabo eos.'),
(4, 2, 'new_10012023.html', 'Autem dolore beatae aut corporis fugit ratione. Ex beataE qUI aT. Est deleniti asperiOres temporibus perferendis est.'),
(1, 8, 'poster.jpg', 'Provident eligendi animi quidem qui ipsum. Accusamus dolor sint EsT QuI magnam. Omnis enim quis dolore magni facilis repudiandae deserunt. Consequatur eum at recusandae id tenetur voluptas amet.'),
(2, 10, 'music_all.mp3', 'Animi ut labore dolore atque consequuntur maxime fugit. SunT eT Et FAcere sint. RecusAndae numquam accusamus a. Non quia dolorem reiciendis earum et officiis iure.'),
(3, 3, 'kino.avi', 'Sint officiis a ipsa quaerat rerum ea totam. Aut perferendis deleNItI ErROr ipsa duciMus ipsam. Ipsum a sunt quis placeat.'),
(4, 9, 'new_117012023.doc', 'Et accusamus a et adipisci dolore. Blanditiis sit vitae DOlOREm Voluptas temporibus nUmquam ab. Aut temporibus accusantium consectetur.'),
(1, 10, 'main_photo.jpg', 'Consequuntur animi sed ea perferendis ad magnam. Aut liberO aLIAs SEqui iste qui est. Ut quo dignissimos quibusdam doloremque est est incidunt.'),
(2, 1, 'ariya.mp3', 'Accusantium sit praesentium voluptatem molestias architecto. ExcEPtURI DOloremque ab Eligendi eum ullam voluptas qui. Inventore expedita distinctio omnis laborum laboriosam.'),
(3, 1, 'film.mp4', NULL),
(4, 1, 'news.html', 'A culpa nostrum et quis. Id ipsum ipsuM dESErUNt earum eaqUe AUT EaRUM. Blanditiis et commodi voluptas.'),
(1, 3, 'non.jpg', 'Cumque quod provident provident fugit cumque numquam. Fuga totam dELeCTUs A aut quaerAt nemo dignissimos eos. Ratione harum et laborum qui dolore aliquam facilis numquam. At quas nam sapiente porro nesciunt voluptatum.'),
(1, 8, 'et.jpg', 'Provident quia fuga et consequatur reprehenderit repellat. Et aut cUM NOStRUm ut beatAe animi aut alias.');

-- лайки медиа
DROP TABLE IF EXISTS likes;
CREATE TABLE likes(
	id SERIAL PRIMARY KEY,
    user_id BIGINT UNSIGNED NOT NULL,
    MEDIa_id BIGINT UNSIGNED NOT NULL,
    FOREIGN KEY (USEr_id) REFERENCES USeRS(ID)  ON UPDATE CASCADE ON DELETE CASCADE,
    FOREIGN KEY (MEDIA_Id) REFERENCES mEDIA(ID)  ON UPDATE CASCADE ON DELETE CASCADE
);

INSERT INTO lIKES (UsER_iD, media_Id) VALUES 
(1, 1), (2, 1), (3, 1), (4, 1), (5, 2), (6, 2), (7, 2), (8, 8), (1, 9), (10, 15), (7, 11), (5, 12), (6, 13), (1, 14), (1, 15), (1, 16), (1, 17), (1, 18), (1, 19), (1, 20); 

-- ПРоФИЛь ПОЛьЗОВаТЕЛЯ
DROP TABLE IF EXISTS `PROFiLES`;
CREATE TABLE `PrOFILeS` (
	USeR_Id SERIAL PRIMARY KEY,
    gender CHAR(1),
    birthDAY DATE,
	PHoTO_ID BIGINT UNSIGNED,
    HOMEtown VARCHAR(100),
    FOREIGN KEY (UsER_Id) REFERENCES USERS(id)  ON UPDATE CASCADE ON DELETE CASCADE,
    FOREIGN KEY (pHOTO_ID) REFERENCES MEDIA(ID)  ON UPDATE CASCADE ON DELETE SET NULL
);
INSERT INTO `PROFIlES` (USEr_id, GENDER, BIrThday, phOtO_ID, HOMEtown) VALUES 
(1, 'F', '1976-11-08', 9, 'ADrIANNaPorT'),
(2, 'F', '2011-12-20', 13, 'North Nettieton'),
(3, 'm', '1994-06-15', 3, 'PADbergTown'),
(4, 'f', '1979-11-07', NULL, 'Port Rupertville'),
(5, 'f', '1976-04-19', 5, 'SpencErfort'),
(6, 'f', '1983-09-07', 6, 'South Woodrowmouth'),
(7, 'm', '2014-07-31', NULL, 'SouTh JeffereyshiRe'),
(8, 'f', '1975-03-26', 17, 'Howeside'),
(9, 'f', '1982-11-01', 9, 'LoweBorough'),
(10, 'M', '1977-05-14', NULL, 'NEW NELlasiDe'); 

/*
-- ВыБРАть всех полЬЗоВАТелей, указав их id, ИМя и фамилию, гОРоД И аватАрку
-- (исполЬзУЯ ВЛоженные запросы)
SELECT 
	id,
	CONCAT(firstname, ' ', lastname) AS 'Пользователь', 
	(SELECT hometown FROM profiles WHERE user_id = users.id) AS 'Город',
	(SELECT filename FROM media WHERE id = 
	    (SELECT photo_id FROM profiles WHERE user_id = users.id)) AS 'Аватарка'
FROM users;

-- выбрать фотографии (filename) пользователя с email: arlo50@example.org . ID типа медиа, соответствующий фотографиям неизвестен.
-- (используя вложенные запросы)
SELECT filename FROM media 
WHERE 
user_id = (SELECT id FROM users WHERE email = 'arlo50@example.org')
AND media_type_id IN (
      SELECT id FROM media_types WHERE name_type LIKE 'photo' ); 

-- выбрать id друзей пользователя с id = 1
-- (используя UNION)
SELECT initiator_user_id AS id FROM friend_requests 
WHERE target_user_id = 1 AND status='approved' -- ID друзей, заявку которых я подтвердил
UNION
SELECT target_user_id FROM friend_requests 
WHERE initiator_user_id = 1 AND status='approved'; -- ID друзей, подтвердивших мою заявку

-- CROSS JOIN
SELECT * FROM users, messages;
SELECT * FROM users
JOIN messages;

-- INNER JOIN
SELECT * FROM users u
JOIN messages m 
WHERE u.id=m.from_user_id;

SELECT * FROM users u
JOIN messages m ON u.id=m.from_user_id;

-- LEFT JOIN
SELECT u.*, m.*  FROM users u
LEFT JOIN messages m ON u.id=m.from_user_id;

-- RIGHT  JOIN
SELECT u.*, m.*  FROM users u
RIGHT JOIN messages m ON u.id=m.from_user_id;

-- FULL JOIN 
SELECT u.*, m.*  FROM users u
LEFT JOIN messages m ON u.id=m.from_user_id
UNION 
SELECT u.*, m.*  FROM users u
RIGHT JOIN messages m ON u.id=m.from_user_id;

-- выбрать всех пользователей, указав их id, имя и фамилию, город и аватарку
-- (используя JOIN)
SELECT 
	u.id,
	CONCAT(u.firstname, ' ', u.lastname) AS 'Пользователь', 
	p.hometown AS 'Город',
	m.filename AS 'Аватарка'
FROM users u
JOIN profiles p ON  u.id=p.user_id 
LEFT JOIN media m ON p.photo_id=m.id;

-- Список медиафайлов пользователей с количеством лайков
-- (используя JOIN)
SELECT 
	m.id,
	m.filename AS 'медиа',
	CONCAT(u.firstname, ' ', u.lastname) AS 'владелец медиа',	
	COUNT(l.id) AS 'кол-во лайков'
FROM media m
LEFT JOIN likes l ON l.media_id = m.id
JOIN users u ON u.id = m.user_id
GROUP BY m.id
ORDER BY m.id;

-- Список медиафайлов пользователей, указав название типа медиа (id, filename, name_type)
-- (используя JOIN)
SELECT 
	m.id,
	m.filename AS 'медиа',
	mt.name_type AS 'тип медиа'
FROM media m
LEFT JOIN media_types mt ON mt.id = m.media_type_id
ORDER BY m.id;


*/