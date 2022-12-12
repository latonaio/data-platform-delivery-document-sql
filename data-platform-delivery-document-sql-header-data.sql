CREATE TABLE `data_platform_delivery_document_header_data`
(
    `DeliveryDocument`                   int(16) NOT NULL,
    `Buyer`                              int(12) DEFAULT NULL,
    `Seller`                             int(12) DEFAULT NULL,
    `ReferenceDocument`                  int(16) DEFAULT NULL,
    `ReferenceDocumentItem`              int(6) DEFAULT NULL,
    `OrderID`                            int(16) DEFAULT NULL,
    `OrderItem`                          int(6) DEFAULT NULL,
    `ContractType`                       varchar(4) DEFAULT NULL,
    `OrderValidityStartDate`             date DEFAULT NULL,
    `OrderValidityEndDate`               date DEFAULT NULL,
    `IssuingLocationTimeZone`            varchar(3) DEFAULT NULL,
    `ReceivingLocationTimeZone`          varchar(3) DEFAULT NULL,
    `DocumentDate`                       date DEFAULT NULL,
    `PlannedGoodsIssueDate`              date DEFAULT NULL,
    `PlannedGoodsIssueTime`              time DEFAULT NULL,
    `PlannedGoodsReceiptDate`            date DEFAULT NULL,
    `PlannedGoodsReceiptTime`            time DEFAULT NULL,
    `BillingDocumentDate`                date DEFAULT NULL,
    `HeaderCompleteDeliveryIsDefined`    tinyint(1) DEFAULT NULL,
    `HeaderDeliveryStatus`               varchar(2) DEFAULT NULL,
    `CreationDate`                       date DEFAULT NULL,
    `CreationTime`                       time DEFAULT NULL,
    `HeaderDeliveryBlockStatus`          tinyint(1) DEFAULT NULL,
    `HeaderIssuingBlockStatus`           tinyint(1) DEFAULT NULL,
    `HeaderReceivingBlockStatus`         tinyint(1) DEFAULT NULL,
    `GoodsIssueOrReceiptSlipNumber`      varchar(35) DEFAULT NULL,
    `HeaderBillingStatus`                varchar(2) DEFAULT NULL,
    `HeaderBillingConfStatus`            varchar(2) DEFAULT NULL,
    `HeaderBillingBlockStatus`           tinyint(1) DEFAULT NULL,
    `HeaderGrossWeight`                  float(15) DEFAULT NULL,
    `HeaderNetWeight`                    float(15) DEFAULT NULL,
    `HeaderWeightUnit`                   varchar(3) DEFAULT NULL,
    `Incoterms`                          varchar(3) DEFAULT NULL,
    `BillFromParty`                      int(12) DEFAULT NULL,
    `BillToParty`                        int(12) DEFAULT NULL,
    `BillFromCountry`                    varchar(3) DEFAULT NULL,
    `BillToCountry`                      varchar(3) DEFAULT NULL,
    `Payer`                              int(12) DEFAULT NULL,
    `Payee`                              int(12) DEFAULT NULL,
    `IsExportImportDelivery`             tinyint(1) DEFAULT NULL,
    `LastChangeDate`                     date DEFAULT NULL,
    `IssuingPlantBusinessPartner`        int(4) DEFAULT NULL,
    `IssuingPlant`                       varchar(4) DEFAULT NULL,
    `ReceivingPlantBusinessPartner`      int(12) DEFAULT NULL,
    `ReceivingPlant`                     varchar(4) DEFAULT NULL,
    `DeliverFromParty`                   int(12) DEFAULT NULL,
    `DeliverToParty`                     int(12) DEFAULT NULL,
    `TransactionCurrency`                varchar(5) DEFAULT NULL,
    `StockIsFullyConfirmed`              tinyint(1) DEFAULT NULL,
    
    PRIMARY KEY (`DeliveryDocument`),

    CONSTRAINT `DataPlatformDeliveryDocumentHeaderDataBuyer_fk` FOREIGN KEY (`Buyer`) REFERENCES `data_platform_business_partner_general_data` (`BusinessPartner`),
    CONSTRAINT `DataPlatformDeliveryDocumentHeaderDataSeller_fk` FOREIGN KEY (`Seller`) REFERENCES `data_platform_business_partner_general_data` (`BusinessPartner`),
    CONSTRAINT `DataPlatformDeliveryDocumentHeaderDataHeaderWeightUnit_fk` FOREIGN KEY (`HeaderWeightUnit`) REFERENCES `data_platform_quantity_unit_quantity_unit_data` (`QuantityUnit`),    
    CONSTRAINT `DataPlatformDeliveryDocumentHeaderDataIncoterms_fk` FOREIGN KEY (`Incoterms`) REFERENCES `data_platform_incoterms_incoterms_data` (`Incoterms`),
    CONSTRAINT `DataPlatformDeliveryDocumentHeaderBillFromParty_fk` FOREIGN KEY (`BillFromParty`) REFERENCES `data_platform_business_partner_general_data` (`BusinessPartner`),
    CONSTRAINT `DataPlatformDeliveryDocumentHeaderBillToParty_fk` FOREIGN KEY (`BillToPartry`) `data_platform_business_partner_general_data` (`BusinessPartner`),
    CONSTRAINT `DataPlatformDeliveryDocumentHeaderDataBillFromCountry_fk` FOREIGN KEY (`BillFromCountry`) REFERENCES `data_platform_country_country_data` (`Country`),
    CONSTRAINT `DataPlatformDeliveryDocumentHeaderDataBillToCountry_fk` FOREIGN KEY (`BillToCountry`) REFERENCES `data_platform_country_country_data` (`Country`),
    CONSTRAINT `DataPlatformDeliveryDocumentHeaderBillPayer_fk` FOREIGN KEY (`Payer`) REFERENCES `data_platform_business_partner_general_data` (`BusinessPartner`),
    CONSTRAINT `DataPlatformDeliveryDocumentHeaderBillPayee_fk` FOREIGN KEY (`Payee`) `data_platform_business_partner_general_data` (`BusinessPartner`),
    CONSTRAINT `DataPlatformDeliveryDocumentHeaderDataIssuingPlant_fk` FOREIGN KEY (`IssuingPlantBusinessPartner`, `IssuingPlant`) REFERENCES `data_platform_plant_general_data` (`BusinessPartner`, `Plant`),
    CONSTRAINT `DataPlatformDeliveryDocumentHeaderDataReceivingPlant_fk` FOREIGN KEY (`ReceivingPlantBusinessPartner`, `ReceivingPlant`) REFERENCES `data_platform_plant_general_data` (`BusinessPartner`, `Plant`),
    CONSTRAINT `DataPlatformDeliveryDocumentHeaderDataDeliverFromParty_fk` FOREIGN KEY (`DeliverFromParty`) REFERENCES `data_platform_business_partner_general_data` (`BusinessPartner`),
    CONSTRAINT `DataPlatformDeliveryDocumentHeaderDataDeliverToParty_fk` FOREIGN KEY (`DeliverToParty`) REFERENCES `data_platform_business_partner_general_data` (`BusinessPartner`),
    CONSTRAINT `DataPlatformDeliveryDocumentHeaderDataTransactionCurrency_fk` FOREIGN KEY (`TransactionCurrency`) REFERENCES `data_platform_currency_currency_data` (`Currency`)

) ENGINE = InnoDB
  DEFAULT CHARSET = utf8mb4;
