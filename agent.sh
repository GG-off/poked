#!/bin/bash
# MÉMO PERSOS
# if [ $n = "chaîne" ]; then
# 	# commandes
# elif; then
#	# commandes
# else
#	# default commandes
# fi
#
# ${i%.*}
#
# # # # 
# agent.sh
# setup :
# git clone https://github.com/ariya/ask-llm 
# usage



# export LLM_CHAT_MODEL="llama3-8b-8192"
# export LLM_CHAT_MODEL="llama3-70b-8192"
# export LLM_CHAT_MODEL="mixtral-8x7b-32768" # FONCTIONNE TEMPERATURE 0.5
# export LLM_CHAT_MODEL="gemma-7b-it" # NE FONCTIONNE PAS T 0.5

export LLM_SYSTEM_PROMPT="Act as the backend of a Pokedex. Do exactly what you are told to do, a json file, and stricly that JSON file, without wording, notes or commentary. You can be as creative as you need to with categories."

GROQ_API_KEY=""


cat answer.json >> old_answers.json
rm answer.json

Standard="JSON"
Ext="json"
Lecteur="jq ."
Number=$1
Type="fire"

echo "I need a complete $Standard file of $Number random $Type-typed pokemon." | ./ask-llm.py >> answer.$Ext
cat answer.json | $Lecteur
# REGEX pour virer la 1ère et la dernière ligne

exit 0
