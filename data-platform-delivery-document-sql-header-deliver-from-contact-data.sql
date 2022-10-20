CREATE TABLE `data_platform_delivery_document_header_deliver_from_contact_data`
(
  `BusinessPartner`               int(10) NOT NULL,            -- 新規追加
  `DeliveryDocument`              int(10) NOT NULL,            -- 新規追加
  `DeliverFromParty`              int(10) NOT NULL,            -- 新規追加
  `ContactID`                     int(4) NOT NULL,             -- 新規追加
  `ContactPersonName`             varchar(100) DEFAULT NULL,   -- 新規追加
  `EmailAddress`                  varchar(200) DEFAULT NULL,   -- 新規追加
  `PhoneNumber`                   varchar(100) DEFAULT NULL,   -- 新規追加
  `MobilePhoneNumber`             varchar(100) DEFAULT NULL,   -- 新規追加
  `FaxNumber`                     varchar(100) DEFAULT NULL,   -- 新規追加
  `ContactTag1`                   varchar(40) DEFAULT NULL,    -- 新規追加
  `ContactTag2`                   varchar(40) DEFAULT NULL,    -- 新規追加
  `ContactTag3`                   varchar(40) DEFAULT NULL,    -- 新規追加
  `ContactTag4`                   varchar(40) DEFAULT NULL,    -- 新規追加 
  PRIMARY KEY (`BusinessPartner`, `DeliveryDocument`, `DeliverFromParty`, `ContactID`) ,
  CONSTRAINT `DataPlatformDeliveryDocumentHeaderDeliverFromContactData_fk` FOREIGN KEY (`BusinessPartner`, `DeliveryDocument`, `DeliverFromParty`) REFERENCES `data_platform_delivery_document_header_data` (`BusinessPartner`, `DeliveryDocument`, `DeliverFromParty`)
) ENGINE = InnoDB
  DEFAULT CHARSET = utf8mb4;
