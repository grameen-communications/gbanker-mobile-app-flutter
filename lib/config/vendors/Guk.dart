import 'package:gbanker/config/AppConfiguration.dart';

import '../app_config.dart';

class Guk extends AppConfiguration{

  String orgUrl;
  String orgName;
  String port;
  String domain;

  Guk(){
    this.domain = (AppConfig.env == AppConfig.DEV )? "net": "app";
    this.port = (AppConfig.env == AppConfig.DEV )? "8273" : "8273"; //"6369";
    this.orgUrl = (AppConfig.env == AppConfig.DEV )? "http://gbanker.${this.domain}:${this.port}/":
    "https://gbanker.${this.domain}:${this.port}";
    this.orgName = "Guk";
  }

  @override
  String getDomain() {
    // TODO: implement getDomain
    return this.domain;
  }

  @override
  String getOrgName() {
    // TODO: implement getOrgName
    return this.orgName;
  }

  @override
  String getOrgUrl() {
    // TODO: implement getOrgUrl
    return this.orgUrl;
  }

  @override
  String getPort() {
    // TODO: implement getPort
    return this.port;
  }

}