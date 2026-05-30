hl.monitor({
    output   = "VGA-1",
    mode     = "1440x900@60",
    position = "0x0",
    scale    = "1",
})

hl.workspace_rule( { workspace = "1", monitor = "VGA-1", persistent = true } )
hl.workspace_rule( { workspace = "2", monitor = "VGA-1", persistent = true } )
hl.workspace_rule( { workspace = "3", monitor = "VGA-1", persistent = true } )
hl.workspace_rule( { workspace = "4", monitor = "VGA-1", persistent = true } )
hl.workspace_rule( { workspace = "5", monitor = "VGA-1", persistent = true } )

