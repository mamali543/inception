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
define( 'DB_USER', 'reda' );

/** Database password */
define( 'DB_PASSWORD', 'reda' );

/** Database hostname */
define( 'DB_HOST', 'localhost' );

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
define('AUTH_KEY',         ')wCGl^}o3uhzeJXGnOGE|:$?QkG=5pWS+mQ|FO{]Dd5.Z8E.>am kK@XLgs|(b7(');
define('SECURE_AUTH_KEY',  '-se@m4_ASZjnws7l=-.9bjOT5+ L!s6*m:[--lFLR+i]ST7d6/0;>|,nm+aZ+_y-');
define('LOGGED_IN_KEY',    '6lxc!Gmxt5S2=)j9]~7@vJ7_a<X3He%0mMMguIm1~[P.9U6d9^}lShNWhzwNd>:%');
define('NONCE_KEY',        '{g5xQ [XsP|k@]CcLfP3`Mat8$/Egtt30g^G*HA1`J^Jk@_&@`81_w(QY{SRj&ff');
define('AUTH_SALT',        '@+I_~4j!XBWD&[*ET!sLb:(5k,*(XS(z4WvX:=!(GUd;Nv,E>_ay o^=r2IZ{(||');
define('SECURE_AUTH_SALT', 'H2$Ol6e*CrxqP<yiX34OeXs|G<Nh>;{H&-(Jc3bo|62l?MrteMvVPX<uula9i2A7');
define('LOGGED_IN_SALT',   '#tp(^JI(`t:D$WS><VYMfnt2q^+yt:L|&(tULmkFbC`b-0)}E*3^T7.$.}>$iw2D');
define('NONCE_SALT',       '&%Cv{ax5ucC/v|.(!)}}I_Xh+N(xigG[/sPIx?Bh?:Jv4d.F+rG`joT|KsrbT6;L');

/**#@-*/

/**
 * WordPress database table prefix.
 *
 * You can have multiple installations in one database if you give each
 * a unique prefix. Only numbers, letters, and underscores please!
 */
$table_prefix = 'wp_';

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
define( 'WP_DEBUG', false );

/* Add any custom values between this line and the "stop editing" line. */



/* That's all, stop editing! Happy publishing. */

/** Absolute path to the WordPress directory. */
if ( ! defined( 'ABSPATH' ) ) {
	define( 'ABSPATH', __DIR__ . '/' );
}

/** Sets up WordPress vars and included files. */
require_once ABSPATH . 'wp-settings.php';
