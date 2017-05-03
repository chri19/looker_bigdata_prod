connection: "betsson_dl_prod"

# include all the views
include: "*.view"

# include all the dashboards
include: "*.dashboard"

persist_for: "8 hours"

explore: brands {}

explore: customers {}

explore: customers_info {}

explore: transactions_goc {}

explore: transactions_sb {}

explore: revenue_overview {}
