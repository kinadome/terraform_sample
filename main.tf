terraform {
  required_providers {
    snowflake = {
      source  = "Snowflake-Labs/snowflake"
      version = "~> 0.87"
    }
  }
}

provider "snowflake" {
  role = "TERRAFORM_KI_SYSTEM"
}

resource "snowflake_database" "db" {
  name = "KINADOME_TF_DB"
}

resource "snowflake_warehouse" "warehouse" {
  name           = "TERRAFORM_KI_WH"
  warehouse_size = "xsmall"
  auto_suspend   = 60
}