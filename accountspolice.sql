-- phpMyAdmin SQL Dump
-- version 4.9.0.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Oct 28, 2020 at 11:18 PM
-- Server version: 10.3.15-MariaDB
-- PHP Version: 7.3.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `accountspolice`
--

-- --------------------------------------------------------

--
-- Table structure for table `activestatus`
--

CREATE TABLE `activestatus` (
  `email` varchar(255) NOT NULL,
  `astatus` tinyint(1) NOT NULL DEFAULT 0,
  `tm` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `activestatus`
--

INSERT INTO `activestatus` (`email`, `astatus`, `tm`) VALUES
('foobar@gmail.com', 0, '2020-10-28 23:09:38'),
('hridizaroy@gmail.com', 0, NULL),
('hridizaroyofficial@gmail.com', 0, NULL),
('test1@xyz.com', 0, '2020-10-28 18:43:59'),
('test2@gmail.com', 0, '2020-10-28 22:41:11'),
('test3@gmail.com', 0, NULL),
('test@gmail.com', 0, '2020-10-28 22:58:46');

-- --------------------------------------------------------

--
-- Table structure for table `civilians`
--

CREATE TABLE `civilians` (
  `SNo` int(11) NOT NULL,
  `first_name` varchar(255) NOT NULL,
  `last_name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `hash` varchar(255) NOT NULL,
  `DOB` date NOT NULL,
  `aadhar_no` char(12) NOT NULL,
  `active` tinyint(1) NOT NULL DEFAULT 0,
  `points` int(11) NOT NULL DEFAULT 0,
  `longitude` double NOT NULL DEFAULT 0,
  `latitude` double NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `civilians`
--

INSERT INTO `civilians` (`SNo`, `first_name`, `last_name`, `email`, `password`, `hash`, `DOB`, `aadhar_no`, `active`, `points`, `longitude`, `latitude`) VALUES
(2, 'Test', 'Second', 'test2@gmail.com', '$2y$10$vI6wheJMlBilffPuggA0d.YFxLkFIHUTUvALi2HjfA311bhRHIsJ.', '17e62166fc8586dfa4d1bc0e1742c08b', '2012-01-12', '737382738373', 1, 0, 77.1426347, 28.539821699999997),
(1, 'Test', 'Name', 'test@gmail.com', '$2y$10$wYP5r.qmIzdSKtNbEc/21.rilwfHUjGQkq8G2Y7Z4TEur6PGx0w1i', 'a64c94baaf368e1840a1324e839230de', '2000-02-21', '637363746373', 1, 110, 77.1426154, 28.5397657);

-- --------------------------------------------------------

--
-- Table structure for table `police`
--

CREATE TABLE `police` (
  `SNo` int(11) NOT NULL,
  `first_name` varchar(255) NOT NULL,
  `last_name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `hash` varchar(255) NOT NULL,
  `mobile` char(10) NOT NULL,
  `DOB` date NOT NULL,
  `badge_number` int(11) NOT NULL,
  `badge_image` longblob NOT NULL,
  `post` varchar(255) NOT NULL,
  `police_station` varchar(255) NOT NULL,
  `active` tinyint(1) NOT NULL DEFAULT 0,
  `verified` tinyint(1) NOT NULL DEFAULT 0,
  `latitude` double DEFAULT 0,
  `longitude` double DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `police`
--

INSERT INTO `police` (`SNo`, `first_name`, `last_name`, `email`, `password`, `hash`, `mobile`, `DOB`, `badge_number`, `badge_image`, `post`, `police_station`, `active`, `verified`, `latitude`, `longitude`) VALUES
(1, 'Foo', 'Bar', 'foobar@gmail.com', '$2y$10$l9/rZawPOU6rpXpAyvwl.OrFnHHHvK0Di7QysOc08p57XIPUqyulu', 'e5f6ad6ce374177eef023bf5d0c018b6', '7364647383', '1980-03-31', 36463, 0x89504e470d0a1a0a0000000d49484452000000e1000000e10803000000096d2248000000ed504c5445ffffff000000fccc8beab96ceebc6ef3c070ffcf8dffd390f0be6fffd490ffd18ef4c170e1b268c99f5dd7aa638f7142e6b66ab08b51f9f9f9dbad655e4a2be1b67cf7c88884683d969696644f2e3d301c6a5431f1c385c39a5a735b35a4824c9d7c489c7e561a150cb99255e9e9e92c2c2c302616493a2234291841331ec6a06dddddddd6ad76957645ad89506464648989894e4e4e110d08cecece585858554327b996667f6746937751a9895d828282272727383838b2b2b26d6d6dc0c0c0221b10515151171717755e40675339a6a6a659462942424253432e6c583c614c2c967a53bf9a694b3c29353535d5ecd44300001bee49444154789cdd5d7943da4c136f20273722a21c82d08250b0165b155b5baab6b5adf6fb7f9c37c7ceec999040c0b7cffc25c826fbdb9d9d6b67765fbd5a8bf6ceefb477afd76ab94ea3d7efb4bbf3b55aae4b7b9f348fbe266e7878a7dd1d266ef5d57fdba71d42240035ed3c61bbf77eabf709bb7a4edeb63b880850d33e27e1d40b6c7691a0d5ebcfd86c5710f7de680cc5e6b9bd2f4cab2fb1df76c8beeccd4e20f20035ed2ede6afcceb7d26e63b5fa7ac7b7da054411a04b3f5733dded27a9d5a7d5182f7e4aadb60f71efaff45297fede46bdf8f5a1aa8d4b8751ab78ef561e4bef55db86a804e8d1971066ddbb7d17d6c4a5772143b3f735b4d5df2da27bc5021c963e8aef7e7ff8959b94bdd75fcfa579d8977a7cceb77af5faeba1c49d1f4bc3dd40a4009715dde8294678fef9ddcdf9a14b371f3e2bfe3d2ce68b4bc5f79f3fdc788dce6fdea95a695d43afd0665b8448dfee02cc66edc291aa3b1154b6f5ac6e9713b63a2ad8d92c0bf1f3b60052dee97b005d328acd243dadd97e2bbb966464c645c36fa557faf8ddcf6d035c160280ee6b8d415c8c47a57c16c828c6c5d81c18f8ae029dc5ad4064661001fa183b92f05050a366308ddc56a5468c56bf3b6c2bbdb0d5590c01e8f7b6d01d4776b435d0edac40ee3783e8891c750b86f0a66d420c07e8af2c17e4efb9b29fa78d8e6ec82d82a1d1078da1b255ffc885278dca3621bec707cf150003907a6d503e623b3c6af53a6e3fb9dfebe247bbd099b546ec90b4ca839aae801740a4e3f87e3b00e90cda76569c1bdd368c7ca556f2a8e0fe6ddbe20ff441b7a34b5f7a3f2df8ad6ad9bc6148ad0cef65f22ca608f11b9dc11a79bb9e3d5ecef78b79d584ea1e29beb7edaed7bd7e578410d94acf17f7e7cb46165e5ca3b3f82d2d801f140089fe1d756c353bc91d352a3de8dbbc5709599a8a51e9042c3cac28207e481ba04601e27a5bce5422418467dbc5634e941c17251656c0330a3dd4810c44fa985420aa6630cb49c01f5d519e08f08c6243364697e5e28a5685ee0fb6c150c5a8294054cee0a9d8dd71b9985509164fc2568fd57ac41db2e36ac1959ac2f2735bd946a5589674ece956669171d34a388312c000e571af53d20d24bb50acce8e549e044bcba359b5e8095e6c56eaf48ed516c429ce62897ef92e3580b515008186a31f47ad8f63b5268f6836fed83afa318a6e462132b3b81144e50c267127149ddca87533e5595cc1a2e387c43dbcaf3bf5fbc4ad1e28d3e22cda69406401a242a02f1b1e38f5eb241ded9fb41d33633aed9330d1a3a4ebba734099770c1d49012213c1a500298b0e0fdcde5ae624e644ceafa656cecc7864e6acc97d4c900f13f71d199381d854418c1f615e0590cee0f28074d73a985c515b514dc3eba9d7514aeea7e9f52a61d4bf9a1c9056e60195c9ca595c03a20aa02e030cbaebd42faf9e43faf9787dd9763878d8aa7d79f518d2eaf9ea896bc541d4d380a804489d9c659befb2695a96599f2cae7f3d2ffbf3b9369ff797cf0f578b49dbfb87848ea2b4ccf66471f5c0b4fae5b6aa7bff10ded0a6104729406476198a0a80f3b6aad7a6bbc02cc71f79d374dc3f60e14513b432fd79f55b299fde9e2b20166947bf2742782703b46938a6af04b86d32db74b9efdb32c4bb4408b15907679061881701e84164960ece6207bf4b8410b78a9a18cbabbeec0c06107116abd82fd45f6f1221bcc581699128a73e806f16d60b01cc64ac05f2164198a7f1ba783b924837d8b04bf8540759367f3180990c089b21e994ddc57ede2403c8aa0bc2f274124f5e6a12ad13e8c2401785c31a2a1fe36b4d325e79f4b85f086026031dd8274bc7463760adb81b4a9bb2210cd80b4da2f547602b0377b1924919a0d7229f1ab8d5f02200e91436c421d7d64acf6204ea287862b6025f2c722f802f8782b44278148dac846294123a88559b9fc4a5f302081d50860db20d891a7a2ddf292078c49c689f027c31d9bdd23727f0f202994254ffeb032429732ef5c8244258f7d7ee27d10157fb38583336a611244f2064e81b4ca2689cb6778e108d523049e1f36611d3b7f0982e11a7b0b817bb665394331fc5295c538e028169b3b479fbfb79d76cea80854dcc195c8589ad358150290e04ded8b18361d679a1475d9d8db3c0c00427cc81b266c72a31770272c6e6974bc224dea849ac0563070ee7e36e2d370b025d459d17791bae428f40edcfc84a84471f24eb2209e2f8644971a6957440deda27da1e2cd20d943d12e42e0f05368daff45d6c5e44edfafee1d4f3efe6cbc75f7e14ce8915a8f229f7c433a90dce6a927cea50824923fc014bfc3a1e9b7ac1d4c5832a64dc7f584ca3428d2c5957a45120f074883f258b3e8511e4bf123605cbad19435f78a1edabc8f8fdd5c48c03d28139abf04c9abcb24145a0f5c7844dc1eb5cb9104dab7dbd7a7b627e5d5f8d110c1ae80328c714e48c47e00a93f10307631add2fd399c6dd7d7b9caee078b4ba1b3c1fa595690a2a71c02fc448c3cdb4a6611b192a5aa15d511b0a5dd85c1906041e46d9e654d155c4c05bed84bba7d196bcf58bfcacc6b3512a92d4a53df23c70f5c9c7e750846646bd73da1f36c7a35173a8c85eb88c64f91c59fb7d9d5f862901c45d0ce24219b0c716d629672a2b871fe56aa9a0e7fd6c8bbc5e295567ad04084d7e8c219a925e36343818018f18d037356799e695c653b35c3484ac195dd78d7ca94777b33c43de558e6aa98a6677835f279bba159460af2d08a5db33f251294ccdb6900bd308cdef7251d6485657d9d633e6f5b2ff5057891c14a541a80105cdda012889c0700b02fc184957d96dd6948337ae46657665fd44f1fde168e0729f1e6c074f14868479491e4744290c715a8286fa178449c0bd50a80be78981a70d0772066a564c66d40ddbfb957d461a9dc81051590486a30da6714afafe1515a6ad002118857f248e7230a4e94fb9946269544fb5e54c99ca68a3e4b996205a209a4bc1537e938f2996401161fa231065907125294407c6da1f8eac8484f03709590bffa3d999572244b4bb03ab0a94c57aa17c3591eaa5262fac4584dc0c0e1430c0d82a2a9626ddda92215a603e041b3206514669e6b2934cfd3eb17bc9fb1e78841603f06345c18aa86686aa493498145b81511d3000f9f7a79421ecd337e51bf8408635a13d6ca8969a4e930a7aaaff1b33fa804b4b8570cebf7fc3bc4b8e208d5640c88e346a650f405e01206b33395005d50f0c8651395dbb038410abe1dfc0c74ca9b179a662422684eb524bfd139a57c1452b5f6e0e195672a82f5155f69eeeeaf8d451da010cc431f3700b72c376bd0e1949635d62d7ba6a80066f690f432a6f2844260e148230b5728b57284b0997e425844c2e4f43b906a92104a414366eefcff0177429a2b620084968244d6d41f4e1384c1f3a986278a49e414ecc04a41436ecdefc101f6f415af1f6343e19b4df7ef7d179413ea29b9721cc47fd110d73a0c3c602e3f5343549b4da48865d3aa1449fc02e3de6edd213b04b4d94a3a5108428664e1d084884081b265b001d50d1f286259d9e5d0af1c459e0bc80da02bf9ca610ccc2e6056c656d9ac3251b36df745b09ac37135e401c5460e4b7a9218450d459f002506ce81f428fc62100a9cd79ef30c69ddac96073d58852143c6074b436dadee6080e88214c0291ae7af07e9a8ba5b2a8fd16c8c51edf59287442840d3a2f20cbc42806c8e57422de1e7de07a6440f617ac42e88fda5061c5a32f3b4c0c03fc0e13bcd8a0cd73c97ed00056757a2a9f3c90b80420f8fb848550d9d7d4fda5153ca7816872509e86099b2c6c06fc2193483e93944403b8202d8020685abc3a24461bba364ac736abdb34e30f74386c066acbbc3a8c834b7d6ef2460d5188b050d31235106aebf2abe03ac7ad11790abddabcd2d9312ebb7bb0d4a9b0e9b7baa5ac0a25fc209066a8103bbcac4b96bc1e4edfc8f34a7ca4eb927f39afc13d74c51e5f9b47e3ab39aebeebc7ac531150a234fb65712ba1c76be4941622e87bb00a81e902516a417c1bd7945721591894d90a749f98ec69732afeb3d9a8d66c0a93eed39b1ca310d964c37fd3d1f990a2782c6ce4f34c4a84806de45dc65495e09db26e3bb56c181ab6ba45c30862e368bb056c8af29a881ab06ad2d188902c2c6c3007fc830695bf3165177aa12741f011f283b09ffd28fb353a18760e54227a17c2567b2a6c8ae926c20673b0e5e7b059203613861049889f598bf09ff63c56049d17781868180a5beda9b0296ce3134982a9d5c132c4b9c86745379e0728c6c7a9252493375ab8c3e55b6eb870619b1b0cdd34cc1a782d49fb02f5bd343991e12d52a63480a3c73f930379af3197992e42b651fd8701af3c05eb1d045a6057a1a53bdf1c20a642938439d015573cf778ba5267c281d08187c53413963763e6ac5c7d712fef977ac6196208d42e86bd7b82bcdb7cff090eeb2a0b06532038d0fbf674a5ce2fc3e5fd65dd5c55be66babf683f5df1c2d7f7d280e5835809ba1724ee8e53bcb1a38fa73912eec0a82e313161b5f862c8a635b48f9376fcd4ae9ce5b427ccbe6af03032b7f34044a1be204e36aef94db7d84055b4849c2fe2d73830b241fc89393d46b9d5193197191ac80934025a16c434851168082a71c3335c3047584c3d26da0d44694baa80501761864f23cd4d19d8bce156e7659a9615b86933f31b82dd62eaf1309821c135e58286cb24089980728fd8b7f82e3298180cea91840c38f36fa3d0376a7b6274a2b34e825038b0333028997867820c548766a7a00f86760b0996a0f544e23b743037d90a866ca8d33cff52c869430977862117ead0536f6925406ae0eca38782082e45af9268664cb0db202503bd0a52b199075909b1604458a5be0f13be576cc9ab88d9976bd2e7d0740122b3503311b18601a90d4c3730d896225f901814e5520621538e246c038610b32f07a71572a204c2b2f47724e2a5839db3bee9064f848a1990dfb8718808cfb8c02015fcd3d53a4359bfac4248f70ef6c5928b7501a2c196155401064a11619745c81e1e535f2d51e9787081294488798b74f340d45deb9a6e50940f061b68fb535c5e54967273c814c9f70f5640ccd17323f89d5545da8e03b2054a9f4065aeb98381655d24708b7612cdb2c3a551e6c3d78ca3d88ce6531a59d4cafcbe1c5ab94ff8041ab814bbb49eaf0f47258a03d667fa0c6be85808d033e7d3de47491bbae5a11d0b1b8fa2c6f7210a2588c8566b996ea1061b9bcf0b76e9488c9532b92391e61b1ab223711343dc3ce00784cc338a86754c3730d824c1c5311919d4a5140d36f0188da8c20cba1125b6a70fe01ac0efc17403f1be86e986dabe23281faece022344f2268b0d8e551c848a1335d11365cd068ccef645159d5ceb83b62781115a74cbe5cde21be56d278c0644290cc1376109a4086fdee2a44369328c6372ad7f273c090c36ded81482d11c4258895149eab925378e0cd128069f1e85a69b30f2891506f8f6f330838d20047521efcae3f64954e50968b8b9d41cc31497ea17e2ea81cf497d7d48ed066d0fced88328fb41184a730851eb7e9428c54d25294705994610c5b8f23f0a019ba4556c303225a1dc4fcced46d755da0acc13063c8d7230d05f9096312cc3a56031505f5fec5a3280c0a42341db4be55c984420ea7ccc2b8aac1816f248182605e524a7e9c2e4360459938c4dc1f5058b1ac6e9496439b13e97e923f9c7af489be684fc4a94c5c2ce0cfb464c2527710788432773846175911822f89a8ad80b5ac303a18fe06070b230e7641c96ed50160b4c4e794f1e150cd854f9b86222690a161b6152943327b2198db3f08317878a7c77d33a5834b5e59f36ad1b4187a82b98eeb02c1456adf8469cee24f11af00c7b42f45521f8a9f8e6f3a124e7c774ea10f2fc3575c420c14ce00078a8ca20c2800de130302d927889609392dd3a60d20795d040cf9bb74bb051d0c79c39610f103cbdccf81319e27ea13da45435f8c62abfa399445f804143a415e86e49cef87dc795cf4da2ce383f2e7b9e48fb2fd76d7f22c9275e14636a9b6259308bb7c5ef792758881026fdcd67ac86582716747e9f55dba889eb96157228ebc33497b3c8df1f5906a08719a9dfc86d5a320e46fc8508da5028a97c546bb69c74889a8f10cc52f329bc9874b880e16932087531eb2b944d4b7c265f7c8d08093481024085a364190f2238564b86d5706057d43a8383c936c53b7a428c7694a624c3078cf4f8e9357cbd21ce465869339dc4329d0923faca0b892a74f669f66588b1801298983530e7f1753ec9d48b5b339ac96140909a2672dab347c35ea52a25daf8842e34138b0cf74ac80f849ad2f89919a401ac0dc267cd50f32b8781cc3e15870aeefcd1f1ee0a328423f603c29c31bacd1a7e40a30575c1640ec8c7f8c294bc41c8758c089ad10420b46ce4bc8c468954ebe9466526290f90523484153ea2b4b6bbc02fdcb8002144d30849eb56104d0082dd3126eeed77b79b6533d76c7b205cf9458c4c260c1911fdc8f1c1139414711182555ae6255554b935e553287a620e7475557347ba2142bc2d28c8b0664a9fa28e2e449f6dc0ab8bb80a11d4a190551d795c8b43130d0844fc3c2f8b77fe108c76b64bc591afda188021ca970c28d851553e5d326ed454286c56c49e55c34a1346fc7d6a9d68d17155be098961d60e519b7e60dd403db1e25c11614708bb1857e503c2337e80a2b791d84d325f2d1addbe363f56df44c34c64bee6ddeee1afde3c9353b5623801618faf2e4f8ab0ca33f98a8db21c9333daf2a48aad17a4db849413e9feceeba8c1accb155babe892ccf854c5ed2264ebd7b46621e6053b14678511aeabb6c71121c9190651911421b1fae271692646a57304191dc64290ebd54584c23a5c974b13491a09a2a25a3d7c0275d6cc590950cc01492c698432276081a7d57bf20ec3a8de08c5c3a81b55f6309418191ce803afa92d8443224047c5390cd2610aba5d3bbbbafa2aa8ac2d5ca1b88891a292134abd4046c57681c9ef8f790738d6f165569db3b897bcb1264f9fad9ff19997ab8e8c0ade02f605f1ef2085272e404038e22defc8d02e9279205c59d128e5434f6fc9971abc0b721a2fdf0f372f480d0d3864b11192ac5952600087b12f63e6a971a763f8cf29172b79f1041edbc81667e2b543d7710fa88327f33d8c7ff417041385118a7b52a23595139bc78db362cd062a14ab0dd9119e4fe326c281fdb4cf7bc0f1b7baa1deb0c4afe3d827259ab9903b84e64d8f4222375799b8cf47c37bc6074ce31f6e0621ef33fed0a29827257a64d593de05f5584ff074fe144554f8f183dea0108513eee29c940894e0c43d1f1fc6f9632104a78be81b3017e2a79c80934f0235b0d799ec645dd3aaab8a9b54f4308d2961c893c12a1d938830e89b04f9185082209c9498f0645def76aed517ccf5ffd493cc5f46acb5a23c96e4f836e1a444d8468adcb05662cc39f5ab28904b7a93577cc2e3e78b7cf57c92531421690f12d441fac5c8a594405a56fd525117e34edefda29e4bc49ee489e0589038392ec324e97b7bfc33c42a8ba45d322dc79c5e9e5c3d8e7d6d317ebc3fb99c669cc487090784a14bc2a498ad95282d0af2128bbcc2d9e0b079fea464f5a555f148387e1e3b97eca893437e9830c72c814adc1661fac658c8134956f60c1a110e97c61851c233aeb740187c26b9e536088984651770b22e04dbe1b1ebadc414890666890d0f923469119b58398a75226b88d334892646c0028234d4a4b5f9c261f374677de79722f084a7cfc38623ee8f24ae0d82b23cb8d4853fbde3c500d2cd58a1c22d79553766eac3e62c7c7ea99bf33c62ca6bb2026fad91ad2f0c1686dcb4e797b80a8920c498ce99c05aeb543c83ac81d1c2bceddddfc00244e528d606c017eb943e612abb7443d68eafb6a00069c0995ca14db73ad62a5f3bc7c705c3856753be1042a6880f4ad65190ae77383b4ee26f92eb04dbe5d72fb21099bd2d48a0ca634dc79a15883889a4f6385bf1adf8f98b586eec21d370ef1aee18af7bbe3e4e2249acc9ea95e3f9fcb8e05fcbb18663b7114066bb00afb7c5a0ddda45a45880780ca2cb0b7666b3e6f461f8102bfc9e16b15b3e70b8262dc7dde0e40888d7209fb2dc71b5b369342de6c0054867a167546c727004d6af695c5d12f9aed9de8dc8c9b599e83fb0934e5392363a7200af94658ae79853059e1246c9d621933be79dae17344036bc3f602e3d9a3b6cf5b1bd6d57c3aa3faa00d2e4b04dcff8c4b34df03407d608f756a3e2709d14f1f17781e0810bccc9d81b9f4a87e62954b1b1a5fe3e5d1f6c49e4984e9bdfe1c14166cea648e11825bc1798de426e0b8702dfaf11d65d092f674d85f4f022ae419a1cb6e1d92d3eedd15750880561f7eff4a4be6ef85385cebbe8eb4438f46d54500d702a47d25195412166f3d29950cbfbc5f420c1556a61e8724e4675785419d3ab0c06604a47437ea54fa479404649dca2f6e8f97a623a6bcfa5e9b69d5c3f2a9e3b2cd21733e97da91d42fb9d3eb38b3515ba117678d9a2bdd654e69cf642854ef3440c1a1c79e6f0fab48ebe7cc57819dc29a576a52177c6a7f149d21d33576e2ec2ea321af42a099db9e823b51bbb7cbaa1cf1d31575718a118b5e7457c25e215b585cc9e878f8ea95e609646aa0039885a8749cab3b35dd57af4e92ac6a5781e7786550db974da65b3e3d8eb21d206c831aad6e092d28d62437581a3478f136b95719eb32661d3e7e5df32f8749d6598f4ce81463a641ebf2cb2b995ba6d17cb1fc5fe05345c9851187399856af354f32ffae26fc2323aec38a6286428ddb21d38e62f92f1539cba2d556fe78b505e35730b556e4dbfd52d8a870bdb05eef688f4ce2ae7e882eb474fcc5077511a85aee284d6fe9312a3693d29b8fba85b33a4a393ed2c6f60a477dcbc407b7fb98e4b18fd55991dc8453fcf723e97e928ae803c1e6415f99ab63ee3a6fa678a37594974cef7485949a11bf6605f13e8575bb83a49be02727f602b9f562bf3bfdb828c61e942e8d67147751ab76e146622072e181bc074c44376fb33e560d946a725fc32bdebe4c2e88bd8b7465157b1963110fc8f67cc5cb3ea02838e06ca27e89d862889d2bbf230822eee84b7ba8aebac661bba3007ba5114983590aaa67884f07e51ba62cf1db35ab72509da4fdb9fc0800ec5377b28f7679dac8052c2f8d8ceb92b909fc0df251e9f8b2edb99edabd4c85694a09af6445625349a95746e59ba18795e7de2d3f9b5113f7faef1509aa98b4cb59b6d8a50995edfa8bba12dcb25d6d4f22ea9e4640e67a2f5f92b20ed7cb11162e26837e95de7181be379485fb4d31e27176dbb1cf2c3323bdfaefced8526f91dee76fe906e3f87f5a8c5d5ac192515e38d6a6c0d7ebe28aa05a49fe9dda89a9c5e1ffe0de9d68865403d7f26fda0cb8c816d0fc28adb3f9def9e3d4590df7faafbd664318ad1b9518dd92630aa213ee6fbef5bb34093d1dec5f7772ae9ce62d40d7635ced87f0c54cbefeeddf78b175a7c61f4fa56a1424625e694051a0564dc4bd51a9d7fb97d71d60ca1b7876fc4de366818c2265196312dbfb4b39223f2e6f0ff8433c3e8ada828e734c6aafb395a0d6af8b0b1cf806efecfe105742bc8d7231a0fb02b25f68360b7fe7d49b5908c2ebef15defa84a66b9c8994b1f766556a7436f3f70bd2f4ba706ea061f6afdf04fb027476f393539aaf00e925de054e0fb7f0f9f475c706e5ee4d2398aecffb6153adb01717295b945d7e08cb8d4a3d7bba4b7ac7eec2976e135edf3bfc9a094581f8b1c239567b5fc962367bb20363ae7278bd86cd0f8dfd21021b4c778912d8339067bcbb1dd5d126392b7f2cc0cee2434b81b6282738ca7b4c3d0d9f689497640fa7795a092c4dd802dee1fbd14bdfdaf031421febffaf01bd1c57f7b063dbaf8af03a4b955ff8e2b9f9802bdf81f3045c3e9eb7bedfd8ef5e0ff00d830b8dce0933e8f0000000049454e44ae426082, 'Superintendent', 'Geeta Colony Police Station', 1, 1, 28.539804399999998, 77.1426494),
(2, 'Test', '3', 'test3@gmail.com', '$2y$10$QjxmIBx9TMvnmo3wgRNBa.R.15Mp0.XxAXKUYGn50RXTlMGQAWVsm', 'b1eec33c726a60554bc78518d5f9b32c', '7484728474', '1999-02-19', 46473, 0x89504e470d0a1a0a0000000d49484452000000e1000000e10803000000096d2248000000ed504c5445ffffff000000fccc8beab96ceebc6ef3c070ffcf8dffd390f0be6fffd490ffd18ef4c170e1b268c99f5dd7aa638f7142e6b66ab08b51f9f9f9dbad655e4a2be1b67cf7c88884683d969696644f2e3d301c6a5431f1c385c39a5a735b35a4824c9d7c489c7e561a150cb99255e9e9e92c2c2c302616493a2234291841331ec6a06dddddddd6ad76957645ad89506464648989894e4e4e110d08cecece585858554327b996667f6746937751a9895d828282272727383838b2b2b26d6d6dc0c0c0221b10515151171717755e40675339a6a6a659462942424253432e6c583c614c2c967a53bf9a694b3c29353535d5ecd44300001bee49444154789cdd5d7943da4c136f20273722a21c82d08250b0165b155b5baab6b5adf6fb7f9c37c7ceec999040c0b7cffc25c826fbdb9d9d6b67765fbd5a8bf6ceefb477afd76ab94ea3d7efb4bbf3b55aae4b7b9f348fbe266e7878a7dd1d266ef5d57fdba71d42240035ed3c61bbf77eabf709bb7a4edeb63b880850d33e27e1d40b6c7691a0d5ebcfd86c5710f7de680cc5e6b9bd2f4cab2fb1df76c8beeccd4e20f20035ed2ede6afcceb7d26e63b5fa7ac7b7da054411a04b3f5733dded27a9d5a7d5182f7e4aadb60f71efaff45297fede46bdf8f5a1aa8d4b8751ab78ef561e4bef55db86a804e8d1971066ddbb7d17d6c4a5772143b3f735b4d5df2da27bc5021c963e8aef7e7ff8959b94bdd75fcfa579d8977a7cceb77af5faeba1c49d1f4bc3dd40a4009715dde8294678fef9ddcdf9a14b371f3e2bfe3d2ce68b4bc5f79f3fdc788dce6fdea95a695d43afd0665b8448dfee02cc66edc291aa3b1154b6f5ac6e9713b63a2ad8d92c0bf1f3b60052dee97b005d328acd243dadd97e2bbb966464c645c36fa557faf8ddcf6d035c160280ee6b8d415c8c47a57c16c828c6c5d81c18f8ae029dc5ad4064661001fa183b92f05050a366308ddc56a5468c56bf3b6c2bbdb0d5590c01e8f7b6d01d4776b435d0edac40ee3783e8891c750b86f0a66d420c07e8af2c17e4efb9b29fa78d8e6ec82d82a1d1078da1b255ffc885278dca3621bec707cf150003907a6d503e623b3c6af53a6e3fb9dfebe247bbd099b546ec90b4ca839aae801740a4e3f87e3b00e90cda76569c1bdd368c7ca556f2a8e0fe6ddbe20ff441b7a34b5f7a3f2df8ad6ad9bc6148ad0cef65f22ca608f11b9dc11a79bb9e3d5ecef78b79d584ea1e29beb7edaed7bd7e578410d94acf17f7e7cb46165e5ca3b3f82d2d801f140089fe1d756c353bc91d352a3de8dbbc5709599a8a51e9042c3cac28207e481ba04601e27a5bce5422418467dbc5634e941c17251656c0330a3dd4810c44fa985420aa6630cb49c01f5d519e08f08c6243364697e5e28a5685ee0fb6c150c5a8294054cee0a9d8dd71b9985509164fc2568fd57ac41db2e36ac1959ac2f2735bd946a5589674ece956669171d34a388312c000e571af53d20d24bb50acce8e549e044bcba359b5e8095e6c56eaf48ed516c429ce62897ef92e3580b515008186a31f47ad8f63b5268f6836fed83afa318a6e462132b3b81144e50c267127149ddca87533e5595cc1a2e387c43dbcaf3bf5fbc4ad1e28d3e22cda69406401a242a02f1b1e38f5eb241ded9fb41d33633aed9330d1a3a4ebba734099770c1d49012213c1a500298b0e0fdcde5ae624e644ceafa656cecc7864e6acc97d4c900f13f71d199381d854418c1f615e0590cee0f28074d73a985c515b514dc3eba9d7514aeea7e9f52a61d4bf9a1c9056e60195c9ca595c03a20aa02e030cbaebd42faf9e43faf9787dd9763878d8aa7d79f518d2eaf9ea896bc541d4d380a804489d9c659befb2695a96599f2cae7f3d2ffbf3b9369ff797cf0f578b49dbfb87848ea2b4ccf66471f5c0b4fae5b6aa7bff10ded0a6104729406476198a0a80f3b6aad7a6bbc02cc71f79d374dc3f60e14513b432fd79f55b299fde9e2b20166947bf2742782703b46938a6af04b86d32db74b9efdb32c4bb4408b15907679061881701e84164960ece6207bf4b8410b78a9a18cbabbeec0c06107116abd82fd45f6f1221bcc581699128a73e806f16d60b01cc64ac05f2164198a7f1ba783b924837d8b04bf8540759367f3180990c089b21e994ddc57ede2403c8aa0bc2f274124f5e6a12ad13e8c2401785c31a2a1fe36b4d325e79f4b85f086026031dd8274bc7463760adb81b4a9bb2210cd80b4da2f547602b0377b1924919a0d7229f1ab8d5f02200e91436c421d7d64acf6204ea287862b6025f2c722f802f8782b44278148dac846294123a88559b9fc4a5f302081d50860db20d891a7a2ddf292078c49c689f027c31d9bdd23727f0f202994254ffeb032429732ef5c8244258f7d7ee27d10157fb38583336a611244f2064e81b4ca2689cb6778e108d523049e1f36611d3b7f0982e11a7b0b817bb665394331fc5295c538e028169b3b479fbfb79d76cea80854dcc195c8589ad358150290e04ded8b18361d679a1475d9d8db3c0c00427cc81b266c72a31770272c6e6974bc224dea849ac0563070ee7e36e2d370b025d459d17791bae428f40edcfc84a84471f24eb2209e2f8644971a6957440deda27da1e2cd20d943d12e42e0f05368daff45d6c5e44edfafee1d4f3efe6cbc75f7e14ce8915a8f229f7c433a90dce6a927cea50824923fc014bfc3a1e9b7ac1d4c5832a64dc7f584ca3428d2c5957a45120f074883f258b3e8511e4bf123605cbad19435f78a1edabc8f8fdd5c48c03d28139abf04c9abcb24145a0f5c7844dc1eb5cb9104dab7dbd7a7b627e5d5f8d110c1ae80328c714e48c47e00a93f10307631add2fd399c6dd7d7b9caee078b4ba1b3c1fa595690a2a71c02fc448c3cdb4a6611b192a5aa15d511b0a5dd85c1906041e46d9e654d155c4c05bed84bba7d196bcf58bfcacc6b3512a92d4a53df23c70f5c9c7e750846646bd73da1f36c7a35173a8c85eb88c64f91c59fb7d9d5f862901c45d0ce24219b0c716d629672a2b871fe56aa9a0e7fd6c8bbc5e295567ad04084d7e8c219a925e36343818018f18d037356799e695c653b35c3484ac195dd78d7ca94777b33c43de558e6aa98a6677835f279bba159460af2d08a5db33f251294ccdb6900bd308cdef7251d6485657d9d633e6f5b2ff5057891c14a541a80105cdda012889c0700b02fc184957d96dd6948337ae46657665fd44f1fde168e0729f1e6c074f14868479491e4744290c715a8286fa178449c0bd50a80be78981a70d0772066a564c66d40ddbfb957d461a9dc81051590486a30da6714afafe1515a6ad002118857f248e7230a4e94fb9946269544fb5e54c99ca68a3e4b996205a209a4bc1537e938f2996401161fa231065907125294407c6da1f8eac8484f03709590bffa3d999572244b4bb03ab0a94c57aa17c3591eaa5262fac4584dc0c0e1430c0d82a2a9626ddda92215a603e041b3206514669e6b2934cfd3eb17bc9fb1e78841603f06345c18aa86686aa493498145b81511d3000f9f7a79421ecd337e51bf8408635a13d6ca8969a4e930a7aaaff1b33fa804b4b8570cebf7fc3bc4b8e208d5640c88e346a650f405e01206b33395005d50f0c8651395dbb038410abe1dfc0c74ca9b179a662422684eb524bfd139a57c1452b5f6e0e195672a82f5155f69eeeeaf8d451da010cc431f3700b72c376bd0e1949635d62d7ba6a80066f690f432a6f2844260e148230b5728b57284b0997e425844c2e4f43b906a92104a414366eefcff0177429a2b620084968244d6d41f4e1384c1f3a986278a49e414ecc04a41436ecdefc101f6f415af1f6343e19b4df7ef7d179413ea29b9721cc47fd110d73a0c3c602e3f5343549b4da48865d3aa1449fc02e3de6edd213b04b4d94a3a5108428664e1d084884081b265b001d50d1f286259d9e5d0af1c459e0bc80da02bf9ca610ccc2e6056c656d9ac3251b36df745b09ac37135e401c5460e4b7a9218450d459f002506ce81f428fc62100a9cd79ef30c69ddac96073d58852143c6074b436dadee6080e88214c0291ae7af07e9a8ba5b2a8fd16c8c51edf59287442840d3a2f20cbc42806c8e57422de1e7de07a6440f617ac42e88fda5061c5a32f3b4c0c03fc0e13bcd8a0cd73c97ed00056757a2a9f3c90b80420f8fb848550d9d7d4fda5153ca7816872509e86099b2c6c06fc2193483e93944403b8202d8020685abc3a24461bba364ac736abdb34e30f74386c066acbbc3a8c834b7d6ef2460d5188b050d31235106aebf2abe03ac7ad11790abddabcd2d9312ebb7bb0d4a9b0e9b7baa5ac0a25fc209066a8103bbcac4b96bc1e4edfc8f34a7ca4eb927f39afc13d74c51e5f9b47e3ab39aebeebc7ac531150a234fb65712ba1c76be4941622e87bb00a81e902516a417c1bd7945721591894d90a749f98ec69732afeb3d9a8d66c0a93eed39b1ca310d964c37fd3d1f990a2782c6ce4f34c4a84806de45dc65495e09db26e3bb56c181ab6ba45c30862e368bb056c8af29a881ab06ad2d188902c2c6c3007fc830695bf3165177aa12741f011f283b09ffd28fb353a18760e54227a17c2567b2a6c8ae926c20673b0e5e7b059203613861049889f598bf09ff63c56049d17781868180a5beda9b0296ce3134982a9d5c132c4b9c86745379e0728c6c7a9252493375ab8c3e55b6eb870619b1b0cdd34cc1a782d49fb02f5bd343991e12d52a63480a3c73f930379af3197992e42b651fd8701af3c05eb1d045a6057a1a53bdf1c20a642938439d015573cf778ba5267c281d08187c53413963763e6ac5c7d712fef977ac6196208d42e86bd7b82bcdb7cff090eeb2a0b06532038d0fbf674a5ce2fc3e5fd65dd5c55be66babf683f5df1c2d7f7d280e5835809ba1724ee8e53bcb1a38fa73912eec0a82e313161b5f862c8a635b48f9376fcd4ae9ce5b427ccbe6af03032b7f34044a1be204e36aef94db7d84055b4849c2fe2d73830b241fc89393d46b9d5193197191ac80934025a16c434851168082a71c3335c3047584c3d26da0d44694baa80501761864f23cd4d19d8bce156e7659a9615b86933f31b82dd62eaf1309821c135e58286cb24089980728fd8b7f82e3298180cea91840c38f36fa3d0376a7b6274a2b34e825038b0333028997867820c548766a7a00f86760b0996a0f544e23b743037d90a866ca8d33cff52c869430977862117ead0536f6925406ae0eca38782082e45af9268664cb0db202503bd0a52b199075909b1604458a5be0f13be576cc9ab88d9976bd2e7d0740122b3503311b18601a90d4c3730d896225f901814e5520621538e246c038610b32f07a71572a204c2b2f47724e2a5839db3bee9064f848a1990dfb8718808cfb8c02015fcd3d53a4359bfac4248f70ef6c5928b7501a2c196155401064a11619745c81e1e535f2d51e9787081294488798b74f340d45deb9a6e50940f061b68fb535c5e54967273c814c9f70f5640ccd17323f89d5545da8e03b2054a9f4065aeb98381655d24708b7612cdb2c3a551e6c3d78ca3d88ce6531a59d4cafcbe1c5ab94ff8041ab814bbb49eaf0f47258a03d667fa0c6be85808d033e7d3de47491bbae5a11d0b1b8fa2c6f7210a2588c8566b996ea1061b9bcf0b76e9488c9532b92391e61b1ab223711343dc3ce00784cc338a86754c3730d824c1c5311919d4a5140d36f0188da8c20cba1125b6a70fe01ac0efc17403f1be86e986dabe23281faece022344f2268b0d8e551c848a1335d11365cd068ccef645159d5ceb83b62781115a74cbe5cde21be56d278c0644290cc1376109a4086fdee2a44369328c6372ad7f273c090c36ded81482d11c4258895149eab925378e0cd128069f1e85a69b30f2891506f8f6f330838d20047521efcae3f64954e50968b8b9d41cc31497ea17e2ea81cf497d7d48ed066d0fced88328fb41184a730851eb7e9428c54d25294705994610c5b8f23f0a019ba4556c303225a1dc4fcced46d755da0acc13063c8d7230d05f9096312cc3a56031505f5fec5a3280c0a42341db4be55c984420ea7ccc2b8aac1816f248182605e524a7e9c2e4360459938c4dc1f5058b1ac6e9496439b13e97e923f9c7af489be684fc4a94c5c2ce0cfb464c2527710788432773846175911822f89a8ad80b5ac303a18fe06070b230e7641c96ed50160b4c4e794f1e150cd854f9b86222690a161b6152943327b2198db3f08317878a7c77d33a5834b5e59f36ad1b4187a82b98eeb02c1456adf8469cee24f11af00c7b42f45521f8a9f8e6f3a124e7c774ea10f2fc3575c420c14ce00078a8ca20c2800de130302d927889609392dd3a60d20795d040cf9bb74bb051d0c79c39610f103cbdccf81319e27ea13da45435f8c62abfa399445f804143a415e86e49cef87dc795cf4da2ce383f2e7b9e48fb2fd76d7f22c9275e14636a9b6259308bb7c5ef792758881026fdcd67ac86582716747e9f55dba889eb96157228ebc33497b3c8df1f5906a08719a9dfc86d5a320e46fc8508da5028a97c546bb69c74889a8f10cc52f329bc9874b880e16932087531eb2b944d4b7c265f7c8d08093481024085a364190f2238564b86d5706057d43a8383c936c53b7a428c7694a624c3078cf4f8e9357cbd21ce465869339dc4329d0923faca0b892a74f669f66588b1801298983530e7f1753ec9d48b5b339ac96140909a2672dab347c35ea52a25daf8842e34138b0cf74ac80f849ad2f89919a401ac0dc267cd50f32b8781cc3e15870aeefcd1f1ee0a328423f603c29c31bacd1a7e40a30575c1640ec8c7f8c294bc41c8758c089ad10420b46ce4bc8c468954ebe9466526290f90523484153ea2b4b6bbc02fdcb8002144d30849eb56104d0082dd3126eeed77b79b6533d76c7b205cf9458c4c260c1911fdc8f1c1139414711182555ae6255554b935e553287a620e7475557347ba2142bc2d28c8b0664a9fa28e2e449f6dc0ab8bb80a11d4a190551d795c8b43130d0844fc3c2f8b77fe108c76b64bc591afda188021ca970c28d851553e5d326ed454286c56c49e55c34a1346fc7d6a9d68d17155be098961d60e519b7e60dd403db1e25c11614708bb1857e503c2337e80a2b791d84d325f2d1addbe363f56df44c34c64bee6ddeee1afde3c9353b5623801618faf2e4f8ab0ca33f98a8db21c9333daf2a48aad17a4db849413e9feceeba8c1accb155babe892ccf854c5ed2264ebd7b46621e6053b14678511aeabb6c71121c9190651911421b1fae271692646a57304191dc64290ebd54584c23a5c974b13491a09a2a25a3d7c0275d6cc590950cc01492c698432276081a7d57bf20ec3a8de08c5c3a81b55f6309418191ce803afa92d8443224047c5390cd2610aba5d3bbbbafa2aa8ac2d5ca1b88891a292134abd4046c57681c9ef8f790738d6f165569db3b897bcb1264f9fad9ff19997ab8e8c0ade02f605f1ef2085272e404038e22defc8d02e9279205c59d128e5434f6fc9971abc0b721a2fdf0f372f480d0d3864b11192ac5952600087b12f63e6a971a763f8cf29172b79f1041edbc81667e2b543d7710fa88327f33d8c7ff417041385118a7b52a23595139bc78db362cd062a14ab0dd9119e4fe326c281fdb4cf7bc0f1b7baa1deb0c4afe3d827259ab9903b84e64d8f4222375799b8cf47c37bc6074ce31f6e0621ef33fed0a29827257a64d593de05f5584ff074fe144554f8f183dea0108513eee29c940894e0c43d1f1fc6f9632104a78be81b3017e2a79c80934f0235b0d799ec645dd3aaab8a9b54f4308d2961c893c12a1d938830e89b04f9185082209c9498f0645def76aed517ccf5ffd493cc5f46acb5a23c96e4f836e1a444d8468adcb05662cc39f5ab28904b7a93577cc2e3e78b7cf57c92531421690f12d441fac5c8a594405a56fd525117e34edefda29e4bc49ee489e0589038392ec324e97b7bfc33c42a8ba45d322dc79c5e9e5c3d8e7d6d317ebc3fb99c669cc487090784a14bc2a498ad95282d0af2128bbcc2d9e0b079fea464f5a555f148387e1e3b97eca893437e9830c72c814adc1661fac658c8134956f60c1a110e97c61851c233aeb740187c26b9e536088984651770b22e04dbe1b1ebadc414890666890d0f923469119b58398a75226b88d334892646c0028234d4a4b5f9c261f374677de79722f084a7cfc38623ee8f24ae0d82b23cb8d4853fbde3c500d2cd58a1c22d79553766eac3e62c7c7ea99bf33c62ca6bb2026fad91ad2f0c1686dcb4e797b80a8920c498ce99c05aeb543c83ac81d1c2bceddddfc00244e528d606c017eb943e612abb7443d68eafb6a00069c0995ca14db73ad62a5f3bc7c705c3856753be1042a6880f4ad65190ae77383b4ee26f92eb04dbe5d72fb21099bd2d48a0ca634dc79a15883889a4f6385bf1adf8f98b586eec21d370ef1aee18af7bbe3e4e2249acc9ea95e3f9fcb8e05fcbb18663b7114066bb00afb7c5a0ddda45a45880780ca2cb0b7666b3e6f461f8102bfc9e16b15b3e70b8262dc7dde0e40888d7209fb2dc71b5b369342de6c0054867a167546c727004d6af695c5d12f9aed9de8dc8c9b599e83fb0934e5392363a7200af94658ae79853059e1246c9d621933be79dae17344036bc3f602e3d9a3b6cf5b1bd6d57c3aa3faa00d2e4b04dcff8c4b34df03407d608f756a3e2709d14f1f17781e0810bccc9d81b9f4a87e62954b1b1a5fe3e5d1f6c49e4984e9bdfe1c14166cea648e11825bc1798de426e0b8702dfaf11d65d092f674d85f4f022ae419a1cb6e1d92d3eedd15750880561f7eff4a4be6ef85385cebbe8eb4438f46d54500d702a47d25195412166f3d29950cbfbc5f420c1556a61e8724e4675785419d3ab0c06604a47437ea54fa479404649dca2f6e8f97a623a6bcfa5e9b69d5c3f2a9e3b2cd21733e97da91d42fb9d3eb38b3515ba117678d9a2bdd654e69cf642854ef3440c1a1c79e6f0fab48ebe7cc57819dc29a576a52177c6a7f149d21d33576e2ec2ea321af42a099db9e823b51bbb7cbaa1cf1d31575718a118b5e7457c25e215b585cc9e878f8ea95e609646aa0039885a8749cab3b35dd57af4e92ac6a5781e7786550db974da65b3e3d8eb21d206c831aad6e092d28d62437581a3478f136b95719eb32661d3e7e5df32f8749d6598f4ce81463a641ebf2cb2b995ba6d17cb1fc5fe05345c9851187399856af354f32ffae26fc2323aec38a6286428ddb21d38e62f92f1539cba2d556fe78b505e35730b556e4dbfd52d8a870bdb05eef688f4ce2ae7e882eb474fcc5077511a85aee284d6fe9312a3693d29b8fba85b33a4a393ed2c6f60a477dcbc407b7fb98e4b18fd55991dc8453fcf723e97e928ae803c1e6415f99ab63ee3a6fa678a37594974cef7485949a11bf6605f13e8575bb83a49be02727f602b9f562bf3bfdb828c61e942e8d67147751ab76e146622072e181bc074c44376fb33e560d946a725fc32bdebe4c2e88bd8b7465157b1963110fc8f67cc5cb3ea02838e06ca27e89d862889d2bbf230822eee84b7ba8aebac661bba3007ba5114983590aaa67884f07e51ba62cf1db35ab72509da4fdb9fc0800ec5377b28f7679dac8052c2f8d8ceb92b909fc0df251e9f8b2edb99edabd4c85694a09af6445625349a95746e59ba18795e7de2d3f9b5113f7faef1509aa98b4cb59b6d8a50995edfa8bba12dcb25d6d4f22ea9e4640e67a2f5f92b20ed7cb11162e26837e95de7181be379485fb4d31e27176dbb1cf2c3323bdfaefced8526f91dee76fe906e3f87f5a8c5d5ac192515e38d6a6c0d7ebe28aa05a49fe9dda89a9c5e1ffe0de9d68865403d7f26fda0cb8c816d0fc28adb3f9def9e3d4590df7faafbd664318ad1b9518dd92630aa213ee6fbef5bb34093d1dec5f7772ae9ce62d40d7635ced87f0c54cbefeeddf78b175a7c61f4fa56a1424625e694051a0564dc4bd51a9d7fb97d71d60ca1b7876fc4de366818c2265196312dbfb4b39223f2e6f0ff8433c3e8ada828e734c6aafb395a0d6af8b0b1cf806efecfe105742bc8d7231a0fb02b25f68360b7fe7d49b5908c2ebef15defa84a66b9c8994b1f766556a7436f3f70bd2f4ba706ea061f6afdf04fb027476f393539aaf00e925de054e0fb7f0f9f475c706e5ee4d2398aecffb6153adb01717295b945d7e08cb8d4a3d7bba4b7ac7eec2976e135edf3bfc9a094581f8b1c239567b5fc962367bb20363ae7278bd86cd0f8dfd21021b4c778912d8339067bcbb1dd5d126392b7f2cc0cee2434b81b6282738ca7b4c3d0d9f689497640fa7795a092c4dd802dee1fbd14bdfdaf031421febffaf01bd1c57f7b063dbaf8af03a4b955ff8e2b9f9802bdf81f3045c3e9eb7bedfd8ef5e0ff00d830b8dce0933e8f0000000049454e44ae426082, 'Something', 'Bhajan Pura Police Station', 0, 0, 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `prods`
--

CREATE TABLE `prods` (
  `prodId` int(11) NOT NULL,
  `pType` tinyint(1) NOT NULL,
  `title` varchar(100) NOT NULL,
  `descript` varchar(255) NOT NULL,
  `expiry` date NOT NULL,
  `email` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `prods`
--

INSERT INTO `prods` (`prodId`, `pType`, `title`, `descript`, `expiry`, `email`) VALUES
(8, 1, 'Masks', 'Bundles of use-and-throw masks', '2020-12-12', 'test2@gmail.com'),
(7, 1, 'Cycle', 'A functioning bicycle with training wheels', '2020-11-07', 'test@gmail.com'),
(9, 1, 'Sanitizers', 'Bundles of sanitizer bottles', '2021-01-08', 'test@gmail.com');

-- --------------------------------------------------------

--
-- Table structure for table `reqs`
--

CREATE TABLE `reqs` (
  `reqId` int(11) NOT NULL,
  `pType` tinyint(1) NOT NULL,
  `title` varchar(100) NOT NULL,
  `descript` varchar(255) NOT NULL,
  `expiry` date NOT NULL,
  `email` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `reqs`
--

INSERT INTO `reqs` (`reqId`, `pType`, `title`, `descript`, `expiry`, `email`) VALUES
(3, 0, 'Caterer/Cook', 'Meals needed for 100 people', '2020-10-31', 'foobar@gmail.com'),
(2, 0, 'Guide', 'Local guide to this area', '2020-12-30', 'foobar@gmail.com');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `activestatus`
--
ALTER TABLE `activestatus`
  ADD PRIMARY KEY (`email`);

--
-- Indexes for table `civilians`
--
ALTER TABLE `civilians`
  ADD PRIMARY KEY (`email`),
  ADD UNIQUE KEY `SNo` (`SNo`),
  ADD UNIQUE KEY `aadhar_no` (`aadhar_no`);

--
-- Indexes for table `police`
--
ALTER TABLE `police`
  ADD PRIMARY KEY (`email`),
  ADD UNIQUE KEY `SNo` (`SNo`),
  ADD UNIQUE KEY `mobile` (`mobile`),
  ADD UNIQUE KEY `badge_number` (`badge_number`);

--
-- Indexes for table `prods`
--
ALTER TABLE `prods`
  ADD PRIMARY KEY (`email`,`title`) USING BTREE,
  ADD UNIQUE KEY `prodId` (`prodId`);

--
-- Indexes for table `reqs`
--
ALTER TABLE `reqs`
  ADD PRIMARY KEY (`email`,`title`),
  ADD UNIQUE KEY `reqId` (`reqId`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `civilians`
--
ALTER TABLE `civilians`
  MODIFY `SNo` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `police`
--
ALTER TABLE `police`
  MODIFY `SNo` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `prods`
--
ALTER TABLE `prods`
  MODIFY `prodId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `reqs`
--
ALTER TABLE `reqs`
  MODIFY `reqId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;