-- depends_on: {{ ref("model_a") }}
{% if execute %}
    {{ dbt_profiler.get_profile(relation=ref("model_a"), exclude_measures=["std_dev_population", "std_dev_sample", "row_count"]) }}
{% endif %}

