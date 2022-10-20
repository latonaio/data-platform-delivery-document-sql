CREATE TABLE `data_platform_delivery_document_header_partner_data`
(
    `BusinessPartner`                 int(10) NOT NULL,           -- 新規追加
    `DeliveryDocument`                int(10) NOT NULL,
    `PartnerFunction`                 varchar(2) NOT NULL,
    `PartnerFunctionBusinessPartner`  int(10) NOT NULL,           -- 名称変更
    `BusinessPartnerFullName`         varchar(200) DEFAULT NULL,  -- 新規追加
    `BusinessPartnerName`             varchar(100) DEFAULT NULL,  -- 新規追加
    `AddressID`                       int(10) DEFAULT NULL,
    PRIMARY KEY (`BusinessPartner`, `DeliveryDocument`),
    CONSTRAINT `DataPlatformDeliveryDocumentHeaderPartnerData_fk` FOREIGN KEY (`BusinessPartner`, `DeliveryDocument`) REFERENCES `data_platform_delivery_document_header_data` (`BusinessPartner`, `DeliveryDocument`)
) ENGINE = InnoDB
  DEFAULT CHARSET = utf8mb4;
