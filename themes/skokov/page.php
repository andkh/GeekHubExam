<?php get_header(); ?>
    <section class="content">
    	<h1 class="page-title">Page(page): <?php the_title(); ?></h1>
	<?php
		$args = array(
			'post_type' => 'team'
		);
		// The Query
		$the_query = new WP_Query( $args );

		// The Loop
		if ( $the_query->have_posts() ) {
			echo '<ul>';
			while ( $the_query->have_posts() ) {
				$the_query->the_post();
				echo '<li><h2>'.get_the_title().'</h2><p>'.get_the_content().'</p></li>';
			}
			echo '</ul>';
		} else {
			echo 'Not Page found';
		}
		/* Restore original Post Data */
		wp_reset_postdata();
	?>
    </section>
<?php get_sidebar(); ?>
<?php get_footer(); ?>