
# 将来的にはurlsとしてループで回すがミニマムに
$url = "https://www.4gamer.net/rss/index.xml"
$res = Invoke-WebRequest -Uri $url

# $resの中身にutf-8日本語がある場合に文字化ける
$encoded_res = [System.Text.Encoding]::UTF8.GetString([System.Text.Encoding]::GetEncoding("ISO-8859-1").GetBytes($res.Content))

# ファイル作成
# $formatted_date = Get-Date -Format yyyyMMdd
$distPath = "../../src/assets/dist/"

New-Item  ${distPath}/rss.xml -Force -Value $encoded_res