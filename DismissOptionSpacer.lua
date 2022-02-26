hooksecurefunc("GossipFrameOptionsUpdate", function()
  local lastButtonIndex = #GossipFrame.buttons
  local lastButton = GossipFrame.buttons[lastButtonIndex]
  if lastButtonIndex > 1 and lastButton:GetText():find(PET_DISMISS) ~= nil then
    lastButton:SetPoint(
      "TOPLEFT",
      GossipFrame_GetTitleButton(lastButtonIndex - 1),
      "BOTTOMLEFT",
      0,
      (GossipFrame.insertSeparator and -19 or 0) - 50
    )
  end
end)
