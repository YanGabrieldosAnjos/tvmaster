CREATE DATABASE  IF NOT EXISTS `tvmaster` /*!40100 DEFAULT CHARACTER SET utf8 */;
USE `tvmaster`;
-- MySQL dump 10.13  Distrib 5.6.19, for linux-glibc2.5 (x86_64)
--
-- Host: localhost    Database: tvmaster
-- ------------------------------------------------------
-- Server version	5.5.53-0ubuntu0.14.04.1

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `Administrador`
--

DROP TABLE IF EXISTS `Administrador`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Administrador` (
  `id_adm` int(11) NOT NULL AUTO_INCREMENT,
  `senha` varchar(45) NOT NULL,
  `email` varchar(45) NOT NULL,
  `funcao` int(11) NOT NULL,
  `nome` varchar(45) NOT NULL,
  PRIMARY KEY (`id_adm`),
  CONSTRAINT `fk_Administrador_1` FOREIGN KEY (`id_adm`) REFERENCES `Funcionario` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Administrador`
--

LOCK TABLES `Administrador` WRITE;
/*!40000 ALTER TABLE `Administrador` DISABLE KEYS */;
/*!40000 ALTER TABLE `Administrador` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Atendente`
--

DROP TABLE IF EXISTS `Atendente`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Atendente` (
  `id_Atendente` int(11) NOT NULL AUTO_INCREMENT,
  `senha` int(11) NOT NULL,
  `nome` varchar(45) NOT NULL,
  `email` varchar(45) NOT NULL,
  `funcao` int(11) NOT NULL,
  PRIMARY KEY (`id_Atendente`),
  UNIQUE KEY `email_UNIQUE` (`email`),
  CONSTRAINT `fk_Atendente_1` FOREIGN KEY (`id_Atendente`) REFERENCES `Pessoa` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Atendente`
--

LOCK TABLES `Atendente` WRITE;
/*!40000 ALTER TABLE `Atendente` DISABLE KEYS */;
/*!40000 ALTER TABLE `Atendente` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Canais`
--

DROP TABLE IF EXISTS `Canais`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Canais` (
  `id_Canais` int(11) NOT NULL AUTO_INCREMENT,
  `Nome do Canal` varchar(45) NOT NULL,
  `NumeroDoCanal` varchar(45) NOT NULL,
  PRIMARY KEY (`id_Canais`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Canais`
--

LOCK TABLES `Canais` WRITE;
/*!40000 ALTER TABLE `Canais` DISABLE KEYS */;
/*!40000 ALTER TABLE `Canais` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Categoria`
--

DROP TABLE IF EXISTS `Categoria`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Categoria` (
  `id_Categoria` int(11) NOT NULL AUTO_INCREMENT,
  `TipoDeCategoria` varchar(45) NOT NULL,
  `NomeDaCategoria` varchar(45) NOT NULL,
  `id_Canais` int(11) NOT NULL,
  `id_Plano` int(11) DEFAULT NULL,
  PRIMARY KEY (`id_Categoria`),
  KEY `fk_Categoria_1_idx` (`id_Canais`),
  KEY `fk_Categoria_2_idx` (`id_Plano`),
  CONSTRAINT `fk_Categoria_2` FOREIGN KEY (`id_Plano`) REFERENCES `Plano` (`id_Plano`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_Categoria_1` FOREIGN KEY (`id_Canais`) REFERENCES `Canais` (`id_Canais`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Categoria`
--

LOCK TABLES `Categoria` WRITE;
/*!40000 ALTER TABLE `Categoria` DISABLE KEYS */;
/*!40000 ALTER TABLE `Categoria` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `CentralDeChamadas`
--

DROP TABLE IF EXISTS `CentralDeChamadas`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `CentralDeChamadas` (
  `id_CentralDeChamadas` int(11) NOT NULL AUTO_INCREMENT,
  `Data` varchar(45) NOT NULL,
  `Motivo` varchar(45) NOT NULL,
  `Situacao` varchar(45) NOT NULL,
  `Status` varchar(45) NOT NULL,
  `id_Contrato` int(11) NOT NULL,
  `id_Atendente` int(11) NOT NULL,
  `id_Tecnico` int(11) NOT NULL,
  PRIMARY KEY (`id_CentralDeChamadas`),
  KEY `fk_CentralDeChamadas_1_idx` (`id_Atendente`),
  KEY `fk_CentralDeChamadas_2_idx` (`id_Tecnico`),
  KEY `fk_CentralDeChamadas_3_idx` (`id_Contrato`),
  CONSTRAINT `fk_CentralDeChamadas_3` FOREIGN KEY (`id_Contrato`) REFERENCES `Contrato` (`NumeroContrato`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_CentralDeChamadas_1` FOREIGN KEY (`id_Atendente`) REFERENCES `Atendente` (`id_Atendente`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_CentralDeChamadas_2` FOREIGN KEY (`id_Tecnico`) REFERENCES `Tecnico` (`id_Tecnico`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `CentralDeChamadas`
--

LOCK TABLES `CentralDeChamadas` WRITE;
/*!40000 ALTER TABLE `CentralDeChamadas` DISABLE KEYS */;
/*!40000 ALTER TABLE `CentralDeChamadas` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Cliente`
--

DROP TABLE IF EXISTS `Cliente`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Cliente` (
  `id_Cliente` int(11) NOT NULL AUTO_INCREMENT,
  `senha` int(11) NOT NULL,
  `nome` varchar(45) NOT NULL,
  `cpf` varchar(45) NOT NULL,
  `email` varchar(45) NOT NULL,
  `telefone` varchar(45) NOT NULL,
  `id_Contrato` int(11) NOT NULL,
  `id_Fatura` int(11) NOT NULL,
  PRIMARY KEY (`id_Cliente`),
  UNIQUE KEY `email_UNIQUE` (`email`),
  KEY `fk_Cliente_1_idx` (`id_Cliente`),
  CONSTRAINT `fk_Cliente_1` FOREIGN KEY (`id_Cliente`) REFERENCES `Pessoa` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Cliente`
--

LOCK TABLES `Cliente` WRITE;
/*!40000 ALTER TABLE `Cliente` DISABLE KEYS */;
/*!40000 ALTER TABLE `Cliente` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Contrato`
--

DROP TABLE IF EXISTS `Contrato`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Contrato` (
  `NumeroContrato` int(11) NOT NULL,
  `endereco` varchar(45) NOT NULL,
  `quantidadeReceptor` varchar(45) NOT NULL,
  `tipoDePlano` int(11) NOT NULL,
  `id_plano` int(11) NOT NULL,
  PRIMARY KEY (`NumeroContrato`),
  KEY `fk_Contrato_2_idx` (`id_plano`),
  CONSTRAINT `fk_Contrato_2` FOREIGN KEY (`id_plano`) REFERENCES `Plano` (`id_Plano`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_Contrato_1` FOREIGN KEY (`NumeroContrato`) REFERENCES `Cliente` (`id_Cliente`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Contrato`
--

LOCK TABLES `Contrato` WRITE;
/*!40000 ALTER TABLE `Contrato` DISABLE KEYS */;
/*!40000 ALTER TABLE `Contrato` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Fatura`
--

DROP TABLE IF EXISTS `Fatura`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Fatura` (
  `id_Fatura` int(11) NOT NULL,
  `NumeroDeContrato` int(11) NOT NULL,
  `ValorDoPlano` float NOT NULL,
  PRIMARY KEY (`id_Fatura`),
  KEY `fk_Fatura_2_idx` (`id_Fatura`),
  CONSTRAINT `fk_Fatura_1` FOREIGN KEY (`id_Fatura`) REFERENCES `Cliente` (`id_Cliente`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Fatura`
--

LOCK TABLES `Fatura` WRITE;
/*!40000 ALTER TABLE `Fatura` DISABLE KEYS */;
/*!40000 ALTER TABLE `Fatura` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Funcionario`
--

DROP TABLE IF EXISTS `Funcionario`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Funcionario` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `senha` int(11) NOT NULL,
  `email` varchar(45) NOT NULL,
  `funcao` int(11) NOT NULL,
  `nome` varchar(45) NOT NULL,
  `id_Atendente` int(11) NOT NULL,
  `id_adm` int(11) NOT NULL,
  `id_Tecnico` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `id_UNIQUE` (`id`),
  KEY `fk_Funcionario_1_idx` (`id_adm`),
  KEY `fk_Funcionario_2_idx` (`id_Tecnico`),
  KEY `fk_Funcionario_3_idx` (`id_Atendente`),
  CONSTRAINT `fk_Funcionario_3` FOREIGN KEY (`id_Atendente`) REFERENCES `Atendente` (`id_Atendente`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_Funcionario_1` FOREIGN KEY (`id_adm`) REFERENCES `Administrador` (`id_adm`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_Funcionario_2` FOREIGN KEY (`id_Tecnico`) REFERENCES `Tecnico` (`id_Tecnico`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Funcionario`
--

LOCK TABLES `Funcionario` WRITE;
/*!40000 ALTER TABLE `Funcionario` DISABLE KEYS */;
/*!40000 ALTER TABLE `Funcionario` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Ilimitado`
--

DROP TABLE IF EXISTS `Ilimitado`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Ilimitado` (
  `id_Ilimitado` int(11) NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`id_Ilimitado`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Ilimitado`
--

LOCK TABLES `Ilimitado` WRITE;
/*!40000 ALTER TABLE `Ilimitado` DISABLE KEYS */;
/*!40000 ALTER TABLE `Ilimitado` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Pagamento`
--

DROP TABLE IF EXISTS `Pagamento`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Pagamento` (
  `id_Pagamento` int(11) NOT NULL AUTO_INCREMENT,
  `id_Cliente` int(11) NOT NULL,
  PRIMARY KEY (`id_Pagamento`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Pagamento`
--

LOCK TABLES `Pagamento` WRITE;
/*!40000 ALTER TABLE `Pagamento` DISABLE KEYS */;
/*!40000 ALTER TABLE `Pagamento` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Pessoa`
--

DROP TABLE IF EXISTS `Pessoa`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Pessoa` (
  `id_Pessoa` int(11) NOT NULL AUTO_INCREMENT,
  `senha` int(11) NOT NULL,
  `nome` varchar(45) NOT NULL,
  `telefone` varchar(45) NOT NULL,
  `email` varchar(45) NOT NULL,
  `cpf` varchar(45) NOT NULL,
  `id_Cliente` int(11) NOT NULL,
  `id` int(11) NOT NULL,
  PRIMARY KEY (`id_Pessoa`),
  UNIQUE KEY `id_UNIQUE` (`id_Pessoa`),
  KEY `fk_Pessoa_1_idx` (`id_Cliente`),
  KEY `fk_Pessoa_2_idx` (`id`),
  CONSTRAINT `fk_Pessoa_2` FOREIGN KEY (`id`) REFERENCES `Funcionario` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_Pessoa_1` FOREIGN KEY (`id_Cliente`) REFERENCES `Cliente` (`id_Cliente`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Pessoa`
--

LOCK TABLES `Pessoa` WRITE;
/*!40000 ALTER TABLE `Pessoa` DISABLE KEYS */;
/*!40000 ALTER TABLE `Pessoa` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Plano`
--

DROP TABLE IF EXISTS `Plano`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Plano` (
  `id_Plano` int(11) NOT NULL AUTO_INCREMENT,
  `id_Categoria` int(11) NOT NULL,
  `NomeDoPlano` varchar(45) NOT NULL,
  `id_Contrato` int(11) NOT NULL,
  `id_Top` int(11) NOT NULL,
  `id_Regular` int(11) NOT NULL,
  `id_Ilimitado` int(11) NOT NULL,
  PRIMARY KEY (`id_Plano`),
  KEY `fk_Plano_1_idx` (`id_Categoria`),
  KEY `fk_Plano_2_idx` (`id_Contrato`),
  KEY `fk_Plano_3_idx` (`id_Top`),
  KEY `fk_Plano_4_idx` (`id_Regular`),
  KEY `fk_Plano_5_idx` (`id_Ilimitado`),
  CONSTRAINT `fk_Plano_5` FOREIGN KEY (`id_Ilimitado`) REFERENCES `Ilimitado` (`id_Ilimitado`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_Plano_1` FOREIGN KEY (`id_Categoria`) REFERENCES `Categoria` (`id_Categoria`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_Plano_2` FOREIGN KEY (`id_Contrato`) REFERENCES `Contrato` (`NumeroContrato`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_Plano_3` FOREIGN KEY (`id_Top`) REFERENCES `Top` (`id_Top`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_Plano_4` FOREIGN KEY (`id_Regular`) REFERENCES `Regular` (`id_Regular`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Plano`
--

LOCK TABLES `Plano` WRITE;
/*!40000 ALTER TABLE `Plano` DISABLE KEYS */;
/*!40000 ALTER TABLE `Plano` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Regular`
--

DROP TABLE IF EXISTS `Regular`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Regular` (
  `id_Regular` int(11) NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`id_Regular`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Regular`
--

LOCK TABLES `Regular` WRITE;
/*!40000 ALTER TABLE `Regular` DISABLE KEYS */;
/*!40000 ALTER TABLE `Regular` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Tecnico`
--

DROP TABLE IF EXISTS `Tecnico`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Tecnico` (
  `id_Tecnico` int(11) NOT NULL AUTO_INCREMENT,
  `senha` int(11) NOT NULL,
  `nome` varchar(45) NOT NULL,
  `email` varchar(45) NOT NULL,
  `funcao` int(11) NOT NULL,
  PRIMARY KEY (`id_Tecnico`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Tecnico`
--

LOCK TABLES `Tecnico` WRITE;
/*!40000 ALTER TABLE `Tecnico` DISABLE KEYS */;
/*!40000 ALTER TABLE `Tecnico` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Top`
--

DROP TABLE IF EXISTS `Top`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Top` (
  `id_Top` int(11) NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`id_Top`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Top`
--

LOCK TABLES `Top` WRITE;
/*!40000 ALTER TABLE `Top` DISABLE KEYS */;
/*!40000 ALTER TABLE `Top` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2017-10-01 10:13:56
