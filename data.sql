-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 05 Sep 2023 pada 04.11
-- Versi server: 10.4.28-MariaDB
-- Versi PHP: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `api_native_digimon`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `data`
--

CREATE TABLE `data` (
  `id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `image` text NOT NULL,
  `description` text NOT NULL,
  `release_date` int(4) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `data`
--

INSERT INTO `data` (`id`, `name`, `image`, `description`, `release_date`) VALUES
(1, 'Garummon', 'https://digimon-api.com/images/digimon/w/Garummon.png', 'A Digimon that possesses power over Light which bears the might of one of the legendary Ten Warriors. It is capable of moving at extremely high speed, perhaps because it was discovered on an optical communication Net, so it slips through the bullets to get close to the enemy, and then its sharply-pointed claws and fangs tear through those it considers evil without wasting its breath. As the possessor of a righteous heart becoming the name of Garmr, who fights with the war god Týr at Ragnarök in Norse mythology, its feelings of hatred for evil are stronger than that of others. Although it will never obey those whose hearts are even slightly evil, once it has sworn its allegiance to someone it will never betray them. Its Special Moves are charging at extremely high speed, cutting the opponent to pieces with the Wing-blades on its back (Speed Star), and absorbing light energy through its mouth, then spewing it out right at the critical point (Solar Laser).', 2002),
(2, 'Craniummon', 'https://digimon-api.com/images/digimon/w/Craniummon.png', 'The Digimon which best understood decorum among the Royal Knights. It is a perfectionist, and competes with the other Royal Knights Digimon for the top two mission completion rates for Yggdrasill\'s orders. When fighting with an opponent, its policy is always to defeat it with one-on-one combat, and if the opponent is a formidable enemy, its delight is supreme. Craniummon\'s armor had its code modified by Yggdrasill, and was changed into Black Digizoid. It has become possible for it to generate a weapon and shield from its armor by accessing its data. Its Special Move is firing a sonic wave at supersonic speeds by rapidly spinning its magic spear, \"Claíomh Solais\" (End Waltz). Those who suffer this technique continue to \"Dance\" until all of their data is pulverized by the shock wave. Also, when it invokes its \"God Bless\", its magic shield \"Avalon\" defends in every direction with an impregnable wall, and it is able to negate any attack for just three seconds.', 2005),
(3, 'Holy Angemon', 'https://digimon-api.com/images/digimon/w/Holy_Angemon.png', 'An Archangel Digimon with eight shining, silver wings. Holy Angemon\'s mission in the Digital World is to act as a law enforcement officer, and it has the duty of supervising and surveying the masses of Angel Digimon. Furthermore, while it usually takes the form of a priest and acts as the spokesperson for the essence of \"Light\", which tries to preserve the order of the Digital World, when the Digital World is shrouded by the essence of \"Darkness\", it changes into its Battle Mode to fight off evil. In its Battle Mode, it consigns the opponent to oblivion with the Beam Shield on its left arm and the holy sword Excalibur it wields with its right arm. Additionally, although Holy Angemon has a personality replete with gentleness and kindness when it is in Priest Mode, it takes on an austere personality when it is in Battle Mode. Its Special Move is manifesting a door leading to subspace from which there is no return, and consigning the opponent to oblivion through it (Heaven\'s Gate).', 1998),
(4, 'Ancient Beatmon', 'https://digimon-api.com/images/digimon/w/Ancient_Beatmon.png', 'Possessing the attribute of \"Thunder\", it is one of the legendary Ten Warriors Digimon that saved the ancient Digital World. An Ultimate who existed only in the distant past, it has an appearance fused from many insects such as the Rhinoceros beetle and Stag beetle. Its shell has a hardness rivaling that of Chrome Digizoid, so the falx on both of its arms can cut through anything, and it can easily lift up objects hundreds of times its own weight. Ancient Beatmon\'s abilities were later passed on to the \"Insect Digimon\". Its Special Moves are a calamitous thunder which brings about super-disasters (Calamity Thunder), and a super-electrical attack with a thousand times the power of Giga Blaster (Tera Blaster). ', 2002),
(5, 'Dukemon(Crimson Mode)', 'https://digimon-api.com/images/digimon/w/Dukemon(Crimson_Mode).png', 'A hidden form of Dukemon whose body is clad in armor that shines crimson. Because it has fully released its power, its armor portions possess the heat to dye them red. For that reason, it is unable to maintain Crimson Mode for a long duration. Within its chest is its Digicore, which sealed the \"Digital Hazard\", and when it discharges all the power in its body, a pinnate energy emission can be distinguished coming from its back. It wields a divine lance of light, \"Gungnir\", and a divine sword of light, \"Blutgang\", energy weapons that have no physical form. Its Special Moves are cutting the opponent to pieces with its divine sword \"Blutgang\" (Invincible Sword), and disintegrating the opponent into electrons with its divine lance \"Gungnir\", then consigning them to oblivion within another dimension afar (Quo Vadis).', 2001),
(6, 'Footmon', 'https://digimon-api.com/images/digimon/w/Footmon.png', 'One of the most sportsmanly Digimon in the Digital World. It loves sports, and likes soccer most of all, so it is always practising dribbling and shooting with balls of light. Its dream is to create a soccer league to compete with fellow Digimon. Its Special Moves are placing a ball of light on the ground and shooting it at the enemy (Lightning Shoot), and lifting the ball high up in the air and shooting it (Lightning Overhead). A winning entry in the Digimon Xros Wars Original Digimon Contest.', 2011),
(7, 'pocalymon', 'https://digimon-api.com/images/digimon/w/Apocalymon.png', 'A mysterious Digimon that appeared when negative thoughts gathered through dark power. None know its true identity, and whether this thing is a Digimon cannot be analyzed. Although the reason for its appearance is unconfirmed, it is thought that it seeks to purge the chaotic Digital World and return it to \"Nothingness\". According to one theory, there is a prophecy of Apocalymon\'s coming in a book of ancient prophecies. Its Special Move is generating an endlessly spreading darkness, which returns everything to \"Nothingness\" (Darkness Zone). It is said that those engulfed by this darkness lose their sense of orientation in every direction, and are annihilated.', 1999),
(8, 'Pipismon', 'https://digimon-api.com/images/digimon/w/Pipismon.png', 'An Armor-level Mutant Digimon that evolved through the power of the \"Digimental of Love\". It is said that this Digimon, which has the appearance of a bat, was born from the monitoring data of a certain electrical equipment manufacturer\'s ultrasonic sensor. Its large ears are able to capture sounds of any frequency. Also, the inside of its mouth has the structure of a speaker, allowing it to copy the sound it captures with its ears as it is and release it. It specializes in operating at night, and is able to accurately detect the enemy\'s position by using ultrasound, even in the dark. So if you hear strange sounds out of the dark, Pipismon might be close by. Its Special Move, \"Crazy Sonic\", emits a high-frequency noise at the enemy, rupturing their sensory organs. ', 2000),
(9, 'Guilmon (X-Antibody)', 'https://digimon-api.com/images/digimon/w/Guilmon_(X-Antibody).png', 'A Digimon which has an appearance like a dinosaur that still retains its youth. Although it is still a Child, its potential as a \"Combat Species\", something which all Digimon naturally possess, is very high, and it hides the ferocious personality of a carnivorous beast. The mark drawn on its abdomen is called the \"Digital Hazard\", which is inscribed on those that have the potential to cause massive damage to computer data. However, as long as this ability is used peacefully, it can probably become a being that protects the Digital World. Its Signature Move is destroying rocks with its sturdy foreclaws (Rock Breaker). Its Special Move is spewing out a powerful flame shot (Fireball).    The effect on Guilmon\'s Digicore due to the X-Antibody    The engraved \"Digital Hazard\" mark has vanished. That is because it accepted and contained its power within its small body. It still hasn\'t awakened to that power, but if it grows up the right way, it can be said that its qualities for maturing into a true guardian of the Digital World will have improved. Since its instincts as a Virus-species have also increased, its personality has become more aggressive, and it acquired its striking technique \"Fire Mitt\", where it envelops its arms in its Special Move \"Fireball\" and beats the enemy. ', 2003),
(10, 'Renamon', 'https://digimon-api.com/images/digimon/w/Renamon.png', 'A Beast Man Digimon with the appearance of a golden fox. The relationship Renamon has with humans is directly apparent; it is said that depending on how it was raised during its time as a Baby, it can evolve into a Renamon of particularly high intelligence. It is always calm, cool, and collected, as well as disciplined enough not to lose that composure in any situation. Its slender, tall appearance stands out when compared with other Child levels, and rather than emphasising on power in battle, it instead makes sport of the enemy with various techniques that utilise its speed. Its Signature Move is a transformation art in which it copies the opponent\'s appearance and re-covers itself in that texture (Kohenkyo). Its Special Move is throwing sharpened leaves at the opponent (Koyousetsu).', 2001),
(11, 'Patamon', 'https://digimon-api.com/images/digimon/w/Patamon.png', 'A Mammal Digimon characterized by its large ears. It is able to fly through the air by using them as large wings, but because it only goes at a speed of 1 km/h, it is said that it is definitely faster walking. However, it\'s very popular because its appearance is cute when it is desperately flying (though it seems that it doesn\'t feel the same). Due to its extremely obedient personality, its trainers are well-defended. Also, even though Patamon doesn\'t wear a Holy Ring, it is able to exhibit its hidden holy power, and it appears to have inherited the genes of ancient Digimon. Its Special Moves are sucking in air then spewing an air shot out in one burst (Air Shot), and striking the opponent with its large ears (Hane Binta).', 1998),
(12, 'Gabumon', 'https://digimon-api.com/images/digimon/w/Gabumon.png', 'Although it is covered by a fur pelt, it is clearly a Reptile Digimon. Due to its extremely timid and shy personality, it always gathers up the data which Garurumon leaves behind, and shapes it into a fur pelt to wear. Because it is wearing the fur pelt of Garurumon, who is feared by other Digimon, it fills the role of safeguarding itself as a result of protecting its body. When it is wearing the fur pelt, its personality does a complete 180° shift. Its Special Move is \"Petit Fire\".', 1997);

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `data`
--
ALTER TABLE `data`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `data`
--
ALTER TABLE `data`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
