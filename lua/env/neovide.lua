
if vim.fn.exists('g:neovide') ~= 0 then
    vim.g.neovide_transparency = 0.85
    vim.g.neovide_transparency_point = 0.0
    if vim.fn.has('macunix') ~= 0 then
    	vim.g.neovide_transparency=0.0
	vim.g.transparency = 0.8
	vim.cmd("let g:neovide_background_color = '#0f1117'.printf('%x', float2nr(255 * g:transparency))")
    end
    vim.g.neovide_refresh_rate = 60
    vim.g.neovide_refresh_rate_idle = 5
    vim.g.neovide_floating_blur_amount_x = 2.0
    vim.g.neovide_floating_blur_amount_y = 2.0
    vim.g.neovide_scroll_animation_length = 0.3
    vim.g.neovide_neovide_no_idle = true
    vim.g.neovide_fullscreen = true
    vim.g.neovide_confirm_quit = false
    vim.g.neovide_remember_window_size = true
    vim.g.neovide_profiler = false
    vim.keymap.set('n', 'ee', ':let g:neovide_profiler=!g:neovide_profiler<CR>')
    vim.g.neovide_underline_automatic_scaling = false
    vim.g.neovide_input_use_logo = true
    vim.g.neovide_input_macos_alt_is_meta = false
    vim.g.neovide_touch_deadzone = -1
    if vim.g.neovide_touch_deadzone >= 0.0 then
    	vim.g.neovide_touch_drag_timeout = 0.17
    end
    vim.g.neovide_cursor_animation_length = 0.1
    vim.g.neovide_cursor_trail_length = 0.8
    vim.g.neovide_cursor_antialiasing = true
    vim.g.neovide_cursor_unfocused_outline_width = 0.125
    vim.g.neovide_cursor_vfx_mode = "railgun"
    -- railgun, toperdo, pixiedust, sonicboom, ripple, wireframe
    vim.g.neovide_cursor_vfx_opacity = 200.0
    vim.g.neovide_cursor_vfx_particle_lifetime = 1.7
    vim.g.neovide_cursor_vfx_particle_desity = 7.0
    vim.g.neovide_cursor_vfx_particle_speed = 49.0
    if vim.g.neovide_cursor_vfx_mode == "railgun" then
    	vim.g.neovide_cursor_vfx_particle_phase = 1.5
    	vim.g.neovide_cursor_vfx_particle_curl = 1.7
    end
    
end

