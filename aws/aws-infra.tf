resource "aws_s3_bucket" "my_bucket" {
        bucket= "sdk-my-bucket"
}
resource "aws_key_pair" "my_kp" {
        key_name= "sdk-kp-hyderabad"
        public_key= file("/home/ubuntu/.ssh/id_rsa.pub")
}

resource "aws_instance" "my_instance" {
        count= var.instance_count
        ami= var.instance_ami
        instance_type= var.instance_type
        tags= {
                Name= "sdk-instance"
        }
}
