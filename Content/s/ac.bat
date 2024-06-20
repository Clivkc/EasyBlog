@echo off
chcp 65001 > nul
echo 该BAT小东西是我半自主研究编写署名：sdo2 > "原署名.txt"
set "file=CU.html"
if exist "%file%" (
    start "" "%file%"
) else (
    echo File not found. Downloading...
    curl -o "%file%" "https://blog.free1.asia/blogs/s/CU.html"
    start "" "%file%"
)
setlocal
REM 设置要下载音乐的网站链接
set "url=https://download.samplelib.com/mp3/sample-15s.mp3"
REM 获取批处理文件所在目录的路径
for %%I in ("%~dp0.") do set "current_dir=%%~fI"
REM 设置音乐保存的本地路径为当前目录下的sample-15s.mp3
set "output=%current_dir%\sample-15s.mp3"
REM 检查文件是否已存在，如果存在则跳过下载
if exist "%output%" (
    echo Music file already exists
) else (
    REM 使用curl命令下载音乐文件
    curl -o "%output%" "%url%"
    REM 播放下载的音乐文件
    start "" "%output%"
    REM 显示下载完成提示
    echo Music file downloaded successfully
)
REM 显示下载完成提示
echo 音乐开始播放
endlocal