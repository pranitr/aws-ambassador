# All policies start with the org package definition
package org

# import CircleCI specific helper functions
import data.circleci.config

# Declare a policy name
policy_name["context_enforcement"]

# Declare a rule
rule_contexts_allowed_by_project_ids = config.contexts_allowed_by_project_ids(
    ["b0e545b9-0664-4e2e-a171-787115862e7d"],
    ["ambassador"]
)

# Enable the rule
enable_hard["rule_contexts_allowed_by_project_ids"]
