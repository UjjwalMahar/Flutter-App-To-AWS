# 👷🏻‍♂️ Deployment Architecture

To deploy our flutter app we will be following this architecture pattern.


![Flutter Web App to AWS Made by UjjwalMahar](https://github.com/UjjwalMahar/Flutter-App-To-AWS/assets/111011580/cee9b85c-864f-45e4-9560-a63af9b80ede)

## 🪜 Steps to Follow

1. Make Sure that Flutter App is **ready** to deploy. If you do not have your flutter app ready I recommend you to follow the steps given in `README.md` 

2. **Build & Deploy to S3 Bucket:** Once your Flutter app is ready, you need to build the app for web deployment. Using the Flutter SDK, run the `flutter build web` command to generate the necessary web assets and optimize the app for the web platform. This command creates a build/web directory that contains the built app files. Next, you deploy these files to an S3 bucket in AWS.

The build folder contains the the web folder (after you run the previous command) It would look somewhat like this : ➡️

![build/web folder](https://github.com/UjjwalMahar/Flutter-App-To-AWS/assets/111011580/f3280e9b-ace3-4e2a-8df9-e7cd38df1ecc)

3. **S3 Bucket Configuration:** In AWS, you create an S3 bucket to store the built Flutter app files. The S3 bucket acts as a content repository for the app. You can create the bucket using the AWS Management Console or the AWS CLI. Make sure to choose a unique bucket name.

Using AWS Consol direct to s3 bucket and click create bucket.

![S3 Create Bucket](https://github.com/UjjwalMahar/Flutter-App-To-AWS/assets/111011580/361f2a94-f6d9-4227-87a9-35e74226d07b)

4. **CloudFront Configuration:** CloudFront is a content delivery network (CDN) service provided by AWS. It improves the performance and scalability of your app by caching the app's static content and delivering it to users from edge locations around the world. To configure CloudFront, you create a CloudFront distribution and specify the S3 bucket as the origin for your app's content. This allows CloudFront to fetch the app files from the S3 bucket and distribute them globally.

Head up to CloudFront and click **Create Distribution:**

![CloudFront](https://github.com/UjjwalMahar/Flutter-App-To-AWS/assets/111011580/509243f4-a35b-4666-8195-32eadfd678c8)


5. **Route 53 Configuration:** Route 53 is a DNS service offered by AWS. It enables you to manage your domain names and direct traffic to various AWS resources. In this step, you configure Route 53 to associate your domain name with the CloudFront distribution. By creating a record set in the Route 53 hosted zone for your domain, you map the domain name to the CloudFront distribution's DNS name. This ensures that when users visit your app's domain, their requests are routed to the appropriate CloudFront distribution.

6. **Domain & SSL Certificate:** To provide secure communication between users and your app, you can configure an SSL certificate for your domain. This enables HTTPS encryption and ensures data confidentiality. You can obtain an SSL certificate from a trusted certificate authority (CA) or use AWS Certificate Manager to provision a free SSL/TLS certificate. By associating the SSL certificate with the CloudFront distribution, your app can be accessed securely using the HTTPS protocol.



By following these steps, you can **successfully deploy** your Flutter app to an AWS S3 bucket using CloudFront with Route 53. This deployment setup provides a scalable and performant architecture for hosting and delivering your app to users globally.


---

**I will be relasing a full blog till then star ⭐ the repo and fork it.🍴**

**Thanks!!**
