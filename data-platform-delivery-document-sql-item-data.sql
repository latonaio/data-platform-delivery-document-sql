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

    `DistributionChannel`             varchar(2) DEFAULT NULL,
    `Division`                        varchar(2) DEFAULT NULL,
    `GLAccount`                       varchar(10) DEFAULT NULL,
    `GoodsMovementType`               varchar(3) DEFAULT NULL,
    `InternationalArticleNumber`      varchar(18) DEFAULT NULL,
    `InventorySpecialStockType`       varchar(2) DEFAULT NULL,
    `ItemBillingBlockReason`          varchar(2) DEFAULT NULL,
    `ItemDeliveryIncompletionStatus`  varchar(1) DEFAULT NULL,
    `ItemGrossWeight`                 varchar(13) DEFAULT NULL,
    `ItemNetWeight`                   varchar(13) DEFAULT NULL,
    `ItemWeightUnit`                  varchar(3) DEFAULT NULL,
    `ItemIsBillingRelevant`           varchar(1) DEFAULT NULL,
    `ItemQuantity`                    varchar(15) DEFAULT NULL,　--新規追加
    `ItemPickingIncompletionStatus`   varchar(1) DEFAULT NULL,
    `ItemVolume`                      varchar(13) DEFAULT NULL,
    `LastChangeDate`                  varchar(80) DEFAULT NULL,
    `Material`                        varchar(40) DEFAULT NULL,
    `MaterialByCustomer`              varchar(35) DEFAULT NULL,
    `MaterialFreightGroup`            varchar(4) DEFAULT NULL,
    `NumberOfSerialNumbers`           int(32) DEFAULT NULL,
    `OrderID`                         varchar(10) DEFAULT NULL,
    `OrderItem`                       varchar(6) DEFAULT NULL,
    `OriginalDeliveryQuantity`        varchar(13) DEFAULT NULL,
    `ShippingPlant`                   varchar(35) DEFAULT NULL,   --新規追加
    `StorageLocation`                 varchar(35) DEFAULT NULL,   --新規追加
    `CustomerReceivingPlant`          varchar(35) DEFAULT NULL,   --新規追加
    `Plant`                           varchar(4) DEFAULT NULL,   ?
    `ProductAvailabilityDate`         varchar(80) DEFAULT NULL,
    PRIMARY KEY (`DeliveryDocument`, `DeliveryDocumentItem`),
    CONSTRAINT `DataPlatformOutboundDeliveryItemData_fk` FOREIGN KEY (`DeliveryDocument`) REFERENCES `data_platform_outbound_delivery_header_data` (`DeliveryDocument`)
) ENGINE = InnoDB
  DEFAULT CHARSET = utf8mb4;
