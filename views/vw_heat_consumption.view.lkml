view: vw_heat_consumption {
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

  dimension: max_date_dim_heat {
    type: date
    sql: (SELECT MAX(${timestamp_date}) from vw_heat_consumption) ;;
    convert_tz: no
  }

  measure: value {
    type: sum
    sql: ${TABLE}.value ;;
    value_format: "#,##0.00"
  }

  measure: count {
    type: count
    drill_fields: [parameter_name]
  }
}
