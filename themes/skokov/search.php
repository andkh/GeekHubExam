<?php get_header(); ?>
<section class="content" data-same-height="blog-info">
    <h1 class="content-heading"><?php printf( __('Search Results for: %s', 'default'), get_search_query() ); ?></h1>
    <?php if (have_posts()): while (have_posts()): the_post(); ?>
        <h3><a href="<?php the_permalink(); ?>"><?php the_title(); ?></a></h3>
        <p><?php the_excerpt(); ?></p>
    <?php endwhile;	else:?>
        <p><?php echo __('Sorry, no results found'); ?></p>
    <?php endif; ?>
</section>
<?php get_footer(); ?>