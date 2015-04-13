 </div>
<footer><!-- #footer -->
    <ul>
        <?php if(!dynamic_sidebar('wrap-footer')) : ?>
            <li>
                <section class="widget">
                    <h2>Empty area</h2>
                </section>
            </li>
        <?php endif ?>
    </ul>
    <div class="footer-bottom">
        <div class="footer-wrap">
            <span class="copyright"><?php the_date( 'Y', '', ' Copyright ©.'); ?>- FreeForWebDesign.com - All Rights Reserved</span>
            <?php wp_nav_menu(array('menu' => 'footer-nav', 'container' => false) ); ?>
        </div>
    </div>
</footer>
<?php wp_footer(); ?>
</body>
</html>