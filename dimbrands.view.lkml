view: brands {
  sql_table_name: al.dimbrands ;;
  suggestions: no

  dimension: branddescription {
    type: string
    sql: ${TABLE}.branddescription ;;
  }

  dimension: brandid {
    type: number
    value_format_name: id
    sql: ${TABLE}.brandid ;;
  }

  dimension: brandname {
    type: string
    sql:  ${TABLE}.brandname ;;
  }

  dimension: merchantname {
    type: string
    sql: ${TABLE}.merchantname ;;
  }

  measure: count {
    type: count
    drill_fields: [brandname, merchantname]
  }
}
