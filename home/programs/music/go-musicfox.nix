''
  # 启动页配置
  [startup]
  # 是否显示启动页
  show=true
  # 启动页进度条是否有回弹效果
  progressOutBounce=true
  # 启动页时长
  loadingSeconds=2
  # 启动页欢迎语
  welcome=musicfox
  # 启动时自动签到
  signin=true
  # 启动时检查更新
  checkUpdate=false

  # 进度条配置
  [progress]
  # 进度条已加载字符
  fullChar="#"
  firstFullChar="#"
  lastFullChar="#"
  # 进度条未加载字符
  emptyChar="."
  firstEmptyChar="."
  lastEmptyChar="."

  # 主页面配置
  [main]
  # 是否显示标题
  showTitle=true
  # 加载中提示
  loadingText=[加载中...]
  # 歌曲音质，standard,higher,exhigh,lossless,hires
  songLevel=higher
  # 主题颜色
  # 随机
  # primaryColor=random
  # 经典网易云音乐红
  primaryColor="#ea403f"
  # windows,linux下的通知图标
  notifyIcon="logo.png"
  # 是否显示歌词
  showLyric=true
  # 歌词偏移 ms
  lyricOffset=0
  # 显示歌词翻译
  showLyricTrans=true
  # 是否显示通知信息
  showNotify=true
  # 开启pprof, --pprof时会开启
  pprofPort=9876
  # altScreen显示模式
  altScreen=true
  # 开启鼠标事件
  enableMouseEvent=true
  # 双列显示，开启务必使用等宽字体
  doubleColumn=true
  # 下载目录，默认为"MUSICFOX_ROOT"/download
  downloadDir=/home/kotori/Music/
  # 缓存目录，默认为"MUSICFOX_ROOT"/cache
  # !!!注意!!! 如果使用mpd,mpd配置中的"music_directory"必须与cacheDir一致
  cacheDir=1021MB
  # 缓存大小（以MB为单位），0为不使用缓存，-1为不限制，默认为0
  cacheLimit=0
  # 是否显示歌单下所有歌曲，默认不开启，仅获取歌单前1000首，开启后可能会占用更多内存（大量歌曲数据）和带宽（会同时发送多个请求获取歌单下歌曲数据）
  showAllSongsOfPlaylist=false

  [autoplay]
  # 是否开启自动播放，默认不开启
  autoPlay=false
  # 自动播放歌单，dailyReco, like, name:歌单名, no（保持上次退出时的设置，无视offset），默认为dailyReco
  autoPlayList=dailyReco
  # 播放偏移，0为第一首，-1为最后一首，默认为0
  offset=0
  # 播放模式，listLoop, order, singleLoop, random（无视offset）, intelligent（心动）, last（上次退出时的模式），默认为last
  playMode=last

  [player]
  # 播放引擎 beep / mpd(需要安装配置mpd) / osx(Mac才可用)
  # 不填Mac默认使用osx，其他系统默认使用beep（推荐的配置）
  engine=mpd
  # beep使用的mp3解码器，可选：go-mp3, minimp3 (minimp3更少的CPU占用，但是稳定性不如go-mp3)
  beepMp3Decoder=go-mp3

  # mpd配置
  mpdBin=/home/kotori/.nix-profile/bin/mpd
  # !!!注意!!! 一定要在配置文件中设置pid_file，否则在退出时不会kill掉mpd进程
  mpdConfigFile=/home/kotori/.config/mpd/mpd.conf
  # tcp 或 unix
  mpdNetwork=tcp
  # tcp时填写ip+port(例如:127.0.0.1:1234)，unix时填写socket文件路径
  mpdAddr=[::1]:6600

  [unm]
  # UNM开关
  switch=true
  # UNM源: kuwo,kugou,migu,qq
  sources=kuwo,kugou,migu,qq
  # UNM搜索其他平台限制 0-3
  searchLimit=0
  # 解除会员限制
  enableLocalVip=true
  # 解除音质限制
  unlockSoundEffects=true
  # QQ音乐cookie文件
  qqCookieFile=
''
