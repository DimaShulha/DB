SET SQL_MODE = '';


CREATE SCHEMA IF NOT EXISTS `bank` DEFAULT CHARACTER SET utf8 COLLATE utf8_general_ci ;
USE `bank` ;

-- -----------------------------------------------------
-- Table `mydb`.`Department`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `bank`.`department` (
  `idDepartment` INT NOT NULL,
  `DepartmentCity` VARCHAR(45) NULL,
  `CountOfWorkers` INT NULL,
  PRIMARY KEY (`idDepartment`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `mydb`.`Client`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `bank`.`client` (
  `idClient` INT NOT NULL,
  `FirstName` VARCHAR(45) NULL,
  `LastName` VARCHAR(45) NULL,
  `Education` VARCHAR(45) NULL,
  `Passport` VARCHAR(45) NULL,
  `City` VARCHAR(45) NULL,
  `Age` VARCHAR(45) NULL,
  `Department_idDepartment` INT NOT NULL,
  PRIMARY KEY (`idClient`),
  INDEX `fk_Client_Department_idx` (`Department_idDepartment` ASC),
  CONSTRAINT `fk_Client_Department`
    FOREIGN KEY (`Department_idDepartment`)
    REFERENCES `bank`.`department` (`idDepartment`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `mydb`.`Application`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `bank`.`application` (
  `idApplication` INT NOT NULL,
  `Sum` INT NULL,
  `CreditState` VARCHAR(45) NULL,
  `Currency` VARCHAR(45) NULL,
  `Client_idClient` INT NOT NULL,
  PRIMARY KEY (`idApplication`),
  INDEX `fk_Application_Client1_idx` (`Client_idClient` ASC),
  CONSTRAINT `fk_Application_Client1`
    FOREIGN KEY (`Client_idClient`)
    REFERENCES `bank`.`client` (`idClient`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;





INSERT INTO `bank`.`department` (`idDepartment`, `DepartmentCity`, `CountOfWorkers`) VALUES ('1', 'Kyiv', '12');
INSERT INTO `bank`.`department` (`idDepartment`, `DepartmentCity`, `CountOfWorkers`) VALUES ('2', 'Lviv', '15');
INSERT INTO `bank`.`department` (`idDepartment`, `DepartmentCity`, `CountOfWorkers`) VALUES ('3', 'Rivne', '8');
INSERT INTO `bank`.`department` (`idDepartment`, `DepartmentCity`, `CountOfWorkers`) VALUES ('4', 'Kyiv', '16');
INSERT INTO `bank`.`department` (`idDepartment`, `DepartmentCity`, `CountOfWorkers`) VALUES ('5', 'Lviv', '10');

INSERT INTO `bank`.`client` (`idClient`, `FirstName`, `LastName`, `Education`, `Passport`, `City`, `Age`, `Department_idDepartment`) VALUES ('1', 'Roman', 'Beregulak', 'high', 'KC249584', 'Lviv', '25', '2');
INSERT INTO `bank`.`client` (`idClient`, `FirstName`, `LastName`, `Education`, `Passport`, `City`, `Age`, `Department_idDepartment`) VALUES ('2', 'Mariya', 'Pehnyk', 'high', 'KC350156', 'Stryi', '29', '2');
INSERT INTO `bank`.`client` (`idClient`, `FirstName`, `LastName`, `Education`, `Passport`, `City`, `Age`, `Department_idDepartment`) VALUES ('3', 'Olena', 'Fedychkanych', 'middle', 'KC850145', 'Krasne', '19', '1');
INSERT INTO `bank`.`client` (`idClient`, `FirstName`, `LastName`, `Education`, `Passport`, `City`, `Age`, `Department_idDepartment`) VALUES ('4', 'Igor', 'Petriv', 'technic', 'KC853952', 'Kyiv', '21', '4');
INSERT INTO `bank`.`client` (`idClient`, `FirstName`, `LastName`, `Education`, `Passport`, `City`, `Age`, `Department_idDepartment`) VALUES ('5', 'Volodymyr', 'Gryniv', 'high', 'KC849153', 'Skvyra', '35', '4');
INSERT INTO `bank`.`client` (`idClient`, `FirstName`, `LastName`, `Education`, `Passport`, `City`, `Age`, `Department_idDepartment`) VALUES ('6', 'Oleg', 'Fedyshyn', 'high', 'KC012412', 'Lviv', '42', '5');
INSERT INTO `bank`.`client` (`idClient`, `FirstName`, `LastName`, `Education`, `Passport`, `City`, `Age`, `Department_idDepartment`) VALUES ('7', 'Taras', 'Sobko', 'middle', 'KC249504', 'Rivne', '20', '3');
INSERT INTO `bank`.`client` (`idClient`, `FirstName`, `LastName`, `Education`, `Passport`, `City`, `Age`, `Department_idDepartment`) VALUES ('8', 'Viktor', 'Spas', 'technic', 'KC823412', 'Kyiv', '22', '2');
INSERT INTO `bank`.`client` (`idClient`, `FirstName`, `LastName`, `Education`, `Passport`, `City`, `Age`, `Department_idDepartment`) VALUES ('9', 'Julia', 'Mokina', 'technic', 'KC908295', 'Kyiv', '21', '1');
INSERT INTO `bank`.`client` (`idClient`, `FirstName`, `LastName`, `Education`, `Passport`, `City`, `Age`, `Department_idDepartment`) VALUES ('10', 'Oksana', 'Indusiva', 'high', 'KC723532', 'Sambir', '32', '1');

INSERT INTO `bank`.`application` (`idApplication`, `Sum`, `CreditState`, `Currency`, `Client_idClient`) VALUES ('1', '4000', 'Returned', 'Dollar', '1');
INSERT INTO `bank`.`application` (`idApplication`, `Sum`, `CreditState`, `Currency`, `Client_idClient`) VALUES ('2', '5000', 'Not returned', 'Dollar', '4');
INSERT INTO `bank`.`application` (`idApplication`, `Sum`, `CreditState`, `Currency`, `Client_idClient`) VALUES ('3', '7500', 'Returned', 'Euro', '6');
INSERT INTO `bank`.`application` (`idApplication`, `Sum`, `CreditState`, `Currency`, `Client_idClient`) VALUES ('4', '3200', 'Not returned', 'Gryvnia', '2');
INSERT INTO `bank`.`application` (`idApplication`, `Sum`, `CreditState`, `Currency`, `Client_idClient`) VALUES ('5', '3700', 'Returned', 'Gryvnia', '3');
INSERT INTO `bank`.`application` (`idApplication`, `Sum`, `CreditState`, `Currency`, `Client_idClient`) VALUES ('6', '4100', 'Returned', 'Dollar', '1');
INSERT INTO `bank`.`application` (`idApplication`, `Sum`, `CreditState`, `Currency`, `Client_idClient`) VALUES ('7', '15100', 'Not returned', 'Gryvnia', '9');
INSERT INTO `bank`.`application` (`idApplication`, `Sum`, `CreditState`, `Currency`, `Client_idClient`) VALUES ('8', '25600', 'Not returned', 'Dollar', '10');
INSERT INTO `bank`.`application` (`idApplication`, `Sum`, `CreditState`, `Currency`, `Client_idClient`) VALUES ('9', '12300', 'Not returned', 'Gryvnia', '8');
INSERT INTO `bank`.`application` (`idApplication`, `Sum`, `CreditState`, `Currency`, `Client_idClient`) VALUES ('10', '9700', 'Returned', 'Dollar', '5');
INSERT INTO `bank`.`application` (`idApplication`, `Sum`, `CreditState`, `Currency`, `Client_idClient`) VALUES ('11', '9000', 'Not returned', 'Gryvnia', '7');
INSERT INTO `bank`.`application` (`idApplication`, `Sum`, `CreditState`, `Currency`, `Client_idClient`) VALUES ('12', '8100', 'Not returned', 'Dollar', '3');
INSERT INTO `bank`.`application` (`idApplication`, `Sum`, `CreditState`, `Currency`, `Client_idClient`) VALUES ('13', '4400', 'Not returned', 'Euro', '8');
INSERT INTO `bank`.`application` (`idApplication`, `Sum`, `CreditState`, `Currency`, `Client_idClient`) VALUES ('14', '2700', 'Returned', 'Dollar', '10');
INSERT INTO `bank`.`application` (`idApplication`, `Sum`, `CreditState`, `Currency`, `Client_idClient`) VALUES ('15', '6600', 'Not returned', 'Euro', '3');

-- 1. +Вибрати усіх клієнтів, чиє ім'я має менше ніж 6 символів.
-- 
select * from client 
where length(FirstName) < 6;
--
-- 2. +Вибрати львівські відділення банку.+
--
select * from department
where DepartmentCity = 'Lviv';
--
-- 3. +Вибрати клієнтів з вищою освітою та посортувати по прізвищу.
--
select * from client
where Education = 'high'
order by LastName;
--
-- 4. +Виконати сортування у зворотньому порядку над таблицею Заявка і вивести 5 останніх елементів.
--
select * from application
order by idApplication desc
limit 5;
--
-- 5. +Вивести усіх клієнтів, чиє прізвище закінчується на OV чи OVA.
select * from client
where LastName like '%iv' or LastName like '%iva';
--
-- 6. +Вивести клієнтів банку, які обслуговуються київськими відділеннями.
select * from client
inner join department on client.Department_idDepartment = department.idDepartment
where DepartmentCity = 'Kyiv';
--
-- 7. +Вивести імена клієнтів та їхні номера телефону, погрупувавши їх за іменами.
--
select FirstName, LastName, Passport from client
order by FirstName;
--
-- 8. +Вивести дані про клієнтів, які мають кредит більше ніж на 5000 тисяч гривень.
--
select * from client
inner join application on client.idClient = application.Client_idClient
where Sum > 5000;
--
-- 9. +Порахувати кількість клієнтів усіх відділень та лише львівських відділень.
--
select  count(idClient) from client;
--
select  count(idClient) from client
inner join department on client.Department_idDepartment = department.idDepartment
where DepartmentCity = 'Lviv';
--
-- 10. Знайти кредити, які мають найбільшу суму для кожного клієнта окремо.
--
select max(Sum), FirstName, LastName from client
inner join application on client.idClient = application.Client_idClient
group by idClient;
--
-- 11. Визначити кількість заявок на крдеит для кожного клієнта.
--
select count(idApplication), FirstName, LastName from client
inner join application on client.idClient = application.Client_idClient
group by idClient;
-- 12. Визначити найбільший та найменший кредити.
--
select min(Sum), max(Sum) from application;
-- --
-- 13. Порахувати кількість кредитів для клієнтів,які мають вищу освіту.
select count(idApplication), FirstName, LastName from client
inner join application on client.idClient = application.Client_idClient
where Education = 'high'
group by idClient;
--
-- 14. Вивести дані про клієнта, в якого середня сума кредитів найвища.
--
select avg(Sum) as avg, FirstName, LastName from client
join application on client.idClient = application.Client_idClient
group by idClient
order by avg desc
limit 1;
--
-- 15. Вивести відділення, яке видало в кредити найбільше грошей
select sum(Sum) as maxMoney, department.DepartmentCity from department
join client on client.Department_idDepartment = department.idDepartment
join application on client.idClient = application.Client_idClient
group by idDepartment
order by maxMoney desc
limit 1;
--
-- 16. Вивести відділення, яке видало найбільший кредит.
--
select max(Sum) as maxCred, department.DepartmentCity from department
join client on client.Department_idDepartment = department.idDepartment
join application on client.idClient = application.Client_idClient
group by idDepartment
order by maxCred desc
limit 1;
--
-- 17. Усім клієнтам, які мають вищу освіту, встановити усі їхні кредити у розмірі 6000 грн.
--
update client
join application on client.idClient = application.Client_idClient
set Sum = 6000
where Education = 'high';
--
-- 18. Усіх клієнтів київських відділень пересилити до Києва.
--
update client
join department on client.Department_idDepartment = department.idDepartment
set City = 'Kyiv'
where DepartmentCity = 'Kyiv';
--
-- 19. Видалити усі кредити, які є повернені.
--
delete from application
where CreditState = 'Returned';

-- 20. Видалити кредити клієнтів, в яких друга літера прізвища є голосною.



-- Знайти львівські відділення, які видали кредитів на загальну суму більше ніж 5000
select d.idDepartment, d.DepartmentCity, sum(a.Sum) from client c, department d, aplication a
where c.Department_idDepartment = d.idDepartment
and a.Client_idClient = c.idClient
and d.DepartmentCity = 'Lviv'
group by d.idDepartment, d.DepartmentCity having sum(a.Sum) > 5000;

-- Знайти клієнтів, які повністю погасили кредити на суму більше ніж 5000

select client.FirstName, client.LastName, Sum, CreditState
from client
inner join application on client.idClient = application.Client_idClient
where CreditState = 'Returned'
and sum > 5000;
--
-- /* Знайти максимальний неповернений кредит.*/
--
select FirstName, LastName, Sum, CreditState
from client
inner join application on client.idClient = application.Client_idClient
where CreditState = 'Not returned'
order by Sum desc
limit 1;
--
-- /*Знайти клієнта, сума кредиту якого найменша*/
select FirstName, LastName, Sum
from client
inner join application on client.idClient = application.Client_idClient
order by Sum
limit 1;
-- 
-- /*Знайти кредити, сума яких більша за середнє значення усіх кредитів*/
--
select application.idApplication, application.Sum from application
where Sum > (select avg(Sum) from application);
--
-- /*Знайти клієнтів, які є з того самого міста, що і клієнт, який взяв найбільшу кількість кредитів*/
-- #місто чувака який набрав найбільше кредитів
-- 
select FirstName, LastName, count(application.idApplication) as MaxCount, client.City
from application, client
where application.Client_idClient = client.idClient
group by application.Client_idClient
order by MaxCount desc
limit 1;