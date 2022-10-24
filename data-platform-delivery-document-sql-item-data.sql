CREATE TABLE `data_platform_delivery_document_item_data`
(
--  `BusinessPartner`                         int(10) NOT NULL,             -- 新規追加
    `DeliveryDocument`                        int(16) NOT NULL,
    `DeliveryDocumentItem`                    int(6) NOT NULL,
    `DeliveryDocumentItemCategory`            varchar(4) DEFAULT NULL,
    `DeliveryDocumentItemText`                varchar(100) DEFAULT NULL,
    `ActualGoodsIssueDate`                    date DEFAULT NULL,            -- 新規追加
    `ActualGoodsIssueTime`                    time DEFAULT NULL,            -- 新規追加
    `ActualGoodsReceiptDate`                  date DEFAULT NULL,            -- 新規追加
    `ActualGoodsReceiptTime`                  time DEFAULT NULL,            -- 新規追加
    `ActualGoodsIssueQtyInBaseUnit`           float(15) DEFAULT NULL,       -- 名称変更
    `ActualGoodsIssueQuantity`                float(15) DEFAULT NULL,       -- 名称変更
    `ActualGoodsReceiptQtyInBaseUnit`         float(15) DEFAULT NULL,       -- 新規追加
    `ActualGoodsReceiptQuantity`              float(15) DEFAULT NULL,       -- 新規追加
    `CompleteItemDeliveryIsDefined`           tinyint(1) DEFAULT NULL,      -- 新規追加
    `BaseUnit`                                varchar(3) DEFAULT NULL,
    `ProductionPlantBusinessPartner`          varchar(4) DEFAULT NULL,      -- 新規追加
    `ProductionPlant`                         varchar(4) DEFAULT NULL,      -- 新規追加
    `ProductionPlantStorageLocation`          varchar(4) DEFAULT NULL,      -- 新規追加
    `IssuingPlantBusinessPartner`             varchar(4) DEFAULT NULL,      -- 新規追加
    `IssuingPlant`                            varchar(4) DEFAULT NULL,      -- 新規追加
    `IssuingPlantStorageLocation`             varchar(4) DEFAULT NULL,      -- 新規追加
    `ReceivingPlantBusinessPartner`           varchar(4) DEFAULT NULL,      -- 新規追加
    `ReceivingPlant`                          varchar(4) DEFAULT NULL,      -- 新規追加
    `ReceivingPlantStorageLocation`           varchar(4) DEFAULT NULL,　    -- 新規追加
    `ProductIsBatchManagedInProductionPlant`  tinyint(1) DEFAULT NULL,　    -- 新規追加
    `ProductIsBatchManagedInIssuingPlant`     tinyint(1) DEFAULT NULL,　    -- 新規追加
    `ProductIsBatchManagedInReceivingPlant`   tinyint(1) DEFAULT NULL,　    -- 新規追加
    `BatchMgmtPolicyInProductionPlant`        varchar(4) DEFAULT NULL,　    -- 新規追加
    `BatchMgmtPolicyInIssuingPlant`           varchar(4) DEFAULT NULL,　    -- 新規追加
    `BatchMgmtPolicyInReceivingPlant`         varchar(4) DEFAULT NULL,　    -- 新規追加
    `ProductionPlantBatch`                    varchar(10) DEFAULT NULL,　    -- 新規追加
    `IssuingPlantBatch`                       varchar(10) DEFAULT NULL,　    -- 新規追加
    `ReceivingPlantBatch`                     varchar(10) DEFAULT NULL,　    -- 新規追加
    `ProductionPlantBatchValidityStartDate`   date DEFAULT NULL,　           -- 新規追加
    `ProductionPlantBatchValidityEndDate`     date DEFAULT NULL,             -- 新規追加
    `IssuingPlantBatchValidityStartDate`      date DEFAULT NULL,　           -- 新規追加
    `IssuingPlantBatchValidityEndDate`        date DEFAULT NULL,　           -- 新規追加
    `ReceivingPlantBatchValidityStartDate`    date DEFAULT NULL,　           -- 新規追加
    `ReceivingPlantBatchValidityEndDate`      date DEFAULT NULL,　           -- 新規追加
    `CreationDate`                            date DEFAULT NULL,
    `CreationTime`                            time DEFAULT NULL,
    `DeliveryQuantityUnit`                    varchar(3) DEFAULT NULL,
    `DeliveryRelatedBillingStatus`            varchar(2) DEFAULT NULL,
--  `DistributionChannel`                     varchar(2) DEFAULT NULL,
--  `BusinessArea`                            varchar(4) DEFAULT NULL,
    `SalesCostGLAccount`                      varchar(10) DEFAULT NULL,
    `ReceivingGLAccount`                      varchar(10) DEFAULT NULL,
    `IssuingGoodsMovementType`                varchar(3) DEFAULT NULL,
    `ReceivingGoodsMovementType`              varchar(3) DEFAULT NULL,
    `ProductStandardID`                       varchar(18) DEFAULT NULL,
    `ItemBillingBlockReason`                  tinyint(1) DEFAULT NULL,
    `ItemBillingIncompletionStatus`           varchar(2) DEFAULT NULL,       -- 新規追加
    `ItemDeliveryIncompletionStatus`          varchar(2) DEFAULT NULL,
    `ItemGrossWeight`                         float(13) DEFAULT NULL,
    `ItemNetWeight`                           float(13) DEFAULT NULL,
    `ItemWeightUnit`                          varchar(3) DEFAULT NULL,
    `ItemVolume`                              float(15) DEFAULT NULL,
    `ItemVolumeUnit`                          varchar(3) DEFAULT NULL,
    `ItemIsBillingRelevant`                   int(1) DEFAULT NULL,
    `LastChangeDate`                          date DEFAULT NULL,
    `Product`                                 varchar(40) DEFAULT NULL,      -- 名称変更
--  `ProductByCustomer`                       varchar(40) DEFAULT NULL,      -- 名称変更
    `OrderID`                                 int(16) DEFAULT NULL,          -- 名称変更
    `OrderItem`                               int(6) DEFAULT NULL,           -- 名称変更
--  `OrderType`                               varchar(3) DEFAULT NULL,       -- 新規追加
    `ContractType`                            varchar(4) DEFAULT NULL,       -- 新規追加
    `OrderValidityStartDate`                  date DEFAULT NULL,             -- 新規追加
    `OrderValidityEndDate`                    date DEFAULT NULL,             -- 新規追加
    `InvoiceScheduleStartDate`                date DEFAULT NULL,             -- 新規追加
    `InvoiceScheduleEndDate`                  date DEFAULT NULL,             -- 新規追加
    `OriginalDeliveryQuantity`                float(13) DEFAULT NULL,
    `ProductAvailabilityDate`                 date DEFAULT NULL,
    `Project`                                 varchar(24) DEFAULT NULL,      -- 新規追加
--  `ProfitCenter`                            varchar(10) DEFAULT NULL,
    `ReferenceDocument`                       int(16) DEFAULT NULL,          -- 新規追加
    `ReferenceDocumentItem`                   int(6) DEFAULT NULL,           -- 新規追加
    `TaxCode`                                 varchar(2) DEFAULT NULL,       -- 新規追加
    `TaxRate`                                 varchar(6) DEFAULT NULL,       -- 新規追加
    `CountryOfOrigin`                         varchar(3) DEFAULT NULL,       -- 新規追加
    
    PRIMARY KEY (`DeliveryDocument`, `DeliveryDocumentItem`),
    
    CONSTRAINT `DataPlatformDeliveryDocumentItemData_fk` FOREIGN KEY (`DeliveryDocument`) REFERENCES `data_platform_delivery_document_header_data` (`DeliveryDocument`),
    CONSTRAINT `DataPlatformDeliveryDocumentItemDataDeliveryDocumentItemCategory_fk` FOREIGN KEY (`DeliveryDocumentItemCategory`, `DeliveryDocumentItemText`) REFERENCES `data_platform_orders_item_data` (`OrderItemCategory`, `OrderItemText`),
    CONSTRAINT `DataPlatformDeliveryDocumentItemDataActualGoodsIssueQtyInBaseUnit_fk` FOREIGN KEY (`ActualGoodsIssueQtyInBaseUnit`, `ActualGoodsIssueQuantity`) REFERENCES `data_platform_orders_item_data` (`OrderQuantity`, `OrderQuantity`),
    CONSTRAINT `DataPlatformDeliveryDocumentItemDataActualGoodsReceiptQtyInBaseUnit_fk` FOREIGN KEY (`ActualGoodsReceiptQtyInBaseUnit`, `ActualGoodsReceiptQuantity`) REFERENCES `data_platform_orders_item_data` (`OrderQuantity`, `OrderQuantity`),
    CONSTRAINT `DataPlatformDeliveryDocumentItemDataBaseUnit_fk` FOREIGN KEY (`BaseUnit`) REFERENCES `data_platform_orders_item_data` (`OrderQuantityUnit`),
    CONSTRAINT `DataPlatformDeliveryDocumentItemDataIssuingPlant_fk` FOREIGN KEY (`IssuingPlant`, `ReceivingPlant`) REFERENCES `data_platform_delivery_document_header_data` (`IssuingPlant`, `ReceivingPlant`),
    CONSTRAINT `DataPlatformDeliveryDocumentItemDataProductionPlantStorageLocation_fk` FOREIGN KEY (`ProductionPlantStorageLocation`, `IssuingPlantStorageLocation`, `ReceivingPlantStorageLocation`) REFERENCES `data_platform_orders_item_data` (`ProductionPlantStorageLocation`, `IssuingPlantStorageLocation`, `ReceivingPlantStorageLocation`),
    CONSTRAINT `DataPlatformDeliveryDocumentItemDataProductIsBatchManagedInProductionPlant_fk` FOREIGN KEY (`ProductIsBatchManagedInProductionPlant`, `ProductIsBatchManagedInIssuingPlant`, `ProductIsBatchManagedInReceivingPlant`, `BatchMgmtPolicyInProductionPlant`, `BatchMgmtPolicyInIssuingPlant`, `BatchMgmtPolicyInReceivingPlant`) REFERENCES `data_platform_product_master_bp_plant_data` (`IsBatchManagementRequired`, `IsBatchManagementRequired`, `IsBatchManagementRequired`, `BatchManagementPolicy`, `BatchManagementPolicy`, `BatchManagementPolicy`),
    CONSTRAINT `DataPlatformDeliveryDocumentItemDataDeliveryQuantityUnit_fk` FOREIGN KEY (`DeliveryQuantityUnit`) REFERENCES `data_platform_orders_item_data` (`OrderQuantityUnit`),
    CONSTRAINT `DataPlatformDeliveryDocumentItemDataProductStandardID_fk` FOREIGN KEY (`ProductStandardID`) REFERENCES `data_platform_orders_item_data` (`ProductStandardID`),
    CONSTRAINT `DataPlatformDeliveryDocumentItemDataItemGrossWeight_fk` FOREIGN KEY (`ItemGrossWeight`, `ItemNetWeight`, `ItemWeightUnit`, `ItemVolume`, `ItemVolumeUnit`) REFERENCES `data_platform_orders_item_data` (`ItemGrossWeight`, `ItemNetWeight`, `ItemWeightUnit`, `ItemVolume`, `ItemVolumeUnit`),
    CONSTRAINT `DataPlatformDeliveryDocumentItemDataProduct_fk` FOREIGN KEY (`Product`) REFERENCES `data_platform_product_master_general_data` (`Product`),
    CONSTRAINT `DataPlatformDeliveryDocumentItemDataOrderID_fk` FOREIGN KEY (`OrderID`) REFERENCES `data_platform_delivery_document_header_data` (`OrderID`),
    CONSTRAINT `DataPlatformDeliveryDocumentItemDataOrderItem_fk` FOREIGN KEY (`OrderItem`) REFERENCES `data_platform_orders_item_data` (`OrderItem`),
    CONSTRAINT `DataPlatformDeliveryDocumentItemDataContractType_fk` FOREIGN KEY (`ContractType`) REFERENCES `data_platform_delivery_document_header_data` (`ContractType`),
    CONSTRAINT `DataPlatformDeliveryDocumentItemDataOrderVaridityStartDate_fk` FOREIGN KEY (`OrderVaridityStartDate`, `OrderValidityEndDate`) REFERENCES `data_platform_delivery_document_header_data` (`OrderVaridityStartDate`, `OrderValidityEndDate`),
    CONSTRAINT `DataPlatformDeliveryDocumentItemDataInvoiceScheduleStartDate_fk` FOREIGN KEY (`InvoiceScheduleStartDate`, `InvoiceScheduleEndDate`) REFERENCES `data_platform_delivery_document_header_data` (`InvoiceScheduleStartDate`, `InvoiceScheduleEndDate`),
    CONSTRAINT `DataPlatformDeliveryDocumentItemDataProject_fk` FOREIGN KEY (`Project`) REFERENCES `data_platform_orders_header_data` (`Project`),
    CONSTRAINT `DataPlatformDeliveryDocumentItemDataTaxCode_fk` FOREIGN KEY (`TaxCode`, `TaxRate`) REFERENCES `data_platform_orders_item_data` (`TaxCode`, `TaxRate`),
    CONSTRAINT `DataPlatformDeliveryDocumentItemDataCountryOfOrigin_fk` FOREIGN KEY (`CountryOfOrigin`) REFERENCES `data_platform_orders_item_data` (`CountryOfOrigin`)

) ENGINE = InnoDB
  DEFAULT CHARSET = utf8mb4;
