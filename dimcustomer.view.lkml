view: customers {
  sql_table_name: al.dimcustomer ;;
  suggestions: no

  dimension: acceptemailoffers {
    hidden: yes
    type: string
    sql: ${TABLE}.acceptemailoffers ;;
  }

  dimension: acceptsmsoffers {
    hidden: yes
    type: string
    sql: ${TABLE}.acceptsmsoffers ;;
  }

  dimension: accepttelesalesoffers {
    hidden: yes
    type: string
    sql: ${TABLE}.accepttelesalesoffers ;;
  }

  dimension: accepttermsandcondition {
    hidden: yes
    type: string
    sql: ${TABLE}.accepttermsandcondition ;;
  }

  dimension: accounttype {
    type: string
    sql: ${TABLE}.accounttype ;;
  }

  dimension: affiliatecode {
    type: string
    sql: ${TABLE}.affiliatecode ;;
  }

  dimension: alias {
    type: string
    sql: ${TABLE}.alias ;;
  }

  dimension: brandname {
    type: string
    sql: ${TABLE}.brandname ;;
  }

  dimension: city {
    type: string
    sql: ${TABLE}.city ;;
  }

  dimension: countrycode {
    type: string
    sql: ${TABLE}.countrycode ;;
  }

  dimension: currencycode {
    type: string
    sql: ${TABLE}.currencycode ;;
  }

  dimension: customerid {
    type: string
    sql: ${TABLE}.customerid ;;
  }

  dimension: customermarketname {
    type: string
    sql: ${TABLE}.customermarketname ;;
  }

  dimension: encrpytedbirthdate {
    hidden: yes
    type: string
    sql: ${TABLE}.encrpytedbirthdate ;;
  }


  dimension: externalcustomerid {
    type: number
    value_format_name: id
    sql: ${TABLE}.externalcustomerid ;;
  }

  dimension: genderRaw {
    type: string
    hidden: yes
    sql: ${TABLE}.gender ;;
  }

  dimension: gender {
    type:  string
    sql:
      case
        when ${genderRaw} = 'M' then 'Male'
        when ${genderRaw} = 'F' then 'Female'
        else 'Other'
      end;;
  }


  dimension: inactivereason {
    type: string
    sql: ${TABLE}.inactivereason ;;
  }

  dimension: inactivetype {
    type: string
    sql: ${TABLE}.inactivetype ;;
  }

  dimension: individual_guid {
    hidden: yes
    type: string
    sql: ${TABLE}.individual_guid ;;
  }

  dimension: isinactive {
    type: string
    sql: ${TABLE}.isinactive ;;
  }

  dimension: language {
    type: string
    sql: ${TABLE}.language ;;
  }

  dimension_group: lastinfodate {
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
    sql: ${TABLE}.lastinfodate ;;
  }

  dimension_group: lastinfotime {
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
    sql: ${TABLE}.lastinfotime ;;
  }

  dimension: merchantname {
    type: string
    sql: ${TABLE}.merchantname ;;
  }

  dimension: oldcustomerid {
    hidden: yes
    type: string
    sql: ${TABLE}.oldcustomerid ;;
  }

  dimension: region {
    type: string
    sql: ${TABLE}.region ;;
  }

  dimension_group: registrationdate {
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
    sql: ${TABLE}.registrationdate ;;
  }

  dimension: registrationipaddress {
    hidden: yes
    type: string
    sql: ${TABLE}.registrationipaddress ;;
  }

  dimension: registrationsource {
    type: string
    sql: ${TABLE}.registrationsource ;;
  }

  dimension_group: registrationtime {
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
    sql: ${TABLE}.registrationtime ;;
  }

  dimension: temporaryaccountencourageverificationdate {
    hidden: yes
    type: string
    sql: ${TABLE}.temporaryaccountencourageverificationdate ;;
  }

  dimension: temporaryaccountexpirydate {
    hidden: yes
    type: string
    sql: ${TABLE}.temporaryaccountexpirydate ;;
  }

  dimension: temporaryaccountfreezedate {
    hidden: yes
    type: string
    sql: ${TABLE}.temporaryaccountfreezedate ;;
  }

  dimension: temporaryaccountusefreezeaccount {
    hidden: yes
    type: string
    sql: ${TABLE}.temporaryaccountusefreezeaccount ;;
  }

  dimension: termsandconditionsversionid {
    hidden: yes
    type: number
    value_format_name: id
    sql: ${TABLE}.termsandconditionsversionid ;;
  }

  dimension: timezoneinfoid {
    hidden: yes
    type: string
    sql: ${TABLE}.timezoneinfoid ;;
  }

  measure: count {
    type: count
    drill_fields: [detail*]
  }

  # ----- Sets of fields for drilling ------
  set: detail {
    fields: [
      brandname,
      customermarketname,
      countrycode,
      count
    ]
  }
}
