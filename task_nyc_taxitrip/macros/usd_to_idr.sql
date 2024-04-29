{% macro usd_to_idr(total_amount) %}
    ROUND({{ total_amount }} * 16241.5, 0)
{% endmacro %}

