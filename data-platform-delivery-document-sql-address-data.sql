CREATE TABLE `data_platform_delivery_document_address_data`
(
--  `BusinessPartner`         int(10) NOT NULL,           -- 新規追加
    `DeliveryDocument`        int(16) NOT NULL,           -- 新規追加
    `AddressID`               int(12) NOT NULL,
    `PostalCode`              varchar(10) DEFAULT NULL,
    `LocalRegion`             varchar(3) DEFAULT NULL,    -- 名称変更
    `Country`                 varchar(3) DEFAULT NULL,
    `District`                varchar(6) DEFAULT NULL,    -- 新規追加
    `StreetName`              varchar(200) DEFAULT NULL,
    `CityName`                varchar(200) DEFAULT NULL,
    `Builiding`               varchar(100) DEFAULT NULL,  -- 新規追加
    `Floor`                   int(4) DEFAULT NULL,        -- 新規追加
    `Room`                    int(8) DEFAULT NULL,        -- 新規追加
    
    PRIMARY KEY (`DeliveryDocument`, `AddressID`),
    
    CONSTRAINT `DataPlatformDeliveryDocumentAddressData_fk` FOREIGN KEY (`DeliveryDocument`) REFERENCES `data_platform_delivery_document_header_data` (`DeliveryDocument`),
    CONSTRAINT `DataPlatformDeliveryDocumentAddressDataAddressID_fk` FOREIGN KEY (`AddressID`, `PostalCode`, `LocalRegion`, `Country`, `District`, `StreetName`, `CityName`, `Builiding`, `Floor`, `Room`) REFERENCES `data_platform_delivery_document_address_data` (`AddressID`, `PostalCode`, `LocalRegion`, `Country`, `District`, `StreetName`, `CityName`, `Builiding`, `Floor`, `Room`)

) ENGINE = InnoDB
  DEFAULT CHARSET = utf8mb4;
