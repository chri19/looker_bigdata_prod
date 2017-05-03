view: transactions_sb {
  sql_table_name: al.factgametransactionsportsbook ;;
  suggestions: no

  dimension: accountid {
    hidden: yes
    type: number
    value_format_name: id
    sql: ${TABLE}.accountid ;;
  }

  dimension: bonuscontext {
    type: string
    sql: ${TABLE}.bonuscontext ;;
  }

  dimension: brandname {
    type: string
    sql: ${TABLE}.brandname ;;
  }

  dimension_group: calendardate {
    type: time
    timeframes: [
      raw,
      date,
      week,
      month,
      quarter,
      year
    ]
    convert_tz: no
    sql: ${TABLE}.calendardate ;;
  }

  dimension: currencycode {
    type: string
    sql: ${TABLE}.currencycode ;;
  }

  dimension: customerid {
    hidden: yes
    type: string
    sql: ${TABLE}.customerid ;;
  }

  dimension: device {
    type: string
    sql: ${TABLE}.device ;;
  }

  dimension: devicetype {
    type: string
    sql: ${TABLE}.devicetype ;;
  }

  dimension: eventtype {
    type: string
    sql: ${TABLE}.eventtype ;;
  }

  dimension: gameid {
    hidden: yes
    type: string
    sql: ${TABLE}.gameid ;;
  }

  dimension: gameroundreference {
    type: string
    sql: ${TABLE}.gameroundreference ;;
  }

  dimension: providername {
    type: string
    sql: ${TABLE}.providername ;;
  }

  dimension_group: timevalue {
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
    sql: ${TABLE}.timevalue ;;
  }

  dimension: transactionid {
    type: string
    sql: ${TABLE}.transactionid ;;
  }

  #----------------Measures-----------------------

  measure: count {
    type: count
    drill_fields: [providername, brandname]
  }

  measure: amount {
    type: sum
    sql: ${TABLE}.amount ;;
  }

  measure: amounteur {
    type: sum
    sql: ${TABLE}.amounteur ;;
  }

  measure: jackpotamount {
    type: number
    sql: ${TABLE}.jackpotamount ;;
  }

  measure: jackpotamounteur {
    type: number
    sql: ${TABLE}.jackpotamounteur ;;
  }

}
