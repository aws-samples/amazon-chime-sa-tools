## CloudWatch Dashboards for Voice Connector

Amazon Chime Voice Connector now provides Amazon CloudWatch Metrics and Logs providing information about your SIP trunk such as response codes, active calls, mean opinion score (MOS), jitter, and latency. Using these metrics, you can create dashboards that visualize the data provided.

If you have the AWS CLI installed, you can run the shell script in the GitHub Repository below. The script will query all the Voice Connectors in your AWS account and run the CloudFormation Template for each of them.

### Prerequisites

* AWS CLI installed and configured to access your account
* Admin access polices to: Chime, CloudWatch, and CloudFormation
* A Voice Connector SIP Trunk configured in the Chime Console

## License

This library is licensed under the MIT-0 License. See the LICENSE file.

