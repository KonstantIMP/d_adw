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
module adw.ValueObject;

private import adw.c.functions;
public  import adw.c.types;
private import glib.ConstructionException;
private import glib.Str;
private import glib.c.functions;
private import gobject.ObjectG;
private import gobject.Value;


/**
 * An object representing a `GValue`.
 * 
 * The `AdwValueObject` object represents a `GValue`, allowing it to be used
 * with `GListModel`.
 *
 * Since: 1.0
 */
public class ValueObject : ObjectG
{
	/** the main Gtk struct */
	protected AdwValueObject* adwValueObject;

	/** Get the main Gtk struct */
	public AdwValueObject* getValueObjectStruct(bool transferOwnership = false)
	{
		if (transferOwnership)
			ownedRef = false;
		return adwValueObject;
	}

	/** the main Gtk struct as a void* */
	protected override void* getStruct()
	{
		return cast(void*)adwValueObject;
	}

	/**
	 * Sets our main struct and passes it to the parent class.
	 */
	public this (AdwValueObject* adwValueObject, bool ownedRef = false)
	{
		this.adwValueObject = adwValueObject;
		super(cast(GObject*)adwValueObject, ownedRef);
	}


	/** */
	public static GType getType()
	{
		return adw_value_object_get_type();
	}

	/**
	 * Create a new `AdwValueObject` from @value.
	 *
	 * Params:
	 *     value = the value to store
	 *
	 * Returns: the newly created `AdwValueObject`
	 *
	 * Since: 1.0
	 *
	 * Throws: ConstructionException GTK+ fails to create the object.
	 */
	public this(Value value)
	{
		auto __p = adw_value_object_new((value is null) ? null : value.getValueStruct());

		if(__p is null)
		{
			throw new ConstructionException("null returned by new");
		}

		this(cast(AdwValueObject*) __p, true);
	}

	/**
	 * Creates a new `AdwValueObject` from a string.
	 *
	 * This is a convenience method to create a `AdwValueObject` that stores a
	 * string.
	 *
	 * Params:
	 *     string_ = the string to store
	 *
	 * Returns: the newly created `AdwValueObject`
	 *
	 * Since: 1.0
	 *
	 * Throws: ConstructionException GTK+ fails to create the object.
	 */
	public this(string string_)
	{
		auto __p = adw_value_object_new_string(Str.toStringz(string_));

		if(__p is null)
		{
			throw new ConstructionException("null returned by new_string");
		}

		this(cast(AdwValueObject*) __p, true);
	}

	/**
	 * Creates a new `AdwValueObject` from a string.
	 *
	 * This is a convenience method to create a `AdwValueObject` that stores a
	 * string taking ownership of it.
	 *
	 * Params:
	 *     string_ = the string to store
	 *
	 * Returns: the newly created `AdwValueObject`
	 *
	 * Since: 1.0
	 *
	 * Throws: ConstructionException GTK+ fails to create the object.
	 */
	public this(string string_)
	{
		auto __p = adw_value_object_new_take_string(Str.toStringz(string_));

		if(__p is null)
		{
			throw new ConstructionException("null returned by new_take_string");
		}

		this(cast(AdwValueObject*) __p, true);
	}

	/**
	 * Copies data from the contained Value into @dest.
	 *
	 * Params:
	 *     dest = `GValue` with correct type to copy into
	 *
	 * Since: 1.0
	 */
	public void copyValue(Value dest)
	{
		adw_value_object_copy_value(adwValueObject, (dest is null) ? null : dest.getValueStruct());
	}

	/**
	 * Copies the contained string if the value is of type  `G_TYPE_STRING`.
	 *
	 * Returns: a copy of the contained string
	 *
	 * Since: 1.0
	 */
	public string dupString()
	{
		auto retStr = adw_value_object_dup_string(adwValueObject);

		scope(exit) Str.freeString(retStr);
		return Str.toString(retStr);
	}

	/**
	 * Gets the contained string if the value is of type `G_TYPE_STRING`.
	 *
	 * Returns: the contained string
	 *
	 * Since: 1.0
	 */
	public string getString()
	{
		return Str.toString(adw_value_object_get_string(adwValueObject));
	}

	/**
	 * Gets the contained value.
	 *
	 * Returns: the contained value
	 *
	 * Since: 1.0
	 */
	public Value getValue()
	{
		auto __p = adw_value_object_get_value(adwValueObject);

		if(__p is null)
		{
			return null;
		}

		return ObjectG.getDObject!(Value)(cast(GValue*) __p);
	}
}
