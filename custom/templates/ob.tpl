{%- extends 'markdown/index.md.j2' -%}

{% block input %}
```
{%- if 'magics_language' in cell.metadata  -%}
    {{ cell.metadata.magics_language}}
{%- elif 'name' in nb.metadata.get('language_info', {}) -%}
    {{ nb.metadata.language_info.name }}
{%- endif %}{{ ' '.join(cell.metadata.tags) }}
{{ cell.source}}
```
{% endblock input %}
