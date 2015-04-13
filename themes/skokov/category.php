<?php

// Do not delete these lines
if (!empty($_SERVER['SCRIPT_FILENAME']) && 'comments.php' == basename($_SERVER['SCRIPT_FILENAME']))
    die ('Please do not load this page directly. Thanks!');

if ( post_password_required() ) {
    ?> <p><?php _e('This post is password protected. Enter the password to view comments.', 'utititled'); ?></p> <?php
    return;
}

function theme_comment($comment, $args, $depth) {
    $GLOBALS['comment'] = $comment; ?>

    <li>
    <div <?php comment_class(); ?> id="comment-<?php comment_ID(); ?>">
        <div class="comment-info">
            <?php echo get_avatar( $comment, 48 ); ?>
            <span class="author"><?php comment_author_link(); ?></span>
			<span class="meta">
				<?php comment_date('F d, Y'); ?> <?php _e('at', 'utititled'); ?>
                <?php comment_time('g:i a'); ?>
			</span>
        </div>
        <?php if ($comment->comment_approved == '0') : ?>
            <p><?php _e('Your comment is awaiting moderation.', 'utititled'); ?></p>
        <?php else: ?>
            <span class="text-comment">
				<?php comment_text(); ?>
			</span>
        <?php endif; ?>

        <?php
        comment_reply_link(array_merge( $args, array(
            'reply_text' => __('Reply', 'utititled'),
            'before' => '<span class="reply">',
            'after' => '</span>',
            'depth' => $depth,
            'max_depth' => $args['max_depth']
        ))); ?>
    </div>
<?php }

function theme_comment_end() { ?>
    </li>
<?php }
?>

<?php if ( have_comments() ) : ?>

    <div class="single-commentary">

        <h2><?php comments_number(__('No Responses', 'studio'), __('One Commentary', 'utititled'), __('% Commentaries', 'studio') );?> <?php _e('to', 'utititled'); ?> &#8220;<?php the_title(); ?>&#8221;</h2>

        <ul class="commentlist">
            <?php wp_list_comments(array(
                'callback' => 'theme_comment',
                'end-callback' => 'theme_comment_end'
            )); ?>
        </ul>

        <div class="navigation">
            <div class="next"><?php previous_comments_link(__('&laquo; Older Comments', 'utititled')) ?></div>
            <div class="prev"><?php next_comments_link(__('Newer Comments &raquo;', 'utititled')) ?></div>
        </div>

    </div>

<?php else : // this is displayed if there are no comments so far ?>

    <?php if ( comments_open() ) : ?>
        <!-- If comments are open, but there are no comments. -->

    <?php else : // comments are closed ?>
        <!-- If comments are closed. -->
        <p><?php _e('Comments are closed.', 'utititled'); ?></p>

    <?php endif; ?>

<?php endif; ?>


<?php if ( comments_open() ) : ?>

    <div class="commentary-area">
        <form action="<?php echo get_option('siteurl'); ?>/wp-comments-post.php" method="post" id="commentform">
            <h2><?php comment_form_title( __('Leave a Reply', 'utititled'), __('Leave a Reply to %s', 'utititled') ); ?></h2>

            <div class="cancel-comment-reply"><?php cancel_comment_reply_link(); ?></div>

            <?php if ( get_option('comment_registration') && !is_user_logged_in() ) : ?>
                <p>You must be <a href="<?php echo wp_login_url( get_permalink() ); ?>"><?php _e('logged in', 'utititled'); ?></a> <?php _e('to post a comment.', 'utititled'); ?></p>
            <?php else : ?>

            <?php if ( is_user_logged_in() ) : ?>
                <p><?php _e('Logged in as', 'utititled'); ?> <a href="<?php echo get_option('siteurl'); ?>/wp-admin/profile.php"><?php echo $user_identity; ?></a>. <a href="<?php echo wp_logout_url(get_permalink()); ?>" title="<?php _e('Log out of this account', 'utititled'); ?>"><?php _e('Log out &raquo;', 'utititled'); ?></a></p>

                <ul class="list-element">
            <?php else : ?>

                    <li><label for="author"><?php _e('Name', 'utititled'); ?></label></li>
                    <li><input type="text" name="author" id="author" value="<?php echo esc_attr($comment_author); ?>" /></li>
                    <li><label for="email"><?php _e('E-Mail (will not be published)', 'utititled'); ?></label></li>
                    <li><input type="text" name="email" id="email" value="<?php echo esc_attr($comment_author_email); ?>" /></li>
                    <li><label for="url"><?php _e('Website', 'utititled'); ?></label></li>
                    <li><input type="text" name="url" id="url" value="<?php echo esc_attr($comment_author_url); ?>" /></li>
            <?php endif; ?>
                    <li><label for="comment"><?php _e('Comment', 'utititled'); ?></label></li>
                 <li><textarea name="comment" id="comment" cols="50" rows="10"></textarea></li>
                <li><input name="submit" type="submit" id="submit" value="<?php _e('Submit Comment', 'utititled'); ?>" /></li>
                </ul>

            <?php
            comment_id_fields();
            do_action('comment_form', $post->ID);
            ?>

        <?php endif; ?>
        </form>
    </div>

<?php endif; ?>