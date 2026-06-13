provider "aws" {
  
}

#############################
# IAM Role for Lambda
#############################

resource "aws_iam_role" "lambda_role" {
  name = "terraform-lambda-role"

  assume_role_policy = jsonencode({
    Version = "2012-10-17"
    Statement = [
      {
        Effect = "Allow"
        Principal = {
          Service = "lambda.amazonaws.com"
        }
        Action = "sts:AssumeRole"
      }
    ]
  })
}

resource "aws_iam_role_policy_attachment" "lambda_basic_execution" {
  role       = aws_iam_role.lambda_role.name
  policy_arn = "arn:aws:iam::aws:policy/service-role/AWSLambdaBasicExecutionRole"
}

#############################
# Lambda Function
#############################

resource "aws_lambda_function" "my_lambda" {
  function_name = "TerraformLambda"

  role    = aws_iam_role.lambda_role.arn
  handler = "lambda_function.lambda_handler"
  runtime = "python3.12"

  s3_bucket = var.bucket_name
  s3_key    = var.lambda_zip

  timeout     = 30
  memory_size = 128

  depends_on = [
    aws_iam_role_policy_attachment.lambda_basic_execution
  ]
}

#############################
# Invoke Lambda
#############################

resource "aws_lambda_invocation" "invoke_lambda" {

  function_name = aws_lambda_function.my_lambda.function_name

  input = jsonencode({
    message = "Hello from Terraform!"
  })
}