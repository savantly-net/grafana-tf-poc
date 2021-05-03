variable "id" {
  description = "The panel id"
  type = number
  default = 1
}

variable "name" {
  description = "The panel name"
  type = string
  default = "new panel"
}

variable "app_name" {
  description = "The app_name used in the panel queries"
  type = string
  default = "app1"
}

variable "pos_x" {
  description = "The x axis starting column of the panel 0-23"
  type = number
  default = 0
  validation {
    condition     = var.pos_x > -1 && var.pos_x < 24
    error_message = "The pos_x value must be between 0 and 23."
  }
}

variable "pos_y" {
  description = "The y axis starting position of the panel. Should be higher than previous rows total height."
  type = number
  default = 0
  validation {
    condition     = var.pos_y > -1
    error_message = "The pos_y value must be positive."
  }
}

variable "pos_h" {
  description = "The height of the panel"
  type = number
  default = 8
  validation {
    condition     = var.pos_h > -1
    error_message = "The pos_h value must be positive."
  }
}

variable "pos_w" {
  description = "The column width of the panel"
  type = number
  default = 12
  validation {
    condition     = var.pos_w > -1
    error_message = "The pos_h value must be positive."
  }
}