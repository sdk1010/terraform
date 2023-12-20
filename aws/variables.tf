variable "instance_ami" {
        type= string
        default= "ami-06fe902e167e67d33"
}

variable "instance_type" {
        type= string
        default= "t3.micro"
}

variable "instance_count" {
        type= number
        default= "1"
}
