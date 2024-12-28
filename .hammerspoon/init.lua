
hs = hs

-- Reload Hammerspoon configuration
hs.hotkey.bind({"cmd", "alt", "ctrl"}, "R", function()
    hs.reload()
  end)
hs.alert.show("Config loaded")

-- Pantalla completa
hs.hotkey.bind({"ctrl", "alt"}, "Return", function()
    local win = hs.window.focusedWindow()
    local f = win:frame()
    local screen = win:screen()
    local max = screen:frame()

    f.x = max.x
    f.y = max.y
    f.w = max.w
    f.h = max.h
    win:setFrame(f)
end)

-- Derecha
hs.hotkey.bind({"ctrl", "alt"}, "Right", function()
  local win = hs.window.focusedWindow()
  local f = win:frame()
  local screen = win:screen()
  local max = screen:frame()

  f.x = max.x + (max.w / 2)
  f.y = max.y
  f.w = max.w / 2
  f.h = max.h
  win:setFrame(f)
end)

-- Izquierda
hs.hotkey.bind({"ctrl", "alt"}, "Left", function()
    local win = hs.window.focusedWindow()
    if not win then return end
    
    local screen = win:screen()
    local max = screen:frame()

    win:setFrame({
        x = max.x,
        y = max.y,
        w = max.w / 2,
        h = max.h
    })
end)

-- Abajo
hs.hotkey.bind({"ctrl", "alt"}, "Down", function()
    local win = hs.window.focusedWindow()
    if not win then return end
    
    local screen = win:screen()
    local max = screen:frame()

    win:setFrame({
        x = max.x,
        y = max.y + (max.h / 2),
        w = max.w,
        h = max.h / 2
    })
end)

-- Arriba
hs.hotkey.bind({"ctrl", "alt"}, "Up", function()
    local win = hs.window.focusedWindow()
    if not win then return end
    
    local screen = win:screen()
    local max = screen:frame()

    win:setFrame({
        x = max.x,
        y = max.y,
        w = max.w,
        h = max.h / 2
    })
end)

-- Focus Safari
-- hs.hotkey.bind({"ctrl", "alt"}, "S", function()
--     local safari = hs.application.get("Safari")
--     if safari then
--         safari:activate()
--     else
--         hs.alert.show("Safari no está abierto")
--     end
-- end)
