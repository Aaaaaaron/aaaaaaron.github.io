{% macro render() %}
<div id="primary">
  <section id="archive" class="archive">

    {% for post in page.posts %}

      {% set year %}
      {% set post.year = date(post.date, 'YYYY') %}

      {% if post.year !== year %}
        {% set year = post.year %}
      {% endif %}

      <h6 class="archive-title">
        <div class="archive-post">
          <span class="archive-post-time">
            {{ date(post.date, 'YYYY MMM D') }}
          </span>
          <span class="archive-post-title">
            <a href="{{ url_for(post.path) }}" class="archive-post-link">
              {{ post.title }}
            </a>
          </span>
        </div>
      </h6>
    {% endfor %}
  </section>
 </div>

  {% include '../_partial/pagination.swig' %}
{% endmacro %}
