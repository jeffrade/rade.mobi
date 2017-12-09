aws s3 cp . s3://jeff.rade.me/ --recursive --exclude "aws.sh" --acl public-read --dryrun

aws s3 cp . s3://rade.me/ --recursive --exclude "aws.sh" --exclude ".git/*" --exclude "README.md" --exclude "jeff/*" --exclude "lisa/*" --exclude "payton/*" --exclude "tyler/*" --acl public-read --dryrun
