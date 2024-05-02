#!/bin/bash
# agent.sh

# export LLM_CHAT_MODEL="llama3-8b-8192"
# export LLM_CHAT_MODEL="llama3-70b-8192"
# export LLM_CHAT_MODEL="mixtral-8x7b-32768" # FONCTIONNE TEMPERATURE 0.5
# export LLM_CHAT_MODEL="gemma-7b-it" # NE FONCTIONNE PAS T 0.5

# GROQ_API_KEY is localy sourced from my ~/.aliases

# export LLM_SEED=100 # problème si j'active ça j'ai aucune valeur pour retourner à void pour que ce soit random
export LLM_MAX_TOKENS=32768
export LLM_TEMPERATURE=1.9 # float 0 to 2
export LLM_SYSTEM_PROMPT="Act as the backend of a Pokedex. Do exactly what you are told to do, a json file, and stricly that JSON file, without wording, notes or commentary. You can be as creative as you need to with categories."

cat answer.json >> old_answers.txt
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
