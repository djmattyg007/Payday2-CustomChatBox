local setup_endscreen_hud_original = HUDManager.setup_endscreen_hud

function HUDManager:_set_custom_hud_chat_offset(offset)
    self._hud_chat_ingame:set_offset(offset)
end

function HUDManager:setup_endscreen_hud(...)
    self._hud_chat_ingame:disconnect_mouse()
    return setup_endscreen_hud_original(self, ...)
end
