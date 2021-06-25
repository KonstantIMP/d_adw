/*
 * This file is part of d_adw.
 *
 * d_adw is free software; you can redistribute it and/or modify
 * it under the terms of the GNU Lesser General Public License
 * as published by the Free Software Foundation; either version 3
 * of the License, or (at your option) any later version, with
 * some exceptions, please read the COPYING file.
 *
 * d_adw is distributed in the hope that it will be useful,
 * but WITHOUT ANY WARRANTY; without even the implied warranty of
 * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
 * GNU Lesser General Public License for more details.
 *
 * You should have received a copy of the GNU Lesser General Public License
 * along with d_adw; if not, write to the Free Software
 * Foundation, Inc., 51 Franklin St, Fifth Floor, Boston, MA 02110, USA
 */
module adw.c.types;

public import gdk.c.types;
public import gdkpixbuf.c.types;
public import gio.c.types;
public import gobject.c.types;
public import gtk.c.types;
public import pango.c.types;


/**
 * Describes title centering behavior of a [class@Adw.HeaderBar] widget.
 *
 * Since: 1.0
 */
public enum AdwCenteringPolicy
{
	/**
	 * Keep the title centered when possible
	 */
	LOOSE = 0,
	/**
	 * Keep the title centered at all cost
	 */
	STRICT = 1,
}
alias AdwCenteringPolicy CenteringPolicy;

/**
 * Describes the possible folding behavior of a [class@Adw.Flap] widget.
 *
 * Since: 1.0
 */
public enum AdwFlapFoldPolicy
{
	/**
	 * Disable folding, the flap cannot reach narrow
	 * sizes.
	 */
	NEVER = 0,
	/**
	 * Keep the flap always folded.
	 */
	ALWAYS = 1,
	/**
	 * Fold and unfold the flap based on available
	 * space.
	 */
	AUTO = 2,
}
alias AdwFlapFoldPolicy FlapFoldPolicy;

/**
 * Describes transitions types of a [class@Adw.Flap] widget.
 *
 * It determines the type of animation when transitioning between children in a
 * [class@Adw.Flap] widget, as well as which areas can be swiped via
 * [property@Adw.Flap:swipe-to-open] and [property@Adw.Flap:swipe-to-close].
 *
 * New values may be added to this enum over time.
 *
 * Since: 1.0
 */
public enum AdwFlapTransitionType
{
	/**
	 * The flap slides over the content, which is
	 * dimmed. When folded, only the flap can be swiped.
	 */
	OVER = 0,
	/**
	 * The content slides over the flap. Only the
	 * content can be swiped.
	 */
	UNDER = 1,
	/**
	 * The flap slides offscreen when hidden,
	 * neither the flap nor content overlap each other. Both widgets can be
	 * swiped.
	 */
	SLIDE = 2,
}
alias AdwFlapTransitionType FlapTransitionType;

/**
 * Describes the possible transitions in a [class@Adw.Leaflet] widget.
 *
 * New values may be added to this enumeration over time.
 *
 * Since: 1.0
 */
public enum AdwLeafletTransitionType
{
	/**
	 * Cover the old page or uncover the new page, sliding from or towards the end according to orientation, text direction and children order
	 */
	OVER = 0,
	/**
	 * Uncover the new page or cover the old page, sliding from or towards the start according to orientation, text direction and children order
	 */
	UNDER = 1,
	/**
	 * Slide from left, right, up or down according to the orientation, text direction and the children order
	 */
	SLIDE = 2,
}
alias AdwLeafletTransitionType LeafletTransitionType;

/**
 * Describes the direction of a swipe navigation gesture.
 *
 * Since: 1.0
 */
public enum AdwNavigationDirection
{
	/**
	 * Corresponds to start or top, depending on orientation and text direction
	 */
	BACK = 0,
	/**
	 * Corresponds to end or bottom, depending on orientation and text direction
	 */
	FORWARD = 1,
}
alias AdwNavigationDirection NavigationDirection;

/**
 * Describes the possible transitions in a [class@Adw.Squeezer] widget.
 *
 * Since: 1.0
 */
public enum AdwSqueezerTransitionType
{
	/**
	 * No transition
	 */
	NONE = 0,
	/**
	 * A cross-fade
	 */
	CROSSFADE = 1,
}
alias AdwSqueezerTransitionType SqueezerTransitionType;

/**
 * Describes the adaptive modes of [class@Adw.ViewSwitcher].
 */
public enum AdwViewSwitcherPolicy
{
	/**
	 * Automatically adapt to the best fitting mode
	 */
	AUTO = 0,
	/**
	 * Force the narrow mode
	 */
	NARROW = 1,
	/**
	 * Force the wide mode
	 */
	WIDE = 2,
}
alias AdwViewSwitcherPolicy ViewSwitcherPolicy;

struct AdwActionRow
{
	AdwPreferencesRow parentInstance;
}

struct AdwActionRowClass
{
	/**
	 * The parent class
	 */
	AdwPreferencesRowClass parentClass;
	/** */
	extern(C) void function(AdwActionRow* self) activate;
	void*[4] padding;
}

struct AdwApplicationWindow
{
	GtkApplicationWindow parentInstance;
}

struct AdwApplicationWindowClass
{
	GtkApplicationWindowClass parentClass;
	void*[4] padding;
}

struct AdwAvatar;

struct AdwAvatarClass
{
	GtkWidgetClass parentClass;
}

struct AdwBin
{
	GtkWidget parentInstance;
}

struct AdwBinClass
{
	GtkWidgetClass parentClass;
}

struct AdwCarousel;

struct AdwCarouselClass
{
	GtkWidgetClass parentClass;
}

struct AdwCarouselIndicatorDots;

struct AdwCarouselIndicatorDotsClass
{
	GtkWidgetClass parentClass;
}

struct AdwCarouselIndicatorLines;

struct AdwCarouselIndicatorLinesClass
{
	GtkWidgetClass parentClass;
}

struct AdwClamp;

struct AdwClampClass
{
	GtkWidgetClass parentClass;
}

struct AdwClampLayout;

struct AdwClampLayoutClass
{
	GtkLayoutManagerClass parentClass;
}

struct AdwClampScrollable;

struct AdwClampScrollableClass
{
	GtkWidgetClass parentClass;
}

struct AdwComboRow
{
	AdwActionRow parentInstance;
}

struct AdwComboRowClass
{
	/**
	 * The parent class
	 */
	AdwActionRowClass parentClass;
	void*[4] padding;
}

struct AdwEnumListModel;

struct AdwEnumListModelClass
{
	GObjectClass parentClass;
}

struct AdwEnumValueObject;

struct AdwEnumValueObjectClass
{
	GObjectClass parentClass;
}

struct AdwExpanderRow
{
	AdwPreferencesRow parentInstance;
}

struct AdwExpanderRowClass
{
	/**
	 * The parent class
	 */
	AdwPreferencesRowClass parentClass;
	void*[4] padding;
}

struct AdwFlap;

struct AdwFlapClass
{
	GtkWidgetClass parentClass;
}

struct AdwHeaderBar;

struct AdwHeaderBarClass
{
	GtkWidgetClass parentClass;
}

struct AdwLeaflet;

struct AdwLeafletClass
{
	GtkWidgetClass parentClass;
}

struct AdwLeafletPage;

struct AdwLeafletPageClass
{
	GObjectClass parentClass;
}

struct AdwPreferencesGroup
{
	GtkWidget parentInstance;
}

struct AdwPreferencesGroupClass
{
	/**
	 * The parent class
	 */
	GtkWidgetClass parentClass;
	void*[4] padding;
}

struct AdwPreferencesPage
{
	GtkWidget parentInstance;
}

struct AdwPreferencesPageClass
{
	/**
	 * The parent class
	 */
	GtkWidgetClass parentClass;
	void*[4] padding;
}

struct AdwPreferencesRow
{
	GtkListBoxRow parentInstance;
}

struct AdwPreferencesRowClass
{
	/**
	 * The parent class
	 */
	GtkListBoxRowClass parentClass;
	void*[4] padding;
}

struct AdwPreferencesWindow
{
	AdwWindow parentInstance;
}

struct AdwPreferencesWindowClass
{
	/**
	 * The parent class
	 */
	AdwWindowClass parentClass;
	void*[4] padding;
}

struct AdwSqueezer;

struct AdwSqueezerClass
{
	GtkWidgetClass parentClass;
}

struct AdwSqueezerPage;

struct AdwSqueezerPageClass
{
	GObjectClass parentClass;
}

struct AdwStatusPage;

struct AdwStatusPageClass
{
	GtkWidgetClass parentClass;
}

struct AdwSwipeTracker;

struct AdwSwipeTrackerClass
{
	GObjectClass parentClass;
}

struct AdwSwipeable;

/**
 * An interface for swipeable widgets.
 *
 * Since: 1.0
 */
struct AdwSwipeableInterface
{
	/**
	 * The parent interface.
	 */
	GTypeInterface parent;
	/**
	 *
	 * Params:
	 *     self = a `AdwSwipeable`
	 * Returns: the swipe distance in pixels
	 */
	extern(C) double function(AdwSwipeable* self) getDistance;
	/**
	 *
	 * Params:
	 *     self = a `AdwSwipeable`
	 * Returns: the snap points
	 */
	extern(C) double* function(AdwSwipeable* self, int* nSnapPoints) getSnapPoints;
	/**
	 *
	 * Params:
	 *     self = a `AdwSwipeable`
	 * Returns: the current progress, unitless
	 */
	extern(C) double function(AdwSwipeable* self) getProgress;
	/**
	 *
	 * Params:
	 *     self = a `AdwSwipeable`
	 * Returns: the cancel progress, unitless
	 */
	extern(C) double function(AdwSwipeable* self) getCancelProgress;
	/** */
	extern(C) void function(AdwSwipeable* self, AdwNavigationDirection navigationDirection, int isDrag, GdkRectangle* rect) getSwipeArea;
	void*[4] padding;
}

struct AdwTabBar;

struct AdwTabBarClass
{
	GtkWidgetClass parentClass;
}

struct AdwTabPage;

struct AdwTabPageClass
{
	GObjectClass parentClass;
}

struct AdwTabView;

struct AdwTabViewClass
{
	GtkWidgetClass parentClass;
}

struct AdwValueObject;

struct AdwValueObjectClass
{
	GObjectClass parentClass;
}

struct AdwViewSwitcher;

struct AdwViewSwitcherBar;

struct AdwViewSwitcherBarClass
{
	GtkWidgetClass parentClass;
}

struct AdwViewSwitcherClass
{
	GtkWidgetClass parentClass;
}

struct AdwViewSwitcherTitle;

struct AdwViewSwitcherTitleClass
{
	GtkWidgetClass parentClass;
}

struct AdwWindow
{
	GtkWindow parentInstance;
}

struct AdwWindowClass
{
	GtkWindowClass parentClass;
	void*[4] padding;
}

struct AdwWindowTitle;

struct AdwWindowTitleClass
{
	GtkWidgetClass parentClass;
}
