### [English README](README2.md)

# FFmpeg BAT 脚本
FFmpeg bat脚本，可以做一些简单的音视频编辑

# 如何使用
下载 [ffmpeg](https://www.gyan.dev/ffmpeg/builds/), 解压到文件夹, 把子文件夹里的bin文件夹，也就是含有ffmpeg.exe的文件夹添加到环境变量path里. 例如，[直接下载链接, 发布核心版(release essentials)](https://www.gyan.dev/ffmpeg/builds/ffmpeg-release-essentials.7z) (这应该是那个网站上的最小版本)。

下载bat脚本，放到一个文件夹，把文件夹加入环境变量path。

### 注意，使用包含中文的bat脚本，需要用ANSI编码。操作是，用Notepad(记事本)编辑，另存为的时候选择编码为ANSI。

用windows资源管理器打开包含你的音视频文件的文件夹，在那里打开终端(按住Shift, 点鼠标右键，选择在这里打开PowerShell), 向终端输入脚本名字和参数，用空格隔开。注意你可能需要在ffmpeg执行时输入更多参数，例如“y”以同意覆盖已有的同名文件。

### 建议不要在音视频文件名字里使用中文。脚本生成的拼接列表txt文件是ANSI编码，如果里面含有中文，ffmpeg将不能正常识别、拼接这些文件，需要把生成的拼接列表txt文件改成UTF-8编码，然后才可以使用脚本拼接。
