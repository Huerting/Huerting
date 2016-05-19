#/bin/bash

ssh -i huerting.pem ec2-user@ec2-52-31-171-18.eu-west-1.compute.amazonaws.com -t "sudo rm -rf /home/ec2-user/*"
scp -i huerting.pem $1 ec2-user@ec2-52-31-171-18.eu-west-1.compute.amazonaws.com:
ssh -i huerting.pem ec2-user@ec2-52-31-171-18.eu-west-1.compute.amazonaws.com -t "wget https://necolas.github.io/normalize.css/4.0.0/normalize.css"
ssh -i huerting.pem ec2-user@ec2-52-31-171-18.eu-west-1.compute.amazonaws.com -t "sudo rm -rf /var/www/html/*"
ssh -i huerting.pem ec2-user@ec2-52-31-171-18.eu-west-1.compute.amazonaws.com -t "sudo mv /home/ec2-user/$1 /var/www/html/"
ssh -i huerting.pem ec2-user@ec2-52-31-171-18.eu-west-1.compute.amazonaws.com -t "cd /var/www/html; sudo unzip $1"
ssh -i huerting.pem ec2-user@ec2-52-31-171-18.eu-west-1.compute.amazonaws.com -t "sudo mv /var/www/html/*/* /var/www/html/"
ssh -i huerting.pem ec2-user@ec2-52-31-171-18.eu-west-1.compute.amazonaws.com -t "sudo chown -R apache. /var/www/html/"
