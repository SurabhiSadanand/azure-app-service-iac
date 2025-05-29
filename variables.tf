variable "location" {
    type = string
    default = "CentralUS"
}
variable "resource_group_name" {
    type = string
    default = "rg-appservice-demo"
}
variable "app_service_plan_name" {
    type = string
    default = "asp-demo"
}
variable "app_service_name" {
    type = string
    default = "webapp-demo-455656"
}
