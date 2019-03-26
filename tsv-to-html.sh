#！/bin/sh
#将制表符所分割的文件，转换为循序语法的HTML
#
#
#用法  tsv-to-html < infile > outfile
#
cat << EOFILE
	<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
	<head>
	<title>
	Office directory
	</title>
	<link rev="made" href="mailto:$USER@"`hostname`">
</head>
<body>
<table>
EOFILE

sed -e 's=&=\&amp;=g' \
	-e 's=<=\&lt;=g' \
	-e 's=>=\&gt;=g' \
	-e 's=\t=</TD><TD>=g' \
	-e 's=^.*$= <TR><TD>&</TD></TR>='
	CAT <<EOFILE
	</TABLE>
	</BODY>
	</HTML>
	EOFILE