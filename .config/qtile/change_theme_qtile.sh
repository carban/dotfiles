#/bin/sh
# Author: Carban

select=$(ls ~/.config/qtile/themes/ | grep -v README.md | sed 's/.json//g' | dmenu -fn 'LiberationMono-15' -sb 'pink' -sf 'black' -p 'Select Theme: ');
if [[ -n $select ]]; then
	echo {'"theme"': '"'$select'"'} > ~/.config/qtile/config.json;
	python ~/.config/qtile/reload.py
fi
