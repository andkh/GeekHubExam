<?php get_header(); ?>
    <section class="content"><!-- #content -->
        <div  id="our-post-masonry">
            <?php if ( have_posts() ) : while ( have_posts() ) : the_post(); ?>
                <article class="post masonry-item">
                    <div class="img-post">
                        <?php the_post_thumbnail('full', 'class=thumbnail'); ?>
                    </div>
                    <div class="wrap-exerpt popup">
                        <h3><a href="<?php the_permalink(); ?>"><?php the_title(); ?></a></h3>
                        <div class="container-exerpt">
                            <p class="text-post"><?php the_excerpt(); ?></p>
                        </div>
                        <ul class="post-details">
                            <li class="author">
                                <?php _e('by ', 'skokov'); the_author(); ?> /
                            </li>
                            <li class="date">
                                <span class="date"><?php the_time(' M j Y'); ?> /</span>
                            </li>
                            <li class="comments">
                                <span>
                                    <a href="<?php the_permalink(); ?>">
                                        <?php comments_number('0', '1', '%');?> <?php _e('comments', 'skokov'); ?>
                                    </a>
                                </span>
                            </li>
                        </ul>
                    </div>
                </article>
            <?php endwhile; ?>
        </div>
        <div class="pagination">
            <?php
            // global $wp_query;

            $big = 999999999; // need an unlikely integer

            echo paginate_links( array(
                'base' => str_replace( $big, '%#%', esc_url( get_pagenum_link( $big ) ) ),
                'format' => '?paged=%#%',
                'current' => max( 1, get_query_var('paged') ),
                'total' => $wp_query->max_num_pages,
                'end_size' => 0,
                'mid_size' => 0,
                'prev_next' => True,
                'prev_text' => __('PREV'),
                'next_text' => __('Next')
            ) );
            ?>
        </div>
        <?php else: ?>
            <p><?php _e('Sorry, no posts matched your criteria.', 'untititled'); ?></p>
        <?php endif; ?>
    </section>
<?php get_sidebar(); ?>
<?php get_footer(); ?>