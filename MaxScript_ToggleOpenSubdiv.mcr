macroScript ToggleOpenSubdiv
	category:"__CustomMacro__"
	toolTip:""
(
	-- ///////////////////////////////
	-- This will toggle OpenSubdiv modifier from current selection on/off
	-- ///////////////////////////////

	-- The name of modifier to toggle
	modName = "OpenSubdiv"

	-- Iterate through selection
	for o in selection do
	(
		-- Iterate through object modifier
		for mod in o.modifiers do 
		(
			-- Toggle modifier on/off
			if mod.name == modName then
			(
				mod.enabled = not mod.enabled
			)
			
		)
	)

	-- Do reselect to update modifier checkbox UI
	if modPanel.getCurrentObject() != undefined then
		modPanel.setCurrentObject(  modPanel.getCurrentObject()  )

)
