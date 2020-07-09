view: vw_cement_mill1_rembang {
  sql_table_name: `smig-smart-plan-poc.sisi_poc.vw_cement_mill1_rembang`
    ;;

  dimension: sensor_data {
    type: string
    sql: ${TABLE}.sensor_data ;;
  }

  dimension_group: timekey {
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
    sql: ${TABLE}.timekey ;;
  }

  #dimension: max_date_dim_mill1 {
  #  type: date
  # sql: (SELECT MAX(${timekey_date}) from vw_cement_mill1_rembang) ;;
  #  convert_tz: no
  #}

  measure: value_01_541be01 {
    type: average
    sql: ${TABLE}.value_01_541BE01 ;;
    value_format: "#,##0.00"
  }

  measure: value_02_541bi05 {
    type: average
    sql: ${TABLE}.value_02_541BI05 ;;
    value_format: "#,##0.00"
  }

  measure: value_03_541da01 {
    type: average
    sql: ${TABLE}.value_03_541DA01 ;;
    value_format: "#,##0.00"
  }

  measure: value_04_541fn05 {
    type: average
    sql: ${TABLE}.value_04_541FN05 ;;
    value_format: "#,##0.00"
  }

  measure: value_05_541da02 {
    type: average
    sql: ${TABLE}.value_05_541DA02 ;;
    value_format: "#,##0.00"
  }

  measure: value_06_541da03 {
    type: average
    sql: ${TABLE}.value_06_541DA03 ;;
    value_format: "#,##0.00"
  }

  measure: value_07_561be01 {
    type: average
    sql: ${TABLE}.value_07_561BE01 ;;
    value_format: "#,##0.00"
  }

  measure: value_08_441fn20 {
    type: average
    sql: ${TABLE}.value_08_441FN20 ;;
    value_format: "#,##0.00"
  }

  measure: value_09_541da05 {
    type: average
    sql: ${TABLE}.value_09_541DA05 ;;
    value_format: "#,##0.00"
  }

  measure: value_10_541da06 {
    type: average
    sql: ${TABLE}.value_10_541DA06 ;;
    value_format: "#,##0.00"
  }

  measure: value_11_541da04 {
    type: average
    sql: ${TABLE}.value_11_541DA04 ;;
    value_format: "#,##0.00"
  }

  measure: count {
    type: count
    drill_fields: []
  }
}
