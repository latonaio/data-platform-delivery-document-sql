CREATE TABLE `data_platform_delivery_document_header_partner_contact_data`    -- 新規追加
(
--`BusinessPartner`                   int(10) NOT NULL,            -- 新規追加
  `DeliveryDocument`                  int(16) NOT NULL,            -- 新規追加
  `PartnerFunction`                   varchar(4) NOT NULL,         -- 新規追加
  `ContactID`                         int(4) NOT NULL,             -- 新規追加
  `BusinessPartner`                   int(12) DEFAULT NULL,        -- 新規追加
  `ContactPersonName`                 varchar(100) DEFAULT NULL,   -- 新規追加
  `EmailAddress`                      varchar(200) DEFAULT NULL,   -- 新規追加
  `PhoneNumber`                       varchar(100) DEFAULT NULL,   -- 新規追加
  `MobilePhoneNumber`                 varchar(100) DEFAULT NULL,   -- 新規追加
  `FaxNumber`                         varchar(100) DEFAULT NULL,   -- 新規追加
  `ContactTag1`                       varchar(40) DEFAULT NULL,    -- 新規追加
  `ContactTag2`                       varchar(40) DEFAULT NULL,    -- 新規追加
  `ContactTag3`                       varchar(40) DEFAULT NULL,    -- 新規追加
  `ContactTag4`                       varchar(40) DEFAULT NULL,    -- 新規追加 
  
  PRIMARY KEY (`DeliveryDocument`, `PartnerFunction`, `ContactID`) ,
  
  CONSTRAINT `DataPlatformDeliveryDocumentHeaderPartnerContactData_fk` FOREIGN KEY (`DeliveryDocument`, `PartnerFunction`, `BusinessPartner`) REFERENCES `data_platform_delivery_document_header_partner_data` (`DeliveryDocument`, `PartnerFunction`, `BusinessPartner`)

) ENGINE = InnoDB
  DEFAULT CHARSET = utf8mb4;
