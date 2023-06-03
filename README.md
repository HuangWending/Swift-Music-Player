# Swift-Music-Player
Swift音乐播放器程序
导入AVFoundation框架：导入用于音频播放的AVFoundation框架。

创建MusicPlayer类：创建一个名为MusicPlayer的类，用于管理音乐播放。

5-18. 定义各种属性：定义了用于控制音乐播放器的各种属性，如player用于处理音频播放、playbackRate用于控制播放倍数、lyrics用于存储歌词、currentLyricsIndex用于跟踪当前歌词索引、musicFiles用于存储音乐文件列表、currentMusicIndex用于跟踪当前音乐文件索引、volume用于控制音量、playlist用于管理播放列表。

20-40. 编写播放音乐的函数：创建一个名为playMusic的函数，它接受一个字符串参数filename，用于指定要播放的音乐文件名。

42-46. 检查音乐文件是否存在：使用Bundle.main.url(forResource:withExtension:)方法获取音乐文件的URL，并检查是否为nil。如果URL为nil，表示找不到音乐文件，输出错误信息并返回。

49-55. 创建AVAudioPlayer实例：使用AVAudioPlayer的初始化方法AVAudioPlayer(contentsOf:)，传入音乐文件的URL，创建一个AVAudioPlayer实例，并将其赋值给player属性。

56-58. 准备音乐播放：调用player的prepareToPlay()方法，准备音乐播放。

59-61. 开始播放音乐：调用player的play()方法，开始播放音乐。

63-65. 输出播放信息：打印"开始播放音乐"。

68-71. 设置播放倍数的函数：创建一个名为setPlaybackRate的函数，它接受一个Float类型的参数rate，用于设置音乐的播放倍数。

73-74. 设置播放倍数：将player的rate属性设置为传入的rate值。

76-78. 输出倍数设置信息：打印"倍数设置为: (rate)"。

81-84. 选择歌词的函数：创建一个名为selectLyrics的函数，它接受一个字符串数组参数lyrics，用于选择要显示的歌词。

86-87. 存储歌词：将传入的lyrics数组赋值给lyrics属性。

输出歌词选择信息：打印"选择了歌词"。
92-103. 显示歌词的函数：创建一个名为showLyrics的函数，用于显示当前歌词。

105-108. 检查歌词索引并显示歌词：检查当前歌词索引是否小于歌词数组的长度。如果是，则获取当前索引对应的歌词，并打印出来。然后将当前歌词索引加1。

输出没有更多歌词可显示信息：如果当前歌词索引超过了歌词数组的长度，则打印"没有更多歌词可显示"。
113-116. 选择音乐文件的函数：创建一个名为selectMusicFile的函数，它接受一个字符串数组参数files，用于选择要播放的音乐文件。

118-119. 存储音乐文件：将传入的files数组赋值给musicFiles属性。

输出音乐文件选择信息：打印"选择了音乐文件"。
124-134. 显示可用音乐文件的函数：创建一个名为showMusicFiles的函数，用于打印出可用的音乐文件列表。

136-140. 打印音乐文件列表：遍历musicFiles数组，打印出每个音乐文件的索引和文件名。

143-146. 设置音量的函数：创建一个名为setVolume的函数，它接受一个Float类型的参数volume，用于设置音量。

148-149. 设置音量：将player的volume属性设置为传入的volume值。

151-153. 输出音量设置信息：打印"音量设置为: (volume)"。

156-160. 添加到播放列表的函数：创建一个名为addToPlaylist的函数，它接受一个字符串参数filename，用于将指定的音乐文件添加到播放列表。

162-163. 添加到播放列表：将传入的filename添加到playlist数组中。

输出添加到播放列表信息：打印"已添加到播放列表"。
168-175. 显示播放列表的函数：创建一个名为showPlaylist的函数，用于打印出当前的播放列表。

177-181. 打印播放列表：遍历playlist数组，打印出每个音乐文件的索引和文件名。
