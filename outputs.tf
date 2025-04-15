output "cluster_endpoint" {
  description = "Endpoint for EKS control plane"
  value       = aws_eks_cluster.quantum_nebula.endpoint
}

output "cluster_security_group_id" {
  description = "Security group ID attached to the EKS cluster"
  value       = aws_eks_cluster.quantum_nebula.vpc_config[0].cluster_security_group_id
}

output "cluster_name" {
  description = "Name of the EKS cluster"
  value       = aws_eks_cluster.quantum_nebula.name
}

output "node_group_arn" {
  description = "ARN of the EKS node group"
  value       = aws_eks_node_group.quantum_nebula.arn
}

output "node_group_id" {
  description = "ID of the EKS node group"
  value       = aws_eks_node_group.quantum_nebula.id
}

output "alb_dns_name" {
  description = "DNS name of the Application Load Balancer"
  value       = aws_lb.eks.dns_name
}

output "alb_zone_id" {
  description = "Zone ID of the Application Load Balancer"
  value       = aws_lb.eks.zone_id
}

output "vpc_id" {
  description = "ID of the VPC"
  value       = data.aws_vpc.quantum_nebula.id
}

output "private_subnet_ids" {
  description = "IDs of the private subnets"
  value       = data.aws_subnets.private.ids
} 