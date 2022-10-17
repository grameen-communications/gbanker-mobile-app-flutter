import 'package:gbanker/config/AppConfiguration.dart';

class Buro extends AppConfiguration{
  String orgName;
  String orgUrl;
  String port;

  Buro(){
    this.port = "8288";
    this.orgUrl  = "http://gbanker.tech:${this.port}/";
    this.orgName = "Buro";
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
    return "tech";
  }


}