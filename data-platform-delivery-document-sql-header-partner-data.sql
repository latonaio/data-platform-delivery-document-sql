CREATE TABLE `data_platform_delivery_document_header_partner_data`
(
    `BusinessPartner`                 varchar(10) NOT NULL,      --新規追加
    `DeliveryDocument`                varchar(10) NOT NULL,
    `PartnerFunction`                 varchar(2) NOT NULL,
    `PartnerFunctionBusinessPartner`  varchar(10) NOT NULL,      --名称変更
    `AddressID`                       varchar(10) DEFAULT NULL,
    PRIMARY KEY (`BusinessPartner`, `DeliveryDocument`),
    CONSTRAINT `DataPlatformDeliveryDocumentHeaderPartnerData_fk` FOREIGN KEY (`DeliveryDocument`) REFERENCES `data_platform_delivery_document_header_data` (`DeliveryDocument`)
) ENGINE = InnoDB
  DEFAULT CHARSET = utf8mb4;
