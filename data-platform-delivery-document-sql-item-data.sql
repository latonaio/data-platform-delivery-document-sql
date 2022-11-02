CREATE TABLE `data_platform_delivery_document_item_data`
(
    `DeliveryDocument`                        int(16) NOT NULL,
    `DeliveryDocumentItem`                    int(6) NOT NULL,
    `DeliveryDocumentItemCategory`            varchar(4) DEFAULT NULL,
    `DeliveryDocumentItemText`                varchar(200) DEFAULT NULL,
    `Product`                                 varchar(40) DEFAULT NULL,
    `ProductStandardID`                       varchar(18) DEFAULT NULL,
    `ProductGroup`                            varchar(9) DEFAULT NULL,
    `BaseUnit`                                varchar(3) DEFAULT NULL,
    `OriginalDeliveryQuantity`                float(13) DEFAULT NULL,
    `ActualGoodsIssueDate`                    date DEFAULT NULL,
    `ActualGoodsIssueTime`                    time DEFAULT NULL,
    `ActualGoodsReceiptDate`                  date DEFAULT NULL,
    `ActualGoodsReceiptTime`                  time DEFAULT NULL,
    `ActualGoodsIssueQtyInBaseUnit`           float(15) DEFAULT NULL,
    `ActualGoodsIssueQuantity`                float(15) DEFAULT NULL,
    `ActualGoodsReceiptQtyInBaseUnit`         float(15) DEFAULT NULL,
    `ActualGoodsReceiptQuantity`              float(15) DEFAULT NULL,
    `CompleteItemDeliveryIsDefined`           tinyint(1) DEFAULT NULL,
    `StockConfirmationPartnerFunction`        varchar(40) DEFAULT NULL,
    `StockConfirmationBusinessPartner`        int(12) DEFAULT NULL,
    `StockConfirmationPlant`                  varchar(4) DEFAULT NULL,
    `StockConfirmationPolicy`                 varchar(4) DEFAULT NULL,
    `StockConfirmationStatus`                 varchar(2) DEFAULT NULL,
    `ProductionPlantPartnerFunction`          varchar(40) DEFAULT NULL,
    `ProductionPlantBusinessPartner`          varchar(4) DEFAULT NULL,
    `ProductionPlant`                         varchar(4) DEFAULT NULL,
    `ProductionPlantStorageLocation`          varchar(4) DEFAULT NULL,
    `IssuingPlantPartnerFunction`             varchar(40) DEFAULT NULL,
    `IssuingPlantBusinessPartner`             varchar(4) DEFAULT NULL,
    `IssuingPlant`                            varchar(4) DEFAULT NULL,
    `IssuingPlantStorageLocation`             varchar(4) DEFAULT NULL,
    `ReceivingPlantPartnerFunction`           varchar(40) DEFAULT NULL,
    `ReceivingPlantBusinessPartner`           varchar(4) DEFAULT NULL,
    `ReceivingPlant`                          varchar(4) DEFAULT NULL,
    `ReceivingPlantStorageLocation`           varchar(4) DEFAULT NULL,
    `ProductIsBatchManagedInProductionPlant`  tinyint(1) DEFAULT NULL,
    `ProductIsBatchManagedInIssuingPlant`     tinyint(1) DEFAULT NULL,
    `ProductIsBatchManagedInReceivingPlant`   tinyint(1) DEFAULT NULL,
    `BatchMgmtPolicyInProductionPlant`        varchar(4) DEFAULT NULL,
    `BatchMgmtPolicyInIssuingPlant`           varchar(4) DEFAULT NULL,
    `BatchMgmtPolicyInReceivingPlant`         varchar(4) DEFAULT NULL,
    `ProductionPlantBatch`                    varchar(10) DEFAULT NULL,
    `IssuingPlantBatch`                       varchar(10) DEFAULT NULL,
    `ReceivingPlantBatch`                     varchar(10) DEFAULT NULL,
    `ProductionPlantBatchValidityStartDate`   date DEFAULT NULL,
    `ProductionPlantBatchValidityEndDate`     date DEFAULT NULL,
    `IssuingPlantBatchValidityStartDate`      date DEFAULT NULL,
    `IssuingPlantBatchValidityEndDate`        date DEFAULT NULL,
    `ReceivingPlantBatchValidityStartDate`    date DEFAULT NULL,
    `ReceivingPlantBatchValidityEndDate`      date DEFAULT NULL,
    `CreationDate`                            date DEFAULT NULL,
    `CreationTime`                            time DEFAULT NULL,
    `DeliveryQuantityUnit`                    varchar(3) DEFAULT NULL,
    `ItemBillingStatus`                       varchar(2) DEFAULT NULL,
    `ItemBillingConfStatus`                   varchar(2) DEFAULT NULL,
--  `DistributionChannel`                     varchar(2) DEFAULT NULL,
--  `BusinessArea`                            varchar(4) DEFAULT NULL,
    `SalesCostGLAccount`                      varchar(10) DEFAULT NULL,
    `ReceivingGLAccount`                      varchar(10) DEFAULT NULL,
    `IssuingGoodsMovementType`                varchar(3) DEFAULT NULL,
    `ReceivingGoodsMovementType`              varchar(3) DEFAULT NULL,
    `ItemBillingBlockReason`                  tinyint(1) DEFAULT NULL,
    `ItemCompleteDeliveryIsDefined`           tinyint(1) DEFAULT NULL,
    `ItemDeliveryIncompletionStatus`          varchar(2) DEFAULT NULL,
    `ItemGrossWeight`                         float(13) DEFAULT NULL,
    `ItemNetWeight`                           float(13) DEFAULT NULL,
    `ItemWeightUnit`                          varchar(3) DEFAULT NULL,
    `ItemIsBillingRelevant`                   tinyint(1) DEFAULT NULL,
    `LastChangeDate`                          date DEFAULT NULL,
--  `ProductByCustomer`                       varchar(40) DEFAULT NULL,
    `OrderID`                                 int(16) DEFAULT NULL,
    `OrderItem`                               int(6) DEFAULT NULL,
    `OrderType`                               varchar(3) DEFAULT NULL,
    `ContractType`                            varchar(4) DEFAULT NULL,
    `OrderValidityStartDate`                  date DEFAULT NULL,
    `OrderValidityEndDate`                    date DEFAULT NULL,
    `InvoiceScheduleStartDate`                date DEFAULT NULL,
    `InvoiceScheduleEndDate`                  date DEFAULT NULL,
    `ProductAvailabilityDate`                 date DEFAULT NULL,
    `Project`                                 varchar(24) DEFAULT NULL,
--  `ProfitCenter`                            varchar(10) DEFAULT NULL,
    `ReferenceDocument`                       int(16) DEFAULT NULL,
    `ReferenceDocumentItem`                   int(6) DEFAULT NULL,
    `BPTaxClassification`                     varchar(1) NOT NULL,
    `ProductTaxClassification`                varchar(1) NOT NULL,
    `BPAccountAssignmentGroup`                varchar(2) NOT NULL,
    `ProductAccountAssignmentGroup`           varchar(2) NOT NULL,
    `TaxCode`                                 varchar(2) DEFAULT NULL,
    `TaxRate`                                 float(6) DEFAULT NULL,
    `CountryOfOrigin`                         varchar(3) DEFAULT NULL,
    
    PRIMARY KEY (`DeliveryDocument`, `DeliveryDocumentItem`),
    
    CONSTRAINT `DataPlatformDeliveryDocumentItemData_fk` FOREIGN KEY (`DeliveryDocument`) REFERENCES `data_platform_delivery_document_header_data` (`DeliveryDocument`),

    CONSTRAINT `DataPlatformDeliveryDocumentItemDataBaseUnit_fk` FOREIGN KEY (`BaseUnit`) REFERENCES `data_platform_quantity_unit_quantity_unit` (`QuantityUnit`),

    CONSTRAINT `DataPlatformDeliveryDocumentItemDataStockConfirmationPlant_fk` FOREIGN KEY (`DeliveryDocument`, `DeliveryDocumentItem`, `StockConfirmationPartnerFunction`, `StockConfirmationBusinessPartner`, `StockConfirmationPlant`) REFERENCES `data_platform_item_partner_plant_data` (`DeliveryDocument`, `DeliveryDocumentItem`, `PartnerFunction`, `BusinessPartner`, `Plant`),
    CONSTRAINT `DataPlatformDeliveryDocumentItemDataProductionPlant_fk` FOREIGN KEY (`DeliveryDocument`, `DeliveryDocumentItem`, `ProductionPlantPartnerFunction`, `ProductionPlantBusinessPartner`, `ProductionPlant`) REFERENCES `data_platform_item_partner_plant_data` (`DeliveryDocument`, `DeliveryDocumentItem`, `PartnerFunction`, `BusinessPartner`, `Plant`),
    CONSTRAINT `DataPlatformDeliveryDocumentItemDataIssuingPlant_fk` FOREIGN KEY (`DeliveryDocument`, `DeliveryDocumentItem`, `IssuingPlantPartnerFunction`, `IssuingPlantBusinessPartner`, `IssuingPlant`) REFERENCES `data_platform_item_partner_plant_data` (`DeliveryDocument`, `DeliveryDocumentItem`, `PartnerFunction`, `BusinessPartner`, `Plant`),
    CONSTRAINT `DataPlatformDeliveryDocumentItemDataReceivingPlant_fk` FOREIGN KEY (`DeliveryDocument`, `DeliveryDocumentItem`, `ReceivingPlantPartnerFunction`, `ReceivingPlantBusinessPartner`, `ReceivingPlant`) REFERENCES `data_platform_item_partner_plant_data` (`DeliveryDocument`, `DeliveryDocumentItem`, `PartnerFunction`, `BusinessPartner`, `Plant`),

    CONSTRAINT `DataPlatformDeliveryDocumentItemDataProductionPlantStorageLocation_fk` FOREIGN KEY (`ProductionPlantBusinessPartner`, `ProductionPlant`, `ProductionPlantStorageLocation`) REFERENCES `data_platform_plant_storage_location_data` (`BusinessPartner`, `Plant`, `StorageLocation`),
    CONSTRAINT `DataPlatformDeliveryDocumentItemDataIssuingPlantStorageLocation_fk` FOREIGN KEY (`IssuingPlantBusinessPartner`, `IssuingPlant`, `IssuingPlantStorageLocation`) REFERENCES `data_platform_plant_storage_location_data` (`BusinessPartner`, `Plant`, `StorageLocation`),
    CONSTRAINT `DataPlatformDeliveryDocumentItemDataReceivingPlantStorageLocation_fk` FOREIGN KEY (`ReceivingPlantBusinessPartner`, `ReceivingPlant`, `ReceivingPlantStorageLocation`) REFERENCES `data_platform_plant_storage_location_data` (`BusinessPartner`, `Plant`, `StorageLocation`),

    CONSTRAINT `DataPlatformDeliveryDocumentItemDataDeliveryQuantityUnit_fk` FOREIGN KEY (`DeliveryQuantityUnit`) REFERENCES `data_platform_quantity_unit_quantity_unit_data` (`QuantityUnit`),
    CONSTRAINT `DataPlatformDeliveryDocumentItemDataProduct_fk` FOREIGN KEY (`Product`) REFERENCES `data_platform_product_master_general_data` (`Product`),
    CONSTRAINT `DataPlatformDeliveryDocumentItemDataOrderItem_fk` FOREIGN KEY (`OrderID`, `OrderItem`) REFERENCES `data_platform_orders_item_data` (`OrderID`, `OrderItem`),
    CONSTRAINT `DataPlatformDeliveryDocumentItemDataCountryOfOrigin_fk` FOREIGN KEY (`CountryOfOrigin`) REFERENCES `data_platform_country_country_data` (`Country`)

) ENGINE = InnoDB
  DEFAULT CHARSET = utf8mb4;
