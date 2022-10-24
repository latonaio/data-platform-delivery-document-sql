CREATE TABLE `data_platform_delivery_document_header_partner_data`
(
--  `BusinessPartner`                 int(10) NOT NULL,           -- 新規追加
    `DeliveryDocument`                int(16) NOT NULL,
    `PartnerFunction`                 varchar(4) NOT NULL,
    `BusinessPartner`                 int(12) NOT NULL,           -- 名称変更
    `BusinessPartnerFullName`         varchar(200) DEFAULT NULL,  -- 新規追加
    `BusinessPartnerName`             varchar(100) DEFAULT NULL,  -- 新規追加
    `Organization`                    varchar(4) DEFAULT NULL,    -- 新規追加
    `Language`                        varchar(2) DEFAULT NULL,    -- 新規追加
    `Currency`                        varchar(5) DEFAULT NULL,    -- 新規追加
    `ExternalDocumentID`              varchar(40) DEFAULT NULL,   -- 新規追加
    `AddressID`                       int(12) DEFAULT NULL,       -- 新規追加
    
    PRIMARY KEY (`DeliveryDocument`, `PartnerFunction`, `BusinessPartner`),
    
    CONSTRAINT `DataPlatformDeliveryDocumentHeaderPartnerData_fk` FOREIGN KEY (`DeliveryDocument`) REFERENCES `data_platform_delivery_document_header_data` (`DeliveryDocument`),
    CONSTRAINT `DataPlatformDeliveryDocumentHeaderPartnerDataPartnerFunction_fk` FOREIGN KEY (`PartnerFunction`, `BusinessPartner`, `BusinessPartnerFullName`, `BusinessPartnerName`, `Organization`, `Language`, `Currency`, `ExternalDocumentID`, `AddressID`) REFERENCES `data_platform_orders_header_partner_data` (`PartnerFunction`, `BusinessPartner`, `BusinessPartnerFullName`, `BusinessPartnerName`, `Organization`, `Language`, `Currency`, `ExternalDocumentID`, `AddressID`)

) ENGINE = InnoDB
  DEFAULT CHARSET = utf8mb4;
