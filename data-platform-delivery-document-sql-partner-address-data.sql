CREATE TABLE `data_platform_delivery_document_partner_address_data`
(
    `BusinessPartner`         int(10) NOT NULL,      --新規追加
    `DeliveryDocument`        int(10) NOT NULL,      --新規追加
    `AddressID`               int(10) NOT NULL,
    `BusinessPartnerName`     varchar(100) DEFAULT NULL,  --名称変更
    `Country`                 varchar(3) DEFAULT NULL,
    `Region`                  varchar(3) DEFAULT NULL,
    `District`                varchar(6) DEFAULT NULL,   --新規追加
    `StreetName`              varchar(60) DEFAULT NULL,
    `CityName`                varchar(40) DEFAULT NULL,
    `PostalCode`              varchar(10) DEFAULT NULL,
    `Language`                varchar(2) DEFAULT NULL,   --名称変更
    PRIMARY KEY (`BusinessPartner`, `DeliveryDocument`, `AddressID`),
    CONSTRAINT `DataPlatformDeliveryDocumentPartnerAdressData_fk` FOREIGN KEY (`DeliveryDocument`) REFERENCES `data_platform_delivery_document_header_data` (`DeliveryDocument`)
) ENGINE = InnoDB
  DEFAULT CHARSET = utf8mb4;
