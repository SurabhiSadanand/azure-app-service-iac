#Create a resource group
resource "azurerm_resource_group" "rg" {
    name = var.resource_group_name
    location = var.location
}   

#Create an App Service Plan
resource "azurerm_service_plan" "asp" {
    name = var.app_service_plan_name
    location = azurerm_resource_group.rg.location
    resource_group_name = azurerm_resource_group.rg.name
    os_type = "Windows"
    sku_name = "B1"
}

#Create an App Service
resource "azurerm_windows_web_app" "app" {
    name = var.app_service_name
    location = azurerm_resource_group.rg.location
    resource_group_name = azurerm_resource_group.rg.name
    service_plan_id = azurerm_service_plan.asp.id
    site_config {
        always_on = true
    }
    tags = {
        environment = "Dev"
    }
}
