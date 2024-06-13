REM @ECHO OFF
REM AWS S3バケットのフォルダをダウンロードする。

set /p bucket="bucket name:"
set /p prefix="prefix in s3 bucket(Example: log/security):"
set /p download_path="Download destination path:"
aws s3 cp s3://%bucket%/%prefix% %download_path% --recursive
PAUSE