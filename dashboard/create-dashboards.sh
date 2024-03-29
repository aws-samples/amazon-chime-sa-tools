#!/bin/bash
# Create a CloudWatch dashboard for each Voice Connector based on a CloudFormation template in S3

# Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
# SPDX-License-Identifier: MIT-0

templateBody="file://aws-chime-vc-template-singledashboard.yaml"
for vc in $(aws chime list-voice-connectors --query VoiceConnectors[].VoiceConnectorId --output text); do 
    region=$(aws chime list-voice-connectors --query "VoiceConnectors[?VoiceConnectorId=='$vc'].AwsRegion" --output text);
    echo "Creating vc-dashboard-$vc ..."
    aws cloudformation create-stack --stack-name "vc-dashboard-$vc" --template-body $templateBody --parameters ParameterKey=VoiceConnectorId,ParameterValue=$vc ParameterKey=Region,ParameterValue=$region
done
