CREATE TABLE `data_platform_delivery_document_item_data`
(
    `BusinessPartner`                 int(10) NOT NULL,          -- 新規追加
    `DeliveryDocument`                int(10) NOT NULL,
    `DeliveryDocumentItem`            int(6) NOT NULL,
    `DeliveryDocumentItemCategory`    varchar(4) DEFAULT NULL,
    `DeliveryDocumentItemText`        varchar(40) DEFAULT NULL,
    `ActualDeliveredQtyInBaseUnit`    varchar(15) DEFAULT NULL,
    `ActualDeliveryQuantity`          varchar(15) DEFAULT NULL,
    `BaseUnit`                        varchar(3) DEFAULT NULL,
    `Batch`                           varchar(10) DEFAULT NULL,
    `BusinessArea`                    varchar(4) DEFAULT NULL,
    `CreationDate`                    varchar(80) DEFAULT NULL,
    `CreationTime`                    varchar(80) DEFAULT NULL,
    `DeliveryQuantityUnit`            varchar(3) DEFAULT NULL,
    `DeliveryRelatedBillingStatus`    varchar(2) DEFAULT NULL,
    `DistributionChannel`             varchar(2) DEFAULT NULL,
    `Division`                        varchar(2) DEFAULT NULL,
    `GLAccount`                       varchar(10) DEFAULT NULL,
    `GoodsMovementType`               varchar(3) DEFAULT NULL,
    `ProductStandardID`               int(18) DEFAULT NULL,
    `InventorySpecialStockType`       varchar(2) DEFAULT NULL,
    `IssuingPlant`                    varchar(4) DEFAULT NULL,  -- 新規追加
    `IssuingPlantStorageLocation`     varchar(4) DEFAULT NULL,  -- 新規追加
    `ReceivingPlant`                  varchar(4) DEFAULT NULL,  -- 新規追加
    `ReceivingPlantStorageLocation`   varchar(4) DEFAULT NULL,　-- 新規追加
    `ItemBillingBlockReason`          tinyint(1) DEFAULT NULL,
    `ItemBillingIncompletionStatus`   varchar(2) DEFAULT NULL,  -- 新規追加
    `ItemDeliveryIncompletionStatus`  varchar(2) DEFAULT NULL,
    `ItemGrossWeight`                 varchar(13) DEFAULT NULL,
    `ItemNetWeight`                   varchar(13) DEFAULT NULL,
    `ItemWeightUnit`                  varchar(3) DEFAULT NULL,
    `ItemVolume`                      varchar(15) DEFAULT NULL,
    `ItemVolumeUnit`                  varchar(3) DEFAULT NULL,
    `ItemIsBillingRelevant`           int(1) DEFAULT NULL,
    `LastChangeDate`                  varchar(80) DEFAULT NULL,
    `Product`                         varchar(40) DEFAULT NULL,  -- 名称変更
    `ProductByCustomer`               varchar(40) DEFAULT NULL,  -- 名称変更
    `ProductIsBatchManaged`           varchar(1) DEFAULT NULL,   -- 名称変更
    `OrderID`                         int(10) DEFAULT NULL,      -- 名称変更
    `OrderItem`                       int(6) DEFAULT NULL,       -- 名称変更
    `OriginalDeliveryQuantity`        varchar(13) DEFAULT NULL,
    `ProductAvailabilityDate`         varchar(80) DEFAULT NULL,
    `Project`                         varchar(24) DEFAULT NULL,  -- 新規追加
    `ProfitCenter`                    varchar(10) DEFAULT NULL,
    `ReferenceDocument`               int(10) DEFAULT NULL,      -- 新規追加
    `ReferenceDocumentItem`           int(6) DEFAULT NULL,       -- 新規追加
    `BatchValidityStartDate`          varchar(80) DEFAULT NULL,  -- 新規追加
    `BatchValidityEndDate`            varchar(80) DEFAULT NULL,  -- 新規追加
    `StockType`                       varchar(2) DEFAULT NULL,
    `TaxCode`                         varchar(2) DEFAULT NULL,   -- 新規追加
    `CountryOfOrigin`                 varchar(3) DEFAULT NULL,   -- 新規追加
    PRIMARY KEY (`BusinessPartner`, `DeliveryDocument`, `DeliveryDocumentItem`),
    CONSTRAINT `DataPlatformDeliveryDocumentItemData_fk` FOREIGN KEY (`BusinessPartner`, `DeliveryDocument`) REFERENCES `data_platform_delivery_document_item_data` (`BusinessPartner`, `DeliveryDocument`)
) ENGINE = InnoDB
  DEFAULT CHARSET = utf8mb4;
