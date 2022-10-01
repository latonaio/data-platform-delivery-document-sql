CREATE TABLE `data_platform_outbound_delivery_item_document_flow_data`
(
    `Deliveryversion`                 varchar(4) NOT NULL,
    `PrecedingDocument`               varchar(10) NOT NULL,
    `PrecedingDocumentItem`           varchar(6) NOT NULL,
    `PrecedingDocumentCategory`       varchar(4) DEFAULT NULL,
    `Subsequentdocument`              varchar(10) NOT NULL,
    `QuantityInBaseUnit`              varchar(17) DEFAULT NULL,
    `SubsequentDocumentItem`          varchar(6) DEFAULT NULL,
    `SDFulfillmentCalculationRule`    varchar(1) DEFAULT NULL,
    `SubsequentDocumentCategory`      varchar(4) DEFAULT NULL,
    `TransferOrderInWrhsMgmtIsConfd`  tinyint(1) DEFAULT NULL,
    PRIMARY KEY (`PrecedingDocument`, `PrecedingDocumentItem`, `Deliveryversion`, `Subsequentdocument`, `SubsequentDocumentItem`),
    CONSTRAINT `DataPlatformOutboundDeliveryItemDocumentFlowData_fk` FOREIGN KEY (`PrecedingDocument`) REFERENCES `data_platform_outbound_delivery_header_data` (`DeliveryDocument`)
) ENGINE = InnoDB
  DEFAULT CHARSET = utf8mb4;
