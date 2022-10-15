CREATE TABLE `data_platform_deliintvery_document_header_data`
(
    `BusinessPartner`                int(10) NOT NULL,         -- 新規追加
    `DeliveryDocument`               int(10) NOT NULL,
    `OrderID`                        int(10) DEFAULT NULL,     -- 名称変更
    `OrderType`                      varchar(3) DEFAULT NULL,  -- 新規追加
    `IssuingLocationTimeZone`        varchar(3) DEFAULT NULL,  -- 新規追加
    `ReceivingLocationTimeZone`      varchar(3) DEFAULT NULL,  -- 新規追加
    `DocumentDate`                   varchar(80) DEFAULT NULL,
    `PlannedGIOrGRDate`              varchar(80) DEFAULT NULL,  -- 名称変更
    `ActualGoodsMovementDate`        varchar(80) DEFAULT NULL,
    `ActualGoodsMovementTime`        varchar(80) DEFAULT NULL,
    `BillingDocumentDate`            varchar(80) DEFAULT NULL,
    `CompleteDeliveryIsDefined`      tinyint(1) DEFAULT NULL,
    `ConfirmationTime`               varchar(80) DEFAULT NULL,
    `CreationDate`                   varchar(80) DEFAULT NULL,
    `CreationTime`                   varchar(80) DEFAULT NULL,
    `DeliveryBlockReason`            int(1) DEFAULT NULL,
    `DeliveryDate`                   varchar(80) DEFAULT NULL,
    `DeliveryDocumentBySupplier`     varchar(35) DEFAULT NULL,
    `DeliveryPriority`               varchar(2) DEFAULT NULL,
    `DeliveryTime`                   varchar(80) DEFAULT NULL,
    `GoodsIssueOrReceiptSlipNumber`  varchar(10) DEFAULT NULL,
    `GoodsIssueOrReceiptTime`        varchar(80) DEFAULT NULL,  -- 名称変更
    `HeaderBillgIncompletionStatus`  varchar(1) DEFAULT NULL,
    `HeaderBillingBlockReason`       tinyint(1) DEFAULT NULL,
    `HeaderGrossWeight`              varchar(13) DEFAULT NULL,
    `HeaderNetWeight`                varchar(13) DEFAULT NULL,
    `HeaderVolume`                   varchar(13) DEFAULT NULL,
    `HeaderVolumeUnit`               varchar(3) DEFAULT NULL,
    `HeaderWeightUnit`               varchar(3) DEFAULT NULL,
    `Incoterms`                      varchar(3) DEFAULT NULL,  -- 名称変更
    `IsExportDelivery`               tinyint(1) DEFAULT NULL,
    `LastChangeDate`                 varchar(80) DEFAULT NULL,
    `IssuingPlant`                   varchar(4) DEFAULT NULL,  -- 新規追加
    `ReceivingPlant`                 varchar(4) DEFAULT NULL,  -- 新規追加
    `IssuingPlantStorageLocation`    varchar(4) DEFAULT NULL,  -- 新規追加
    `ReceivingPlantStorageLocation`  varchar(4) DEFAULT NULL,  -- 新規追加
    `District`                       varchar(6) DEFAULT NULL,  -- 新規追加
    `SalesOrganization`              varchar(4) DEFAULT NULL,
    `PurchaseOrganization`           varchar(4) DEFAULT NULL,  -- 新規追加
    `SoldToParty`                    varchar(10) DEFAULT NULL,
    `SupplyFromParty`                varchar(10) DEFAULT NULL, -- 名称変更
    `DeliverToParty`                 varchar(10) DEFAULT NULL, -- 名称変更
    `TransactionCurrency`            varchar(5) DEFAULT NULL,
    `OverallDelivConfStatus`         varchar(2) DEFAULT NULL,
    `OverallDelivReltdBillgStatus`   varchar(2) DEFAULT NULL,
    PRIMARY KEY (`BusinessPartner`, `DeliveryDocument`)
) ENGINE = InnoDB
  DEFAULT CHARSET = utf8mb4;
