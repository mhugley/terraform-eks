variable "aws_region" {
  description = "AWS region to deploy resources"
  type        = string
  default     = "us-east-1"
}

variable "cluster_name" {
  description = "Name of the EKS cluster"
  type        = string
  default     = "quantum-nebula-eks"
}

variable "vpc_name" {
  description = "Name of the VPC to deploy the EKS cluster"
  type        = string
  default     = "quantum-nebula"
}

variable "node_group_name" {
  description = "Name of the EKS node group"
  type        = string
  default     = "quantum-nebula-node-group"
}

variable "node_instance_type" {
  description = "EC2 instance type for the EKS nodes"
  type        = string
  default     = "t3.medium"
}

variable "node_desired_size" {
  description = "Desired number of nodes in the EKS node group"
  type        = number
  default     = 3
}

variable "node_min_size" {
  description = "Minimum number of nodes in the EKS node group"
  type        = number
  default     = 3
}

variable "node_max_size" {
  description = "Maximum number of nodes in the EKS node group"
  type        = number
  default     = 3
}

variable "alb_name" {
  description = "Name of the Application Load Balancer"
  type        = string
  default     = "quantum-nebula-eks-alb"
}

variable "tags" {
  description = "Default tags for all resources"
  type        = map(string)
  default = {
    Environment = "production"
    Terraform   = "true"
  }
} 