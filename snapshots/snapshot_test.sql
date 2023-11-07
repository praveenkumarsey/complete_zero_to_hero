{% snapshot snapshot_test %}
    {{
        config(
          target_database='analytics',
          target_schema='snapshots',
          unique_key='id',
          strategy='timestamp',
          updated_at='updated_at',
        )
    }}

    -- Pro-Tip: Use sources in snapshots!
select * from {{ ref('first_model') }}

{% endsnapshot %}
