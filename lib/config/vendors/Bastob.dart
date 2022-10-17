import 'package:gbanker/config/AppConfiguration.dart';
import 'package:gbanker/config/app_config.dart';

class Bastob extends AppConfiguration {
  String orgUrl;
  String orgName;
  String port;
  String domain;

  Bastob(){
    this.domain = (AppConfig.env == AppConfig.DEV )? "net": "net";
    this.port = (AppConfig.env == AppConfig.DEV )? "8247" : "8247"; //"6369";
    this.orgUrl = (AppConfig.env == AppConfig.DEV )? "http://gbanker.${this.domain}:${this.port}/":
                  "https://gbanker.${this.domain}:${this.port}";
    this.orgName = "Bastob";
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