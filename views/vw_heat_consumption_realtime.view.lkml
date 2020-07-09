view: vw_heat_consumption_realtime {
  sql_table_name: `smig-smart-plan-poc.sisi_poc.vw_heat_consumption`
    ;;

  dimension: addr {
    type: string
    sql: ${TABLE}.addr ;;
  }

  dimension: data {
    type: string
    sql: ${TABLE}.data ;;
  }

  dimension: datatype {
    type: string
    sql: ${TABLE}.datatype ;;
  }

  dimension: location {
    type: string
    sql: ${TABLE}.location ;;
  }

  dimension: parameter_code {
    type: string
    sql: ${TABLE}.parameter_code ;;
  }

  dimension: parameter_name {
    type: string
    sql: ${TABLE}.parameter_name ;;
  }

  dimension: quality {
    type: string
    sql: ${TABLE}.quality ;;
  }

  dimension: tag_number {
    type: string
    sql: ${TABLE}.tag_number ;;
  }

  dimension_group: timestamp {
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
    sql: CAST(${TABLE}.timestamp AS TIMESTAMP) ;;
  }

  dimension: max_date_dim {
    type: date
    sql: (SELECT MAX(${timestamp_date}_date}_date}) from vw_heat_consumption) ;;
    convert_tz: no
  }

  measure: value {
    type: average
    sql: ${TABLE}.value ;;
    value_format: "#,##0.00"
  }

  measure: count {
    type: count
    drill_fields: [parameter_name]
  }
}
