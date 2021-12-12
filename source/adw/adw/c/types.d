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
public import gio.c.types;
public import gobject.c.types;
public import gtk.c.types;


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
 * Application color schemes for [property@Adw.StyleManager:color-scheme].
 *
 * Since: 1.0
 */
public enum AdwColorScheme
{
	/**
	 * Inherit the parent color-scheme. When set on the
	 * `AdwStyleManager` returned by [func@Adw.StyleManager.get_default], it's
	 * equivalent to `ADW_COLOR_SCHEME_PREFER_LIGHT`.
	 */
	DEFAULT = 0,
	/**
	 * Always use light appearance.
	 */
	FORCE_LIGHT = 1,
	/**
	 * Use light appearance unless the system
	 * prefers dark colors.
	 */
	PREFER_LIGHT = 2,
	/**
	 * Use dark appearance unless the system prefers
	 * prefers light colors.
	 */
	PREFER_DARK = 3,
	/**
	 * Always use dark appearance.
	 */
	FORCE_DARK = 4,
}
alias AdwColorScheme ColorScheme;

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
 * Determines when [class@Adw.Flap] and [class@Adw.Leaflet] will fold.
 *
 * Since: 1.0
 */
public enum AdwFoldThresholdPolicy
{
	/**
	 * Folding is based on the minimum size
	 */
	MINIMUM = 0,
	/**
	 * Folding is based on the natural size
	 */
	NATURAL = 1,
}
alias AdwFoldThresholdPolicy FoldThresholdPolicy;

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
	 * Force the narrow mode
	 */
	NARROW = 0,
	/**
	 * Force the wide mode
	 */
	WIDE = 1,
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

struct AdwApplication
{
	GtkApplication parentInstance;
}

struct AdwApplicationClass
{
	/**
	 * The parent class
	 */
	GtkApplicationClass parentClass;
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

struct AdwButtonContent;

struct AdwButtonContentClass
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

struct AdwEnumListItem;

struct AdwEnumListItemClass
{
	GObjectClass parentClass;
}

struct AdwEnumListModel;

struct AdwEnumListModelClass
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

struct AdwSplitButton;

struct AdwSplitButtonClass
{
	GtkWidgetClass parentClass;
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

struct AdwStyleManager;

struct AdwStyleManagerClass
{
	GObjectClass parentClass;
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

struct AdwViewStack;

struct AdwViewStackClass
{
	GtkWidgetClass parentClass;
}

struct AdwViewStackPage;

struct AdwViewStackPageClass
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

/**
 * Adw major version component (e.g. 1 if %ADW_VERSION is 1.2.3)
 */
enum MAJOR_VERSION = 1;
alias ADW_MAJOR_VERSION = MAJOR_VERSION;

/**
 * Adw micro version component (e.g. 3 if %ADW_VERSION is 1.2.3)
 */
enum MICRO_VERSION = 0;
alias ADW_MICRO_VERSION = MICRO_VERSION;

/**
 * Adw minor version component (e.g. 2 if %ADW_VERSION is 1.2.3)
 */
enum MINOR_VERSION = 0;
alias ADW_MINOR_VERSION = MINOR_VERSION;

/**
 * Adwaita version, encoded as a string, useful for printing and
 * concatenation.
 */
enum VERSION_S = "1.0.0.alpha.4";
alias ADW_VERSION_S = VERSION_S;
