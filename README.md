# poked ~ straightforward zero-dependency AI POWERED POKEDEX-LIKE CLI TOOL

Fork of ariya's ask-llm [[https://github.com/ariya/ask-llm]]

it needs  Linux Shell + Python version v3.10 or higher.

```
git clone https://github.com/GG-off/poked/
cd poked
chmod +x agent.sh
export LLM_API_KEY="[YOUR_OWN_FREE_GROQ_API_KEY]"
./agent.sh [number_of_fire_pokemon_you_want_to_be_serve_with_in_the_JSON_FILE]
```
### known problems :
- hallucinate, like giving parasect with bug+fire type
- can have trouble with the end, few options to fix all possible 
-- with 200 tokens it was almost always broken, with maximum token it will broke when very big list asked
-- and broke randomly because AI lol
  
### to do :
- alias poked
- few ideas lol
- more options
- pikachu!

        (
        '
|||||'''>@
Please God of Memory Let me NOT Forget, never, any
Secret API Key in any Repo (and be told if so) <<'

read doc for rights questions I guess ; MIT was the one of ariya's ask-llm [[https://github.com/ariya/ask-llm]]
NOT related to NINTENDO or any GAMEFREAK or whatever company or holding.
