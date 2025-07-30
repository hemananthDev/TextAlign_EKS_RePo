resource "aws_ecr_repository" "text_aligner" {
  name = var.repository_name

  image_scanning_configuration {
    scan_on_push = true
  }

  encryption_configuration {
    encryption_type = "AES256"
  }

  tags = {
    Project = "TextAlignEKS"
    Phase   = "1"
  }
}
