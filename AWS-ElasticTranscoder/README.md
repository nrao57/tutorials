# AWS-ElasticTranscoder
All code used in the [AWS Elastic Transcoder Video Tutorials](https://youtu.be/7v6PH0aHsz4)

## Create a Pipeline

aws elastictranscoder create-pipeline --name testpipeline --input-bucket transcodedinitial --role arn:aws:iam::547950090894:role/Elastic_Transcoder_Default_Role --output-bucket transcodedfinal

### List all created pipelines
aws elastictranscoder list-pipelines

### List all video conversion format presets
aws elastictranscoder list-presets

## Create a Transcoding Job
aws elastictranscoder create-job --pipeline-id 1539975801336-wsutsm --input Key=movie1.avi --outputs Key=movie1360.mp4,PresetId=1351620000001-000050

### List Job Progress and Status
aws elastictranscoder list-jobs-by-pipeline --pipeline-id 1539975801336-wsutsm


## AWS Official Documentation
[AWS Elastic Transcoder Documentation](https://aws.amazon.com/elastictranscoder/)

[AWS CLI Elastic Transcoder Documentation](https://docs.aws.amazon.com/cli/latest/reference/elastictranscoder/index.html#cli-aws-elastictranscoder)
