view: vw_heat_consumption {
  sql_table_name: `sisi_poc.vw_heat_consumption`
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

  dimension: timestamp {
    type: string
    sql: ${TABLE}.timestamp ;;
  }

  dimension: value {
    type: number
    sql: ${TABLE}.value ;;
  }

  measure: count {
    type: count
    drill_fields: [parameter_name]
  }
}
