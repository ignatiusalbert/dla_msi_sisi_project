view: vw_cement_mill2_rembang {
  sql_table_name: `smig-smart-plan-poc.sisi_poc.vw_cement_mill2_rembang`
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

  measure: value_01_542be01 {
    type: average
    sql: ${TABLE}.value_01_542BE01 ;;
  }

  measure: value_02_542bi05 {
    type: average
    sql: ${TABLE}.value_02_542BI05 ;;
  }

  measure: value_03_542da01 {
    type: average
    sql: ${TABLE}.value_03_542DA01 ;;
  }

  measure: value_04_542fn05 {
    type: average
    sql: ${TABLE}.value_04_542FN05 ;;
  }

  measure: value_05_542da02 {
    type: average
    sql: ${TABLE}.value_05_542DA02 ;;
  }

  measure: value_06_542da03 {
    type: average
    sql: ${TABLE}.value_06_542DA03 ;;
  }

  measure: value_07_562be01 {
    type: average
    sql: ${TABLE}.value_07_562BE01 ;;
  }

  measure: value_08_441fn21 {
    type: average
    sql: ${TABLE}.value_08_441FN21 ;;
  }

  measure: value_09_542da05 {
    type: average
    sql: ${TABLE}.value_09_542DA05 ;;
  }

  measure: value_10_542da06 {
    type: average
    sql: ${TABLE}.value_10_542DA06 ;;
  }

  measure: value_11_542da04 {
    type: average
    sql: ${TABLE}.value_11_542DA04 ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}
