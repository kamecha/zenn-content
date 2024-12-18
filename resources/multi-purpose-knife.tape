# VHS documentation
#
# Output:
#   Output <path>.gif               Create a GIF output at the given <path>
#   Output <path>.mp4               Create an MP4 output at the given <path>
#   Output <path>.webm              Create a WebM output at the given <path>
#
# Require:
#   Require <string>                Ensure a program is on the $PATH to proceed
#
# Settings:
#   Set FontSize <number>           Set the font size of the terminal
#   Set FontFamily <string>         Set the font family of the terminal
#   Set Height <number>             Set the height of the terminal
#   Set Width <number>              Set the width of the terminal
#   Set LetterSpacing <float>       Set the font letter spacing (tracking)
#   Set LineHeight <float>          Set the font line height
#   Set LoopOffset <float>%         Set the starting frame offset for the GIF loop
#   Set Theme <json|string>         Set the theme of the terminal
#   Set Padding <number>            Set the padding of the terminal
#   Set Framerate <number>          Set the framerate of the recording
#   Set PlaybackSpeed <float>       Set the playback speed of the recording
#   Set MarginFill <file|#000000>   Set the file or color the margin will be filled with.
#   Set Margin <number>             Set the size of the margin. Has no effect if MarginFill isn't set.
#   Set BorderRadius <number>       Set terminal border radius, in pixels.
#   Set WindowBar <string>          Set window bar type. (one of: Rings, RingsRight, Colorful, ColorfulRight)
#   Set WindowBarSize <number>      Set window bar size, in pixels. Default is 40.
#   Set TypingSpeed <time>          Set the typing speed of the terminal. Default is 50ms.
#
# Sleep:
#   Sleep <time>                    Sleep for a set amount of <time> in seconds
#
# Type:
#   Type[@<time>] "<characters>"    Type <characters> into the terminal with a
#                                   <time> delay between each character
#
# Keys:
#   Escape[@<time>] [number]        Press the Escape key
#   Backspace[@<time>] [number]     Press the Backspace key
#   Delete[@<time>] [number]        Press the Delete key
#   Insert[@<time>] [number]        Press the Insert key
#   Down[@<time>] [number]          Press the Down key
#   Enter[@<time>] [number]         Press the Enter key
#   Space[@<time>] [number]         Press the Space key
#   Tab[@<time>] [number]           Press the Tab key
#   Left[@<time>] [number]          Press the Left Arrow key
#   Right[@<time>] [number]         Press the Right Arrow key
#   Up[@<time>] [number]            Press the Up Arrow key
#   Down[@<time>] [number]          Press the Down Arrow key
#   PageUp[@<time>] [number]        Press the Page Up key
#   PageDown[@<time>] [number]      Press the Page Down key
#   Ctrl+<key>                      Press the Control key + <key> (e.g. Ctrl+C)
#
# Display:
#   Hide                            Hide the subsequent commands from the output
#   Show                            Show the subsequent commands in the output

Output multi-purpose-knife.gif

Require nvim

Set Shell "bash"
Set FontSize 32
Set Width 1200
Set Height 700

Hide

Type@0ms "env NVIM_APPNAME='nvim-demo' nvim" Enter
Type@0ms "iABCDEFGHIJKLMNOPQRSTUVWXYZ" Escape

# キー入力表示
Type@0ms ":lua require('keycastr').enable()" Enter

Show

# 新しいバッファの作成
Type@300ms ":new" Enter
Sleep 500ms
Type@300ms ":setfi" Tab
Type@300ms " vim" Enter
Sleep 800ms

# 関数作成
Type "i"
Type@10ms "function! Hoge() abort" Enter
Type@10ms "let lnum = line('.')" Enter
Type@10ms "for char in split(getline('.'), '\zs')" Enter
Type@10ms `call append(lnum, "- [ ] " . char)` Enter
Type@10ms "let lnum += 1" Enter
Type@10ms "endfor" Enter
Type@10ms "endfunction" Escape
Sleep 800ms

# 関数読み込み
Type@300ms ":sou" Tab Enter
Sleep 800ms

# 関数実行
Ctrl+w
Type "j"
Type@300ms ":call Ho" Tab@200ms
Sleep 300ms
Enter

Sleep 900ms
Ctrl+d
Sleep 800ms
Ctrl+d

Sleep 800ms
