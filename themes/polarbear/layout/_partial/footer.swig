<span class="copyright-year">
    {% set current = date(Date.now(), "YYYY") %}
        &copy;
    {% if theme.since and theme.since != current %}
        {{ theme.since }} -
    {% endif %}
    {{ current }}
    <span class="footer-author"><a href="//www.calamus.xyz" target="_blank">{{ config.author }}.</a></span>
    <span class="power-by">
        {{ __('footer.powered', '<a class="hexo-link" href="https://hexo.io/" target="_blank">Hexo</a> and <a class="theme-link" href="https://github.com/frostfan/hexo-theme-polarbear">Polar Bear</a>') }}
    </span>
</span>
