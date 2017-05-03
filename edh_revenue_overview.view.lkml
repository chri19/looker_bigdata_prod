view: revenue_overview {
  sql_table_name: edh.edh_revenue_overview ;;
  suggestions: no

  dimension: bonuscontextname {
    type: string
    sql: ${TABLE}.bonuscontextname ;;
  }

  dimension: bonuscosttotal {
    type: number
    sql: ${TABLE}.bonuscosttotal ;;
  }

  dimension: bonuscosttotal_eur {
    type: number
    sql: ${TABLE}.bonuscosttotal_eur ;;
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
    type: number
    sql: ${TABLE}.gamewin ;;
  }

  dimension: gamewin_eur {
    type: number
    sql: ${TABLE}.gamewin_eur ;;
  }

  dimension: isactive {
    type: yesno
    sql: ${TABLE}.isactive ;;
  }

  dimension: loyaltycost {
    type: number
    sql: ${TABLE}.loyaltycost ;;
  }

  dimension: loyaltycost_eur {
    type: number
    sql: ${TABLE}.loyaltycost_eur ;;
  }

  dimension: othercomponents {
    type: number
    sql: ${TABLE}.othercomponents ;;
  }

  dimension: othercomponents_eur {
    type: number
    sql: ${TABLE}.othercomponents_eur ;;
  }

  dimension: partnershipproviderrevenue {
    type: number
    sql: ${TABLE}.partnershipproviderrevenue ;;
  }

  dimension: partnershipproviderrevenue_eur {
    type: number
    sql: ${TABLE}.partnershipproviderrevenue_eur ;;
  }

  dimension: partnershiptotalaccountingrevenue {
    type: number
    sql: ${TABLE}.partnershiptotalaccountingrevenue ;;
  }

  dimension: partnershiptotalaccountingrevenue_eur {
    type: number
    sql: ${TABLE}.partnershiptotalaccountingrevenue_eur ;;
  }

  dimension: providername {
    type: string
    sql: ${TABLE}.providername ;;
  }

  dimension: providerrevenue {
    type: number
    sql: ${TABLE}.providerrevenue ;;
  }

  dimension: providerrevenue_eur {
    type: number
    sql: ${TABLE}.providerrevenue_eur ;;
  }

  dimension_group: regdate {
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

  dimension: rounds {
    type: number
    sql: ${TABLE}.rounds ;;
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
    type: number
    sql: ${TABLE}.totalaccountingrevenue ;;
  }

  dimension: totalaccountingrevenue_eur {
    type: number
    sql: ${TABLE}.totalaccountingrevenue_eur ;;
  }

  dimension: turnover {
    type: number
    sql: ${TABLE}.turnover ;;
  }

  dimension: turnover_eur {
    type: number
    sql: ${TABLE}.turnover_eur ;;
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
