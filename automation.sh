sudo apt update -y
sudo apt install apache2 -y
sudo systemctl start apache2
sudo systemctl enable apache2
timestamp=$(date '+%d%m%Y-%H%M%S')
name="Sumit"
s3_bucket="upgrad-sumitnaithani"
tar -cvf /tmp/$name-httpd-logs-$timestamp.tar /var/log/apache2/*.log
aws s3 cp /tmp/$name-httpd-logs-$timestamp.tar s3://$s3_bucket/$name-httpd-logs-$timestamp.tar
~                                                                                              
