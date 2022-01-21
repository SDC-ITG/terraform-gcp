##----------------------------------------------------------------------
## Provider
##----------------------------------------------------------------------
provider "google" {
  credentials = ${{ secrets.GOOGLE_CREDENTIALS }} #jsonファイルの格納先を記載
  project     = "clear-healer-265405" #プロジェクトIDを記載
  region      = "asia-northeast1"
  zone        = "asia-northeast1-a"
}
