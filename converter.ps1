$vformat = Read-Host "Դ��Ƶ�ļ���ʽ"
$vformat2 = Read-Host "Ŀ����Ƶ�ļ���ʽ"
$sformat = Read-Host "��Ļ�ļ���ʽ"
$aid = Read-Host "����a_id(���)"
[int]$aset = Read-Host "����a_set(�缯)"

for ($x = 1; $x -lt $aset + 1; $x = $x + 1) {
    if ($x -lt 10) {
        ffmpeg -i $x"."$vformat -acodec aac -vcodec libx264 -pix_fmt yuv420p -vf subtitles=$x"."$sformat $aid"_00"$x"."$vformat2
    }
    else {
        ffmpeg -i $x"."$vformat -acodec aac -vcodec libx264 -pix_fmt yuv420p -vf subtitles=$x"."$sformat $aid"_0"$x.$vformat2
    } 
}