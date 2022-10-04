CREATE TABLE `data_platform_delivery_document_item_data`
(
    `BusinessPartner`                 varchar(10) NOT NULL,      --新規追加
    `DeliveryDocument`                varchar(10) NOT NULL,
    `DeliveryDocumentItem`            varchar(6) NOT NULL,
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
    `ProductStandardID`               varchar(18) DEFAULT NULL,
    `InventorySpecialStockType`       varchar(2) DEFAULT NULL,
    `IssuingPlant`                    varchar(4) DEFAULT NULL,  --新規追加
    `IssuingPlantStorageLocation`     varchar(4) DEFAULT NULL,  --新規追加
    `ReceivingPlant`                  varchar(4) DEFAULT NULL,  --新規追加
    `ReceivingPlantStorageLocation`   varchar(4) DEFAULT NULL,　--新規追加
    `ItemBillingBlockReason`          varchar(2) DEFAULT NULL,
    `ItemBillingIncompletionStatus`   varchar(2) DEFAULT NULL,  --新規追加
    `ItemDeliveryIncompletionStatus`  varchar(2) DEFAULT NULL,
    `ItemGrossWeight`                 varchar(13) DEFAULT NULL,
    `ItemNetWeight`                   varchar(13) DEFAULT NULL,
    `ItemWeightUnit`                  varchar(3) DEFAULT NULL,
    `ItemVolume`                      varchar(15) DEFAULT NULL,
    `ItemVolumeUnit`                  varchar(3) DEFAULT NULL,
    `ItemIsBillingRelevant`           varchar(1) DEFAULT NULL,
    `LastChangeDate`                  varchar(80) DEFAULT NULL,
    `Product`                         varchar(40) DEFAULT NULL,
    `ProductByCustomer`               varchar(35) DEFAULT NULL,
    `ProductIsBatchManaged`           varchar(1) DEFAULT NULL,
    `OrderID`                         varchar(10) DEFAULT NULL,
    `OrderItem`                       varchar(6) DEFAULT NULL,
    `OriginalDeliveryQuantity`        varchar(13) DEFAULT NULL,
    `ProductAvailabilityDate`         varchar(80) DEFAULT NULL,
    `ProfitCenter`                    varchar(10) DEFAULT NULL,
    `ReferenceDocument`               varchar(10) DEFAULT NULL,  --新規追加
    `ReferenceDocumentItem`           varchar(6) DEFAULT NULL,   --新規追加
    `BatchValidityStartDate`          varchar(80) DEFAULT NULL,  --新規追加
    `BatchValidityEndDate`            varchar(80) DEFAULT NULL,  --新規追加
    `StockType`                       varchar(1) DEFAULT NULL,
    PRIMARY KEY (`BusinessPartner`, `DeliveryDocument`, `DeliveryDocumentItem`),
    CONSTRAINT `DataPlatformDeliveryDocumentItemData_fk` FOREIGN KEY (`DeliveryDocument`) REFERENCES `data_platform_delivery_document_header_data` (`DeliveryDocument`)
) ENGINE = InnoDB
  DEFAULT CHARSET = utf8mb4;
