# rade.mobi

Personal and miscellaneous static websites.

#### Notes
 - Certificate(s) generated using [Certbot](https://certbot.eff.org/lets-encrypt/ubuntubionic-nginx)
 - [`aws.sh`](https://github.com/jeffrade/rade.mobi/blob/master/aws.sh) uses `aws s3 sync` to update website content.

##### Using Certbot in Manual Mode
```
$ sudo certbot certonly --manual
# When adding the DNS TXT record, quickest way is manually via AWS web console.
# You can verify the above record is deployed with https://mxtoolbox.com/SuperTool.aspx
# If successful, root user should see all cert files in /etc/letsencrypt/live
# Import the cert files into AWS ACM.
# Create a Cloudfront distribution.
# Update (or create) the A record in Route53 to point to new Cloudfront dist domain.
# Visit your domain over https to verify.
```

##### Compressing Images
 - Use `crunch` to compress PNG files.
 - Use `jpegoptim` to compress JPG files.