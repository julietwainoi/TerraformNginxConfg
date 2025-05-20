PUSHING THE IMAGE TO THE CLOUD
1. Create an ECR repository

  aws ecr create-repository --repository-name custom-nginx

2. Authenticate Docker with ECR

  aws ecr get-login-password | docker login --username AWS --password-stdin 123456789012.dkr.ecr.us-east-1.amazonaws.com

3. build the image locally
   docker build -t custom-nginx .
  
4.Tag image ECR
  docker tag custom-nginx 123456789012.dkr.ecr.us-east-1.amazonaws.com/custom-nginx

5.push the image to ECR
  
  docker push 123456789012.dkr.ecr.us-east-1.amazonaws.com/custom-nginx

  


 
   

