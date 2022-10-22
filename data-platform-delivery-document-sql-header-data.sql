CREATE TABLE `data_platform_delivery_document_header_data`     -- 名称変更
(
    `BusinessPartner`                int(10) NOT NULL,         -- 新規追加
    `DeliveryDocument`               int(10) NOT NULL,         -- 名称変更
    `OrderID`                        int(10) DEFAULT NULL,     -- 名称変更
    `OrderType`                      varchar(3) DEFAULT NULL,  -- 新規追加
    `ContractType`                   varchar(4) DEFAULT NULL,  -- 新規追加
    `OrderValidityStartDate`         varchar(80) DEFAULT NULL, -- 新規追加
    `OrderValidityEndDate`           varchar(80) DEFAULT NULL, -- 新規追加
    `InvoiceScheduleStartDate`       varchar(80) DEFAULT NULL, -- 新規追加
    `InvoiceScheduleEndDate`         varchar(80) DEFAULT NULL, -- 新規追加
    `IssuingLocationTimeZone`        varchar(3) DEFAULT NULL,  -- 新規追加
    `ReceivingLocationTimeZone`      varchar(3) DEFAULT NULL,  -- 新規追加
    `DocumentDate`                   varchar(80) DEFAULT NULL,
    `PlannedGoodsIssueDate`          varchar(80) DEFAULT NULL, -- 新規追加
    `PlannedGoodsIssueTime`          varchar(80) DEFAULT NULL, -- 新規追加
    `PlannedGoodsReceiptDate`        varchar(80) DEFAULT NULL, -- 新規追加
    `PlannedGoodsReceiptTime`        varchar(80) DEFAULT NULL, -- 新規追加
    `BillingDocumentDate`            varchar(80) DEFAULT NULL,
    `CompleteDeliveryIsDefined`      tinyint(1) DEFAULT NULL,
    `OverallDeliveryStatus`          varchar(2) DEFAULT NULL,
    `CreationDate`                   varchar(80) DEFAULT NULL,
    `CreationTime`                   varchar(80) DEFAULT NULL,
    `IssuingBlockReason`             tinyint(1) DEFAULT NULL,
    `ReceivingBlockReason`           tinyint(1) DEFAULT NULL,
    `DeliveryDocumentBySupplier`     varchar(35) DEFAULT NULL,
    `GoodsIssueOrReceiptSlipNumber`  varchar(35) DEFAULT NULL,
    `HeaderBillgIncompletionStatus`  varchar(1) DEFAULT NULL,
    `HeaderBillingBlockReason`       tinyint(1) DEFAULT NULL,
    `HeaderGrossWeight`              varchar(13) DEFAULT NULL,
    `HeaderNetWeight`                varchar(13) DEFAULT NULL,
    `HeaderVolume`                   varchar(13) DEFAULT NULL,
    `HeaderVolumeUnit`               varchar(3) DEFAULT NULL,
    `HeaderWeightUnit`               varchar(3) DEFAULT NULL,
    `Incoterms`                      varchar(3) DEFAULT NULL,  -- 名称変更
    `IsExportImportDelivery`         tinyint(1) DEFAULT NULL,  -- 名称変更
    `LastChangeDate`                 varchar(80) DEFAULT NULL,
    `IssuingPlant`                   varchar(4) DEFAULT NULL,  -- 新規追加
    `ReceivingPlant`                 varchar(4) DEFAULT NULL,  -- 新規追加
    `IssuingPlantStorageLocation`    varchar(4) DEFAULT NULL,  -- 新規追加
    `ReceivingPlantStorageLocation`  varchar(4) DEFAULT NULL,  -- 新規追加
    `SalesOrganization`              varchar(4) DEFAULT NULL,
    `PurchaseOrganization`           varchar(4) DEFAULT NULL,  -- 新規追加
    `Customer`                       int(10) DEFAULT NULL,     -- 名称変更
    `Supplier`                       int(10) DEFAULT NULL,     -- 名称変更
    `DeliverToParty`                 int(10) DEFAULT NULL,     -- 名称変更
    `DeliverFromParty`               int(10) DEFAULT NULL,     -- 名称変更
    `DeliverToPartyLanguage`         varchar(2) DEFAULT NULL,  -- 新規追加
    `DeliverFromPartyLanguage`       varchar(2) DEFAULT NULL,  -- 新規追加
    `TransactionCurrency`            varchar(5) DEFAULT NULL,
    `OverallDelivReltdBillgStatus`   varchar(2) DEFAULT NULL,
    PRIMARY KEY (`BusinessPartner`, `DeliveryDocument`)
) ENGINE = InnoDB
  DEFAULT CHARSET = utf8mb4;
