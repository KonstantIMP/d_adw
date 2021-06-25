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
module adw.StatusPage;

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
private import gtk.Widget;


/**
 * A page used for empty/error states and similar use-cases.
 * 
 * The `AdwStatusPage` widget can have an icon, a title, a description and a
 * custom widget which is displayed below them.
 * 
 * ## CSS nodes
 * 
 * `AdwStatusPage` has a main CSS node with name `statuspage`.
 *
 * Since: 1.0
 */
public class StatusPage : Widget
{
	/** the main Gtk struct */
	protected AdwStatusPage* adwStatusPage;

	/** Get the main Gtk struct */
	public AdwStatusPage* getStatusPageStruct(bool transferOwnership = false)
	{
		if (transferOwnership)
			ownedRef = false;
		return adwStatusPage;
	}

	/** the main Gtk struct as a void* */
	protected override void* getStruct()
	{
		return cast(void*)adwStatusPage;
	}

	/**
	 * Sets our main struct and passes it to the parent class.
	 */
	public this (AdwStatusPage* adwStatusPage, bool ownedRef = false)
	{
		this.adwStatusPage = adwStatusPage;
		super(cast(GtkWidget*)adwStatusPage, ownedRef);
	}


	/** */
	public static GType getType()
	{
		return adw_status_page_get_type();
	}

	/**
	 * Creates a new `AdwStatusPage`.
	 *
	 * Returns: the newly created `AdwStatusPage`
	 *
	 * Since: 1.0
	 *
	 * Throws: ConstructionException GTK+ fails to create the object.
	 */
	public this()
	{
		auto __p = adw_status_page_new();

		if(__p is null)
		{
			throw new ConstructionException("null returned by new");
		}

		this(cast(AdwStatusPage*) __p);
	}

	/**
	 * Gets the child widget of @self.
	 *
	 * Returns: the child widget of @self
	 *
	 * Since: 1.0
	 */
	public Widget getChild()
	{
		auto __p = adw_status_page_get_child(adwStatusPage);

		if(__p is null)
		{
			return null;
		}

		return ObjectG.getDObject!(Widget)(cast(GtkWidget*) __p);
	}

	/**
	 * Gets the description for @self.
	 *
	 * Returns: the description
	 *
	 * Since: 1.0
	 */
	public string getDescription()
	{
		return Str.toString(adw_status_page_get_description(adwStatusPage));
	}

	/**
	 * Gets the icon name for @self.
	 *
	 * Returns: the icon name
	 *
	 * Since: 1.0
	 */
	public string getIconName()
	{
		return Str.toString(adw_status_page_get_icon_name(adwStatusPage));
	}

	/**
	 * Gets the title for @self.
	 *
	 * Returns: the title
	 *
	 * Since: 1.0
	 */
	public string getTitle()
	{
		return Str.toString(adw_status_page_get_title(adwStatusPage));
	}

	/**
	 * Sets the child widget of @self.
	 *
	 * Params:
	 *     child = the child widget
	 *
	 * Since: 1.0
	 */
	public void setChild(Widget child)
	{
		adw_status_page_set_child(adwStatusPage, (child is null) ? null : child.getWidgetStruct());
	}

	/**
	 * Sets the description for @self.
	 *
	 * Params:
	 *     description = the description
	 *
	 * Since: 1.0
	 */
	public void setDescription(string description)
	{
		adw_status_page_set_description(adwStatusPage, Str.toStringz(description));
	}

	/**
	 * Sets the icon name for @self.
	 *
	 * Params:
	 *     iconName = the icon name
	 *
	 * Since: 1.0
	 */
	public void setIconName(string iconName)
	{
		adw_status_page_set_icon_name(adwStatusPage, Str.toStringz(iconName));
	}

	/**
	 * Sets the title for @self.
	 *
	 * Params:
	 *     title = the title
	 *
	 * Since: 1.0
	 */
	public void setTitle(string title)
	{
		adw_status_page_set_title(adwStatusPage, Str.toStringz(title));
	}
}
