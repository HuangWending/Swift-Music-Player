import AVFoundation

class MusicPlayer {
    var player: AVAudioPlayer?
    var playbackRate: Float = 1.0
    var lyrics: [String] = []
    var currentLyricsIndex: Int = 0
    var musicFiles: [String] = []
    var currentMusicIndex: Int = 0
    var volume: Float = 1.0
    var playlist: [String] = []
    
    func playMusic(filename: String) {
        guard let url = Bundle.main.url(forResource: filename, withExtension: "mp3") else {
            print("找不到音乐文件")
            return
        }
        
        do {
            player = try AVAudioPlayer(contentsOf: url)
            player?.prepareToPlay()
            player?.play()
            print("开始播放音乐")
        } catch {
            print("音乐播放失败: \(error.localizedDescription)")
        }
    }
    
    func setPlaybackRate(rate: Float) {
        player?.rate = rate
        print("倍数设置为: \(rate)")
    }
    
    func selectLyrics(lyrics: [String]) {
        self.lyrics = lyrics
        print("选择了歌词")
    }
    
    func showLyrics() {
        guard currentLyricsIndex < lyrics.count else {
            print("没有更多歌词可显示")
            return
        }
        
        let currentLyrics = lyrics[currentLyricsIndex]
        print("当前歌词: \(currentLyrics)")
        currentLyricsIndex += 1
    }
    
    func selectMusicFile(files: [String]) {
        musicFiles = files
        print("选择了音乐文件")
    }
    
    func showMusicFiles() {
        print("可用音乐文件:")
        for (index, file) in musicFiles.enumerated() {
            print("\(index + 1). \(file)")
        }
    }
    
    func setVolume(volume: Float) {
        player?.volume = volume
        print("音量设置为: \(volume)")
    }
    
    func addToPlaylist(filename: String) {
        playlist.append(filename)
        print("已添加到播放列表")
    }
    
    func showPlaylist() {
        print("播放列表:")
        for (index, file) in playlist.enumerated() {
            print("\(index + 1). \(file)")
        }
    }
}
