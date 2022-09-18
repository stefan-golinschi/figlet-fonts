font_dir=/home/stefan.golinschi/Downloads/figlet-fonts
sample_text="FIGLET FONTS"


for item in $font_dir/*.flf
do
	font_name=`basename "$item"`
	font_name="`echo $font_name | cut -d '.' -f1`"
	
	echo "### $font_name"
	echo "\`\`\`"
	figlet -d $font_dir -f "$font_name" "$sample_text"
	echo "\`\`\`"
	echo ""
done
