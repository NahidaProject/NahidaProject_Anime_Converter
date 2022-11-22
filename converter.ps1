$vformat = Read-Host "源视频文件格式"
$vformat2 = Read-Host "目标视频文件格式"
$sformat = Read-Host "字幕文件格式"
$aid = Read-Host "动漫a_id(编号)"
[int]$aset = Read-Host "动漫a_set(剧集)"

for ($x = 1; $x -lt $aset + 1; $x = $x + 1) {
    if ($x -lt 10) {
        ffmpeg -i $x"."$vformat -acodec aac -vcodec libx264 -pix_fmt yuv420p -vf subtitles=$x"."$sformat $aid"_00"$x"."$vformat2
    }
    else {
        ffmpeg -i $x"."$vformat -acodec aac -vcodec libx264 -pix_fmt yuv420p -vf subtitles=$x"."$sformat $aid"_0"$x.$vformat2
    } 
}