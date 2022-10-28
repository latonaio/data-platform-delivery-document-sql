CREATE TABLE `data_platform_delivery_document_item_partner_data`
(
    `DeliveryDocument`                int(16) NOT NULL,
    `DeliveryDocumentItem`            int(6) NOT NULL,
    `PartnerFunction`                 varchar(40) NOT NULL,
    `BusinessPartner`                 int(12) NOT NULL,
    
    PRIMARY KEY (`DeliveryDocument`, `DeliveryDocumentItem`, `PartnerFunction`, `BusinessPartner`),
    
    CONSTRAINT `DataPlatformOrdersItemPartnerData_fk` FOREIGN KEY (`DeliveryDocument`, `DeliveryDocumentItem`) REFERENCES `data_platform_orders_item_data` (`DeliveryDocument`, `DeliveryDocumentItem`),
    CONSTRAINT `DataPlatformOrdersItemPartnerDataPartnerFunction_fk` FOREIGN KEY (`PartnerFunction`) REFERENCES `data_platform_partner_function_partner_function_data` (`PartnerFunction`),
    CONSTRAINT `DataPlatformOrdersItemPartnerDataBusinessPartner_fk` FOREIGN KEY (`BusinessPartner`) REFERENCES `data_platform_business_partner_general_data` (`BusinessPartner`)

) ENGINE = InnoDB
  DEFAULT CHARSET = utf8mb4;
