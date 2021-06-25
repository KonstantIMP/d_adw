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
module adw.ApplicationWindow;

private import adw.c.functions;
public  import adw.c.types;
private import glib.ConstructionException;
private import gobject.ObjectG;
private import gtk.AccessibleIF;
private import gtk.AccessibleT;
private import gtk.Application;
private import gtk.ApplicationWindow : DGtkApplicationWindow = ApplicationWindow;
private import gtk.BuildableIF;
private import gtk.BuildableT;
private import gtk.ConstraintTargetIF;
private import gtk.ConstraintTargetT;
private import gtk.NativeIF;
private import gtk.NativeT;
private import gtk.RootIF;
private import gtk.RootT;
private import gtk.ShortcutManagerIF;
private import gtk.ShortcutManagerT;
private import gtk.Widget;


/**
 * A freeform application window.
 * 
 * `AdwApplicationWindow` is a [class@Gtk.ApplicationWindow] subclass providing
 * the same features as [class@Adw.Window].
 * 
 * See [class@Adw.Window] for details.
 * 
 * Using [property@Gtk.Application:menubar] is not supported and may result in
 * visual glitches.
 *
 * Since: 1.0
 */
public class ApplicationWindow : DGtkApplicationWindow
{
	/** the main Gtk struct */
	protected AdwApplicationWindow* adwApplicationWindow;

	/** Get the main Gtk struct */
	public AdwApplicationWindow* getAdwApplicationWindowStruct(bool transferOwnership = false)
	{
		if (transferOwnership)
			ownedRef = false;
		return adwApplicationWindow;
	}

	/** the main Gtk struct as a void* */
	protected override void* getStruct()
	{
		return cast(void*)adwApplicationWindow;
	}

	/**
	 * Sets our main struct and passes it to the parent class.
	 */
	public this (AdwApplicationWindow* adwApplicationWindow, bool ownedRef = false)
	{
		this.adwApplicationWindow = adwApplicationWindow;
		super(cast(GtkApplicationWindow*)adwApplicationWindow, ownedRef);
	}


	/** */
	public static GType getType()
	{
		return adw_application_window_get_type();
	}

	/**
	 * Creates a new `AdwApplicationWindow` for @app.
	 *
	 * Params:
	 *     app = an application instance
	 *
	 * Returns: the newly created `AdwApplicationWindow`
	 *
	 * Since: 1.0
	 *
	 * Throws: ConstructionException GTK+ fails to create the object.
	 */
	public this(Application app)
	{
		auto __p = adw_application_window_new((app is null) ? null : app.getGtkApplicationStruct());

		if(__p is null)
		{
			throw new ConstructionException("null returned by new");
		}

		this(cast(AdwApplicationWindow*) __p);
	}

	/**
	 * Gets the child widget of @self.
	 *
	 * This method should always be used instead of [method@Gtk.Window.get_child].
	 *
	 * Returns: the child widget of @self
	 *
	 * Since: 1.0
	 */
	public override Widget getChild()
	{
		auto __p = adw_application_window_get_child(adwApplicationWindow);

		if(__p is null)
		{
			return null;
		}

		return ObjectG.getDObject!(Widget)(cast(GtkWidget*) __p);
	}

	/**
	 * Sets the child widget of @self.
	 *
	 * This method should always be used instead of [method@Gtk.Window.set_child].
	 *
	 * Params:
	 *     child = the child widget
	 *
	 * Since: 1.0
	 */
	public void setChild(Widget child)
	{
		adw_application_window_set_child(adwApplicationWindow, (child is null) ? null : child.getWidgetStruct());
	}
}
