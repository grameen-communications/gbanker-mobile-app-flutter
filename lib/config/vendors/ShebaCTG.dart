
import 'package:gbanker/config/AppConfiguration.dart';

import '../app_config.dart';

class ShebaCTG extends AppConfiguration{
  String orgUrl;
  String orgName;
  String port;
  String domain;

  ShebaCTG(){
    this.domain = (AppConfig.env == AppConfig.DEV )? "org": "org";
    this.port = (AppConfig.env == AppConfig.DEV )? "8530" : "8530"; //"6369";
    this.orgUrl = (AppConfig.env == AppConfig.DEV )? "http://gbanker.${this.domain}:${this.port}/":
    "http://gbanker.${this.domain}:${this.port}";
    this.orgName = "Sheba CTG";
  }

  @override
  String getDomain() {
    return this.domain;
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

}