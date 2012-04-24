# ************************************************************
# Sequel Pro SQL dump
# Version 3408
#
# http://www.sequelpro.com/
# http://code.google.com/p/sequel-pro/
#
# Host: 127.0.0.1 (MySQL 5.5.9)
# Database: Cooking101
# Generation Time: 2012-04-24 14:18:40 +0000
# ************************************************************


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;


# Dump of table ingredient
# ------------------------------------------------------------

DROP TABLE IF EXISTS `ingredient`;

CREATE TABLE `ingredient` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `recipeId` int(11) NOT NULL,
  `quanity` varchar(11) DEFAULT NULL,
  `measurement` varchar(150) DEFAULT NULL,
  `description` varchar(250) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

LOCK TABLES `ingredient` WRITE;
/*!40000 ALTER TABLE `ingredient` DISABLE KEYS */;

INSERT INTO `ingredient` (`id`, `recipeId`, `quanity`, `measurement`, `description`)
VALUES
	(1,1,'9','oz','chocolate wafer cookies '),
	(2,1,'6','tbsp','unsalted butter, melted '),
	(3,1,'4','pkg','cream cheese, room temperature '),
	(4,1,'1 1/5','cup','sugar'),
	(5,1,'1/5','tsp','salt'),
	(6,1,'4','lg','eggs'),
	(7,1,'1','cup','sour cream '),
	(8,1,'8','oz','semisweet chocolate, melted '),
	(9,1,NULL,NULL,'Chocolate Ganache, for topping'),
	(10,2,'1','cup','Strawberries'),
	(11,2,'2/3','cup','Blueberries'),
	(12,2,'2',NULL,'plums'),
	(13,2,'1',NULL,'peach'),
	(14,2,'2','tbsp','sugar'),
	(15,2,'1/2','cup','Grape Juice'),
	(16,2,'2','cup','Vanilla Frozen Yogurt'),
	(17,3,'16','oz','swordfish, cut in 1-inch cubes'),
	(18,3,'2',NULL,'yellow squash, cut in 12 chunks'),
	(19,3,'12',NULL,'mushroom , cut in half'),
	(20,3,'4',NULL,'scallions, cut in 1-inch pieces'),
	(21,3,'12',NULL,'cherry tomatoes'),
	(22,4,'1','pkg','lasagna noodles'),
	(23,4,'4','cup','ricotta cheese'),
	(24,4,'1/4','cup','grated Parmesan cheese'),
	(25,4,'4','lg','eggs'),
	(26,4,NULL,NULL,'Salt and pepper to taste'),
	(27,4,'1','tsp','olive oil'),
	(28,4,'3','','cloves garlic, minced'),
	(29,4,'32','oz','tomato and basil sauce'),
	(30,4,'1','tsp','Italian seasoning'),
	(31,4,'2','cup','shredded mozzarella cheese'),
	(32,5,'3','','pounds pork shoulder'),
	(33,5,'1','oz','can diced tomatoes with mild green chilies'),
	(34,5,'1','cup','chopped onion'),
	(35,5,'1/2','cup','apple juice'),
	(36,5,'2','tbsp','lime juice'),
	(37,5,'2',NULL,'garlic cloves, minced'),
	(38,5,'2','tsp','chili powder'),
	(39,5,'1/2','tsp','salt'),
	(40,5,'16',NULL,'corn tortillas'),
	(41,5,'4',NULL,'ripe avocados, peeled, seeded and sliced'),
	(42,5,'1','cup','salsa'),
	(43,5,'1','cup','Sour Cream'),
	(44,6,'1','oz','frozen sweetened strawberries'),
	(45,6,'12','oz','citrus-flavored soda'),
	(46,6,'3','cup','ice'),
	(47,7,'7','oz','macaroni and cheese mix'),
	(48,7,'1/2','cup','chopped onion'),
	(49,7,'1/4','cup','chopped green onion'),
	(50,7,'1/3','cup','butter or margarine'),
	(51,7,'3/4','cup','milk'),
	(52,7,'10','oz','condensed cream of celery soup'),
	(53,7,'6','oz','can tuna'),
	(54,7,'5','oz','jar sliced mushrooms'),
	(55,7,'2','oz','jar diced pimientos'),
	(56,8,'8','oz','angel hair pasta'),
	(57,8,'1 3/4','cup','chicken broth'),
	(58,8,'2',NULL,'garlic cloves, minced'),
	(59,8,'1/4','tsp','lemon-pepper seasoning'),
	(60,8,'1/4','cup','chopped green onions, divided'),
	(61,8,'1/4','cup','minced fresh parsley, divided'),
	(62,8,'16','oz','uncooked shrimp, peeled and deveined'),
	(63,9,'1','cup','softened butter'),
	(64,9,'3/4','cup','brown sugar'),
	(65,9,'3/4','cup','sugar'),
	(66,9,'1','tsp','vanilla'),
	(67,9,'1/2','tsp','water'),
	(68,9,'2',NULL,'eggs'),
	(69,9,'2','cup','All purpose Flour'),
	(70,9,'1','tsp','baking Soda'),
	(71,9,'1','tsp','salt'),
	(72,9,'14','oz','chocolate chip');

/*!40000 ALTER TABLE `ingredient` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table list
# ------------------------------------------------------------

DROP TABLE IF EXISTS `list`;

CREATE TABLE `list` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `listitems` varchar(150) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

LOCK TABLES `list` WRITE;
/*!40000 ALTER TABLE `list` DISABLE KEYS */;

INSERT INTO `list` (`id`, `listitems`)
VALUES
	(1,'Milk'),
	(2,'Cheese'),
	(3,'Chicken Breast'),
	(4,'Angel Hair Noodles'),
	(7,'Soy Sauce'),
	(8,'Flour'),
	(9,'Black Pepper'),
	(10,'Water');

/*!40000 ALTER TABLE `list` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table recipe
# ------------------------------------------------------------

DROP TABLE IF EXISTS `recipe`;

CREATE TABLE `recipe` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(250) DEFAULT NULL,
  `description` varchar(1000) DEFAULT NULL,
  `images` varchar(250) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

LOCK TABLES `recipe` WRITE;
/*!40000 ALTER TABLE `recipe` DISABLE KEYS */;

INSERT INTO `recipe` (`id`, `title`, `description`, `images`)
VALUES
	(1,'Tripple Chocolate Cheese cake','Preheat oven to 325 degrees. Assemble a 9-inch pan with the raised side of the bottom facing down. In a food processor, pulse cookies until finely ground. Add butter, and pulse. Transfer to pan, and press crumbs firmly and evenly into the bottom. Place pan on baking sheet bake 10 minutes, and set aside. In a food processor Add cream cheese, sugar, and salt blend until smooth. With motor running, add eggs, then sour cream, and chocolate blend until smooth. Pour filling onto crust, and bake just until set, 1 hour. Turn oven off, and let cheesecake sit 1 hour in oven, without opening. Run a thin knife around the edge of the pan, leave in pan, and cool completely on wire rack. Cover loosely and refrigerate, at least 6 hours or up to overnight. Spread ganache in center of cheesecake let set before serving.','TripChocak.jpg'),
	(2,'Fruit A La Mode','Preheat oven to 375 F. Combine all ingredients, except frozen yogurt, in a baking dish. Bake 15-20 minutes or until fruit softens. Serve warm with frozen yogurt','fruitcrisp.jpg'),
	(3,'Fish & Veggie Kababs','Have ready ten 18-inch or longer metal skewers. Heat grill or broiler. Meanwhile thread fish on 4 skewers, squash on 2 skewers, mushrooms and half the scallion pieces alternately on 2 more skewers and tomatoes and rest of scallions alternately on remaining 2 skewers. Grill or broil fish and vegetables 4 to 6 inches from heat source, turning skewers occasionally, fish 6 minutes or until nearly opaque in center; vegetables 3 to 4 minutes until crisp-tender. Remove fish and vegetables from skewers to a large platter or divide evenly among dinner plates.','fishkebabs.jpg'),
	(4,'Three chese Lasagna','Preheat oven to 350 degrees F . Bring a large pot of lightly salted water to a boil. Add pasta and cook for 8 to 10 minutes. Drain and lay lasagna flat on foil to cool. In a medium bowl, combine ricotta, Parmesan, eggs, salt and pepper; mix well. In a medium saucepan, heat oil over medium heat and saute garlic for 2 minutes; stir in pasta sauce and Italian seasoning. Heat sauce until warmed through, stirring occasionally, 2 to 5 minutes. Spread 1/2 cup of sauce in the bottom of a 9x13 baking dish. Cover with a layer of noodles. Spread half the ricotta mixture over noodles; top with another noodle layer. Pour 1 1/2 cups of sauce over noodles, and spread the remaining ricotta over the sauce. Top with remaining noodles and sauce and sprinkle mozzarella over all. Cover with greased foil. Bake 45 minutes, or until cheese is bubbly and top is golden. ','Lasagna.jpg'),
	(5,'Pulled Pork Tacos','Heat the oven to 350 degrees. Place the pork in a 4 quart Dutch oven. Combine the tomatoes, onion, apple juice, limejuice, garlic, chili powder and salt in a medium bowl. Pour the mixture over the pork and cover. Bake the roast for 3 to 3 1/2 hours or until the pork is very tender. Remove the pork from the pan and cool slightly. Remove any fat or bones and shred the pork with a fork. Strain the pan juices and return the tomatoes and onions to the Dutch oven. Add the pork to the sauce and mix well. Skim the fat from the pan juices. If the pork is dry, moisten with a little additional juice. Wrap the tortillas in aluminum foil and heat for about 15 minutes or until warm. Place 1/4 cup meat on each tortilla. Top each taco with avocado slices, tomatillo salsa and a dollop of sour cream. ','porktacos.jpg'),
	(6,'Strawberry Daiquiri','In a blender half full of ice, combine strawberries and citrus soda. Blend until smooth. Pour into glasses and serve. ','SDaiquiri.jpg'),
	(7,'Golden Tuna Casserole','Set aside the cheese sauce packet. In a saucepan, cook macaroni according to package directions; drain and set aside. In the same pan, saute onion and green pepper in butter. Return macaroni to the pan. Add milk and contents of cheese sauce packet; stir until smooth. Stir in the soup, tuna, mushrooms and pimientos.  Pour into a greased 2-qt. baking dish. Cover and bake at 350 degrees F for 25-30 minutes or until bubbly. ',NULL),
	(8,'Shrimp Scampi','Cook pasta according to package directions. Meanwhile, in a large saucepan, combine the broth, garlic, lemon-pepper and 3 tablespoons each green onions and parsley. Bring to a boil. Add shrimp; cook for 3-5 minutes or until shrimp turn pink. Drain pasta and place in a serving bowl. Top with shrimp mixture and remaining onions and parsley.',NULL),
	(9,'Chocolate Chip Cookies','Beat butter, sugar, vanilla, water and eggs until light and fluffy. Mix flour with soda and salt; blend into butter mixture. Stir in chips. Drop 2 inches apart from teaspoon onto greased baking sheets. Bake at 375 degrees for 8 minutes, or until light brown. Makes about 8 dozen.',NULL);

/*!40000 ALTER TABLE `recipe` ENABLE KEYS */;
UNLOCK TABLES;



/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
