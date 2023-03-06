<?php
/**
 * The base configuration for WordPress
 *
 * The wp-config.php creation script uses this file during the installation.
 * You don't have to use the web site, you can copy this file to "wp-config.php"
 * and fill in the values.
 *
 * This file contains the following configurations:
 *
 * * Database settings
 * * Secret keys
 * * Database table prefix
 * * Localized language
 * * ABSPATH
 *
 * @link https://wordpress.org/support/article/editing-wp-config-php/
 *
 * @package WordPress
 */

// ** Database settings - You can get this info from your web host ** //
/** The name of the database for WordPress */
define( 'DB_NAME', 'wordpress' );

/** Database username */
define( 'DB_USER', 'otmallah' );

/** Database password */
define( 'DB_PASSWORD', 'pass' );

/** Database hostname */
define( 'DB_HOST', 'mariadb' );

/** Database charset to use in creating database tables. */
define( 'DB_CHARSET', 'utf8' );

/** The database collate type. Don't change this if in doubt. */
define( 'DB_COLLATE', '' );

/**#@+
 * Authentication unique keys and salts.
 *
 * Change these to different unique phrases! You can generate these using
 * the {@link https://api.wordpress.org/secret-key/1.1/salt/ WordPress.org secret-key service}.
 *
 * You can change these at any point in time to invalidate all existing cookies.
 * This will force all users to have to log in again.
 *
 * @since 2.6.0
 */
define( 'AUTH_KEY',          'CcV06Z_8P=aGR tKU{tb8xS-6y79?3gzOgy6j!&?6W*XUi1fZ!G$p5@/jq]dtjO6' );
define( 'SECURE_AUTH_KEY',   ':dkDPp]V(2pxB,o 4s@a{~p|Mh6q2*,-iS{,`v6J6*u+X> K)IFRkuB>=IFzf:IO' );
define( 'LOGGED_IN_KEY',     '3Z&4].=j(ho:_D_H?r;;w/uvtGuxyA/<ly<USPt |n=#%wSG+tt]m7 zp,RERe9C' );
define( 'NONCE_KEY',         'zLTu|nCH,2@i*WJdT[wO)FiL 88I ;X(*4]lNo:cq`+=3S+8+FGoN1DqC+Xd,r*~' );
define( 'AUTH_SALT',         '~;&nfY)&FTBYEXk!}#ro<=T3P9uUoGG,c~pW[)*[THu(C_XC@#>7#I:^+uv@::G4' );
define( 'SECURE_AUTH_SALT',  'kecm2n6zNC2;*%967%g%|@wJ![Jla[i*hrn|?5P_/sM,SmJsnl}_cT#Q)7NW9@y(' );
define( 'LOGGED_IN_SALT',    '6I-nP~`z{tS]o=[%4$2ORR<v)gSNUKSau:+v}/no|>}-L2]R?*$Y+bg=o1bAb2%B' );
define( 'NONCE_SALT',        ')&<rAQyOIQI4N!*d0XSY`jJdNC5`XYdiYe?!Q o`q{>J,47;AO.cuq_{]I4{+<Pt' );
define( 'WP_CACHE_KEY_SALT', 'QZG<V +-r$ihOa^bvM/{v|$q}LB!x4-kqg`1Vl<k*uWD+p$g[=V?jx:y2Oe4y%b-' );
/**#@-*/

/**
 * WordPress database table prefix.
 *
 * You can have multiple installations in one database if you give each
 * a unique prefix. Only numbers, letters, and underscores please!
 */
$table_prefix = 'wp_';


/* Add any custom values between this line and the "stop editing" line. */



/**
 * For developers: WordPress debugging mode.
 *
 * Change this to true to enable the display of notices during development.
 * It is strongly recommended that plugin and theme developers use WP_DEBUG
 * in their development environments.
 *
 * For information on other constants that can be used for debugging,
 * visit the documentation.
 *
 * @link https://wordpress.org/support/article/debugging-in-wordpress/
 */
if ( ! defined( 'WP_DEBUG' ) ) {
        define( 'WP_DEBUG', false );
}

/* That's all, stop editing! Happy publishing. */

/** Absolute path to the WordPress directory. */
if ( ! defined( 'ABSPATH' ) ) {
        define( 'ABSPATH', __DIR__ . '/' );
}

/** Sets up WordPress vars and included files. */
require_once ABSPATH . 'wp-settings.php';

