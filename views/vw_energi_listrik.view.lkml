view: vw_energi_listrik {
  sql_table_name: `smig-smart-plan-poc.sisi_poc.vw_energi_listrik`
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

  dimension: equipment_code {
    type: string
    sql: ${TABLE}.equipment_code ;;
  }

  dimension: equipment_name {
    type: string
    sql: ${TABLE}.equipment_name ;;
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

### This is the new dimension we created to get the max date from the dimension ###group. We use a subquery in the SQL statement. This SQL example was based ###off of MySQL.

  dimension: max_date_dim_listrik {
    type: date
    sql: (SELECT MAX(${timestamp_date}) from vw_energi_listrik) ;;
    convert_tz: no
  }

  measure: value {
    type: average
    sql: ${TABLE}.value ;;
    value_format: "#,##0.00"
  }

  #measure: last_updated_datetime {
  #  sql: MAX(${TABLE}.timestamp) ;;
  #}

  measure: count {
    type: count
    drill_fields: [equipment_name, parameter_name]
  }


}
