function enumCRT () {
	curl -s "https://crt.sh/?q=%25.$1&output=json" | jq '.[].common_name' | cut -d'"' -f2 | sort | uniq
}
