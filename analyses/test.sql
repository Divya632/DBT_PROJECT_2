
{{ codegen.generate_source(
    schema_name='eth',
    database_name='dbt',
    generate_columns=True,
    include_descriptions=True,
    include_data_types=True
) }}