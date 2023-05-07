data "aws_iam_policy_document" "this" {
  statement {
    actions = ["sts:AssumeRole"]
    principals {
      identifiers = ["ec2.amazonaws.com"]
      type        = "Service"
    }
  }
}

resource "aws_iam_role" "this" {
  name               = var.role_name
  path               = var.role_path
  assume_role_policy = data.aws_iam_policy_document.this.json
  managed_policy_arns = [
    "arn:aws:iam::aws:policy/EC2InstanceProfileForImageBuilder",
    "arn:aws:iam::aws:policy/EC2InstanceProfileForImageBuilderECRContainerBuilds",
    "arn:aws:iam::aws:policy/AmazonSSMManagedInstanceCore"
  ]
  tags = merge(
    { "Description" = "IAM Role for ImageBuilder" },
    var.tags
  )
}

resource "aws_iam_instance_profile" "this" {
  name = aws_iam_role.this.name
  role = aws_iam_role.this.name
  path = var.instance_profile_path
  tags = merge(
    { "Description" = "Instance profile for ImageBuilder" },
    var.tags
  )
}
