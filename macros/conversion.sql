{% macro conversion(value, decimals) %}
  {{ value }} / power(10, {{ decimals }})
{% endmacro %}
