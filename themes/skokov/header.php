<!DOCTYPE html>
<html>
<head lang="en">
    <meta http-equiv="Content-type" content="text/html; charset=<?php bloginfo('charset'); ?>" />
    <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1" />
    <meta http-equiv="X-UA-Compatible" content="IE=Edge" />
    <title><?php bloginfo('name'); ?><?php wp_title(); ?></title>
    <link rel="pingback" href="<?php bloginfo('pingback_url'); ?>" />
    <?php wp_head(); ?>
</head>
<body>
<header><!-- #header -->
    <div class="wrap-header">
        <?php if ( function_exists( 'jetpack_the_site_logo' ) ) jetpack_the_site_logo(); ?>
        <nav class="main-navigation">
            <? wp_nav_menu(array('menu' => 'top-nav', 'menu_class' => 'nav')); ?>
        </nav>
    </div>
    <div class="wrap-title">
        <div class="container-title">
            <h1>
                <?php wp_title(); ?>
            </h1>
        </div>
    </div>
</header>
 <div class="container-content">