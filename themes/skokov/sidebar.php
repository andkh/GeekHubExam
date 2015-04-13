<aside class="sidebar"><!-- #sidebar -->
     <ul>
        <?php if(!dynamic_sidebar(sidebar)) : ?>
            <li>
                <section class="widget">
                    <h2>Categories</h2>
                    <?php wp_list_categories(); ?>
                </section>
            </li>
        <?php endif ?>
    </ul>
</aside>