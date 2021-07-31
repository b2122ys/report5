#!/bin/bash

ERROR_EXIT () {          #ERROR関数
	echo "$1" >&2            #エラーメッセージ(引数1)を標準エラー出⼒に表⽰
	rm -f /tmp/$$-*          #作ったファイルの削除
	exit 1                   #エラー終了
}

./report5.sh 2 4 > /tmp/$$-result        #report5.shに引数2と4を代入
echo "2" > /tmp/$$-ans  #正解をans-$$に出力
diff /tmp/$$-ans /tmp/$$-result  || ERROR_EXIT "error" #テスト失敗
rm -f /tmp/$$-* #/tmp//$$-*の削除

./report5.sh 3 > /tmp/$$-result        # report5.shに引数3を代入
echo "ERROR" > /tmp/$$-ans  #ERRORを表示するのが正解でこれをans-$$に出力
diff /tmp/$$-ans /tmp/$$-result  || ERROR_EXIT "error" #テスト失敗
rm -f /tmp/$$-* #/tmp//$$-*の削除

./report5.sh fs 45 > /tmp/$$-result   #report5.shに引数fsと45(文字と数字)を入力
echo "ERROR" > /tmp/$$-ans  #ERRORを表示するのが正解でこれをans-$$に出力
diff /tmp/$$-ans /tmp/$$-result  || ERROR_EXIT "error" #テスト失敗
rm -f /tmp/$$-* #/tmp//$$-*の削除

./report5.sh 65 -45 > /tmp/$$-result   #report5.shに引数65と-45(正の数字と負の数字)を入力
echo "ERROR" > /tmp/$$-ans  #ERRORを表示するのが正解でこれをans-$$に出力
diff /tmp/$$-ans /tmp/$$-result  || ERROR_EXIT "error" #テスト失敗
rm -f /tmp/$$-* #/tmp//$$-*の削除

