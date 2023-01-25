local wezterm = require('wezterm')

return {
    check_for_updates = false,

    harfbuzz_features = { 'calt=0', 'clig=0', 'liga=0' },
    font = wezterm.font('Fantasque Sans Mono'),
    font_size = 14,
    term = 'wezterm',
}
