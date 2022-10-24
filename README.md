# data-platform-delivery-document-sql   

data-platform-delivery-document-sql は、データ連携基盤において、入出荷データを維持管理するSQLテーブルを作成するためのレポジトリです。

## 前提条件  
data-platform-delivery-document-sql は、データ連携にあたり、API を利用し、本レポジトリ の sql 設定ファイルの内容は、下記 URL の API 仕様を前提としています。  
https://api.XXXXXXXX.com/api/OP_API_XXXXXXX_XXX/overview    

## sqlの設定ファイル

data-platform-delivery-document-sql には、sqlの設定ファイルとして、以下のファイルが含まれています。  

* data-platform-delivery-document-sql-header-data.sql（データ連携基盤 入出荷伝票 - ヘッダデータ）
* data-platform-delivery-document-sql-header-pdf-data.sql（データ連携基盤 入出荷伝票 - ヘッダPDFデータ）
* data-platform-delivery-document-sql-header-partner-data.sql（データ連携基盤 入出荷伝票 - ヘッダ取引先データ）
* data-platform-delivery-document-sql-header-partner-contact-data.sql（データ連携基盤 入出荷伝票 - ヘッダ取引先コンタクトデータ）
* data-platform-delivery-document-sql-item-data.sql（データ連携基盤 入出荷伝票 - 明細データ）
* data-platform-delivery-document-sql-address-data.sql（データ連携基盤 入出荷伝票 - 住所データ）

## MySQLのセットアップ / Kubernetesの設定 / SQLテーブルの作成方法
MySQLのセットアップ / Kubernetesの設定 / 具体的なSQLテーブルの作成方法、については、[mysql-kube](https://github.com/latonaio/mysql-kube)を参照ください。
