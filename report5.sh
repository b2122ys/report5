#!/bin/bash

#自然数の入力確認
if expr "$1" : "[0-9]*$" >&/dev/null && expr "$2" : "[0-9]*$" >&/dev/null; then
	# While文で$2が0になるまで計算を実行する条件を設定
        while [ !  0 -eq "$2" ]; do
	# set -- で$1に前回値の$2と$2に$1 % $2の計算結果を代入する
	set -- "$2" "`expr "$1" % "$2"`"
	done
	echo "$1"
else
	#入力不備の際はERRORを表示
        echo "ERROR"
fi
