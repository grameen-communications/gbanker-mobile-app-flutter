import 'package:gbanker/config/AppConfiguration.dart';
import 'package:gbanker/config/app_config.dart';

class Addin extends AppConfiguration {
  String orgUrl;
  String orgName;
  String port;
  String domain;

  Addin(){
    this.domain = (AppConfig.env == AppConfig.DEV )? "net": "app";
    this.port = (AppConfig.env == AppConfig.DEV )? "8963" : "8096"; //"6369";
    this.orgUrl = (AppConfig.env == AppConfig.DEV )? "http://gbanker.${this.domain}:${this.port}/":
                  "https://gbanker.${this.domain}:${this.port}";
    this.orgName = "Addin";
  }

  @override
  String getOrgName() {
    return this.orgName;
  }

  @override
  String getOrgUrl() {
    return this.orgUrl;
  }

  @override
  String getPort() {
    return this.port;
  }

  @override
  String getDomain() {
    return this.domain;
  }




}