#!/bin/bash
# This script compiles the unobot.po file for all languages.

if [ ${PWD##*/} = "locales" ];
then
	function compile {
		cd './'$1'/LC_MESSAGES/'
		msgfmt unobot.po -o unobot.mo
		cd ../../
	};
else 
	echo 'Only execute this in the "locales" directory'
	exit 1;
fi

# Deutsch
compile de_DE
# Spanish
compile es_ES
# Indonesian
compile id_ID
# Italian
compile it_IT
# Portuguese
compile pt_BR
# Russian
compile ru_RU
# Simplified Chinese
compile zh_CN
# Chinese (Honk Kong) 
compile zh_HK
# Traditional Chinese
compile zh_TW
