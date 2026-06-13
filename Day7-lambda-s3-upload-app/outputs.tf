output "lambda_name" {
  value = aws_lambda_function.my_lambda.function_name
}

output "lambda_arn" {
  value = aws_lambda_function.my_lambda.arn
}

output "lambda_response" {
  value = aws_lambda_invocation.invoke_lambda.result
}