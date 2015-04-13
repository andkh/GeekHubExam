<?php get_header(); ?>
	<section class="content"><!-- #content -->
			<?php if ( have_posts() ) : while ( have_posts() ) : the_post(); ?>
				<article class="post single">
					<div class="img-post">
						<?php the_post_thumbnail('full', 'class=thumbnail'); ?>
					</div>
					<div class="wrap-exerpt popup">
						<h3><?php the_title(); ?></h3>
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
					<div class="container-exerpt">
						<p class="text-post"><?php the_content(); ?></p>
					</div>
				</article>
			<?php endwhile; ?>
		<?php else: ?>
			<p><?php _e('Sorry, no posts matched your criteria.', 'untititled'); ?></p>
		<?php endif; ?>
	</section>
<?php get_sidebar(); ?>
<?php get_footer(); ?>