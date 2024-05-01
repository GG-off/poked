# poked ~ straightforward zero-dependency AI POWERED CLI POKEDEX (o)

Fork of ariya's ask-llm [[https://github.com/ariya/ask-llm]]

point is : trying to force standard JSON ouput while maximising temperature (creativity) 

it needs  Linux Shell + Python version v3.10 or higher + jq (CLI JSON parsing tool)

```
git clone https://github.com/GG-off/poked/
cd poked
chmod +x agent.sh
export LLM_API_KEY="[YOUR_OWN_FREE_GROQ_API_KEY]"
./agent.sh [number_of_fire_pokemon_you_want_to_be_serve_with_in_the_JSON_FILE]
```
### known problems and few solutions
- hallucinate, like giving parasect with bug+fire type
- easy prompt injection (any text can be taken as input aside from numbers in decimals or letters)
- did I tell it hallucinates illustation links ? Like this one : https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/dream-world/653.svg"
-- oh wait it works sometimes : https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/dream-world/4.svg
- not random, no seed controle
- can have trouble generating end of JSON output
-- with 200 tokens it was almost always broken, with maximum token it will broke when very big list asked
-- and broke randomly because AI lol
--> automated options do exist to fix it but should only be use if you have the motivation ton build it (i don't)
--> OR a second agent correcting the ouput adding more error sources ?

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
