connection: "betsson_dl_prod"

# include all the views
include: "*.view"

# include all the dashboards
include: "*.dashboard"

persist_for: "8 hours" #caching data for 8 hours

explore: customers {
  join: customers_info {
    sql_on: lower(${customers.customerid}) = lower(${customers_info.guid}) ;;
  }
}

explore: transactions_goc {
  join: customers {
    sql_on: lower(${transactions_goc.customerid}) = lower(${customers.customerid}) ;;
  }
  join: customers_info {
    sql_on: lower(${transactions_goc.customerid}) = lower(${customers_info.guid}) ;;
  }
}

explore: transactions_sb {
  join: customers {
    sql_on: lower(${transactions_sb.customerid}) = lower(${customers.customerid}) ;;
  }
  join: customers_info {
    sql_on: lower(${transactions_sb.customerid}) = lower(${customers_info.guid}) ;;
  }
}

explore: revenue_overview {
  join: customers {
    sql_on: lower(${revenue_overview.customerguid}) = lower(${customers.customerid}) ;;
  }
  join: customers_info {
    sql_on: lower(${revenue_overview.customerguid}) = lower(${customers_info.guid}) ;;
  }
}
