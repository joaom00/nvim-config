---@diagnostic disable: undefined-global
return {
  snippet("imp", fmt([[import {} from '{}']], { i(0, { "module" }), i(1) })),
  snippet(
    "comme",
    fmt(
      [[
/* -------------------------------------------------------------------------------------------------
 * {}
 * -----------------------------------------------------------------------------------------------*/
  ]],
      { i(0, { "title" }) }
    )
  ),
}
