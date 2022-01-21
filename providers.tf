##----------------------------------------------------------------------
## Provider
##----------------------------------------------------------------------
provider "google" {
  #credentials = "C:\\Users\\Jung.Songi\\Desktop\\test_terraform\\gcp\\terraform-account.json" #jsonファイルの格納先を記載
  project     = "clear-healer-265405" #プロジェクトIDを記載
  region      = "asia-northeast1"
  zone        = "asia-northeast1-a"
}
