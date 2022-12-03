variable "region" {
    description = "The region you want your minecraft server to be hosted in. Pick the region you live in."
    type        = string
}

variable "owner_ip" {
    description = "The server's owner's IP address. The server can be adminstered only from this IP address."
    type        = string
}

variable "owner_public_key" {
    description = "Public key generated by AWS. Can be found at ~/.ssh/id_rsa.pub by default."
    type        = string
}

variable "minecraft_server_url" {
    description = "The minecraft server download link available at: https://www.minecraft.net/en-us/download/server/."
    type        = string
}

variable "instance_type" {
    description = "EC2 instance type"
    type        = string
}

variable "sg_ingress_rules" {
    description = "Security group rules for incoming traffic"
    type = list(object({
        from_port   = number
        to_port     = number
        protocol    = string
        cidr_blocks = string
        description = string
    }))
}

variable "sg_egress_rules" {
    description = "Security group rules for outgoing traffic"
    type = list(object({
        from_port   = number
        to_port     = number
        protocol    = string
        cidr_blocks = string
        description = string
    }))
}
