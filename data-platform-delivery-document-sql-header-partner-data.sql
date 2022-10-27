CREATE TABLE `data_platform_delivery_document_header_partner_data`
(
    `DeliveryDocument`                int(16) NOT NULL,
    `PartnerFunction`                 varchar(40) NOT NULL,
    `BusinessPartner`                 int(12) NOT NULL,
    `BusinessPartnerFullName`         varchar(200) DEFAULT NULL,
    `BusinessPartnerName`             varchar(100) DEFAULT NULL,
    `Organization`                    varchar(4) DEFAULT NULL,
    `Language`                        varchar(2) DEFAULT NULL,
    `Currency`                        varchar(5) DEFAULT NULL,
    `ExternalDocumentID`              varchar(40) DEFAULT NULL,
    `AddressID`                       int(12) DEFAULT NULL,
    
    PRIMARY KEY (`DeliveryDocument`, `PartnerFunction`, `BusinessPartner`),

    CONSTRAINT `DataPlatformDeliveryDocumentHeaderPartnerData_fk` FOREIGN KEY (`DeliveryDocument`) REFERENCES `data_platform_delivery_document_header_data` (`DeliveryDocument`),
    CONSTRAINT `DataPlatformDeliveryDocumentHeaderPartnerDataPartnerFunction_fk` FOREIGN KEY (`PartnerFunction`, `BusinessPartner`, `BusinessPartnerFullName`, `BusinessPartnerName`, `Organization`, `Language`, `Currency`, `ExternalDocumentID`, `AddressID`) REFERENCES `data_platform_orders_header_partner_data` (`PartnerFunction`, `BusinessPartner`, `BusinessPartnerFullName`, `BusinessPartnerName`, `Organization`, `Language`, `Currency`, `ExternalDocumentID`, `AddressID`)

) ENGINE = InnoDB
  DEFAULT CHARSET = utf8mb4;
