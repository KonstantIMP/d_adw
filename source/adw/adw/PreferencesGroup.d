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
module adw.PreferencesGroup;

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
 * A group of preference rows.
 * 
 * An `AdwPreferencesGroup` represents a group or tightly related preferences,
 * which in turn are represented by [class@Adw.PreferencesRow].
 * 
 * To summarize the role of the preferences it gathers, a group can have both a
 * title and a description. The title will be used by
 * [class@Adw.PreferencesWindow] to let the user look for a preference.
 * 
 * ## CSS nodes
 * 
 * `AdwPreferencesGroup` has a single CSS node with name `preferencesgroup`.
 *
 * Since: 1.0
 */
public class PreferencesGroup : Widget
{
	/** the main Gtk struct */
	protected AdwPreferencesGroup* adwPreferencesGroup;

	/** Get the main Gtk struct */
	public AdwPreferencesGroup* getPreferencesGroupStruct(bool transferOwnership = false)
	{
		if (transferOwnership)
			ownedRef = false;
		return adwPreferencesGroup;
	}

	/** the main Gtk struct as a void* */
	protected override void* getStruct()
	{
		return cast(void*)adwPreferencesGroup;
	}

	/**
	 * Sets our main struct and passes it to the parent class.
	 */
	public this (AdwPreferencesGroup* adwPreferencesGroup, bool ownedRef = false)
	{
		this.adwPreferencesGroup = adwPreferencesGroup;
		super(cast(GtkWidget*)adwPreferencesGroup, ownedRef);
	}


	/** */
	public static GType getType()
	{
		return adw_preferences_group_get_type();
	}

	/**
	 * Creates a new `AdwPreferencesGroup`.
	 *
	 * Returns: the newly created `AdwPreferencesGroup`
	 *
	 * Since: 1.0
	 *
	 * Throws: ConstructionException GTK+ fails to create the object.
	 */
	public this()
	{
		auto __p = adw_preferences_group_new();

		if(__p is null)
		{
			throw new ConstructionException("null returned by new");
		}

		this(cast(AdwPreferencesGroup*) __p);
	}

	/**
	 * Adds a child to @self.
	 *
	 * Params:
	 *     child = the widget to add
	 *
	 * Since: 1.0
	 */
	public void add(Widget child)
	{
		adw_preferences_group_add(adwPreferencesGroup, (child is null) ? null : child.getWidgetStruct());
	}

	/**
	 * Gets the description of @self.
	 *
	 * Returns: the description of @self
	 *
	 * Since: 1.0
	 */
	public string getDescription()
	{
		return Str.toString(adw_preferences_group_get_description(adwPreferencesGroup));
	}

	/**
	 * Gets the title of @self.
	 *
	 * Returns: the title of @self
	 *
	 * Since: 1.0
	 */
	public string getTitle()
	{
		return Str.toString(adw_preferences_group_get_title(adwPreferencesGroup));
	}

	/**
	 * Removes a child from @self.
	 *
	 * Params:
	 *     child = the child to remove
	 *
	 * Since: 1.0
	 */
	public void remove(Widget child)
	{
		adw_preferences_group_remove(adwPreferencesGroup, (child is null) ? null : child.getWidgetStruct());
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
		adw_preferences_group_set_description(adwPreferencesGroup, Str.toStringz(description));
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
		adw_preferences_group_set_title(adwPreferencesGroup, Str.toStringz(title));
	}
}
