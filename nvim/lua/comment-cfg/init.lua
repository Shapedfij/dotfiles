require("nvim_comment").setup(
  {
    comment_empty = false,
    create_mappings = true,
    -- Normal mode mapping left hand side
    line_mapping = "<space>/",
    -- Visual/Operator mapping left hand side
    operator_mapping = "<space>//"
  }
)
