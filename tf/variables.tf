variable "api_services" {
  type = set(string)
  default = [
      "my-test-app1",
      "my-other-app"
  ]
}