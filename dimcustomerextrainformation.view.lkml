view: customers_info {
  sql_table_name: al.dimcustomerextrainformation ;;
  suggestions: no

  dimension: bonusbalance {
    type: number
    sql: ${TABLE}.bonusbalance ;;
  }

  dimension: createdate {
    type: string
    sql: ${TABLE}.createdate ;;
  }

  dimension: firstdepositamount {
    type: number
    sql: ${TABLE}.firstdepositamount ;;
  }

  dimension: firstdepositamounteur {
    type: number
    sql: ${TABLE}.firstdepositamounteur ;;
  }

  dimension: firstdepositamountplayercurrency {
    type: string
    sql: ${TABLE}.firstdepositamountplayercurrency ;;
  }

  dimension_group: firstdepositdate {
    type: time
    timeframes: [
      raw,
      time,
      date,
      week,
      month,
      quarter,
      year
    ]
    sql: ${TABLE}.firstdepositdate ;;
  }

  dimension_group: firstlogindate {
    type: time
    timeframes: [
      raw,
      time,
      date,
      week,
      month,
      quarter,
      year
    ]
    sql: ${TABLE}.firstlogindate ;;
  }

  dimension: firstwithdrawamount {
    type: number
    sql: ${TABLE}.firstwithdrawamount ;;
  }

  dimension: firstwithdrawamounteur {
    type: number
    sql: ${TABLE}.firstwithdrawamounteur ;;
  }

  dimension: firstwithdrawamountplayercurrency {
    type: string
    sql: ${TABLE}.firstwithdrawamountplayercurrency ;;
  }

  dimension_group: firstwithdrawdate {
    type: time
    timeframes: [
      raw,
      time,
      date,
      week,
      month,
      quarter,
      year
    ]
    sql: ${TABLE}.firstwithdrawdate ;;
  }

  dimension: guid {
    type: string
    sql: ${TABLE}.guid ;;
  }

  dimension: hashedemailaddress {
    type: string
    sql: ${TABLE}.hashedemailaddress ;;
  }

  dimension: lastdepositamount {
    type: number
    sql: ${TABLE}.lastdepositamount ;;
  }

  dimension: lastdepositamounteur {
    type: number
    sql: ${TABLE}.lastdepositamounteur ;;
  }

  dimension: lastdepositamountplayercurrency {
    type: string
    sql: ${TABLE}.lastdepositamountplayercurrency ;;
  }

  dimension_group: lastdepositdate {
    type: time
    timeframes: [
      raw,
      time,
      date,
      week,
      month,
      quarter,
      year
    ]
    sql: ${TABLE}.lastdepositdate ;;
  }

  dimension_group: lastlogindate {
    type: time
    timeframes: [
      raw,
      time,
      date,
      week,
      month,
      quarter,
      year
    ]
    sql: ${TABLE}.lastlogindate ;;
  }

  dimension: lastwithdrawamount {
    type: number
    sql: ${TABLE}.lastwithdrawamount ;;
  }

  dimension: lastwithdrawamounteur {
    type: number
    sql: ${TABLE}.lastwithdrawamounteur ;;
  }

  dimension: lastwithdrawamountplayercurrency {
    type: string
    sql: ${TABLE}.lastwithdrawamountplayercurrency ;;
  }

  dimension_group: lastwithdrawdate {
    type: time
    timeframes: [
      raw,
      time,
      date,
      week,
      month,
      quarter,
      year
    ]
    sql: ${TABLE}.lastwithdrawdate ;;
  }

  dimension: realbalance {
    type: number
    sql: ${TABLE}.realbalance ;;
  }

  dimension: totalbetamounteur {
    type: number
    sql: ${TABLE}.totalbetamounteur ;;
  }

  dimension: totalbonuscosteur {
    type: number
    sql: ${TABLE}.totalbonuscosteur ;;
  }

  dimension: totaldepositamounteur {
    type: number
    sql: ${TABLE}.totaldepositamounteur ;;
  }

  dimension: totalgamewineur {
    type: number
    sql: ${TABLE}.totalgamewineur ;;
  }

  dimension: totalnumberofdeposits {
    type: number
    sql: ${TABLE}.totalnumberofdeposits ;;
  }

  dimension: totalnumberoflogins {
    type: number
    sql: ${TABLE}.totalnumberoflogins ;;
  }

  dimension: totalnumberofrounds {
    type: number
    sql: ${TABLE}.totalnumberofrounds ;;
  }

  dimension: totalnumberofwithdrawals {
    type: number
    sql: ${TABLE}.totalnumberofwithdrawals ;;
  }

  dimension: totalwinamounteur {
    type: number
    sql: ${TABLE}.totalwinamounteur ;;
  }

  dimension: totalwithdrawamounteur {
    type: number
    sql: ${TABLE}.totalwithdrawamounteur ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}
