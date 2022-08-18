### [English README](README2.md)

# FFmpeg BAT 脚本
FFmpeg bat脚本，可以做一些简单的音视频编辑

# 如何使用
下载 [ffmpeg](https://www.gyan.dev/ffmpeg/builds/), 解压到文件夹, 把子文件夹里的bin文件夹，也就是含有ffmpeg.exe的文件夹添加到环境变量path里. 例如，[直接下载链接, 发布核心版(release essentials)](https://www.gyan.dev/ffmpeg/builds/ffmpeg-release-essentials.7z) (这应该是那个网站上的最小版本)。

下载bat脚本，放到一个文件夹，把文件夹加入环境变量path。

### 注意，使用包含中文的bat脚本，需要用ANSI编码。操作是，用Notepad(记事本)编辑，另存为的时候选择编码为ANSI。

用windows资源管理器打开包含你的音视频文件的文件夹，在那里打开终端(按住Shift, 点鼠标右键，选择在这里打开PowerShell), 向终端输入脚本名字和参数，用空格隔开。注意你可能需要在ffmpeg执行时输入更多参数，例如“y”以同意覆盖已有的同名文件。
### 建议不要在音视频文件名字里使用中文。脚本生成的拼接列表txt文件是ANSI编码，如果里面含有中文，ffmpeg将不能正常识别、拼接这些文件，需要把生成的拼接列表txt文件改成UTF-8编码，然后才可以使用脚本拼接。

# 功能
## 已实现功能
00-剪切：不重新编码，粗剪(因为从关键帧开始，开始时间不准，有几秒钟的误差，结束时间比较准)

01-生成拼接列表：

02-拼接：不重新编码，需要编码、长宽、帧率一致
## 计划功能
### (这些功能大部分我已经有能用的代码，不过需要打磨一下)
视频去除音频、提取音频、换音频(BGM)(可以选择按照较长或较短的文件生成最终视频文件)，添加、去除软字幕(mp4，mkv可以)，提取软字幕，

视频转码：换编码为h265或h264(可以去重复帧,可以达到压缩视频大小的目的，可以加字幕(硬)，可以改变横纵像素值，可以(剪切画面)并纵向或横向合并两个视频，可以把一个视频覆盖在另一个视频上一个矩形范围内)，逐帧提取图片(去重复帧)、提取一个时间范围内的图片(建议先剪切视频再提取，这样速度会快)，图片合成视频并指定帧率

一个脚本完成拼接和转编码，不在硬盘上写入中间的相同编码的拼接文件，只需写入转码后的文件（减少对固态的读写）

改变视频FPS从而不重新编码改变视频速度，改变音频速度，调节音量，

创建单色视频，例如黑色，创建无声音频

