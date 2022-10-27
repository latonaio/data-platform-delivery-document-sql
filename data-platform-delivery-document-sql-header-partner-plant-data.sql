CREATE TABLE `data_platform_delivery_document_header_partner_plant_data`
(
    `DeliveryDocument`                int(16) NOT NULL,
    `PartnerFunction`                 varchar(40) NOT NULL,
    `BusinessPartner`                 int(12) NOT NULL,
    `Plant`                           varchar(4) NOT NULL,

    PRIMARY KEY (`DeliveryDocument`, `PartnerFunction`, `BusinessPartner`, `Plant`),
    
    CONSTRAINT `DataPlatformDeliveryDocumentHeaderPartnerData_fk` FOREIGN KEY (`DeliveryDocument`, `PartnerFunction`, `BusinessPartner`) REFERENCES `data_platform_delivery_document_header_partner_data` (`DeliveryDocument`, `PartnerFunction`, `BusinessPartner`),
    CONSTRAINT `DataPlatformDeliveryDocumentHeaderPartnerDataPlant_fk` FOREIGN KEY (`BusinessPartner`, `Plant`) REFERENCES `data_platform_plant_general_data` (`BusinessPartner`, `Plant`)

) ENGINE = InnoDB
  DEFAULT CHARSET = utf8mb4;
