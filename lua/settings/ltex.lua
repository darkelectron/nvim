local opts = {
  settings = {
    ltex = {
      enabled = {"latex", "tex", "bib"},
      language = {"en-GB", "en-US"},
      clearDiagnosticsWhenClosingFile = false,
      checkFrequency = "save",
      diagnosticSeverity="information",
      additionalRules = {
        enablePickyRules = true,
        motherTongue= "en-GB",
      };
    }
  }
}

return opts
