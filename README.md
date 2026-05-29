# hypr-bongocat

A tiny Hyprland plugin that draws a bongo cat on your window that taps while you type!

## Demo (bongo)
[📽️ Demo video (v0.2.1)](https://github.com/user-attachments/assets/1fdaddc6-038f-4a72-b526-8591fa29e1c0)

## Installation
### Requirement
- Newest Hyprland.
- Cmake and a C++ compiler. (usually already builtin if you use hyprland) 

### Install with hyprpm
```bash
hyprpm add https://github.com/roundupssbm/hypr-bongocat
hyprpm enable hypr-bongocat
```

### Build from source
```bash
git clone https://github.com/roundupssbm/hypr-bongocat
cd hypr-bongocat
make all
```
then add it to hyprland:
```bash
hyprctl plugin load /dir/to/hypr-bongocat.so
```
change load to unload to remove the plugin

## Config

```hyprland.lua
hl.config({
    plugin = {
        hypr-bongocat = {
            -- can be from -1 to 1, will be
                -- dynamic ratio with the window instead.
                -- recommend fixed size for image as dynamic can look weird
                -- leave one as 0 to keep original image ratio (image only)
            -- width, height
            size = { 125, 0 },

            -- shift down right (can be from -1 to 1, similarly)
            pos = { 0, -39 },

            --0: left/top, 1: middle, 2: down/right
            origin = { 1, 0 },

            -- path to a directory with both.png, left.png, right.png
            -- Absolute path is needed (~ for home directory is fine)
            imgs = "/path/to/your/imgs",
            -- TODO: make default path support hyprpm out of the box

            -- can also exclude specific windows!
            -- exclude = "kitty, firefox",
        }
    }
})
```

### DEPRECATED - Simple dot or png

This functionality is deprecated and will be removed in a future version
Add the following to your Hyprland.lua for normal configuration with dot or png

```hyprland.lua
hl.plugin({
    plugin = {
        hypr-bongocat {
            -- can be from -1 to 1, will be
                -- dynamic ratio with the window instead.
                -- recommend fixed size for image as dynamic can look weird
                -- in some cases.
                -- leave one as 0 to keep original image ratio (image only)
            -- width, height
            size = { 100, 0 },			

            -- shift down right (can be from -1 to 1 similarly)
            pos = { 0, 0 },

            -- rounding of 3~4 usually results in circle
                -- depends on monitor type
                -- higher and lower will make it look square-ly
                -- doesn't affect image
            rounding = 4.0

            -- color = rgba(FFDD33FF)

            --0: left/top, 1: middle, 2: down/right
            origin = { 1, 0 }, 

            -- Absolute path is needed (~ for home directory is fine)
            img = "/path/to/your/image.png", 
            
            -- can also exclude specific windows!
            exclude = "kitty, firefox",        
        }
	}
})
```


## Contribute
PRs are welcome!

## Credits
[Original project by PohlRabi404](https://github.com/pohlrabi404/Hyprfoci)
