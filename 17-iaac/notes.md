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

[notice] A new release of pip available: 22.2.2 -> 23.2.1
[notice] To update, run: pip install --upgrade pip
```
2. Run the boto.py script
```
➜  17-iaac git:(main) ✗ python3 boto.py
mias-bucket
```

> `terraform.tfstate` is how terraform keeps itself up to date with the current state oof the infrastructure
> `terraform.tfstate.lock.info` is how terraform tracks who is running their code agaist the infra structure