provider "aws"{
region="us-east-2"
    }
resourse"aws-launch-template" "foobar"{
 name-prefix ="foobar"
 image_id ="ami-0629230e074c580f2"
 instance_type="t2.micro"
 }
 resource "aws_autoscaling_group" "bar"{
 avaliability_zones=["us-east-2c"]
 desired_capacity =1
 max_size =2
 min_size =1
 launch_template{
 id =aws_launch_template.foobar.id
 }
 }
