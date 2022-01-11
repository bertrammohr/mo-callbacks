# Mohr#6969 Callback functions

## Hvordan bruges det??

### Client side

**Brug et callback:**
```lua
    local args, to, send = "a", "b", "c"
    cCallback:TriggerServerCallback("yourCallbackName", function(arguments, toBe, returned)
        print(args, to, send, arguments, toBe, returned)
        -- Prints: a,   b,   c,   d,   e,   f
    end, args, to, send)
```

### Server side

**Lav et nyt callback:**
```lua
    sCallback:RegisterServerCallback("yourCallbackName", function(args, to, send)
        print("Recieved:", args, to, send)
        local arguments, toBe, returned = "d", "e", "f"
        return arguments, toBe, returned
    end)
```

## Optimeret og ændret af OMikkel#3217

## Support
**Kontakt mig på DK FiveM, hvis der er fejl, mangler eller problemer. http://fivem.dk/discord - Kun seriøse henvendelser.**
