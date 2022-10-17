CREATE TABLE `data_platform_delivery_document_header_pdf_data`           -- 新規追加
(
  `BusinessPartner`                int(10) NOT NULL,          -- 新規追加
  `DeliveryDocument`               int(10) NOT NULL,          -- 新規追加
  `DocType`                        varchar(4) NOT NULL,       -- 新規追加
  `DocID`                          int(20) NOT NULL,          -- 新規追加
  `DocVersionID`                   int(4) NOT NULL,           -- 新規追加
  `FileName`                       varchar(200) DEFAULT NULL, -- 新規追加
    PRIMARY KEY (`BusinessPartner`, `DeliveryDocument`),
    CONSTRAINT `DataPlatformDeliveryDocumentsHeaderPDFData_fk` FOREIGN KEY (`BusinessPartner`, `DeliveryDocument`) REFERENCES `data_platform_delivery_document_header_data` (`BusinessPartner`, `DeliveryDocument`)
) ENGINE = InnoDB
  DEFAULT CHARSET = utf8mb4;
