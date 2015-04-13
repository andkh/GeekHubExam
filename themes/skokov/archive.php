<?php get_header(); ?>
    <section class="content">
        <h1 class="page-title">Page(Archive): <?php the_title(); ?></h1>
        <?php if ( have_posts() ) : while ( have_posts() ) : the_post(); ?>
        <h2><a href="<?php the_permalink(); ?>"><?php the_title(); ?></a></h2>
         <span><?php the_time(' F j, Y'); ?></span>
         <article class="post">
           <p><?php the_excerpt(); ?></p>
           <a href="<?php the_permalink(); ?>">Read more ...</a>
        </article>
         <?php endwhile; ?>
         <?php else: ?>
         <p><?php _e('Sorry, no posts matched your criteria.'); ?></p>
         <?php endif; ?>
     </section>
<?php get_sidebar(); ?>
<?php get_footer(); ?>