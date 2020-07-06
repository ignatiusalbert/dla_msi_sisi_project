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

  measure: value_01_541_be01 {
    type: average
    sql: ${TABLE}.value_01_541BE01 ;;
  }

  measure: value_02_541_bi05 {
    type: average
    sql: ${TABLE}.value_02_541BI05 ;;
  }

  measure: value_03_541_da01 {
    type: average
    sql: ${TABLE}.value_03_541DA01 ;;
  }

  measure: value_04_541_fn05 {
    type: average
    sql: ${TABLE}.value_04_541FN05 ;;
  }

  measure: value_05_541_da02 {
    type: average
    sql: ${TABLE}.value_05_541DA02 ;;
  }

  measure: value_06_541_da03 {
    type: average
    sql: ${TABLE}.value_06_541DA03 ;;
  }

  measure: value_07_561_be01 {
    type: average
    sql: ${TABLE}.value_07_561BE01 ;;
  }

  measure: value_08_441_fn20 {
    type: average
    sql: ${TABLE}.value_08_441FN20 ;;
  }

  measure: value_09_541_da05 {
    type: average
    sql: ${TABLE}.value_09_541DA05 ;;
  }

  measure: value_10_541_da06 {
    type: average
    sql: ${TABLE}.value_10_541DA06 ;;
  }

  measure: value_11_541_da04 {
    type: average
    sql: ${TABLE}.value_11_541DA04 ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}
