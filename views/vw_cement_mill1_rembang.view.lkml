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

  dimension: value_01_541_be01 {
    type: number
    sql: ${TABLE}.value_01_541BE01 ;;
  }

  dimension: value_02_541_bi05 {
    type: number
    sql: ${TABLE}.value_02_541BI05 ;;
  }

  dimension: value_03_541_da01 {
    type: number
    sql: ${TABLE}.value_03_541DA01 ;;
  }

  dimension: value_04_541_fn05 {
    type: number
    sql: ${TABLE}.value_04_541FN05 ;;
  }

  dimension: value_05_541_da02 {
    type: number
    sql: ${TABLE}.value_05_541DA02 ;;
  }

  dimension: value_06_541_da03 {
    type: number
    sql: ${TABLE}.value_06_541DA03 ;;
  }

  dimension: value_07_561_be01 {
    type: number
    sql: ${TABLE}.value_07_561BE01 ;;
  }

  dimension: value_08_441_fn20 {
    type: number
    sql: ${TABLE}.value_08_441FN20 ;;
  }

  dimension: value_09_541_da05 {
    type: number
    sql: ${TABLE}.value_09_541DA05 ;;
  }

  dimension: value_10_541_da06 {
    type: number
    sql: ${TABLE}.value_10_541DA06 ;;
  }

  dimension: value_11_541_da04 {
    type: number
    sql: ${TABLE}.value_11_541DA04 ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}
