CREATE TABLE `data_platform_delivery_document_header_data`     -- 名称変更
(
--  `BusinessPartner`                int(10) NOT NULL,         -- 新規追加
    `DeliveryDocument`               int(16) NOT NULL,         -- 名称変更
    `OrderID`                        int(16) DEFAULT NULL,     -- 名称変更
    `OrderType`                      varchar(3) DEFAULT NULL,  -- 新規追加
    `ContractType`                   varchar(4) DEFAULT NULL,  -- 新規追加
    `OrderValidityStartDate`         date DEFAULT NULL,        -- 新規追加
    `OrderValidityEndDate`           date DEFAULT NULL,        -- 新規追加
    `InvoiceScheduleStartDate`       date DEFAULT NULL,        -- 新規追加
    `InvoiceScheduleEndDate`         date DEFAULT NULL,        -- 新規追加
    `IssuingLocationTimeZone`        varchar(3) DEFAULT NULL,  -- 新規追加
    `ReceivingLocationTimeZone`      varchar(3) DEFAULT NULL,  -- 新規追加
    `DocumentDate`                   date DEFAULT NULL,
    `PlannedGoodsIssueDate`          date DEFAULT NULL,        -- 新規追加
    `PlannedGoodsIssueTime`          time DEFAULT NULL,        -- 新規追加
    `PlannedGoodsReceiptDate`        date DEFAULT NULL,        -- 新規追加
    `PlannedGoodsReceiptTime`        time DEFAULT NULL,        -- 新規追加
    `BillingDocumentDate`            date DEFAULT NULL,
    `CompleteDeliveryIsDefined`      tinyint(1) DEFAULT NULL,
    `OverallDeliveryStatus`          varchar(2) DEFAULT NULL,
    `CreationDate`                   date DEFAULT NULL,
    `CreationTime`                   time DEFAULT NULL,
    `IssuingBlockReason`             tinyint(1) DEFAULT NULL,
    `ReceivingBlockReason`           tinyint(1) DEFAULT NULL,
--  `DeliveryDocumentBySupplier`     varchar(35) DEFAULT NULL,
    `GoodsIssueOrReceiptSlipNumber`  varchar(35) DEFAULT NULL,
    `HeaderBillgIncompletionStatus`  varchar(1) DEFAULT NULL,
    `HeaderBillingBlockReason`       tinyint(1) DEFAULT NULL,
    `HeaderGrossWeight`              float(13) DEFAULT NULL,
    `HeaderNetWeight`                float(13) DEFAULT NULL,
    `HeaderVolume`                   float(13) DEFAULT NULL,
    `HeaderVolumeUnit`               varchar(3) DEFAULT NULL,
    `HeaderWeightUnit`               varchar(3) DEFAULT NULL,
    `Incoterms`                      varchar(3) DEFAULT NULL,  -- 名称変更
    `IsExportImportDelivery`         tinyint(1) DEFAULT NULL,  -- 名称変更
    `LastChangeDate`                 date DEFAULT NULL,
    `IssuingPlantBusinessPartner`    varchar(4) DEFAULT NULL,  -- 新規追加
    `IssuingPlant`                   varchar(4) DEFAULT NULL,  -- 新規追加
    `ReceivingPlantBusinessPartner`  varchar(4) DEFAULT NULL,  -- 新規追加
    `ReceivingPlant`                 varchar(4) DEFAULT NULL,  -- 新規追加
--  `SalesOrganization`              varchar(4) DEFAULT NULL,
--  `PurchaseOrganization`           varchar(4) DEFAULT NULL,  -- 新規追加
--  `Customer`                       int(10) DEFAULT NULL,     -- 名称変更
--  `Supplier`                       int(10) DEFAULT NULL,     -- 名称変更
    `DeliverToParty`                 int(12) DEFAULT NULL,     -- 名称変更
    `DeliverFromParty`               int(12) DEFAULT NULL,     -- 名称変更
    `DeliverToPartyLanguage`         varchar(2) DEFAULT NULL,  -- 新規追加
    `DeliverFromPartyLanguage`       varchar(2) DEFAULT NULL,  -- 新規追加
    `TransactionCurrency`            varchar(5) DEFAULT NULL,
    `OverallDelivReltdBillgStatus`   varchar(2) DEFAULT NULL,
    
    PRIMARY KEY (`DeliveryDocument`),
    
    CONSTRAINT `DataPlatformDeliveryDocumentHeaderDataOrderID_fk` FOREIGN KEY (`OrderID`, `OrderType`, `ContractType`, `OrderValidityStartDate`, `OrderValidityEndDate`, `InvoiceScheduleStartDate`, `InvoiceScheduleEndDate`, `TransactionCurrency`) REFERENCES `data_platform_orders_header_data` (`OrderID`, `OrderType`, `ContractType`, `ValidityStartDate`, `ValidityEndDate`, `InvoiceScheduleStartDate`, `InvoiceScheduleEndDate`, `TransactionCurrency`),
    CONSTRAINT `DataPlatformDeliveryDocumentHeaderDataIncoterms_fk` FOREIGN KEY (`Incoterms`) REFERENCES `data_platform_incoterms_incoterms_data` (`Incoterms`),
    CONSTRAINT `DataPlatformDeliveryDocumentHeaderDataIssuingPlant_fk` FOREIGN KEY (`IssuingPlantBusinessPartner`, `IssuingPlant`) REFERENCES `data_platform_plant_general_data` (`BusinessPartner`, `Plant`),
    CONSTRAINT `DataPlatformDeliveryDocumentHeaderDataReceivingPlant_fk` FOREIGN KEY (`ReceivingPlantBusinessPartner`, `ReceivingPlant`) REFERENCES `data_platform_plant_general_data` (`BusinessPartner`, `Plant`),
    CONSTRAINT `DataPlatformDeliveryDocumentHeaderDataDeliverToParty_fk` FOREIGN KEY (`DeliverToParty`, `DeliverFromParty`) REFERENCES `data_platform_orders_header_partner_data` (`BusinessPartner`, `BusinessPartner`),
    CONSTRAINT `DataPlatformDeliveryDocumentHeaderDataDeliverToPartyLanguage_fk` FOREIGN KEY (`DeliverToPartyLanguage`, `DeliverFromPartyLanguage`) REFERENCES `data_platform_business_partner_general_data` (`Language`, `Language`),

) ENGINE = InnoDB
  DEFAULT CHARSET = utf8mb4;
