view: revenue_overview {
  sql_table_name: edh.edh_revenue_overview ;;
  suggestions: no

  dimension: bonuscontextname {
    type: string
    sql: ${TABLE}.bonuscontextname ;;
  }



  dimension: brandname {
    type: string
    sql: ${TABLE}.brandname ;;
  }

  dimension_group: calendardate {
    hidden: yes
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

  dimension_group: calendardatecet {
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
    sql: ${TABLE}.calendardatecet ;;
  }


  dimension: currencycode {
    type: string
    sql: ${TABLE}.currencycode ;;
  }

  dimension: customerguid {
    type: string
    sql: ${TABLE}.customerguid ;;
  }

  dimension: customermarketname {
    type: string
    sql: ${TABLE}.customermarketname ;;
  }

  dimension: deviceid {
    hidden: yes
    type: string
    sql: ${TABLE}.deviceid ;;

  }

  dimension: gamewin {
    hidden: yes
    type: number
    sql: ${TABLE}.gamewin ;;
  }

  dimension: gamewin_eur {
    hidden: yes
    type: number
    sql: ${TABLE}.gamewin_eur ;;
  }

  dimension: isactive {
    type: yesno
    sql: ${TABLE}.isactive ;;
  }


  dimension: providername {
    type: string
    sql: ${TABLE}.providername ;;
  }


  dimension_group: regdate {
    hidden: yes
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
    sql: ${TABLE}.regdate ;;
  }

  dimension: segmentlevel01name {
    type: string
    sql: ${TABLE}.segmentlevel01name ;;
  }

  dimension: segmentlevel02name {
    type: string
    sql: ${TABLE}.segmentlevel02name ;;
  }

  dimension: segmentlevel03name {
    type: string
    sql: ${TABLE}.segmentlevel03name ;;
  }

  dimension: totalaccountingrevenue {
    hidden: yes
    type: number
    sql: ${TABLE}.totalaccountingrevenue ;;
  }

  dimension: turnover {
    hidden: yes
    type: number
    sql: ${TABLE}.turnover ;;
  }

  dimension: turnover_eur {
    hidden: yes
    type: number
    sql: ${TABLE}.turnover_eur ;;
  }

# ----- Measures ------

  measure: bonuscosttotal {
    type: sum
    sql: ${TABLE}.bonuscosttotal ;;
  }

  measure: bonuscosttotal_eur {
    type: sum
    sql: ${TABLE}.bonuscosttotal_eur ;;
  }

  measure: totalaccountingrevenue_eur {
    type: number
    sql: ${TABLE}.totalaccountingrevenue_eur ;;
  }

  measure: count {
    type: count
    drill_fields: [detail*]
  }

  measure: sum_turnover {
    type:  sum
    sql: ${turnover_eur} ;;
  }

  measure: GameWin {
    type: sum
    sql: ${gamewin} ;;
  }

  measure: GameWinEur {
    type: sum
    sql: ${gamewin_eur} ;;
  }

  measure: rounds {
    type: sum
    sql: ${TABLE}.rounds ;;
  }

  measure: providerrevenue {
    type: sum
    sql: ${TABLE}.providerrevenue ;;
  }

  measure: providerrevenue_eur {
    type: sum
    sql: ${TABLE}.providerrevenue_eur ;;
  }

  # ----- Sets of fields for drilling ------
  set: detail {
    fields: [
      customermarketname,
      brandname,
      providername,
      bonuscontextname,
      segmentlevel01name,
      segmentlevel02name,
      segmentlevel03name
    ]
  }
}
