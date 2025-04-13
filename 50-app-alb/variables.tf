variable "project_name"{
    default = "expense"
}

variable "environment"{
    default = "dev"
}

variable "common_tags"{
    default = {
        project = "expense"
        environmet = "dev"
        Terraform = "true"
    }
}

variable "zone_id" {
    default = "Z02554302X11M342L99S3"
}

variable "domain_name" {
    default = "parijathapractice.online"
}