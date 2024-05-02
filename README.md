# poked ~ straightforward zero-dependency AI POWERED CLI POKEDEX (o)

Fork of ariya's ask-llm [[https://github.com/ariya/ask-llm]]

point is : trying to force standard JSON ouput while maximising temperature (creativity)

forcing by prompt is working BUT this is also a GROQ feature to force JSON :o

it needs  Linux Shell + Python version v3.10 or higher (JS GO and CLJ are pretty artefacts for art colors stats and references)

```
git clone https://github.com/GG-off/poked/
cd poked
chmod +x agent.sh
export LLM_API_KEY="[YOUR_OWN_FREE_GROQ_API_KEY]"
./agent.sh [number_of_fire_pokemon_you_want_to_be_serve_with_in_the_JSON_FILE]
```

### known problems and few solutions
- hallucinate, like giving parasect with bug+fire type
- easy prompt injection (any text can be taken as input aside from numbers in decimals or letters) -> 
exemple of prompt injection input : "three digimon and two birds" instead of "5" :P
- it tries sometimes to serve a link to illustrate the pokemon, like https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/dream-world/653.svg and it and matches when it doesn't mix different pokedex indexes (this is going deep lol) or generate fakemon after prompt injection
- not random but supposed to be, no seed controle yet

### JSON output
without JSON mode it can have trouble generating end of JSON output -- with 200 tokens it was almost always broken, with maximum token it will broke when very big list asked -- and broke randomly because AI lol --> automated options do exist to fix it but should only be use if you have the motivation ton build it (i don't) --> OR a second agent correcting the ouput adding more error sources ? So thanks for JSON Mode!
Next : pushing creativity then constrain it

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
