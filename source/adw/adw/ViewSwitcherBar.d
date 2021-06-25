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
module adw.ViewSwitcherBar;

private import adw.c.functions;
public  import adw.c.types;
private import glib.ConstructionException;
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
 * A view switcher action bar.
 * 
 * An action bar letting you switch between multiple views contained in a
 * [class@Gtk.Stack], via an [class@Adw.ViewSwitcher]. It is designed to be put
 * at the bottom of a window and to be revealed only on really narrow windows,
 * e.g. on mobile phones. It can't be revealed if there are less than two pages.
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
 * `AdwViewSwitcherBar` has a single CSS node with name` viewswitcherbar`.
 *
 * Since: 1.0
 */
public class ViewSwitcherBar : Widget
{
	/** the main Gtk struct */
	protected AdwViewSwitcherBar* adwViewSwitcherBar;

	/** Get the main Gtk struct */
	public AdwViewSwitcherBar* getViewSwitcherBarStruct(bool transferOwnership = false)
	{
		if (transferOwnership)
			ownedRef = false;
		return adwViewSwitcherBar;
	}

	/** the main Gtk struct as a void* */
	protected override void* getStruct()
	{
		return cast(void*)adwViewSwitcherBar;
	}

	/**
	 * Sets our main struct and passes it to the parent class.
	 */
	public this (AdwViewSwitcherBar* adwViewSwitcherBar, bool ownedRef = false)
	{
		this.adwViewSwitcherBar = adwViewSwitcherBar;
		super(cast(GtkWidget*)adwViewSwitcherBar, ownedRef);
	}


	/** */
	public static GType getType()
	{
		return adw_view_switcher_bar_get_type();
	}

	/**
	 * Creates a new `AdwViewSwitcherBar`.
	 *
	 * Returns: the newly created `AdwViewSwitcherBar`
	 *
	 * Since: 1.0
	 *
	 * Throws: ConstructionException GTK+ fails to create the object.
	 */
	public this()
	{
		auto __p = adw_view_switcher_bar_new();

		if(__p is null)
		{
			throw new ConstructionException("null returned by new");
		}

		this(cast(AdwViewSwitcherBar*) __p);
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
		return adw_view_switcher_bar_get_policy(adwViewSwitcherBar);
	}

	/**
	 * Gets whether @self should be revealed or hidden.
	 *
	 * Returns: whether @self is revealed
	 *
	 * Since: 1.0
	 */
	public bool getReveal()
	{
		return adw_view_switcher_bar_get_reveal(adwViewSwitcherBar) != 0;
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
		auto __p = adw_view_switcher_bar_get_stack(adwViewSwitcherBar);

		if(__p is null)
		{
			return null;
		}

		return ObjectG.getDObject!(Stack)(cast(GtkStack*) __p);
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
		adw_view_switcher_bar_set_policy(adwViewSwitcherBar, policy);
	}

	/**
	 * Sets whether @self should be revealed or hidden.
	 *
	 * Params:
	 *     reveal = whether to reveal @self
	 *
	 * Since: 1.0
	 */
	public void setReveal(bool reveal)
	{
		adw_view_switcher_bar_set_reveal(adwViewSwitcherBar, reveal);
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
		adw_view_switcher_bar_set_stack(adwViewSwitcherBar, (stack is null) ? null : stack.getStackStruct());
	}
}
