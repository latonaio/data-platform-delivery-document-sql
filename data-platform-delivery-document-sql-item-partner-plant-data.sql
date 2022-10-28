CREATE TABLE `data_platform_delivery_document_item_partner_plant_data`
(
    `DeliveryDocument`                int(16) NOT NULL,
    `DeliveryDocumentItem`            int(6) NOT NULL,
    `PartnerFunction`                 varchar(40) NOT NULL,
    `BusinessPartner`                 int(12) NOT NULL,
    `Plant`                           varchar(4) NOT NULL,

    PRIMARY KEY (`DeliveryDocument`, `DeliveryDocumentItem`, `PartnerFunction`, `BusinessPartner`, `Plant`),
    
    CONSTRAINT `DataPlatformDeliveryDocumentHeaderPartnerData_fk` FOREIGN KEY (`DeliveryDocument`, `DeliveryDocumentItem`, `PartnerFunction`, `BusinessPartner`) REFERENCES `data_platform_delivery_document_item_partner_data` (`DeliveryDocument`, `DeliveryDocumentItem`, `PartnerFunction`, `BusinessPartner`),
    CONSTRAINT `DataPlatformDeliveryDocumentHeaderPartnerDataPlant_fk` FOREIGN KEY (`BusinessPartner`, `Plant`) REFERENCES `data_platform_plant_general_data` (`BusinessPartner`, `Plant`)

) ENGINE = InnoDB
  DEFAULT CHARSET = utf8mb4;
