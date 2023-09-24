1. Install boto3
```
➜  DevOps-Projects git:(main) ✗ pip install boto3
```
```
Defaulting to user installation because normal site-packages is not writeable
Collecting boto3
  Downloading boto3-1.28.53-py3-none-any.whl (135 kB)
     ━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━ 135.8/135.8 kB 421.2 kB/s eta 0:00:00
Collecting jmespath<2.0.0,>=0.7.1
  Downloading jmespath-1.0.1-py3-none-any.whl (20 kB)
Collecting s3transfer<0.7.0,>=0.6.0
  Downloading s3transfer-0.6.2-py3-none-any.whl (79 kB)
     ━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━ 79.8/79.8 kB 1.0 MB/s eta 0:00:00
Collecting botocore<1.32.0,>=1.31.53
  Downloading botocore-1.31.53-py3-none-any.whl (11.2 MB)
     ━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━ 11.2/11.2 MB 1.4 MB/s eta 0:00:00
Requirement already satisfied: python-dateutil<3.0.0,>=2.1 in /Library/Frameworks/Python.framework/Versions/3.10/lib/python3.10/site-packages (from botocore<1.32.0,>=1.31.53->boto3) (2.8.2)
Requirement already satisfied: urllib3<1.27,>=1.25.4 in /Library/Frameworks/Python.framework/Versions/3.10/lib/python3.10/site-packages (from botocore<1.32.0,>=1.31.53->boto3) (1.26.11)
Requirement already satisfied: six>=1.5 in /Library/Frameworks/Python.framework/Versions/3.10/lib/python3.10/site-packages (from python-dateutil<3.0.0,>=2.1->botocore<1.32.0,>=1.31.53->boto3) (1.16.0)
Installing collected packages: jmespath, botocore, s3transfer, boto3
Successfully installed boto3-1.28.53 botocore-1.31.53 jmespath-1.0.1 s3transfer-0.6.2

[notice] A new release of pip available: 22.2.2 -> 23.2.1
[notice] To update, run: pip install --upgrade pip
```
2. Run the boto.py script
```
➜  17-iaac git:(main) ✗ python3 boto.py
mias-bucket
```