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
module adw.ViewSwitcherTitle;

private import adw.c.functions;
public  import adw.c.types;
private import glib.ConstructionException;
private import glib.Str;
private import glib.c.functions;
private import gobject.ObjectG;
private import gtk.AccessibleIF;
private import gtk.AccessibleT;
private import gtk.BuildableIF;
private import gtk.BuildableT;
private import gtk.ConstraintTargetIF;
private import gtk.ConstraintTargetT;
private import gtk.Stack;
private import gtk.Widget;


/**
 * A view switcher title.
 * 
 * A widget letting you switch between multiple views contained by a
 * [class@Gtk.Stack] via an [class@Adw.ViewSwitcher].
 * 
 * It is designed to be used as the title widget of a [class@Adw.HeaderBar], and
 * will display the window's title when the window is too narrow to fit the view
 * switcher e.g. on mobile phones, or if there are less than two views.
 * 
 * You can conveniently bind the [property@Adw.ViewSwitcherBar:reveal] property
 * to [property@Adw.ViewSwitcherTitle:title-visible] to automatically reveal the
 * view switcher bar when the title label is displayed in place of the view
 * switcher.
 * 
 * An example of the UI definition for a common use case:
 * 
 * ```xml
 * <object class="GtkWindow"/>
 * <child type="titlebar">
 * <object class="AdwHeaderBar">
 * <property name="centering-policy">strict</property>
 * <child type="title">
 * <object class="AdwViewSwitcherTitle" id="title">
 * <property name="stack">stack</property>
 * </object>
 * </child>
 * </object>
 * </child>
 * <child>
 * <object class="GtkBox">
 * <child>
 * <object class="GtkStack" id="stack"/>
 * </child>
 * <child>
 * <object class="AdwViewSwitcherBar">
 * <property name="stack">stack</property>
 * <binding name="reveal">
 * <lookup name="title-visible">title</lookup>
 * </binding>
 * </object>
 * </child>
 * </object>
 * </child>
 * </object>
 * ```
 * 
 * ## CSS nodes
 * 
 * `AdwViewSwitcherTitle` has a single CSS node with name `viewswitchertitle`.
 *
 * Since: 1.0
 */
public class ViewSwitcherTitle : Widget
{
	/** the main Gtk struct */
	protected AdwViewSwitcherTitle* adwViewSwitcherTitle;

	/** Get the main Gtk struct */
	public AdwViewSwitcherTitle* getViewSwitcherTitleStruct(bool transferOwnership = false)
	{
		if (transferOwnership)
			ownedRef = false;
		return adwViewSwitcherTitle;
	}

	/** the main Gtk struct as a void* */
	protected override void* getStruct()
	{
		return cast(void*)adwViewSwitcherTitle;
	}

	/**
	 * Sets our main struct and passes it to the parent class.
	 */
	public this (AdwViewSwitcherTitle* adwViewSwitcherTitle, bool ownedRef = false)
	{
		this.adwViewSwitcherTitle = adwViewSwitcherTitle;
		super(cast(GtkWidget*)adwViewSwitcherTitle, ownedRef);
	}


	/** */
	public static GType getType()
	{
		return adw_view_switcher_title_get_type();
	}

	/**
	 * Creates a new `AdwViewSwitcherTitle`.
	 *
	 * Returns: the newly created `AdwViewSwitcherTitle`
	 *
	 * Since: 1.0
	 *
	 * Throws: ConstructionException GTK+ fails to create the object.
	 */
	public this()
	{
		auto __p = adw_view_switcher_title_new();

		if(__p is null)
		{
			throw new ConstructionException("null returned by new");
		}

		this(cast(AdwViewSwitcherTitle*) __p);
	}

	/**
	 * Gets the policy of @self.
	 *
	 * Returns: the policy of @self
	 *
	 * Since: 1.0
	 */
	public AdwViewSwitcherPolicy getPolicy()
	{
		return adw_view_switcher_title_get_policy(adwViewSwitcherTitle);
	}

	/**
	 * Gets the stack controlled by @self.
	 *
	 * Returns: the stack
	 *
	 * Since: 1.0
	 */
	public Stack getStack()
	{
		auto __p = adw_view_switcher_title_get_stack(adwViewSwitcherTitle);

		if(__p is null)
		{
			return null;
		}

		return ObjectG.getDObject!(Stack)(cast(GtkStack*) __p);
	}

	/**
	 * Gets the subtitle of @self.
	 *
	 * Returns: the subtitle
	 *
	 * Since: 1.0
	 */
	public string getSubtitle()
	{
		return Str.toString(adw_view_switcher_title_get_subtitle(adwViewSwitcherTitle));
	}

	/**
	 * Gets the title of @self.
	 *
	 * Returns: the title
	 *
	 * Since: 1.0
	 */
	public string getTitle()
	{
		return Str.toString(adw_view_switcher_title_get_title(adwViewSwitcherTitle));
	}

	/**
	 * Gets whether the title of @self is currently visible.
	 *
	 * Returns: whether the title of @self is currently visible
	 *
	 * Since: 1.0
	 */
	public bool getTitleVisible()
	{
		return adw_view_switcher_title_get_title_visible(adwViewSwitcherTitle) != 0;
	}

	/**
	 * Gets whether @self's view switcher is enabled.
	 *
	 * Returns: whether the view switcher is enabled
	 *
	 * Since: 1.0
	 */
	public bool getViewSwitcherEnabled()
	{
		return adw_view_switcher_title_get_view_switcher_enabled(adwViewSwitcherTitle) != 0;
	}

	/**
	 * Sets the policy of @self.
	 *
	 * Params:
	 *     policy = the new policy
	 *
	 * Since: 1.0
	 */
	public void setPolicy(AdwViewSwitcherPolicy policy)
	{
		adw_view_switcher_title_set_policy(adwViewSwitcherTitle, policy);
	}

	/**
	 * Sets the stack controlled by @self.
	 *
	 * Params:
	 *     stack = a stack
	 *
	 * Since: 1.0
	 */
	public void setStack(Stack stack)
	{
		adw_view_switcher_title_set_stack(adwViewSwitcherTitle, (stack is null) ? null : stack.getStackStruct());
	}

	/**
	 * Sets the subtitle of @self.
	 *
	 * Params:
	 *     subtitle = a subtitle
	 *
	 * Since: 1.0
	 */
	public void setSubtitle(string subtitle)
	{
		adw_view_switcher_title_set_subtitle(adwViewSwitcherTitle, Str.toStringz(subtitle));
	}

	/**
	 * Sets the title of @self.
	 *
	 * Params:
	 *     title = a title
	 *
	 * Since: 1.0
	 */
	public void setTitle(string title)
	{
		adw_view_switcher_title_set_title(adwViewSwitcherTitle, Str.toStringz(title));
	}

	/**
	 * Sets whether @self's view switcher is enabled.
	 *
	 * Params:
	 *     enabled = whether the view switcher is enabled
	 *
	 * Since: 1.0
	 */
	public void setViewSwitcherEnabled(bool enabled)
	{
		adw_view_switcher_title_set_view_switcher_enabled(adwViewSwitcherTitle, enabled);
	}
}
