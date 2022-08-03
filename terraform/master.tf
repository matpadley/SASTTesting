terraform {
  required_providers {
    azurerm = {
      source = "hashicorp/azurerm"
      version = "=3.0.1"
    }
  }
}

provider "azurerm" {
  features {}
}

locals {
  location = "westeurope"
  service_plan = "rg-insight-prod-westeurope"
  resource_group_name = "insight_test"
}

resource "azurerm_resource_group" "rg" {
  name = local.resource_group_name
  location = local.location
}

resource "azurerm_service_plan" "service_plan" {
    name                = local.service_plan
    location            = azurerm_resource_group.rg.location
    resource_group_name = azurerm_resource_group.rg.name
    os_type             = "Linux"
    sku_name            = "F1"
}

resource "azurerm_linux_web_app" "my_app_service_container" {
 name                    = "SastContainer"
 location                = azurerm_service_plan.service_plan.location
 resource_group_name     = azurerm_resource_group.rg.name
 service_plan_id        = azurerm_service_plan.service_plan.id
 site_config {
 #  scm_type  = "VSTSRM"
 #  always_on = "true"

  # linux_fx_version  = "DOCKER" #define the images to usecfor you application

  # health_check_path = "/health" # health check required in order that internal app service plan loadbalancer do not loadbalance on instance down
 }

}