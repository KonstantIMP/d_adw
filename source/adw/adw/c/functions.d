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
module adw.c.functions;

import std.stdio;
import adw.c.types;
import gtkd.Loader;

version (Windows)
	static immutable LIBRARY_ADW = ["libadwaita-1-0.dll;adwaita-1-1.0.dll;adwaita-1.dll"];
else version (OSX)
	static immutable LIBRARY_ADW = ["libadwaita-1.0.dylib"];
else
	static immutable LIBRARY_ADW = ["libadwaita-1.so.0"];

shared static this()
{
	// adw.ActionRow

	Linker.link(adw_action_row_get_type, "adw_action_row_get_type", LIBRARY_ADW);
	Linker.link(adw_action_row_new, "adw_action_row_new", LIBRARY_ADW);
	Linker.link(adw_action_row_activate, "adw_action_row_activate", LIBRARY_ADW);
	Linker.link(adw_action_row_add_prefix, "adw_action_row_add_prefix", LIBRARY_ADW);
	Linker.link(adw_action_row_add_suffix, "adw_action_row_add_suffix", LIBRARY_ADW);
	Linker.link(adw_action_row_get_activatable_widget, "adw_action_row_get_activatable_widget", LIBRARY_ADW);
	Linker.link(adw_action_row_get_icon_name, "adw_action_row_get_icon_name", LIBRARY_ADW);
	Linker.link(adw_action_row_get_subtitle, "adw_action_row_get_subtitle", LIBRARY_ADW);
	Linker.link(adw_action_row_get_subtitle_lines, "adw_action_row_get_subtitle_lines", LIBRARY_ADW);
	Linker.link(adw_action_row_get_title_lines, "adw_action_row_get_title_lines", LIBRARY_ADW);
	Linker.link(adw_action_row_get_use_underline, "adw_action_row_get_use_underline", LIBRARY_ADW);
	Linker.link(adw_action_row_remove, "adw_action_row_remove", LIBRARY_ADW);
	Linker.link(adw_action_row_set_activatable_widget, "adw_action_row_set_activatable_widget", LIBRARY_ADW);
	Linker.link(adw_action_row_set_icon_name, "adw_action_row_set_icon_name", LIBRARY_ADW);
	Linker.link(adw_action_row_set_subtitle, "adw_action_row_set_subtitle", LIBRARY_ADW);
	Linker.link(adw_action_row_set_subtitle_lines, "adw_action_row_set_subtitle_lines", LIBRARY_ADW);
	Linker.link(adw_action_row_set_title_lines, "adw_action_row_set_title_lines", LIBRARY_ADW);
	Linker.link(adw_action_row_set_use_underline, "adw_action_row_set_use_underline", LIBRARY_ADW);

	// adw.ApplicationWindow

	Linker.link(adw_application_window_get_type, "adw_application_window_get_type", LIBRARY_ADW);
	Linker.link(adw_application_window_new, "adw_application_window_new", LIBRARY_ADW);
	Linker.link(adw_application_window_get_child, "adw_application_window_get_child", LIBRARY_ADW);
	Linker.link(adw_application_window_set_child, "adw_application_window_set_child", LIBRARY_ADW);

	// adw.Avatar

	Linker.link(adw_avatar_get_type, "adw_avatar_get_type", LIBRARY_ADW);
	Linker.link(adw_avatar_new, "adw_avatar_new", LIBRARY_ADW);
	Linker.link(adw_avatar_draw_to_pixbuf, "adw_avatar_draw_to_pixbuf", LIBRARY_ADW);
	Linker.link(adw_avatar_get_custom_image, "adw_avatar_get_custom_image", LIBRARY_ADW);
	Linker.link(adw_avatar_get_icon_name, "adw_avatar_get_icon_name", LIBRARY_ADW);
	Linker.link(adw_avatar_get_show_initials, "adw_avatar_get_show_initials", LIBRARY_ADW);
	Linker.link(adw_avatar_get_size, "adw_avatar_get_size", LIBRARY_ADW);
	Linker.link(adw_avatar_get_text, "adw_avatar_get_text", LIBRARY_ADW);
	Linker.link(adw_avatar_set_custom_image, "adw_avatar_set_custom_image", LIBRARY_ADW);
	Linker.link(adw_avatar_set_icon_name, "adw_avatar_set_icon_name", LIBRARY_ADW);
	Linker.link(adw_avatar_set_show_initials, "adw_avatar_set_show_initials", LIBRARY_ADW);
	Linker.link(adw_avatar_set_size, "adw_avatar_set_size", LIBRARY_ADW);
	Linker.link(adw_avatar_set_text, "adw_avatar_set_text", LIBRARY_ADW);

	// adw.Bin

	Linker.link(adw_bin_get_type, "adw_bin_get_type", LIBRARY_ADW);
	Linker.link(adw_bin_new, "adw_bin_new", LIBRARY_ADW);
	Linker.link(adw_bin_get_child, "adw_bin_get_child", LIBRARY_ADW);
	Linker.link(adw_bin_set_child, "adw_bin_set_child", LIBRARY_ADW);

	// adw.Carousel

	Linker.link(adw_carousel_get_type, "adw_carousel_get_type", LIBRARY_ADW);
	Linker.link(adw_carousel_new, "adw_carousel_new", LIBRARY_ADW);
	Linker.link(adw_carousel_append, "adw_carousel_append", LIBRARY_ADW);
	Linker.link(adw_carousel_get_allow_long_swipes, "adw_carousel_get_allow_long_swipes", LIBRARY_ADW);
	Linker.link(adw_carousel_get_allow_mouse_drag, "adw_carousel_get_allow_mouse_drag", LIBRARY_ADW);
	Linker.link(adw_carousel_get_allow_scroll_wheel, "adw_carousel_get_allow_scroll_wheel", LIBRARY_ADW);
	Linker.link(adw_carousel_get_animation_duration, "adw_carousel_get_animation_duration", LIBRARY_ADW);
	Linker.link(adw_carousel_get_interactive, "adw_carousel_get_interactive", LIBRARY_ADW);
	Linker.link(adw_carousel_get_n_pages, "adw_carousel_get_n_pages", LIBRARY_ADW);
	Linker.link(adw_carousel_get_nth_page, "adw_carousel_get_nth_page", LIBRARY_ADW);
	Linker.link(adw_carousel_get_position, "adw_carousel_get_position", LIBRARY_ADW);
	Linker.link(adw_carousel_get_reveal_duration, "adw_carousel_get_reveal_duration", LIBRARY_ADW);
	Linker.link(adw_carousel_get_spacing, "adw_carousel_get_spacing", LIBRARY_ADW);
	Linker.link(adw_carousel_insert, "adw_carousel_insert", LIBRARY_ADW);
	Linker.link(adw_carousel_prepend, "adw_carousel_prepend", LIBRARY_ADW);
	Linker.link(adw_carousel_remove, "adw_carousel_remove", LIBRARY_ADW);
	Linker.link(adw_carousel_reorder, "adw_carousel_reorder", LIBRARY_ADW);
	Linker.link(adw_carousel_scroll_to, "adw_carousel_scroll_to", LIBRARY_ADW);
	Linker.link(adw_carousel_scroll_to_full, "adw_carousel_scroll_to_full", LIBRARY_ADW);
	Linker.link(adw_carousel_set_allow_long_swipes, "adw_carousel_set_allow_long_swipes", LIBRARY_ADW);
	Linker.link(adw_carousel_set_allow_mouse_drag, "adw_carousel_set_allow_mouse_drag", LIBRARY_ADW);
	Linker.link(adw_carousel_set_allow_scroll_wheel, "adw_carousel_set_allow_scroll_wheel", LIBRARY_ADW);
	Linker.link(adw_carousel_set_animation_duration, "adw_carousel_set_animation_duration", LIBRARY_ADW);
	Linker.link(adw_carousel_set_interactive, "adw_carousel_set_interactive", LIBRARY_ADW);
	Linker.link(adw_carousel_set_reveal_duration, "adw_carousel_set_reveal_duration", LIBRARY_ADW);
	Linker.link(adw_carousel_set_spacing, "adw_carousel_set_spacing", LIBRARY_ADW);

	// adw.CarouselIndicatorDots

	Linker.link(adw_carousel_indicator_dots_get_type, "adw_carousel_indicator_dots_get_type", LIBRARY_ADW);
	Linker.link(adw_carousel_indicator_dots_new, "adw_carousel_indicator_dots_new", LIBRARY_ADW);
	Linker.link(adw_carousel_indicator_dots_get_carousel, "adw_carousel_indicator_dots_get_carousel", LIBRARY_ADW);
	Linker.link(adw_carousel_indicator_dots_set_carousel, "adw_carousel_indicator_dots_set_carousel", LIBRARY_ADW);

	// adw.CarouselIndicatorLines

	Linker.link(adw_carousel_indicator_lines_get_type, "adw_carousel_indicator_lines_get_type", LIBRARY_ADW);
	Linker.link(adw_carousel_indicator_lines_new, "adw_carousel_indicator_lines_new", LIBRARY_ADW);
	Linker.link(adw_carousel_indicator_lines_get_carousel, "adw_carousel_indicator_lines_get_carousel", LIBRARY_ADW);
	Linker.link(adw_carousel_indicator_lines_set_carousel, "adw_carousel_indicator_lines_set_carousel", LIBRARY_ADW);

	// adw.Clamp

	Linker.link(adw_clamp_get_type, "adw_clamp_get_type", LIBRARY_ADW);
	Linker.link(adw_clamp_new, "adw_clamp_new", LIBRARY_ADW);
	Linker.link(adw_clamp_get_child, "adw_clamp_get_child", LIBRARY_ADW);
	Linker.link(adw_clamp_get_maximum_size, "adw_clamp_get_maximum_size", LIBRARY_ADW);
	Linker.link(adw_clamp_get_tightening_threshold, "adw_clamp_get_tightening_threshold", LIBRARY_ADW);
	Linker.link(adw_clamp_set_child, "adw_clamp_set_child", LIBRARY_ADW);
	Linker.link(adw_clamp_set_maximum_size, "adw_clamp_set_maximum_size", LIBRARY_ADW);
	Linker.link(adw_clamp_set_tightening_threshold, "adw_clamp_set_tightening_threshold", LIBRARY_ADW);

	// adw.ClampLayout

	Linker.link(adw_clamp_layout_get_type, "adw_clamp_layout_get_type", LIBRARY_ADW);
	Linker.link(adw_clamp_layout_new, "adw_clamp_layout_new", LIBRARY_ADW);
	Linker.link(adw_clamp_layout_get_maximum_size, "adw_clamp_layout_get_maximum_size", LIBRARY_ADW);
	Linker.link(adw_clamp_layout_get_tightening_threshold, "adw_clamp_layout_get_tightening_threshold", LIBRARY_ADW);
	Linker.link(adw_clamp_layout_set_maximum_size, "adw_clamp_layout_set_maximum_size", LIBRARY_ADW);
	Linker.link(adw_clamp_layout_set_tightening_threshold, "adw_clamp_layout_set_tightening_threshold", LIBRARY_ADW);

	// adw.ClampScrollable

	Linker.link(adw_clamp_scrollable_get_type, "adw_clamp_scrollable_get_type", LIBRARY_ADW);
	Linker.link(adw_clamp_scrollable_new, "adw_clamp_scrollable_new", LIBRARY_ADW);
	Linker.link(adw_clamp_scrollable_get_child, "adw_clamp_scrollable_get_child", LIBRARY_ADW);
	Linker.link(adw_clamp_scrollable_get_maximum_size, "adw_clamp_scrollable_get_maximum_size", LIBRARY_ADW);
	Linker.link(adw_clamp_scrollable_get_tightening_threshold, "adw_clamp_scrollable_get_tightening_threshold", LIBRARY_ADW);
	Linker.link(adw_clamp_scrollable_set_child, "adw_clamp_scrollable_set_child", LIBRARY_ADW);
	Linker.link(adw_clamp_scrollable_set_maximum_size, "adw_clamp_scrollable_set_maximum_size", LIBRARY_ADW);
	Linker.link(adw_clamp_scrollable_set_tightening_threshold, "adw_clamp_scrollable_set_tightening_threshold", LIBRARY_ADW);

	// adw.ComboRow

	Linker.link(adw_combo_row_get_type, "adw_combo_row_get_type", LIBRARY_ADW);
	Linker.link(adw_combo_row_new, "adw_combo_row_new", LIBRARY_ADW);
	Linker.link(adw_combo_row_get_expression, "adw_combo_row_get_expression", LIBRARY_ADW);
	Linker.link(adw_combo_row_get_factory, "adw_combo_row_get_factory", LIBRARY_ADW);
	Linker.link(adw_combo_row_get_list_factory, "adw_combo_row_get_list_factory", LIBRARY_ADW);
	Linker.link(adw_combo_row_get_model, "adw_combo_row_get_model", LIBRARY_ADW);
	Linker.link(adw_combo_row_get_selected, "adw_combo_row_get_selected", LIBRARY_ADW);
	Linker.link(adw_combo_row_get_selected_item, "adw_combo_row_get_selected_item", LIBRARY_ADW);
	Linker.link(adw_combo_row_get_use_subtitle, "adw_combo_row_get_use_subtitle", LIBRARY_ADW);
	Linker.link(adw_combo_row_set_expression, "adw_combo_row_set_expression", LIBRARY_ADW);
	Linker.link(adw_combo_row_set_factory, "adw_combo_row_set_factory", LIBRARY_ADW);
	Linker.link(adw_combo_row_set_list_factory, "adw_combo_row_set_list_factory", LIBRARY_ADW);
	Linker.link(adw_combo_row_set_model, "adw_combo_row_set_model", LIBRARY_ADW);
	Linker.link(adw_combo_row_set_selected, "adw_combo_row_set_selected", LIBRARY_ADW);
	Linker.link(adw_combo_row_set_use_subtitle, "adw_combo_row_set_use_subtitle", LIBRARY_ADW);

	// adw.EnumListModel

	Linker.link(adw_enum_list_model_get_type, "adw_enum_list_model_get_type", LIBRARY_ADW);
	Linker.link(adw_enum_list_model_new, "adw_enum_list_model_new", LIBRARY_ADW);
	Linker.link(adw_enum_list_model_find_position, "adw_enum_list_model_find_position", LIBRARY_ADW);
	Linker.link(adw_enum_list_model_get_enum_type, "adw_enum_list_model_get_enum_type", LIBRARY_ADW);

	// adw.EnumValueObject

	Linker.link(adw_enum_value_object_get_type, "adw_enum_value_object_get_type", LIBRARY_ADW);
	Linker.link(adw_enum_value_object_get_name, "adw_enum_value_object_get_name", LIBRARY_ADW);
	Linker.link(adw_enum_value_object_get_nick, "adw_enum_value_object_get_nick", LIBRARY_ADW);
	Linker.link(adw_enum_value_object_get_value, "adw_enum_value_object_get_value", LIBRARY_ADW);

	// adw.ExpanderRow

	Linker.link(adw_expander_row_get_type, "adw_expander_row_get_type", LIBRARY_ADW);
	Linker.link(adw_expander_row_new, "adw_expander_row_new", LIBRARY_ADW);
	Linker.link(adw_expander_row_add, "adw_expander_row_add", LIBRARY_ADW);
	Linker.link(adw_expander_row_add_action, "adw_expander_row_add_action", LIBRARY_ADW);
	Linker.link(adw_expander_row_add_prefix, "adw_expander_row_add_prefix", LIBRARY_ADW);
	Linker.link(adw_expander_row_get_enable_expansion, "adw_expander_row_get_enable_expansion", LIBRARY_ADW);
	Linker.link(adw_expander_row_get_expanded, "adw_expander_row_get_expanded", LIBRARY_ADW);
	Linker.link(adw_expander_row_get_icon_name, "adw_expander_row_get_icon_name", LIBRARY_ADW);
	Linker.link(adw_expander_row_get_show_enable_switch, "adw_expander_row_get_show_enable_switch", LIBRARY_ADW);
	Linker.link(adw_expander_row_get_subtitle, "adw_expander_row_get_subtitle", LIBRARY_ADW);
	Linker.link(adw_expander_row_get_use_underline, "adw_expander_row_get_use_underline", LIBRARY_ADW);
	Linker.link(adw_expander_row_remove, "adw_expander_row_remove", LIBRARY_ADW);
	Linker.link(adw_expander_row_set_enable_expansion, "adw_expander_row_set_enable_expansion", LIBRARY_ADW);
	Linker.link(adw_expander_row_set_expanded, "adw_expander_row_set_expanded", LIBRARY_ADW);
	Linker.link(adw_expander_row_set_icon_name, "adw_expander_row_set_icon_name", LIBRARY_ADW);
	Linker.link(adw_expander_row_set_show_enable_switch, "adw_expander_row_set_show_enable_switch", LIBRARY_ADW);
	Linker.link(adw_expander_row_set_subtitle, "adw_expander_row_set_subtitle", LIBRARY_ADW);
	Linker.link(adw_expander_row_set_use_underline, "adw_expander_row_set_use_underline", LIBRARY_ADW);

	// adw.Flap

	Linker.link(adw_flap_get_type, "adw_flap_get_type", LIBRARY_ADW);
	Linker.link(adw_flap_new, "adw_flap_new", LIBRARY_ADW);
	Linker.link(adw_flap_get_content, "adw_flap_get_content", LIBRARY_ADW);
	Linker.link(adw_flap_get_flap, "adw_flap_get_flap", LIBRARY_ADW);
	Linker.link(adw_flap_get_flap_position, "adw_flap_get_flap_position", LIBRARY_ADW);
	Linker.link(adw_flap_get_fold_duration, "adw_flap_get_fold_duration", LIBRARY_ADW);
	Linker.link(adw_flap_get_fold_policy, "adw_flap_get_fold_policy", LIBRARY_ADW);
	Linker.link(adw_flap_get_folded, "adw_flap_get_folded", LIBRARY_ADW);
	Linker.link(adw_flap_get_locked, "adw_flap_get_locked", LIBRARY_ADW);
	Linker.link(adw_flap_get_modal, "adw_flap_get_modal", LIBRARY_ADW);
	Linker.link(adw_flap_get_reveal_duration, "adw_flap_get_reveal_duration", LIBRARY_ADW);
	Linker.link(adw_flap_get_reveal_flap, "adw_flap_get_reveal_flap", LIBRARY_ADW);
	Linker.link(adw_flap_get_reveal_progress, "adw_flap_get_reveal_progress", LIBRARY_ADW);
	Linker.link(adw_flap_get_separator, "adw_flap_get_separator", LIBRARY_ADW);
	Linker.link(adw_flap_get_swipe_to_close, "adw_flap_get_swipe_to_close", LIBRARY_ADW);
	Linker.link(adw_flap_get_swipe_to_open, "adw_flap_get_swipe_to_open", LIBRARY_ADW);
	Linker.link(adw_flap_get_transition_type, "adw_flap_get_transition_type", LIBRARY_ADW);
	Linker.link(adw_flap_set_content, "adw_flap_set_content", LIBRARY_ADW);
	Linker.link(adw_flap_set_flap, "adw_flap_set_flap", LIBRARY_ADW);
	Linker.link(adw_flap_set_flap_position, "adw_flap_set_flap_position", LIBRARY_ADW);
	Linker.link(adw_flap_set_fold_duration, "adw_flap_set_fold_duration", LIBRARY_ADW);
	Linker.link(adw_flap_set_fold_policy, "adw_flap_set_fold_policy", LIBRARY_ADW);
	Linker.link(adw_flap_set_locked, "adw_flap_set_locked", LIBRARY_ADW);
	Linker.link(adw_flap_set_modal, "adw_flap_set_modal", LIBRARY_ADW);
	Linker.link(adw_flap_set_reveal_duration, "adw_flap_set_reveal_duration", LIBRARY_ADW);
	Linker.link(adw_flap_set_reveal_flap, "adw_flap_set_reveal_flap", LIBRARY_ADW);
	Linker.link(adw_flap_set_separator, "adw_flap_set_separator", LIBRARY_ADW);
	Linker.link(adw_flap_set_swipe_to_close, "adw_flap_set_swipe_to_close", LIBRARY_ADW);
	Linker.link(adw_flap_set_swipe_to_open, "adw_flap_set_swipe_to_open", LIBRARY_ADW);
	Linker.link(adw_flap_set_transition_type, "adw_flap_set_transition_type", LIBRARY_ADW);

	// adw.HeaderBar

	Linker.link(adw_header_bar_get_type, "adw_header_bar_get_type", LIBRARY_ADW);
	Linker.link(adw_header_bar_new, "adw_header_bar_new", LIBRARY_ADW);
	Linker.link(adw_header_bar_get_centering_policy, "adw_header_bar_get_centering_policy", LIBRARY_ADW);
	Linker.link(adw_header_bar_get_decoration_layout, "adw_header_bar_get_decoration_layout", LIBRARY_ADW);
	Linker.link(adw_header_bar_get_show_end_title_buttons, "adw_header_bar_get_show_end_title_buttons", LIBRARY_ADW);
	Linker.link(adw_header_bar_get_show_start_title_buttons, "adw_header_bar_get_show_start_title_buttons", LIBRARY_ADW);
	Linker.link(adw_header_bar_get_title_widget, "adw_header_bar_get_title_widget", LIBRARY_ADW);
	Linker.link(adw_header_bar_pack_end, "adw_header_bar_pack_end", LIBRARY_ADW);
	Linker.link(adw_header_bar_pack_start, "adw_header_bar_pack_start", LIBRARY_ADW);
	Linker.link(adw_header_bar_remove, "adw_header_bar_remove", LIBRARY_ADW);
	Linker.link(adw_header_bar_set_centering_policy, "adw_header_bar_set_centering_policy", LIBRARY_ADW);
	Linker.link(adw_header_bar_set_decoration_layout, "adw_header_bar_set_decoration_layout", LIBRARY_ADW);
	Linker.link(adw_header_bar_set_show_end_title_buttons, "adw_header_bar_set_show_end_title_buttons", LIBRARY_ADW);
	Linker.link(adw_header_bar_set_show_start_title_buttons, "adw_header_bar_set_show_start_title_buttons", LIBRARY_ADW);
	Linker.link(adw_header_bar_set_title_widget, "adw_header_bar_set_title_widget", LIBRARY_ADW);

	// adw.Leaflet

	Linker.link(adw_leaflet_get_type, "adw_leaflet_get_type", LIBRARY_ADW);
	Linker.link(adw_leaflet_new, "adw_leaflet_new", LIBRARY_ADW);
	Linker.link(adw_leaflet_append, "adw_leaflet_append", LIBRARY_ADW);
	Linker.link(adw_leaflet_get_adjacent_child, "adw_leaflet_get_adjacent_child", LIBRARY_ADW);
	Linker.link(adw_leaflet_get_can_swipe_back, "adw_leaflet_get_can_swipe_back", LIBRARY_ADW);
	Linker.link(adw_leaflet_get_can_swipe_forward, "adw_leaflet_get_can_swipe_forward", LIBRARY_ADW);
	Linker.link(adw_leaflet_get_can_unfold, "adw_leaflet_get_can_unfold", LIBRARY_ADW);
	Linker.link(adw_leaflet_get_child_by_name, "adw_leaflet_get_child_by_name", LIBRARY_ADW);
	Linker.link(adw_leaflet_get_child_transition_duration, "adw_leaflet_get_child_transition_duration", LIBRARY_ADW);
	Linker.link(adw_leaflet_get_child_transition_running, "adw_leaflet_get_child_transition_running", LIBRARY_ADW);
	Linker.link(adw_leaflet_get_folded, "adw_leaflet_get_folded", LIBRARY_ADW);
	Linker.link(adw_leaflet_get_homogeneous, "adw_leaflet_get_homogeneous", LIBRARY_ADW);
	Linker.link(adw_leaflet_get_interpolate_size, "adw_leaflet_get_interpolate_size", LIBRARY_ADW);
	Linker.link(adw_leaflet_get_mode_transition_duration, "adw_leaflet_get_mode_transition_duration", LIBRARY_ADW);
	Linker.link(adw_leaflet_get_page, "adw_leaflet_get_page", LIBRARY_ADW);
	Linker.link(adw_leaflet_get_pages, "adw_leaflet_get_pages", LIBRARY_ADW);
	Linker.link(adw_leaflet_get_transition_type, "adw_leaflet_get_transition_type", LIBRARY_ADW);
	Linker.link(adw_leaflet_get_visible_child, "adw_leaflet_get_visible_child", LIBRARY_ADW);
	Linker.link(adw_leaflet_get_visible_child_name, "adw_leaflet_get_visible_child_name", LIBRARY_ADW);
	Linker.link(adw_leaflet_insert_child_after, "adw_leaflet_insert_child_after", LIBRARY_ADW);
	Linker.link(adw_leaflet_navigate, "adw_leaflet_navigate", LIBRARY_ADW);
	Linker.link(adw_leaflet_prepend, "adw_leaflet_prepend", LIBRARY_ADW);
	Linker.link(adw_leaflet_remove, "adw_leaflet_remove", LIBRARY_ADW);
	Linker.link(adw_leaflet_reorder_child_after, "adw_leaflet_reorder_child_after", LIBRARY_ADW);
	Linker.link(adw_leaflet_set_can_swipe_back, "adw_leaflet_set_can_swipe_back", LIBRARY_ADW);
	Linker.link(adw_leaflet_set_can_swipe_forward, "adw_leaflet_set_can_swipe_forward", LIBRARY_ADW);
	Linker.link(adw_leaflet_set_can_unfold, "adw_leaflet_set_can_unfold", LIBRARY_ADW);
	Linker.link(adw_leaflet_set_child_transition_duration, "adw_leaflet_set_child_transition_duration", LIBRARY_ADW);
	Linker.link(adw_leaflet_set_homogeneous, "adw_leaflet_set_homogeneous", LIBRARY_ADW);
	Linker.link(adw_leaflet_set_interpolate_size, "adw_leaflet_set_interpolate_size", LIBRARY_ADW);
	Linker.link(adw_leaflet_set_mode_transition_duration, "adw_leaflet_set_mode_transition_duration", LIBRARY_ADW);
	Linker.link(adw_leaflet_set_transition_type, "adw_leaflet_set_transition_type", LIBRARY_ADW);
	Linker.link(adw_leaflet_set_visible_child, "adw_leaflet_set_visible_child", LIBRARY_ADW);
	Linker.link(adw_leaflet_set_visible_child_name, "adw_leaflet_set_visible_child_name", LIBRARY_ADW);

	// adw.LeafletPage

	Linker.link(adw_leaflet_page_get_type, "adw_leaflet_page_get_type", LIBRARY_ADW);
	Linker.link(adw_leaflet_page_get_child, "adw_leaflet_page_get_child", LIBRARY_ADW);
	Linker.link(adw_leaflet_page_get_name, "adw_leaflet_page_get_name", LIBRARY_ADW);
	Linker.link(adw_leaflet_page_get_navigatable, "adw_leaflet_page_get_navigatable", LIBRARY_ADW);
	Linker.link(adw_leaflet_page_set_name, "adw_leaflet_page_set_name", LIBRARY_ADW);
	Linker.link(adw_leaflet_page_set_navigatable, "adw_leaflet_page_set_navigatable", LIBRARY_ADW);

	// adw.PreferencesGroup

	Linker.link(adw_preferences_group_get_type, "adw_preferences_group_get_type", LIBRARY_ADW);
	Linker.link(adw_preferences_group_new, "adw_preferences_group_new", LIBRARY_ADW);
	Linker.link(adw_preferences_group_add, "adw_preferences_group_add", LIBRARY_ADW);
	Linker.link(adw_preferences_group_get_description, "adw_preferences_group_get_description", LIBRARY_ADW);
	Linker.link(adw_preferences_group_get_title, "adw_preferences_group_get_title", LIBRARY_ADW);
	Linker.link(adw_preferences_group_remove, "adw_preferences_group_remove", LIBRARY_ADW);
	Linker.link(adw_preferences_group_set_description, "adw_preferences_group_set_description", LIBRARY_ADW);
	Linker.link(adw_preferences_group_set_title, "adw_preferences_group_set_title", LIBRARY_ADW);

	// adw.PreferencesPage

	Linker.link(adw_preferences_page_get_type, "adw_preferences_page_get_type", LIBRARY_ADW);
	Linker.link(adw_preferences_page_new, "adw_preferences_page_new", LIBRARY_ADW);
	Linker.link(adw_preferences_page_add, "adw_preferences_page_add", LIBRARY_ADW);
	Linker.link(adw_preferences_page_get_icon_name, "adw_preferences_page_get_icon_name", LIBRARY_ADW);
	Linker.link(adw_preferences_page_get_title, "adw_preferences_page_get_title", LIBRARY_ADW);
	Linker.link(adw_preferences_page_get_use_underline, "adw_preferences_page_get_use_underline", LIBRARY_ADW);
	Linker.link(adw_preferences_page_remove, "adw_preferences_page_remove", LIBRARY_ADW);
	Linker.link(adw_preferences_page_set_icon_name, "adw_preferences_page_set_icon_name", LIBRARY_ADW);
	Linker.link(adw_preferences_page_set_title, "adw_preferences_page_set_title", LIBRARY_ADW);
	Linker.link(adw_preferences_page_set_use_underline, "adw_preferences_page_set_use_underline", LIBRARY_ADW);

	// adw.PreferencesRow

	Linker.link(adw_preferences_row_get_type, "adw_preferences_row_get_type", LIBRARY_ADW);
	Linker.link(adw_preferences_row_new, "adw_preferences_row_new", LIBRARY_ADW);
	Linker.link(adw_preferences_row_get_title, "adw_preferences_row_get_title", LIBRARY_ADW);
	Linker.link(adw_preferences_row_get_use_underline, "adw_preferences_row_get_use_underline", LIBRARY_ADW);
	Linker.link(adw_preferences_row_set_title, "adw_preferences_row_set_title", LIBRARY_ADW);
	Linker.link(adw_preferences_row_set_use_underline, "adw_preferences_row_set_use_underline", LIBRARY_ADW);

	// adw.PreferencesWindow

	Linker.link(adw_preferences_window_get_type, "adw_preferences_window_get_type", LIBRARY_ADW);
	Linker.link(adw_preferences_window_new, "adw_preferences_window_new", LIBRARY_ADW);
	Linker.link(adw_preferences_window_add, "adw_preferences_window_add", LIBRARY_ADW);
	Linker.link(adw_preferences_window_close_subpage, "adw_preferences_window_close_subpage", LIBRARY_ADW);
	Linker.link(adw_preferences_window_get_can_swipe_back, "adw_preferences_window_get_can_swipe_back", LIBRARY_ADW);
	Linker.link(adw_preferences_window_get_search_enabled, "adw_preferences_window_get_search_enabled", LIBRARY_ADW);
	Linker.link(adw_preferences_window_present_subpage, "adw_preferences_window_present_subpage", LIBRARY_ADW);
	Linker.link(adw_preferences_window_remove, "adw_preferences_window_remove", LIBRARY_ADW);
	Linker.link(adw_preferences_window_set_can_swipe_back, "adw_preferences_window_set_can_swipe_back", LIBRARY_ADW);
	Linker.link(adw_preferences_window_set_search_enabled, "adw_preferences_window_set_search_enabled", LIBRARY_ADW);

	// adw.Squeezer

	Linker.link(adw_squeezer_get_type, "adw_squeezer_get_type", LIBRARY_ADW);
	Linker.link(adw_squeezer_new, "adw_squeezer_new", LIBRARY_ADW);
	Linker.link(adw_squeezer_add, "adw_squeezer_add", LIBRARY_ADW);
	Linker.link(adw_squeezer_get_homogeneous, "adw_squeezer_get_homogeneous", LIBRARY_ADW);
	Linker.link(adw_squeezer_get_interpolate_size, "adw_squeezer_get_interpolate_size", LIBRARY_ADW);
	Linker.link(adw_squeezer_get_page, "adw_squeezer_get_page", LIBRARY_ADW);
	Linker.link(adw_squeezer_get_pages, "adw_squeezer_get_pages", LIBRARY_ADW);
	Linker.link(adw_squeezer_get_transition_duration, "adw_squeezer_get_transition_duration", LIBRARY_ADW);
	Linker.link(adw_squeezer_get_transition_running, "adw_squeezer_get_transition_running", LIBRARY_ADW);
	Linker.link(adw_squeezer_get_transition_type, "adw_squeezer_get_transition_type", LIBRARY_ADW);
	Linker.link(adw_squeezer_get_visible_child, "adw_squeezer_get_visible_child", LIBRARY_ADW);
	Linker.link(adw_squeezer_get_xalign, "adw_squeezer_get_xalign", LIBRARY_ADW);
	Linker.link(adw_squeezer_get_yalign, "adw_squeezer_get_yalign", LIBRARY_ADW);
	Linker.link(adw_squeezer_remove, "adw_squeezer_remove", LIBRARY_ADW);
	Linker.link(adw_squeezer_set_homogeneous, "adw_squeezer_set_homogeneous", LIBRARY_ADW);
	Linker.link(adw_squeezer_set_interpolate_size, "adw_squeezer_set_interpolate_size", LIBRARY_ADW);
	Linker.link(adw_squeezer_set_transition_duration, "adw_squeezer_set_transition_duration", LIBRARY_ADW);
	Linker.link(adw_squeezer_set_transition_type, "adw_squeezer_set_transition_type", LIBRARY_ADW);
	Linker.link(adw_squeezer_set_xalign, "adw_squeezer_set_xalign", LIBRARY_ADW);
	Linker.link(adw_squeezer_set_yalign, "adw_squeezer_set_yalign", LIBRARY_ADW);

	// adw.SqueezerPage

	Linker.link(adw_squeezer_page_get_type, "adw_squeezer_page_get_type", LIBRARY_ADW);
	Linker.link(adw_squeezer_page_get_child, "adw_squeezer_page_get_child", LIBRARY_ADW);
	Linker.link(adw_squeezer_page_get_enabled, "adw_squeezer_page_get_enabled", LIBRARY_ADW);
	Linker.link(adw_squeezer_page_set_enabled, "adw_squeezer_page_set_enabled", LIBRARY_ADW);

	// adw.StatusPage

	Linker.link(adw_status_page_get_type, "adw_status_page_get_type", LIBRARY_ADW);
	Linker.link(adw_status_page_new, "adw_status_page_new", LIBRARY_ADW);
	Linker.link(adw_status_page_get_child, "adw_status_page_get_child", LIBRARY_ADW);
	Linker.link(adw_status_page_get_description, "adw_status_page_get_description", LIBRARY_ADW);
	Linker.link(adw_status_page_get_icon_name, "adw_status_page_get_icon_name", LIBRARY_ADW);
	Linker.link(adw_status_page_get_title, "adw_status_page_get_title", LIBRARY_ADW);
	Linker.link(adw_status_page_set_child, "adw_status_page_set_child", LIBRARY_ADW);
	Linker.link(adw_status_page_set_description, "adw_status_page_set_description", LIBRARY_ADW);
	Linker.link(adw_status_page_set_icon_name, "adw_status_page_set_icon_name", LIBRARY_ADW);
	Linker.link(adw_status_page_set_title, "adw_status_page_set_title", LIBRARY_ADW);

	// adw.SwipeTracker

	Linker.link(adw_swipe_tracker_get_type, "adw_swipe_tracker_get_type", LIBRARY_ADW);
	Linker.link(adw_swipe_tracker_new, "adw_swipe_tracker_new", LIBRARY_ADW);
	Linker.link(adw_swipe_tracker_get_allow_long_swipes, "adw_swipe_tracker_get_allow_long_swipes", LIBRARY_ADW);
	Linker.link(adw_swipe_tracker_get_allow_mouse_drag, "adw_swipe_tracker_get_allow_mouse_drag", LIBRARY_ADW);
	Linker.link(adw_swipe_tracker_get_enabled, "adw_swipe_tracker_get_enabled", LIBRARY_ADW);
	Linker.link(adw_swipe_tracker_get_reversed, "adw_swipe_tracker_get_reversed", LIBRARY_ADW);
	Linker.link(adw_swipe_tracker_get_swipeable, "adw_swipe_tracker_get_swipeable", LIBRARY_ADW);
	Linker.link(adw_swipe_tracker_set_allow_long_swipes, "adw_swipe_tracker_set_allow_long_swipes", LIBRARY_ADW);
	Linker.link(adw_swipe_tracker_set_allow_mouse_drag, "adw_swipe_tracker_set_allow_mouse_drag", LIBRARY_ADW);
	Linker.link(adw_swipe_tracker_set_enabled, "adw_swipe_tracker_set_enabled", LIBRARY_ADW);
	Linker.link(adw_swipe_tracker_set_reversed, "adw_swipe_tracker_set_reversed", LIBRARY_ADW);
	Linker.link(adw_swipe_tracker_shift_position, "adw_swipe_tracker_shift_position", LIBRARY_ADW);

	// adw.Swipeable

	Linker.link(adw_swipeable_get_type, "adw_swipeable_get_type", LIBRARY_ADW);
	Linker.link(adw_swipeable_get_cancel_progress, "adw_swipeable_get_cancel_progress", LIBRARY_ADW);
	Linker.link(adw_swipeable_get_distance, "adw_swipeable_get_distance", LIBRARY_ADW);
	Linker.link(adw_swipeable_get_progress, "adw_swipeable_get_progress", LIBRARY_ADW);
	Linker.link(adw_swipeable_get_snap_points, "adw_swipeable_get_snap_points", LIBRARY_ADW);
	Linker.link(adw_swipeable_get_swipe_area, "adw_swipeable_get_swipe_area", LIBRARY_ADW);

	// adw.TabBar

	Linker.link(adw_tab_bar_get_type, "adw_tab_bar_get_type", LIBRARY_ADW);
	Linker.link(adw_tab_bar_new, "adw_tab_bar_new", LIBRARY_ADW);
	Linker.link(adw_tab_bar_get_autohide, "adw_tab_bar_get_autohide", LIBRARY_ADW);
	Linker.link(adw_tab_bar_get_end_action_widget, "adw_tab_bar_get_end_action_widget", LIBRARY_ADW);
	Linker.link(adw_tab_bar_get_expand_tabs, "adw_tab_bar_get_expand_tabs", LIBRARY_ADW);
	Linker.link(adw_tab_bar_get_inverted, "adw_tab_bar_get_inverted", LIBRARY_ADW);
	Linker.link(adw_tab_bar_get_is_overflowing, "adw_tab_bar_get_is_overflowing", LIBRARY_ADW);
	Linker.link(adw_tab_bar_get_start_action_widget, "adw_tab_bar_get_start_action_widget", LIBRARY_ADW);
	Linker.link(adw_tab_bar_get_tabs_revealed, "adw_tab_bar_get_tabs_revealed", LIBRARY_ADW);
	Linker.link(adw_tab_bar_get_view, "adw_tab_bar_get_view", LIBRARY_ADW);
	Linker.link(adw_tab_bar_set_autohide, "adw_tab_bar_set_autohide", LIBRARY_ADW);
	Linker.link(adw_tab_bar_set_end_action_widget, "adw_tab_bar_set_end_action_widget", LIBRARY_ADW);
	Linker.link(adw_tab_bar_set_expand_tabs, "adw_tab_bar_set_expand_tabs", LIBRARY_ADW);
	Linker.link(adw_tab_bar_set_inverted, "adw_tab_bar_set_inverted", LIBRARY_ADW);
	Linker.link(adw_tab_bar_set_start_action_widget, "adw_tab_bar_set_start_action_widget", LIBRARY_ADW);
	Linker.link(adw_tab_bar_set_view, "adw_tab_bar_set_view", LIBRARY_ADW);
	Linker.link(adw_tab_bar_setup_extra_drop_target, "adw_tab_bar_setup_extra_drop_target", LIBRARY_ADW);

	// adw.TabPage

	Linker.link(adw_tab_page_get_type, "adw_tab_page_get_type", LIBRARY_ADW);
	Linker.link(adw_tab_page_get_child, "adw_tab_page_get_child", LIBRARY_ADW);
	Linker.link(adw_tab_page_get_icon, "adw_tab_page_get_icon", LIBRARY_ADW);
	Linker.link(adw_tab_page_get_indicator_activatable, "adw_tab_page_get_indicator_activatable", LIBRARY_ADW);
	Linker.link(adw_tab_page_get_indicator_icon, "adw_tab_page_get_indicator_icon", LIBRARY_ADW);
	Linker.link(adw_tab_page_get_loading, "adw_tab_page_get_loading", LIBRARY_ADW);
	Linker.link(adw_tab_page_get_needs_attention, "adw_tab_page_get_needs_attention", LIBRARY_ADW);
	Linker.link(adw_tab_page_get_parent, "adw_tab_page_get_parent", LIBRARY_ADW);
	Linker.link(adw_tab_page_get_pinned, "adw_tab_page_get_pinned", LIBRARY_ADW);
	Linker.link(adw_tab_page_get_selected, "adw_tab_page_get_selected", LIBRARY_ADW);
	Linker.link(adw_tab_page_get_title, "adw_tab_page_get_title", LIBRARY_ADW);
	Linker.link(adw_tab_page_get_tooltip, "adw_tab_page_get_tooltip", LIBRARY_ADW);
	Linker.link(adw_tab_page_set_icon, "adw_tab_page_set_icon", LIBRARY_ADW);
	Linker.link(adw_tab_page_set_indicator_activatable, "adw_tab_page_set_indicator_activatable", LIBRARY_ADW);
	Linker.link(adw_tab_page_set_indicator_icon, "adw_tab_page_set_indicator_icon", LIBRARY_ADW);
	Linker.link(adw_tab_page_set_loading, "adw_tab_page_set_loading", LIBRARY_ADW);
	Linker.link(adw_tab_page_set_needs_attention, "adw_tab_page_set_needs_attention", LIBRARY_ADW);
	Linker.link(adw_tab_page_set_title, "adw_tab_page_set_title", LIBRARY_ADW);
	Linker.link(adw_tab_page_set_tooltip, "adw_tab_page_set_tooltip", LIBRARY_ADW);

	// adw.TabView

	Linker.link(adw_tab_view_get_type, "adw_tab_view_get_type", LIBRARY_ADW);
	Linker.link(adw_tab_view_new, "adw_tab_view_new", LIBRARY_ADW);
	Linker.link(adw_tab_view_add_page, "adw_tab_view_add_page", LIBRARY_ADW);
	Linker.link(adw_tab_view_append, "adw_tab_view_append", LIBRARY_ADW);
	Linker.link(adw_tab_view_append_pinned, "adw_tab_view_append_pinned", LIBRARY_ADW);
	Linker.link(adw_tab_view_close_other_pages, "adw_tab_view_close_other_pages", LIBRARY_ADW);
	Linker.link(adw_tab_view_close_page, "adw_tab_view_close_page", LIBRARY_ADW);
	Linker.link(adw_tab_view_close_page_finish, "adw_tab_view_close_page_finish", LIBRARY_ADW);
	Linker.link(adw_tab_view_close_pages_after, "adw_tab_view_close_pages_after", LIBRARY_ADW);
	Linker.link(adw_tab_view_close_pages_before, "adw_tab_view_close_pages_before", LIBRARY_ADW);
	Linker.link(adw_tab_view_get_default_icon, "adw_tab_view_get_default_icon", LIBRARY_ADW);
	Linker.link(adw_tab_view_get_is_transferring_page, "adw_tab_view_get_is_transferring_page", LIBRARY_ADW);
	Linker.link(adw_tab_view_get_menu_model, "adw_tab_view_get_menu_model", LIBRARY_ADW);
	Linker.link(adw_tab_view_get_n_pages, "adw_tab_view_get_n_pages", LIBRARY_ADW);
	Linker.link(adw_tab_view_get_n_pinned_pages, "adw_tab_view_get_n_pinned_pages", LIBRARY_ADW);
	Linker.link(adw_tab_view_get_nth_page, "adw_tab_view_get_nth_page", LIBRARY_ADW);
	Linker.link(adw_tab_view_get_page, "adw_tab_view_get_page", LIBRARY_ADW);
	Linker.link(adw_tab_view_get_page_position, "adw_tab_view_get_page_position", LIBRARY_ADW);
	Linker.link(adw_tab_view_get_pages, "adw_tab_view_get_pages", LIBRARY_ADW);
	Linker.link(adw_tab_view_get_selected_page, "adw_tab_view_get_selected_page", LIBRARY_ADW);
	Linker.link(adw_tab_view_get_shortcut_widget, "adw_tab_view_get_shortcut_widget", LIBRARY_ADW);
	Linker.link(adw_tab_view_insert, "adw_tab_view_insert", LIBRARY_ADW);
	Linker.link(adw_tab_view_insert_pinned, "adw_tab_view_insert_pinned", LIBRARY_ADW);
	Linker.link(adw_tab_view_prepend, "adw_tab_view_prepend", LIBRARY_ADW);
	Linker.link(adw_tab_view_prepend_pinned, "adw_tab_view_prepend_pinned", LIBRARY_ADW);
	Linker.link(adw_tab_view_reorder_backward, "adw_tab_view_reorder_backward", LIBRARY_ADW);
	Linker.link(adw_tab_view_reorder_first, "adw_tab_view_reorder_first", LIBRARY_ADW);
	Linker.link(adw_tab_view_reorder_forward, "adw_tab_view_reorder_forward", LIBRARY_ADW);
	Linker.link(adw_tab_view_reorder_last, "adw_tab_view_reorder_last", LIBRARY_ADW);
	Linker.link(adw_tab_view_reorder_page, "adw_tab_view_reorder_page", LIBRARY_ADW);
	Linker.link(adw_tab_view_select_next_page, "adw_tab_view_select_next_page", LIBRARY_ADW);
	Linker.link(adw_tab_view_select_previous_page, "adw_tab_view_select_previous_page", LIBRARY_ADW);
	Linker.link(adw_tab_view_set_default_icon, "adw_tab_view_set_default_icon", LIBRARY_ADW);
	Linker.link(adw_tab_view_set_menu_model, "adw_tab_view_set_menu_model", LIBRARY_ADW);
	Linker.link(adw_tab_view_set_page_pinned, "adw_tab_view_set_page_pinned", LIBRARY_ADW);
	Linker.link(adw_tab_view_set_selected_page, "adw_tab_view_set_selected_page", LIBRARY_ADW);
	Linker.link(adw_tab_view_set_shortcut_widget, "adw_tab_view_set_shortcut_widget", LIBRARY_ADW);
	Linker.link(adw_tab_view_transfer_page, "adw_tab_view_transfer_page", LIBRARY_ADW);

	// adw.ValueObject

	Linker.link(adw_value_object_get_type, "adw_value_object_get_type", LIBRARY_ADW);
	Linker.link(adw_value_object_new, "adw_value_object_new", LIBRARY_ADW);
	Linker.link(adw_value_object_new_collect, "adw_value_object_new_collect", LIBRARY_ADW);
	Linker.link(adw_value_object_new_string, "adw_value_object_new_string", LIBRARY_ADW);
	Linker.link(adw_value_object_new_take_string, "adw_value_object_new_take_string", LIBRARY_ADW);
	Linker.link(adw_value_object_copy_value, "adw_value_object_copy_value", LIBRARY_ADW);
	Linker.link(adw_value_object_dup_string, "adw_value_object_dup_string", LIBRARY_ADW);
	Linker.link(adw_value_object_get_string, "adw_value_object_get_string", LIBRARY_ADW);
	Linker.link(adw_value_object_get_value, "adw_value_object_get_value", LIBRARY_ADW);

	// adw.ViewSwitcher

	Linker.link(adw_view_switcher_get_type, "adw_view_switcher_get_type", LIBRARY_ADW);
	Linker.link(adw_view_switcher_new, "adw_view_switcher_new", LIBRARY_ADW);
	Linker.link(adw_view_switcher_get_narrow_ellipsize, "adw_view_switcher_get_narrow_ellipsize", LIBRARY_ADW);
	Linker.link(adw_view_switcher_get_policy, "adw_view_switcher_get_policy", LIBRARY_ADW);
	Linker.link(adw_view_switcher_get_stack, "adw_view_switcher_get_stack", LIBRARY_ADW);
	Linker.link(adw_view_switcher_set_narrow_ellipsize, "adw_view_switcher_set_narrow_ellipsize", LIBRARY_ADW);
	Linker.link(adw_view_switcher_set_policy, "adw_view_switcher_set_policy", LIBRARY_ADW);
	Linker.link(adw_view_switcher_set_stack, "adw_view_switcher_set_stack", LIBRARY_ADW);

	// adw.ViewSwitcherBar

	Linker.link(adw_view_switcher_bar_get_type, "adw_view_switcher_bar_get_type", LIBRARY_ADW);
	Linker.link(adw_view_switcher_bar_new, "adw_view_switcher_bar_new", LIBRARY_ADW);
	Linker.link(adw_view_switcher_bar_get_policy, "adw_view_switcher_bar_get_policy", LIBRARY_ADW);
	Linker.link(adw_view_switcher_bar_get_reveal, "adw_view_switcher_bar_get_reveal", LIBRARY_ADW);
	Linker.link(adw_view_switcher_bar_get_stack, "adw_view_switcher_bar_get_stack", LIBRARY_ADW);
	Linker.link(adw_view_switcher_bar_set_policy, "adw_view_switcher_bar_set_policy", LIBRARY_ADW);
	Linker.link(adw_view_switcher_bar_set_reveal, "adw_view_switcher_bar_set_reveal", LIBRARY_ADW);
	Linker.link(adw_view_switcher_bar_set_stack, "adw_view_switcher_bar_set_stack", LIBRARY_ADW);

	// adw.ViewSwitcherTitle

	Linker.link(adw_view_switcher_title_get_type, "adw_view_switcher_title_get_type", LIBRARY_ADW);
	Linker.link(adw_view_switcher_title_new, "adw_view_switcher_title_new", LIBRARY_ADW);
	Linker.link(adw_view_switcher_title_get_policy, "adw_view_switcher_title_get_policy", LIBRARY_ADW);
	Linker.link(adw_view_switcher_title_get_stack, "adw_view_switcher_title_get_stack", LIBRARY_ADW);
	Linker.link(adw_view_switcher_title_get_subtitle, "adw_view_switcher_title_get_subtitle", LIBRARY_ADW);
	Linker.link(adw_view_switcher_title_get_title, "adw_view_switcher_title_get_title", LIBRARY_ADW);
	Linker.link(adw_view_switcher_title_get_title_visible, "adw_view_switcher_title_get_title_visible", LIBRARY_ADW);
	Linker.link(adw_view_switcher_title_get_view_switcher_enabled, "adw_view_switcher_title_get_view_switcher_enabled", LIBRARY_ADW);
	Linker.link(adw_view_switcher_title_set_policy, "adw_view_switcher_title_set_policy", LIBRARY_ADW);
	Linker.link(adw_view_switcher_title_set_stack, "adw_view_switcher_title_set_stack", LIBRARY_ADW);
	Linker.link(adw_view_switcher_title_set_subtitle, "adw_view_switcher_title_set_subtitle", LIBRARY_ADW);
	Linker.link(adw_view_switcher_title_set_title, "adw_view_switcher_title_set_title", LIBRARY_ADW);
	Linker.link(adw_view_switcher_title_set_view_switcher_enabled, "adw_view_switcher_title_set_view_switcher_enabled", LIBRARY_ADW);

	// adw.Window

	Linker.link(adw_window_get_type, "adw_window_get_type", LIBRARY_ADW);
	Linker.link(adw_window_new, "adw_window_new", LIBRARY_ADW);
	Linker.link(adw_window_get_child, "adw_window_get_child", LIBRARY_ADW);
	Linker.link(adw_window_set_child, "adw_window_set_child", LIBRARY_ADW);

	// adw.WindowTitle

	Linker.link(adw_window_title_get_type, "adw_window_title_get_type", LIBRARY_ADW);
	Linker.link(adw_window_title_new, "adw_window_title_new", LIBRARY_ADW);
	Linker.link(adw_window_title_get_subtitle, "adw_window_title_get_subtitle", LIBRARY_ADW);
	Linker.link(adw_window_title_get_title, "adw_window_title_get_title", LIBRARY_ADW);
	Linker.link(adw_window_title_set_subtitle, "adw_window_title_set_subtitle", LIBRARY_ADW);
	Linker.link(adw_window_title_set_title, "adw_window_title_set_title", LIBRARY_ADW);
}

__gshared extern(C)
{

	// adw.ActionRow

	GType function() c_adw_action_row_get_type;
	GtkWidget* function() c_adw_action_row_new;
	void function(AdwActionRow* self) c_adw_action_row_activate;
	void function(AdwActionRow* self, GtkWidget* widget) c_adw_action_row_add_prefix;
	void function(AdwActionRow* self, GtkWidget* widget) c_adw_action_row_add_suffix;
	GtkWidget* function(AdwActionRow* self) c_adw_action_row_get_activatable_widget;
	const(char)* function(AdwActionRow* self) c_adw_action_row_get_icon_name;
	const(char)* function(AdwActionRow* self) c_adw_action_row_get_subtitle;
	int function(AdwActionRow* self) c_adw_action_row_get_subtitle_lines;
	int function(AdwActionRow* self) c_adw_action_row_get_title_lines;
	int function(AdwActionRow* self) c_adw_action_row_get_use_underline;
	void function(AdwActionRow* self, GtkWidget* widget) c_adw_action_row_remove;
	void function(AdwActionRow* self, GtkWidget* widget) c_adw_action_row_set_activatable_widget;
	void function(AdwActionRow* self, const(char)* iconName) c_adw_action_row_set_icon_name;
	void function(AdwActionRow* self, const(char)* subtitle) c_adw_action_row_set_subtitle;
	void function(AdwActionRow* self, int subtitleLines) c_adw_action_row_set_subtitle_lines;
	void function(AdwActionRow* self, int titleLines) c_adw_action_row_set_title_lines;
	void function(AdwActionRow* self, int useUnderline) c_adw_action_row_set_use_underline;

	// adw.ApplicationWindow

	GType function() c_adw_application_window_get_type;
	GtkWidget* function(GtkApplication* app) c_adw_application_window_new;
	GtkWidget* function(AdwApplicationWindow* self) c_adw_application_window_get_child;
	void function(AdwApplicationWindow* self, GtkWidget* child) c_adw_application_window_set_child;

	// adw.Avatar

	GType function() c_adw_avatar_get_type;
	GtkWidget* function(int size, const(char)* text, int showInitials) c_adw_avatar_new;
	GdkPixbuf* function(AdwAvatar* self, int size, int scaleFactor) c_adw_avatar_draw_to_pixbuf;
	GdkPaintable* function(AdwAvatar* self) c_adw_avatar_get_custom_image;
	const(char)* function(AdwAvatar* self) c_adw_avatar_get_icon_name;
	int function(AdwAvatar* self) c_adw_avatar_get_show_initials;
	int function(AdwAvatar* self) c_adw_avatar_get_size;
	const(char)* function(AdwAvatar* self) c_adw_avatar_get_text;
	void function(AdwAvatar* self, GdkPaintable* customImage) c_adw_avatar_set_custom_image;
	void function(AdwAvatar* self, const(char)* iconName) c_adw_avatar_set_icon_name;
	void function(AdwAvatar* self, int showInitials) c_adw_avatar_set_show_initials;
	void function(AdwAvatar* self, int size) c_adw_avatar_set_size;
	void function(AdwAvatar* self, const(char)* text) c_adw_avatar_set_text;

	// adw.Bin

	GType function() c_adw_bin_get_type;
	GtkWidget* function() c_adw_bin_new;
	GtkWidget* function(AdwBin* self) c_adw_bin_get_child;
	void function(AdwBin* self, GtkWidget* child) c_adw_bin_set_child;

	// adw.Carousel

	GType function() c_adw_carousel_get_type;
	GtkWidget* function() c_adw_carousel_new;
	void function(AdwCarousel* self, GtkWidget* child) c_adw_carousel_append;
	int function(AdwCarousel* self) c_adw_carousel_get_allow_long_swipes;
	int function(AdwCarousel* self) c_adw_carousel_get_allow_mouse_drag;
	int function(AdwCarousel* self) c_adw_carousel_get_allow_scroll_wheel;
	uint function(AdwCarousel* self) c_adw_carousel_get_animation_duration;
	int function(AdwCarousel* self) c_adw_carousel_get_interactive;
	uint function(AdwCarousel* self) c_adw_carousel_get_n_pages;
	GtkWidget* function(AdwCarousel* self, uint n) c_adw_carousel_get_nth_page;
	double function(AdwCarousel* self) c_adw_carousel_get_position;
	uint function(AdwCarousel* self) c_adw_carousel_get_reveal_duration;
	uint function(AdwCarousel* self) c_adw_carousel_get_spacing;
	void function(AdwCarousel* self, GtkWidget* child, int position) c_adw_carousel_insert;
	void function(AdwCarousel* self, GtkWidget* child) c_adw_carousel_prepend;
	void function(AdwCarousel* self, GtkWidget* child) c_adw_carousel_remove;
	void function(AdwCarousel* self, GtkWidget* child, int position) c_adw_carousel_reorder;
	void function(AdwCarousel* self, GtkWidget* widget) c_adw_carousel_scroll_to;
	void function(AdwCarousel* self, GtkWidget* widget, long duration) c_adw_carousel_scroll_to_full;
	void function(AdwCarousel* self, int allowLongSwipes) c_adw_carousel_set_allow_long_swipes;
	void function(AdwCarousel* self, int allowMouseDrag) c_adw_carousel_set_allow_mouse_drag;
	void function(AdwCarousel* self, int allowScrollWheel) c_adw_carousel_set_allow_scroll_wheel;
	void function(AdwCarousel* self, uint duration) c_adw_carousel_set_animation_duration;
	void function(AdwCarousel* self, int interactive) c_adw_carousel_set_interactive;
	void function(AdwCarousel* self, uint revealDuration) c_adw_carousel_set_reveal_duration;
	void function(AdwCarousel* self, uint spacing) c_adw_carousel_set_spacing;

	// adw.CarouselIndicatorDots

	GType function() c_adw_carousel_indicator_dots_get_type;
	GtkWidget* function() c_adw_carousel_indicator_dots_new;
	AdwCarousel* function(AdwCarouselIndicatorDots* self) c_adw_carousel_indicator_dots_get_carousel;
	void function(AdwCarouselIndicatorDots* self, AdwCarousel* carousel) c_adw_carousel_indicator_dots_set_carousel;

	// adw.CarouselIndicatorLines

	GType function() c_adw_carousel_indicator_lines_get_type;
	GtkWidget* function() c_adw_carousel_indicator_lines_new;
	AdwCarousel* function(AdwCarouselIndicatorLines* self) c_adw_carousel_indicator_lines_get_carousel;
	void function(AdwCarouselIndicatorLines* self, AdwCarousel* carousel) c_adw_carousel_indicator_lines_set_carousel;

	// adw.Clamp

	GType function() c_adw_clamp_get_type;
	GtkWidget* function() c_adw_clamp_new;
	GtkWidget* function(AdwClamp* self) c_adw_clamp_get_child;
	int function(AdwClamp* self) c_adw_clamp_get_maximum_size;
	int function(AdwClamp* self) c_adw_clamp_get_tightening_threshold;
	void function(AdwClamp* self, GtkWidget* child) c_adw_clamp_set_child;
	void function(AdwClamp* self, int maximumSize) c_adw_clamp_set_maximum_size;
	void function(AdwClamp* self, int tighteningThreshold) c_adw_clamp_set_tightening_threshold;

	// adw.ClampLayout

	GType function() c_adw_clamp_layout_get_type;
	GtkLayoutManager* function() c_adw_clamp_layout_new;
	int function(AdwClampLayout* self) c_adw_clamp_layout_get_maximum_size;
	int function(AdwClampLayout* self) c_adw_clamp_layout_get_tightening_threshold;
	void function(AdwClampLayout* self, int maximumSize) c_adw_clamp_layout_set_maximum_size;
	void function(AdwClampLayout* self, int tighteningThreshold) c_adw_clamp_layout_set_tightening_threshold;

	// adw.ClampScrollable

	GType function() c_adw_clamp_scrollable_get_type;
	GtkWidget* function() c_adw_clamp_scrollable_new;
	GtkWidget* function(AdwClampScrollable* self) c_adw_clamp_scrollable_get_child;
	int function(AdwClampScrollable* self) c_adw_clamp_scrollable_get_maximum_size;
	int function(AdwClampScrollable* self) c_adw_clamp_scrollable_get_tightening_threshold;
	void function(AdwClampScrollable* self, GtkWidget* child) c_adw_clamp_scrollable_set_child;
	void function(AdwClampScrollable* self, int maximumSize) c_adw_clamp_scrollable_set_maximum_size;
	void function(AdwClampScrollable* self, int tighteningThreshold) c_adw_clamp_scrollable_set_tightening_threshold;

	// adw.ComboRow

	GType function() c_adw_combo_row_get_type;
	GtkWidget* function() c_adw_combo_row_new;
	GtkExpression* function(AdwComboRow* self) c_adw_combo_row_get_expression;
	GtkListItemFactory* function(AdwComboRow* self) c_adw_combo_row_get_factory;
	GtkListItemFactory* function(AdwComboRow* self) c_adw_combo_row_get_list_factory;
	GListModel* function(AdwComboRow* self) c_adw_combo_row_get_model;
	uint function(AdwComboRow* self) c_adw_combo_row_get_selected;
	void* function(AdwComboRow* self) c_adw_combo_row_get_selected_item;
	int function(AdwComboRow* self) c_adw_combo_row_get_use_subtitle;
	void function(AdwComboRow* self, GtkExpression* expression) c_adw_combo_row_set_expression;
	void function(AdwComboRow* self, GtkListItemFactory* factory) c_adw_combo_row_set_factory;
	void function(AdwComboRow* self, GtkListItemFactory* factory) c_adw_combo_row_set_list_factory;
	void function(AdwComboRow* self, GListModel* model) c_adw_combo_row_set_model;
	void function(AdwComboRow* self, uint position) c_adw_combo_row_set_selected;
	void function(AdwComboRow* self, int useSubtitle) c_adw_combo_row_set_use_subtitle;

	// adw.EnumListModel

	GType function() c_adw_enum_list_model_get_type;
	AdwEnumListModel* function(GType enumType) c_adw_enum_list_model_new;
	uint function(AdwEnumListModel* self, int value) c_adw_enum_list_model_find_position;
	GType function(AdwEnumListModel* self) c_adw_enum_list_model_get_enum_type;

	// adw.EnumValueObject

	GType function() c_adw_enum_value_object_get_type;
	const(char)* function(AdwEnumValueObject* self) c_adw_enum_value_object_get_name;
	const(char)* function(AdwEnumValueObject* self) c_adw_enum_value_object_get_nick;
	int function(AdwEnumValueObject* self) c_adw_enum_value_object_get_value;

	// adw.ExpanderRow

	GType function() c_adw_expander_row_get_type;
	GtkWidget* function() c_adw_expander_row_new;
	void function(AdwExpanderRow* self, GtkWidget* child) c_adw_expander_row_add;
	void function(AdwExpanderRow* self, GtkWidget* widget) c_adw_expander_row_add_action;
	void function(AdwExpanderRow* self, GtkWidget* widget) c_adw_expander_row_add_prefix;
	int function(AdwExpanderRow* self) c_adw_expander_row_get_enable_expansion;
	int function(AdwExpanderRow* self) c_adw_expander_row_get_expanded;
	const(char)* function(AdwExpanderRow* self) c_adw_expander_row_get_icon_name;
	int function(AdwExpanderRow* self) c_adw_expander_row_get_show_enable_switch;
	const(char)* function(AdwExpanderRow* self) c_adw_expander_row_get_subtitle;
	int function(AdwExpanderRow* self) c_adw_expander_row_get_use_underline;
	void function(AdwExpanderRow* self, GtkWidget* child) c_adw_expander_row_remove;
	void function(AdwExpanderRow* self, int enableExpansion) c_adw_expander_row_set_enable_expansion;
	void function(AdwExpanderRow* self, int expanded) c_adw_expander_row_set_expanded;
	void function(AdwExpanderRow* self, const(char)* iconName) c_adw_expander_row_set_icon_name;
	void function(AdwExpanderRow* self, int showEnableSwitch) c_adw_expander_row_set_show_enable_switch;
	void function(AdwExpanderRow* self, const(char)* subtitle) c_adw_expander_row_set_subtitle;
	void function(AdwExpanderRow* self, int useUnderline) c_adw_expander_row_set_use_underline;

	// adw.Flap

	GType function() c_adw_flap_get_type;
	GtkWidget* function() c_adw_flap_new;
	GtkWidget* function(AdwFlap* self) c_adw_flap_get_content;
	GtkWidget* function(AdwFlap* self) c_adw_flap_get_flap;
	GtkPackType function(AdwFlap* self) c_adw_flap_get_flap_position;
	uint function(AdwFlap* self) c_adw_flap_get_fold_duration;
	AdwFlapFoldPolicy function(AdwFlap* self) c_adw_flap_get_fold_policy;
	int function(AdwFlap* self) c_adw_flap_get_folded;
	int function(AdwFlap* self) c_adw_flap_get_locked;
	int function(AdwFlap* self) c_adw_flap_get_modal;
	uint function(AdwFlap* self) c_adw_flap_get_reveal_duration;
	int function(AdwFlap* self) c_adw_flap_get_reveal_flap;
	double function(AdwFlap* self) c_adw_flap_get_reveal_progress;
	GtkWidget* function(AdwFlap* self) c_adw_flap_get_separator;
	int function(AdwFlap* self) c_adw_flap_get_swipe_to_close;
	int function(AdwFlap* self) c_adw_flap_get_swipe_to_open;
	AdwFlapTransitionType function(AdwFlap* self) c_adw_flap_get_transition_type;
	void function(AdwFlap* self, GtkWidget* content) c_adw_flap_set_content;
	void function(AdwFlap* self, GtkWidget* flap) c_adw_flap_set_flap;
	void function(AdwFlap* self, GtkPackType position) c_adw_flap_set_flap_position;
	void function(AdwFlap* self, uint duration) c_adw_flap_set_fold_duration;
	void function(AdwFlap* self, AdwFlapFoldPolicy policy) c_adw_flap_set_fold_policy;
	void function(AdwFlap* self, int locked) c_adw_flap_set_locked;
	void function(AdwFlap* self, int modal) c_adw_flap_set_modal;
	void function(AdwFlap* self, uint duration) c_adw_flap_set_reveal_duration;
	void function(AdwFlap* self, int revealFlap) c_adw_flap_set_reveal_flap;
	void function(AdwFlap* self, GtkWidget* separator) c_adw_flap_set_separator;
	void function(AdwFlap* self, int swipeToClose) c_adw_flap_set_swipe_to_close;
	void function(AdwFlap* self, int swipeToOpen) c_adw_flap_set_swipe_to_open;
	void function(AdwFlap* self, AdwFlapTransitionType transitionType) c_adw_flap_set_transition_type;

	// adw.HeaderBar

	GType function() c_adw_header_bar_get_type;
	GtkWidget* function() c_adw_header_bar_new;
	AdwCenteringPolicy function(AdwHeaderBar* self) c_adw_header_bar_get_centering_policy;
	const(char)* function(AdwHeaderBar* self) c_adw_header_bar_get_decoration_layout;
	int function(AdwHeaderBar* self) c_adw_header_bar_get_show_end_title_buttons;
	int function(AdwHeaderBar* self) c_adw_header_bar_get_show_start_title_buttons;
	GtkWidget* function(AdwHeaderBar* self) c_adw_header_bar_get_title_widget;
	void function(AdwHeaderBar* self, GtkWidget* child) c_adw_header_bar_pack_end;
	void function(AdwHeaderBar* self, GtkWidget* child) c_adw_header_bar_pack_start;
	void function(AdwHeaderBar* self, GtkWidget* child) c_adw_header_bar_remove;
	void function(AdwHeaderBar* self, AdwCenteringPolicy centeringPolicy) c_adw_header_bar_set_centering_policy;
	void function(AdwHeaderBar* self, const(char)* layout) c_adw_header_bar_set_decoration_layout;
	void function(AdwHeaderBar* self, int setting) c_adw_header_bar_set_show_end_title_buttons;
	void function(AdwHeaderBar* self, int setting) c_adw_header_bar_set_show_start_title_buttons;
	void function(AdwHeaderBar* self, GtkWidget* titleWidget) c_adw_header_bar_set_title_widget;

	// adw.Leaflet

	GType function() c_adw_leaflet_get_type;
	GtkWidget* function() c_adw_leaflet_new;
	AdwLeafletPage* function(AdwLeaflet* self, GtkWidget* child) c_adw_leaflet_append;
	GtkWidget* function(AdwLeaflet* self, AdwNavigationDirection direction) c_adw_leaflet_get_adjacent_child;
	int function(AdwLeaflet* self) c_adw_leaflet_get_can_swipe_back;
	int function(AdwLeaflet* self) c_adw_leaflet_get_can_swipe_forward;
	int function(AdwLeaflet* self) c_adw_leaflet_get_can_unfold;
	GtkWidget* function(AdwLeaflet* self, const(char)* name) c_adw_leaflet_get_child_by_name;
	uint function(AdwLeaflet* self) c_adw_leaflet_get_child_transition_duration;
	int function(AdwLeaflet* self) c_adw_leaflet_get_child_transition_running;
	int function(AdwLeaflet* self) c_adw_leaflet_get_folded;
	int function(AdwLeaflet* self, int folded, GtkOrientation orientation) c_adw_leaflet_get_homogeneous;
	int function(AdwLeaflet* self) c_adw_leaflet_get_interpolate_size;
	uint function(AdwLeaflet* self) c_adw_leaflet_get_mode_transition_duration;
	AdwLeafletPage* function(AdwLeaflet* self, GtkWidget* child) c_adw_leaflet_get_page;
	GtkSelectionModel* function(AdwLeaflet* self) c_adw_leaflet_get_pages;
	AdwLeafletTransitionType function(AdwLeaflet* self) c_adw_leaflet_get_transition_type;
	GtkWidget* function(AdwLeaflet* self) c_adw_leaflet_get_visible_child;
	const(char)* function(AdwLeaflet* self) c_adw_leaflet_get_visible_child_name;
	AdwLeafletPage* function(AdwLeaflet* self, GtkWidget* child, GtkWidget* sibling) c_adw_leaflet_insert_child_after;
	int function(AdwLeaflet* self, AdwNavigationDirection direction) c_adw_leaflet_navigate;
	AdwLeafletPage* function(AdwLeaflet* self, GtkWidget* child) c_adw_leaflet_prepend;
	void function(AdwLeaflet* self, GtkWidget* child) c_adw_leaflet_remove;
	void function(AdwLeaflet* self, GtkWidget* child, GtkWidget* sibling) c_adw_leaflet_reorder_child_after;
	void function(AdwLeaflet* self, int canSwipeBack) c_adw_leaflet_set_can_swipe_back;
	void function(AdwLeaflet* self, int canSwipeForward) c_adw_leaflet_set_can_swipe_forward;
	void function(AdwLeaflet* self, int canUnfold) c_adw_leaflet_set_can_unfold;
	void function(AdwLeaflet* self, uint duration) c_adw_leaflet_set_child_transition_duration;
	void function(AdwLeaflet* self, int folded, GtkOrientation orientation, int homogeneous) c_adw_leaflet_set_homogeneous;
	void function(AdwLeaflet* self, int interpolateSize) c_adw_leaflet_set_interpolate_size;
	void function(AdwLeaflet* self, uint duration) c_adw_leaflet_set_mode_transition_duration;
	void function(AdwLeaflet* self, AdwLeafletTransitionType transition) c_adw_leaflet_set_transition_type;
	void function(AdwLeaflet* self, GtkWidget* visibleChild) c_adw_leaflet_set_visible_child;
	void function(AdwLeaflet* self, const(char)* name) c_adw_leaflet_set_visible_child_name;

	// adw.LeafletPage

	GType function() c_adw_leaflet_page_get_type;
	GtkWidget* function(AdwLeafletPage* self) c_adw_leaflet_page_get_child;
	const(char)* function(AdwLeafletPage* self) c_adw_leaflet_page_get_name;
	int function(AdwLeafletPage* self) c_adw_leaflet_page_get_navigatable;
	void function(AdwLeafletPage* self, const(char)* name) c_adw_leaflet_page_set_name;
	void function(AdwLeafletPage* self, int navigatable) c_adw_leaflet_page_set_navigatable;

	// adw.PreferencesGroup

	GType function() c_adw_preferences_group_get_type;
	GtkWidget* function() c_adw_preferences_group_new;
	void function(AdwPreferencesGroup* self, GtkWidget* child) c_adw_preferences_group_add;
	const(char)* function(AdwPreferencesGroup* self) c_adw_preferences_group_get_description;
	const(char)* function(AdwPreferencesGroup* self) c_adw_preferences_group_get_title;
	void function(AdwPreferencesGroup* self, GtkWidget* child) c_adw_preferences_group_remove;
	void function(AdwPreferencesGroup* self, const(char)* description) c_adw_preferences_group_set_description;
	void function(AdwPreferencesGroup* self, const(char)* title) c_adw_preferences_group_set_title;

	// adw.PreferencesPage

	GType function() c_adw_preferences_page_get_type;
	GtkWidget* function() c_adw_preferences_page_new;
	void function(AdwPreferencesPage* self, AdwPreferencesGroup* group) c_adw_preferences_page_add;
	const(char)* function(AdwPreferencesPage* self) c_adw_preferences_page_get_icon_name;
	const(char)* function(AdwPreferencesPage* self) c_adw_preferences_page_get_title;
	int function(AdwPreferencesPage* self) c_adw_preferences_page_get_use_underline;
	void function(AdwPreferencesPage* self, AdwPreferencesGroup* group) c_adw_preferences_page_remove;
	void function(AdwPreferencesPage* self, const(char)* iconName) c_adw_preferences_page_set_icon_name;
	void function(AdwPreferencesPage* self, const(char)* title) c_adw_preferences_page_set_title;
	void function(AdwPreferencesPage* self, int useUnderline) c_adw_preferences_page_set_use_underline;

	// adw.PreferencesRow

	GType function() c_adw_preferences_row_get_type;
	GtkWidget* function() c_adw_preferences_row_new;
	const(char)* function(AdwPreferencesRow* self) c_adw_preferences_row_get_title;
	int function(AdwPreferencesRow* self) c_adw_preferences_row_get_use_underline;
	void function(AdwPreferencesRow* self, const(char)* title) c_adw_preferences_row_set_title;
	void function(AdwPreferencesRow* self, int useUnderline) c_adw_preferences_row_set_use_underline;

	// adw.PreferencesWindow

	GType function() c_adw_preferences_window_get_type;
	GtkWidget* function() c_adw_preferences_window_new;
	void function(AdwPreferencesWindow* self, AdwPreferencesPage* page) c_adw_preferences_window_add;
	void function(AdwPreferencesWindow* self) c_adw_preferences_window_close_subpage;
	int function(AdwPreferencesWindow* self) c_adw_preferences_window_get_can_swipe_back;
	int function(AdwPreferencesWindow* self) c_adw_preferences_window_get_search_enabled;
	void function(AdwPreferencesWindow* self, GtkWidget* subpage) c_adw_preferences_window_present_subpage;
	void function(AdwPreferencesWindow* self, AdwPreferencesPage* page) c_adw_preferences_window_remove;
	void function(AdwPreferencesWindow* self, int canSwipeBack) c_adw_preferences_window_set_can_swipe_back;
	void function(AdwPreferencesWindow* self, int searchEnabled) c_adw_preferences_window_set_search_enabled;

	// adw.Squeezer

	GType function() c_adw_squeezer_get_type;
	GtkWidget* function() c_adw_squeezer_new;
	AdwSqueezerPage* function(AdwSqueezer* self, GtkWidget* child) c_adw_squeezer_add;
	int function(AdwSqueezer* self) c_adw_squeezer_get_homogeneous;
	int function(AdwSqueezer* self) c_adw_squeezer_get_interpolate_size;
	AdwSqueezerPage* function(AdwSqueezer* self, GtkWidget* child) c_adw_squeezer_get_page;
	GtkSelectionModel* function(AdwSqueezer* self) c_adw_squeezer_get_pages;
	uint function(AdwSqueezer* self) c_adw_squeezer_get_transition_duration;
	int function(AdwSqueezer* self) c_adw_squeezer_get_transition_running;
	AdwSqueezerTransitionType function(AdwSqueezer* self) c_adw_squeezer_get_transition_type;
	GtkWidget* function(AdwSqueezer* self) c_adw_squeezer_get_visible_child;
	float function(AdwSqueezer* self) c_adw_squeezer_get_xalign;
	float function(AdwSqueezer* self) c_adw_squeezer_get_yalign;
	void function(AdwSqueezer* self, GtkWidget* child) c_adw_squeezer_remove;
	void function(AdwSqueezer* self, int homogeneous) c_adw_squeezer_set_homogeneous;
	void function(AdwSqueezer* self, int interpolateSize) c_adw_squeezer_set_interpolate_size;
	void function(AdwSqueezer* self, uint duration) c_adw_squeezer_set_transition_duration;
	void function(AdwSqueezer* self, AdwSqueezerTransitionType transition) c_adw_squeezer_set_transition_type;
	void function(AdwSqueezer* self, float xalign) c_adw_squeezer_set_xalign;
	void function(AdwSqueezer* self, float yalign) c_adw_squeezer_set_yalign;

	// adw.SqueezerPage

	GType function() c_adw_squeezer_page_get_type;
	GtkWidget* function(AdwSqueezerPage* self) c_adw_squeezer_page_get_child;
	int function(AdwSqueezerPage* self) c_adw_squeezer_page_get_enabled;
	void function(AdwSqueezerPage* self, int enabled) c_adw_squeezer_page_set_enabled;

	// adw.StatusPage

	GType function() c_adw_status_page_get_type;
	GtkWidget* function() c_adw_status_page_new;
	GtkWidget* function(AdwStatusPage* self) c_adw_status_page_get_child;
	const(char)* function(AdwStatusPage* self) c_adw_status_page_get_description;
	const(char)* function(AdwStatusPage* self) c_adw_status_page_get_icon_name;
	const(char)* function(AdwStatusPage* self) c_adw_status_page_get_title;
	void function(AdwStatusPage* self, GtkWidget* child) c_adw_status_page_set_child;
	void function(AdwStatusPage* self, const(char)* description) c_adw_status_page_set_description;
	void function(AdwStatusPage* self, const(char)* iconName) c_adw_status_page_set_icon_name;
	void function(AdwStatusPage* self, const(char)* title) c_adw_status_page_set_title;

	// adw.SwipeTracker

	GType function() c_adw_swipe_tracker_get_type;
	AdwSwipeTracker* function(AdwSwipeable* swipeable) c_adw_swipe_tracker_new;
	int function(AdwSwipeTracker* self) c_adw_swipe_tracker_get_allow_long_swipes;
	int function(AdwSwipeTracker* self) c_adw_swipe_tracker_get_allow_mouse_drag;
	int function(AdwSwipeTracker* self) c_adw_swipe_tracker_get_enabled;
	int function(AdwSwipeTracker* self) c_adw_swipe_tracker_get_reversed;
	AdwSwipeable* function(AdwSwipeTracker* self) c_adw_swipe_tracker_get_swipeable;
	void function(AdwSwipeTracker* self, int allowLongSwipes) c_adw_swipe_tracker_set_allow_long_swipes;
	void function(AdwSwipeTracker* self, int allowMouseDrag) c_adw_swipe_tracker_set_allow_mouse_drag;
	void function(AdwSwipeTracker* self, int enabled) c_adw_swipe_tracker_set_enabled;
	void function(AdwSwipeTracker* self, int reversed) c_adw_swipe_tracker_set_reversed;
	void function(AdwSwipeTracker* self, double delta) c_adw_swipe_tracker_shift_position;

	// adw.Swipeable

	GType function() c_adw_swipeable_get_type;
	double function(AdwSwipeable* self) c_adw_swipeable_get_cancel_progress;
	double function(AdwSwipeable* self) c_adw_swipeable_get_distance;
	double function(AdwSwipeable* self) c_adw_swipeable_get_progress;
	double* function(AdwSwipeable* self, int* nSnapPoints) c_adw_swipeable_get_snap_points;
	void function(AdwSwipeable* self, AdwNavigationDirection navigationDirection, int isDrag, GdkRectangle* rect) c_adw_swipeable_get_swipe_area;

	// adw.TabBar

	GType function() c_adw_tab_bar_get_type;
	AdwTabBar* function() c_adw_tab_bar_new;
	int function(AdwTabBar* self) c_adw_tab_bar_get_autohide;
	GtkWidget* function(AdwTabBar* self) c_adw_tab_bar_get_end_action_widget;
	int function(AdwTabBar* self) c_adw_tab_bar_get_expand_tabs;
	int function(AdwTabBar* self) c_adw_tab_bar_get_inverted;
	int function(AdwTabBar* self) c_adw_tab_bar_get_is_overflowing;
	GtkWidget* function(AdwTabBar* self) c_adw_tab_bar_get_start_action_widget;
	int function(AdwTabBar* self) c_adw_tab_bar_get_tabs_revealed;
	AdwTabView* function(AdwTabBar* self) c_adw_tab_bar_get_view;
	void function(AdwTabBar* self, int autohide) c_adw_tab_bar_set_autohide;
	void function(AdwTabBar* self, GtkWidget* widget) c_adw_tab_bar_set_end_action_widget;
	void function(AdwTabBar* self, int expandTabs) c_adw_tab_bar_set_expand_tabs;
	void function(AdwTabBar* self, int inverted) c_adw_tab_bar_set_inverted;
	void function(AdwTabBar* self, GtkWidget* widget) c_adw_tab_bar_set_start_action_widget;
	void function(AdwTabBar* self, AdwTabView* view) c_adw_tab_bar_set_view;
	void function(AdwTabBar* self, GdkDragAction actions, GType* types, size_t nTypes) c_adw_tab_bar_setup_extra_drop_target;

	// adw.TabPage

	GType function() c_adw_tab_page_get_type;
	GtkWidget* function(AdwTabPage* self) c_adw_tab_page_get_child;
	GIcon* function(AdwTabPage* self) c_adw_tab_page_get_icon;
	int function(AdwTabPage* self) c_adw_tab_page_get_indicator_activatable;
	GIcon* function(AdwTabPage* self) c_adw_tab_page_get_indicator_icon;
	int function(AdwTabPage* self) c_adw_tab_page_get_loading;
	int function(AdwTabPage* self) c_adw_tab_page_get_needs_attention;
	AdwTabPage* function(AdwTabPage* self) c_adw_tab_page_get_parent;
	int function(AdwTabPage* self) c_adw_tab_page_get_pinned;
	int function(AdwTabPage* self) c_adw_tab_page_get_selected;
	const(char)* function(AdwTabPage* self) c_adw_tab_page_get_title;
	const(char)* function(AdwTabPage* self) c_adw_tab_page_get_tooltip;
	void function(AdwTabPage* self, GIcon* icon) c_adw_tab_page_set_icon;
	void function(AdwTabPage* self, int activatable) c_adw_tab_page_set_indicator_activatable;
	void function(AdwTabPage* self, GIcon* indicatorIcon) c_adw_tab_page_set_indicator_icon;
	void function(AdwTabPage* self, int loading) c_adw_tab_page_set_loading;
	void function(AdwTabPage* self, int needsAttention) c_adw_tab_page_set_needs_attention;
	void function(AdwTabPage* self, const(char)* title) c_adw_tab_page_set_title;
	void function(AdwTabPage* self, const(char)* tooltip) c_adw_tab_page_set_tooltip;

	// adw.TabView

	GType function() c_adw_tab_view_get_type;
	AdwTabView* function() c_adw_tab_view_new;
	AdwTabPage* function(AdwTabView* self, GtkWidget* child, AdwTabPage* parent) c_adw_tab_view_add_page;
	AdwTabPage* function(AdwTabView* self, GtkWidget* child) c_adw_tab_view_append;
	AdwTabPage* function(AdwTabView* self, GtkWidget* child) c_adw_tab_view_append_pinned;
	void function(AdwTabView* self, AdwTabPage* page) c_adw_tab_view_close_other_pages;
	void function(AdwTabView* self, AdwTabPage* page) c_adw_tab_view_close_page;
	void function(AdwTabView* self, AdwTabPage* page, int confirm) c_adw_tab_view_close_page_finish;
	void function(AdwTabView* self, AdwTabPage* page) c_adw_tab_view_close_pages_after;
	void function(AdwTabView* self, AdwTabPage* page) c_adw_tab_view_close_pages_before;
	GIcon* function(AdwTabView* self) c_adw_tab_view_get_default_icon;
	int function(AdwTabView* self) c_adw_tab_view_get_is_transferring_page;
	GMenuModel* function(AdwTabView* self) c_adw_tab_view_get_menu_model;
	int function(AdwTabView* self) c_adw_tab_view_get_n_pages;
	int function(AdwTabView* self) c_adw_tab_view_get_n_pinned_pages;
	AdwTabPage* function(AdwTabView* self, int position) c_adw_tab_view_get_nth_page;
	AdwTabPage* function(AdwTabView* self, GtkWidget* child) c_adw_tab_view_get_page;
	int function(AdwTabView* self, AdwTabPage* page) c_adw_tab_view_get_page_position;
	GtkSelectionModel* function(AdwTabView* self) c_adw_tab_view_get_pages;
	AdwTabPage* function(AdwTabView* self) c_adw_tab_view_get_selected_page;
	GtkWidget* function(AdwTabView* self) c_adw_tab_view_get_shortcut_widget;
	AdwTabPage* function(AdwTabView* self, GtkWidget* child, int position) c_adw_tab_view_insert;
	AdwTabPage* function(AdwTabView* self, GtkWidget* child, int position) c_adw_tab_view_insert_pinned;
	AdwTabPage* function(AdwTabView* self, GtkWidget* child) c_adw_tab_view_prepend;
	AdwTabPage* function(AdwTabView* self, GtkWidget* child) c_adw_tab_view_prepend_pinned;
	int function(AdwTabView* self, AdwTabPage* page) c_adw_tab_view_reorder_backward;
	int function(AdwTabView* self, AdwTabPage* page) c_adw_tab_view_reorder_first;
	int function(AdwTabView* self, AdwTabPage* page) c_adw_tab_view_reorder_forward;
	int function(AdwTabView* self, AdwTabPage* page) c_adw_tab_view_reorder_last;
	int function(AdwTabView* self, AdwTabPage* page, int position) c_adw_tab_view_reorder_page;
	int function(AdwTabView* self) c_adw_tab_view_select_next_page;
	int function(AdwTabView* self) c_adw_tab_view_select_previous_page;
	void function(AdwTabView* self, GIcon* defaultIcon) c_adw_tab_view_set_default_icon;
	void function(AdwTabView* self, GMenuModel* menuModel) c_adw_tab_view_set_menu_model;
	void function(AdwTabView* self, AdwTabPage* page, int pinned) c_adw_tab_view_set_page_pinned;
	void function(AdwTabView* self, AdwTabPage* selectedPage) c_adw_tab_view_set_selected_page;
	void function(AdwTabView* self, GtkWidget* widget) c_adw_tab_view_set_shortcut_widget;
	void function(AdwTabView* self, AdwTabPage* page, AdwTabView* otherView, int position) c_adw_tab_view_transfer_page;

	// adw.ValueObject

	GType function() c_adw_value_object_get_type;
	AdwValueObject* function(GValue* value) c_adw_value_object_new;
	AdwValueObject* function(GType type, ... ) c_adw_value_object_new_collect;
	AdwValueObject* function(const(char)* string_) c_adw_value_object_new_string;
	AdwValueObject* function(char* string_) c_adw_value_object_new_take_string;
	void function(AdwValueObject* value, GValue* dest) c_adw_value_object_copy_value;
	char* function(AdwValueObject* value) c_adw_value_object_dup_string;
	const(char)* function(AdwValueObject* value) c_adw_value_object_get_string;
	GValue* function(AdwValueObject* value) c_adw_value_object_get_value;

	// adw.ViewSwitcher

	GType function() c_adw_view_switcher_get_type;
	GtkWidget* function() c_adw_view_switcher_new;
	PangoEllipsizeMode function(AdwViewSwitcher* self) c_adw_view_switcher_get_narrow_ellipsize;
	AdwViewSwitcherPolicy function(AdwViewSwitcher* self) c_adw_view_switcher_get_policy;
	GtkStack* function(AdwViewSwitcher* self) c_adw_view_switcher_get_stack;
	void function(AdwViewSwitcher* self, PangoEllipsizeMode mode) c_adw_view_switcher_set_narrow_ellipsize;
	void function(AdwViewSwitcher* self, AdwViewSwitcherPolicy policy) c_adw_view_switcher_set_policy;
	void function(AdwViewSwitcher* self, GtkStack* stack) c_adw_view_switcher_set_stack;

	// adw.ViewSwitcherBar

	GType function() c_adw_view_switcher_bar_get_type;
	GtkWidget* function() c_adw_view_switcher_bar_new;
	AdwViewSwitcherPolicy function(AdwViewSwitcherBar* self) c_adw_view_switcher_bar_get_policy;
	int function(AdwViewSwitcherBar* self) c_adw_view_switcher_bar_get_reveal;
	GtkStack* function(AdwViewSwitcherBar* self) c_adw_view_switcher_bar_get_stack;
	void function(AdwViewSwitcherBar* self, AdwViewSwitcherPolicy policy) c_adw_view_switcher_bar_set_policy;
	void function(AdwViewSwitcherBar* self, int reveal) c_adw_view_switcher_bar_set_reveal;
	void function(AdwViewSwitcherBar* self, GtkStack* stack) c_adw_view_switcher_bar_set_stack;

	// adw.ViewSwitcherTitle

	GType function() c_adw_view_switcher_title_get_type;
	GtkWidget* function() c_adw_view_switcher_title_new;
	AdwViewSwitcherPolicy function(AdwViewSwitcherTitle* self) c_adw_view_switcher_title_get_policy;
	GtkStack* function(AdwViewSwitcherTitle* self) c_adw_view_switcher_title_get_stack;
	const(char)* function(AdwViewSwitcherTitle* self) c_adw_view_switcher_title_get_subtitle;
	const(char)* function(AdwViewSwitcherTitle* self) c_adw_view_switcher_title_get_title;
	int function(AdwViewSwitcherTitle* self) c_adw_view_switcher_title_get_title_visible;
	int function(AdwViewSwitcherTitle* self) c_adw_view_switcher_title_get_view_switcher_enabled;
	void function(AdwViewSwitcherTitle* self, AdwViewSwitcherPolicy policy) c_adw_view_switcher_title_set_policy;
	void function(AdwViewSwitcherTitle* self, GtkStack* stack) c_adw_view_switcher_title_set_stack;
	void function(AdwViewSwitcherTitle* self, const(char)* subtitle) c_adw_view_switcher_title_set_subtitle;
	void function(AdwViewSwitcherTitle* self, const(char)* title) c_adw_view_switcher_title_set_title;
	void function(AdwViewSwitcherTitle* self, int enabled) c_adw_view_switcher_title_set_view_switcher_enabled;

	// adw.Window

	GType function() c_adw_window_get_type;
	GtkWidget* function() c_adw_window_new;
	GtkWidget* function(AdwWindow* self) c_adw_window_get_child;
	void function(AdwWindow* self, GtkWidget* child) c_adw_window_set_child;

	// adw.WindowTitle

	GType function() c_adw_window_title_get_type;
	GtkWidget* function(const(char)* title, const(char)* subtitle) c_adw_window_title_new;
	const(char)* function(AdwWindowTitle* self) c_adw_window_title_get_subtitle;
	const(char)* function(AdwWindowTitle* self) c_adw_window_title_get_title;
	void function(AdwWindowTitle* self, const(char)* subtitle) c_adw_window_title_set_subtitle;
	void function(AdwWindowTitle* self, const(char)* title) c_adw_window_title_set_title;
}


// adw.ActionRow

alias c_adw_action_row_get_type adw_action_row_get_type;
alias c_adw_action_row_new adw_action_row_new;
alias c_adw_action_row_activate adw_action_row_activate;
alias c_adw_action_row_add_prefix adw_action_row_add_prefix;
alias c_adw_action_row_add_suffix adw_action_row_add_suffix;
alias c_adw_action_row_get_activatable_widget adw_action_row_get_activatable_widget;
alias c_adw_action_row_get_icon_name adw_action_row_get_icon_name;
alias c_adw_action_row_get_subtitle adw_action_row_get_subtitle;
alias c_adw_action_row_get_subtitle_lines adw_action_row_get_subtitle_lines;
alias c_adw_action_row_get_title_lines adw_action_row_get_title_lines;
alias c_adw_action_row_get_use_underline adw_action_row_get_use_underline;
alias c_adw_action_row_remove adw_action_row_remove;
alias c_adw_action_row_set_activatable_widget adw_action_row_set_activatable_widget;
alias c_adw_action_row_set_icon_name adw_action_row_set_icon_name;
alias c_adw_action_row_set_subtitle adw_action_row_set_subtitle;
alias c_adw_action_row_set_subtitle_lines adw_action_row_set_subtitle_lines;
alias c_adw_action_row_set_title_lines adw_action_row_set_title_lines;
alias c_adw_action_row_set_use_underline adw_action_row_set_use_underline;

// adw.ApplicationWindow

alias c_adw_application_window_get_type adw_application_window_get_type;
alias c_adw_application_window_new adw_application_window_new;
alias c_adw_application_window_get_child adw_application_window_get_child;
alias c_adw_application_window_set_child adw_application_window_set_child;

// adw.Avatar

alias c_adw_avatar_get_type adw_avatar_get_type;
alias c_adw_avatar_new adw_avatar_new;
alias c_adw_avatar_draw_to_pixbuf adw_avatar_draw_to_pixbuf;
alias c_adw_avatar_get_custom_image adw_avatar_get_custom_image;
alias c_adw_avatar_get_icon_name adw_avatar_get_icon_name;
alias c_adw_avatar_get_show_initials adw_avatar_get_show_initials;
alias c_adw_avatar_get_size adw_avatar_get_size;
alias c_adw_avatar_get_text adw_avatar_get_text;
alias c_adw_avatar_set_custom_image adw_avatar_set_custom_image;
alias c_adw_avatar_set_icon_name adw_avatar_set_icon_name;
alias c_adw_avatar_set_show_initials adw_avatar_set_show_initials;
alias c_adw_avatar_set_size adw_avatar_set_size;
alias c_adw_avatar_set_text adw_avatar_set_text;

// adw.Bin

alias c_adw_bin_get_type adw_bin_get_type;
alias c_adw_bin_new adw_bin_new;
alias c_adw_bin_get_child adw_bin_get_child;
alias c_adw_bin_set_child adw_bin_set_child;

// adw.Carousel

alias c_adw_carousel_get_type adw_carousel_get_type;
alias c_adw_carousel_new adw_carousel_new;
alias c_adw_carousel_append adw_carousel_append;
alias c_adw_carousel_get_allow_long_swipes adw_carousel_get_allow_long_swipes;
alias c_adw_carousel_get_allow_mouse_drag adw_carousel_get_allow_mouse_drag;
alias c_adw_carousel_get_allow_scroll_wheel adw_carousel_get_allow_scroll_wheel;
alias c_adw_carousel_get_animation_duration adw_carousel_get_animation_duration;
alias c_adw_carousel_get_interactive adw_carousel_get_interactive;
alias c_adw_carousel_get_n_pages adw_carousel_get_n_pages;
alias c_adw_carousel_get_nth_page adw_carousel_get_nth_page;
alias c_adw_carousel_get_position adw_carousel_get_position;
alias c_adw_carousel_get_reveal_duration adw_carousel_get_reveal_duration;
alias c_adw_carousel_get_spacing adw_carousel_get_spacing;
alias c_adw_carousel_insert adw_carousel_insert;
alias c_adw_carousel_prepend adw_carousel_prepend;
alias c_adw_carousel_remove adw_carousel_remove;
alias c_adw_carousel_reorder adw_carousel_reorder;
alias c_adw_carousel_scroll_to adw_carousel_scroll_to;
alias c_adw_carousel_scroll_to_full adw_carousel_scroll_to_full;
alias c_adw_carousel_set_allow_long_swipes adw_carousel_set_allow_long_swipes;
alias c_adw_carousel_set_allow_mouse_drag adw_carousel_set_allow_mouse_drag;
alias c_adw_carousel_set_allow_scroll_wheel adw_carousel_set_allow_scroll_wheel;
alias c_adw_carousel_set_animation_duration adw_carousel_set_animation_duration;
alias c_adw_carousel_set_interactive adw_carousel_set_interactive;
alias c_adw_carousel_set_reveal_duration adw_carousel_set_reveal_duration;
alias c_adw_carousel_set_spacing adw_carousel_set_spacing;

// adw.CarouselIndicatorDots

alias c_adw_carousel_indicator_dots_get_type adw_carousel_indicator_dots_get_type;
alias c_adw_carousel_indicator_dots_new adw_carousel_indicator_dots_new;
alias c_adw_carousel_indicator_dots_get_carousel adw_carousel_indicator_dots_get_carousel;
alias c_adw_carousel_indicator_dots_set_carousel adw_carousel_indicator_dots_set_carousel;

// adw.CarouselIndicatorLines

alias c_adw_carousel_indicator_lines_get_type adw_carousel_indicator_lines_get_type;
alias c_adw_carousel_indicator_lines_new adw_carousel_indicator_lines_new;
alias c_adw_carousel_indicator_lines_get_carousel adw_carousel_indicator_lines_get_carousel;
alias c_adw_carousel_indicator_lines_set_carousel adw_carousel_indicator_lines_set_carousel;

// adw.Clamp

alias c_adw_clamp_get_type adw_clamp_get_type;
alias c_adw_clamp_new adw_clamp_new;
alias c_adw_clamp_get_child adw_clamp_get_child;
alias c_adw_clamp_get_maximum_size adw_clamp_get_maximum_size;
alias c_adw_clamp_get_tightening_threshold adw_clamp_get_tightening_threshold;
alias c_adw_clamp_set_child adw_clamp_set_child;
alias c_adw_clamp_set_maximum_size adw_clamp_set_maximum_size;
alias c_adw_clamp_set_tightening_threshold adw_clamp_set_tightening_threshold;

// adw.ClampLayout

alias c_adw_clamp_layout_get_type adw_clamp_layout_get_type;
alias c_adw_clamp_layout_new adw_clamp_layout_new;
alias c_adw_clamp_layout_get_maximum_size adw_clamp_layout_get_maximum_size;
alias c_adw_clamp_layout_get_tightening_threshold adw_clamp_layout_get_tightening_threshold;
alias c_adw_clamp_layout_set_maximum_size adw_clamp_layout_set_maximum_size;
alias c_adw_clamp_layout_set_tightening_threshold adw_clamp_layout_set_tightening_threshold;

// adw.ClampScrollable

alias c_adw_clamp_scrollable_get_type adw_clamp_scrollable_get_type;
alias c_adw_clamp_scrollable_new adw_clamp_scrollable_new;
alias c_adw_clamp_scrollable_get_child adw_clamp_scrollable_get_child;
alias c_adw_clamp_scrollable_get_maximum_size adw_clamp_scrollable_get_maximum_size;
alias c_adw_clamp_scrollable_get_tightening_threshold adw_clamp_scrollable_get_tightening_threshold;
alias c_adw_clamp_scrollable_set_child adw_clamp_scrollable_set_child;
alias c_adw_clamp_scrollable_set_maximum_size adw_clamp_scrollable_set_maximum_size;
alias c_adw_clamp_scrollable_set_tightening_threshold adw_clamp_scrollable_set_tightening_threshold;

// adw.ComboRow

alias c_adw_combo_row_get_type adw_combo_row_get_type;
alias c_adw_combo_row_new adw_combo_row_new;
alias c_adw_combo_row_get_expression adw_combo_row_get_expression;
alias c_adw_combo_row_get_factory adw_combo_row_get_factory;
alias c_adw_combo_row_get_list_factory adw_combo_row_get_list_factory;
alias c_adw_combo_row_get_model adw_combo_row_get_model;
alias c_adw_combo_row_get_selected adw_combo_row_get_selected;
alias c_adw_combo_row_get_selected_item adw_combo_row_get_selected_item;
alias c_adw_combo_row_get_use_subtitle adw_combo_row_get_use_subtitle;
alias c_adw_combo_row_set_expression adw_combo_row_set_expression;
alias c_adw_combo_row_set_factory adw_combo_row_set_factory;
alias c_adw_combo_row_set_list_factory adw_combo_row_set_list_factory;
alias c_adw_combo_row_set_model adw_combo_row_set_model;
alias c_adw_combo_row_set_selected adw_combo_row_set_selected;
alias c_adw_combo_row_set_use_subtitle adw_combo_row_set_use_subtitle;

// adw.EnumListModel

alias c_adw_enum_list_model_get_type adw_enum_list_model_get_type;
alias c_adw_enum_list_model_new adw_enum_list_model_new;
alias c_adw_enum_list_model_find_position adw_enum_list_model_find_position;
alias c_adw_enum_list_model_get_enum_type adw_enum_list_model_get_enum_type;

// adw.EnumValueObject

alias c_adw_enum_value_object_get_type adw_enum_value_object_get_type;
alias c_adw_enum_value_object_get_name adw_enum_value_object_get_name;
alias c_adw_enum_value_object_get_nick adw_enum_value_object_get_nick;
alias c_adw_enum_value_object_get_value adw_enum_value_object_get_value;

// adw.ExpanderRow

alias c_adw_expander_row_get_type adw_expander_row_get_type;
alias c_adw_expander_row_new adw_expander_row_new;
alias c_adw_expander_row_add adw_expander_row_add;
alias c_adw_expander_row_add_action adw_expander_row_add_action;
alias c_adw_expander_row_add_prefix adw_expander_row_add_prefix;
alias c_adw_expander_row_get_enable_expansion adw_expander_row_get_enable_expansion;
alias c_adw_expander_row_get_expanded adw_expander_row_get_expanded;
alias c_adw_expander_row_get_icon_name adw_expander_row_get_icon_name;
alias c_adw_expander_row_get_show_enable_switch adw_expander_row_get_show_enable_switch;
alias c_adw_expander_row_get_subtitle adw_expander_row_get_subtitle;
alias c_adw_expander_row_get_use_underline adw_expander_row_get_use_underline;
alias c_adw_expander_row_remove adw_expander_row_remove;
alias c_adw_expander_row_set_enable_expansion adw_expander_row_set_enable_expansion;
alias c_adw_expander_row_set_expanded adw_expander_row_set_expanded;
alias c_adw_expander_row_set_icon_name adw_expander_row_set_icon_name;
alias c_adw_expander_row_set_show_enable_switch adw_expander_row_set_show_enable_switch;
alias c_adw_expander_row_set_subtitle adw_expander_row_set_subtitle;
alias c_adw_expander_row_set_use_underline adw_expander_row_set_use_underline;

// adw.Flap

alias c_adw_flap_get_type adw_flap_get_type;
alias c_adw_flap_new adw_flap_new;
alias c_adw_flap_get_content adw_flap_get_content;
alias c_adw_flap_get_flap adw_flap_get_flap;
alias c_adw_flap_get_flap_position adw_flap_get_flap_position;
alias c_adw_flap_get_fold_duration adw_flap_get_fold_duration;
alias c_adw_flap_get_fold_policy adw_flap_get_fold_policy;
alias c_adw_flap_get_folded adw_flap_get_folded;
alias c_adw_flap_get_locked adw_flap_get_locked;
alias c_adw_flap_get_modal adw_flap_get_modal;
alias c_adw_flap_get_reveal_duration adw_flap_get_reveal_duration;
alias c_adw_flap_get_reveal_flap adw_flap_get_reveal_flap;
alias c_adw_flap_get_reveal_progress adw_flap_get_reveal_progress;
alias c_adw_flap_get_separator adw_flap_get_separator;
alias c_adw_flap_get_swipe_to_close adw_flap_get_swipe_to_close;
alias c_adw_flap_get_swipe_to_open adw_flap_get_swipe_to_open;
alias c_adw_flap_get_transition_type adw_flap_get_transition_type;
alias c_adw_flap_set_content adw_flap_set_content;
alias c_adw_flap_set_flap adw_flap_set_flap;
alias c_adw_flap_set_flap_position adw_flap_set_flap_position;
alias c_adw_flap_set_fold_duration adw_flap_set_fold_duration;
alias c_adw_flap_set_fold_policy adw_flap_set_fold_policy;
alias c_adw_flap_set_locked adw_flap_set_locked;
alias c_adw_flap_set_modal adw_flap_set_modal;
alias c_adw_flap_set_reveal_duration adw_flap_set_reveal_duration;
alias c_adw_flap_set_reveal_flap adw_flap_set_reveal_flap;
alias c_adw_flap_set_separator adw_flap_set_separator;
alias c_adw_flap_set_swipe_to_close adw_flap_set_swipe_to_close;
alias c_adw_flap_set_swipe_to_open adw_flap_set_swipe_to_open;
alias c_adw_flap_set_transition_type adw_flap_set_transition_type;

// adw.HeaderBar

alias c_adw_header_bar_get_type adw_header_bar_get_type;
alias c_adw_header_bar_new adw_header_bar_new;
alias c_adw_header_bar_get_centering_policy adw_header_bar_get_centering_policy;
alias c_adw_header_bar_get_decoration_layout adw_header_bar_get_decoration_layout;
alias c_adw_header_bar_get_show_end_title_buttons adw_header_bar_get_show_end_title_buttons;
alias c_adw_header_bar_get_show_start_title_buttons adw_header_bar_get_show_start_title_buttons;
alias c_adw_header_bar_get_title_widget adw_header_bar_get_title_widget;
alias c_adw_header_bar_pack_end adw_header_bar_pack_end;
alias c_adw_header_bar_pack_start adw_header_bar_pack_start;
alias c_adw_header_bar_remove adw_header_bar_remove;
alias c_adw_header_bar_set_centering_policy adw_header_bar_set_centering_policy;
alias c_adw_header_bar_set_decoration_layout adw_header_bar_set_decoration_layout;
alias c_adw_header_bar_set_show_end_title_buttons adw_header_bar_set_show_end_title_buttons;
alias c_adw_header_bar_set_show_start_title_buttons adw_header_bar_set_show_start_title_buttons;
alias c_adw_header_bar_set_title_widget adw_header_bar_set_title_widget;

// adw.Leaflet

alias c_adw_leaflet_get_type adw_leaflet_get_type;
alias c_adw_leaflet_new adw_leaflet_new;
alias c_adw_leaflet_append adw_leaflet_append;
alias c_adw_leaflet_get_adjacent_child adw_leaflet_get_adjacent_child;
alias c_adw_leaflet_get_can_swipe_back adw_leaflet_get_can_swipe_back;
alias c_adw_leaflet_get_can_swipe_forward adw_leaflet_get_can_swipe_forward;
alias c_adw_leaflet_get_can_unfold adw_leaflet_get_can_unfold;
alias c_adw_leaflet_get_child_by_name adw_leaflet_get_child_by_name;
alias c_adw_leaflet_get_child_transition_duration adw_leaflet_get_child_transition_duration;
alias c_adw_leaflet_get_child_transition_running adw_leaflet_get_child_transition_running;
alias c_adw_leaflet_get_folded adw_leaflet_get_folded;
alias c_adw_leaflet_get_homogeneous adw_leaflet_get_homogeneous;
alias c_adw_leaflet_get_interpolate_size adw_leaflet_get_interpolate_size;
alias c_adw_leaflet_get_mode_transition_duration adw_leaflet_get_mode_transition_duration;
alias c_adw_leaflet_get_page adw_leaflet_get_page;
alias c_adw_leaflet_get_pages adw_leaflet_get_pages;
alias c_adw_leaflet_get_transition_type adw_leaflet_get_transition_type;
alias c_adw_leaflet_get_visible_child adw_leaflet_get_visible_child;
alias c_adw_leaflet_get_visible_child_name adw_leaflet_get_visible_child_name;
alias c_adw_leaflet_insert_child_after adw_leaflet_insert_child_after;
alias c_adw_leaflet_navigate adw_leaflet_navigate;
alias c_adw_leaflet_prepend adw_leaflet_prepend;
alias c_adw_leaflet_remove adw_leaflet_remove;
alias c_adw_leaflet_reorder_child_after adw_leaflet_reorder_child_after;
alias c_adw_leaflet_set_can_swipe_back adw_leaflet_set_can_swipe_back;
alias c_adw_leaflet_set_can_swipe_forward adw_leaflet_set_can_swipe_forward;
alias c_adw_leaflet_set_can_unfold adw_leaflet_set_can_unfold;
alias c_adw_leaflet_set_child_transition_duration adw_leaflet_set_child_transition_duration;
alias c_adw_leaflet_set_homogeneous adw_leaflet_set_homogeneous;
alias c_adw_leaflet_set_interpolate_size adw_leaflet_set_interpolate_size;
alias c_adw_leaflet_set_mode_transition_duration adw_leaflet_set_mode_transition_duration;
alias c_adw_leaflet_set_transition_type adw_leaflet_set_transition_type;
alias c_adw_leaflet_set_visible_child adw_leaflet_set_visible_child;
alias c_adw_leaflet_set_visible_child_name adw_leaflet_set_visible_child_name;

// adw.LeafletPage

alias c_adw_leaflet_page_get_type adw_leaflet_page_get_type;
alias c_adw_leaflet_page_get_child adw_leaflet_page_get_child;
alias c_adw_leaflet_page_get_name adw_leaflet_page_get_name;
alias c_adw_leaflet_page_get_navigatable adw_leaflet_page_get_navigatable;
alias c_adw_leaflet_page_set_name adw_leaflet_page_set_name;
alias c_adw_leaflet_page_set_navigatable adw_leaflet_page_set_navigatable;

// adw.PreferencesGroup

alias c_adw_preferences_group_get_type adw_preferences_group_get_type;
alias c_adw_preferences_group_new adw_preferences_group_new;
alias c_adw_preferences_group_add adw_preferences_group_add;
alias c_adw_preferences_group_get_description adw_preferences_group_get_description;
alias c_adw_preferences_group_get_title adw_preferences_group_get_title;
alias c_adw_preferences_group_remove adw_preferences_group_remove;
alias c_adw_preferences_group_set_description adw_preferences_group_set_description;
alias c_adw_preferences_group_set_title adw_preferences_group_set_title;

// adw.PreferencesPage

alias c_adw_preferences_page_get_type adw_preferences_page_get_type;
alias c_adw_preferences_page_new adw_preferences_page_new;
alias c_adw_preferences_page_add adw_preferences_page_add;
alias c_adw_preferences_page_get_icon_name adw_preferences_page_get_icon_name;
alias c_adw_preferences_page_get_title adw_preferences_page_get_title;
alias c_adw_preferences_page_get_use_underline adw_preferences_page_get_use_underline;
alias c_adw_preferences_page_remove adw_preferences_page_remove;
alias c_adw_preferences_page_set_icon_name adw_preferences_page_set_icon_name;
alias c_adw_preferences_page_set_title adw_preferences_page_set_title;
alias c_adw_preferences_page_set_use_underline adw_preferences_page_set_use_underline;

// adw.PreferencesRow

alias c_adw_preferences_row_get_type adw_preferences_row_get_type;
alias c_adw_preferences_row_new adw_preferences_row_new;
alias c_adw_preferences_row_get_title adw_preferences_row_get_title;
alias c_adw_preferences_row_get_use_underline adw_preferences_row_get_use_underline;
alias c_adw_preferences_row_set_title adw_preferences_row_set_title;
alias c_adw_preferences_row_set_use_underline adw_preferences_row_set_use_underline;

// adw.PreferencesWindow

alias c_adw_preferences_window_get_type adw_preferences_window_get_type;
alias c_adw_preferences_window_new adw_preferences_window_new;
alias c_adw_preferences_window_add adw_preferences_window_add;
alias c_adw_preferences_window_close_subpage adw_preferences_window_close_subpage;
alias c_adw_preferences_window_get_can_swipe_back adw_preferences_window_get_can_swipe_back;
alias c_adw_preferences_window_get_search_enabled adw_preferences_window_get_search_enabled;
alias c_adw_preferences_window_present_subpage adw_preferences_window_present_subpage;
alias c_adw_preferences_window_remove adw_preferences_window_remove;
alias c_adw_preferences_window_set_can_swipe_back adw_preferences_window_set_can_swipe_back;
alias c_adw_preferences_window_set_search_enabled adw_preferences_window_set_search_enabled;

// adw.Squeezer

alias c_adw_squeezer_get_type adw_squeezer_get_type;
alias c_adw_squeezer_new adw_squeezer_new;
alias c_adw_squeezer_add adw_squeezer_add;
alias c_adw_squeezer_get_homogeneous adw_squeezer_get_homogeneous;
alias c_adw_squeezer_get_interpolate_size adw_squeezer_get_interpolate_size;
alias c_adw_squeezer_get_page adw_squeezer_get_page;
alias c_adw_squeezer_get_pages adw_squeezer_get_pages;
alias c_adw_squeezer_get_transition_duration adw_squeezer_get_transition_duration;
alias c_adw_squeezer_get_transition_running adw_squeezer_get_transition_running;
alias c_adw_squeezer_get_transition_type adw_squeezer_get_transition_type;
alias c_adw_squeezer_get_visible_child adw_squeezer_get_visible_child;
alias c_adw_squeezer_get_xalign adw_squeezer_get_xalign;
alias c_adw_squeezer_get_yalign adw_squeezer_get_yalign;
alias c_adw_squeezer_remove adw_squeezer_remove;
alias c_adw_squeezer_set_homogeneous adw_squeezer_set_homogeneous;
alias c_adw_squeezer_set_interpolate_size adw_squeezer_set_interpolate_size;
alias c_adw_squeezer_set_transition_duration adw_squeezer_set_transition_duration;
alias c_adw_squeezer_set_transition_type adw_squeezer_set_transition_type;
alias c_adw_squeezer_set_xalign adw_squeezer_set_xalign;
alias c_adw_squeezer_set_yalign adw_squeezer_set_yalign;

// adw.SqueezerPage

alias c_adw_squeezer_page_get_type adw_squeezer_page_get_type;
alias c_adw_squeezer_page_get_child adw_squeezer_page_get_child;
alias c_adw_squeezer_page_get_enabled adw_squeezer_page_get_enabled;
alias c_adw_squeezer_page_set_enabled adw_squeezer_page_set_enabled;

// adw.StatusPage

alias c_adw_status_page_get_type adw_status_page_get_type;
alias c_adw_status_page_new adw_status_page_new;
alias c_adw_status_page_get_child adw_status_page_get_child;
alias c_adw_status_page_get_description adw_status_page_get_description;
alias c_adw_status_page_get_icon_name adw_status_page_get_icon_name;
alias c_adw_status_page_get_title adw_status_page_get_title;
alias c_adw_status_page_set_child adw_status_page_set_child;
alias c_adw_status_page_set_description adw_status_page_set_description;
alias c_adw_status_page_set_icon_name adw_status_page_set_icon_name;
alias c_adw_status_page_set_title adw_status_page_set_title;

// adw.SwipeTracker

alias c_adw_swipe_tracker_get_type adw_swipe_tracker_get_type;
alias c_adw_swipe_tracker_new adw_swipe_tracker_new;
alias c_adw_swipe_tracker_get_allow_long_swipes adw_swipe_tracker_get_allow_long_swipes;
alias c_adw_swipe_tracker_get_allow_mouse_drag adw_swipe_tracker_get_allow_mouse_drag;
alias c_adw_swipe_tracker_get_enabled adw_swipe_tracker_get_enabled;
alias c_adw_swipe_tracker_get_reversed adw_swipe_tracker_get_reversed;
alias c_adw_swipe_tracker_get_swipeable adw_swipe_tracker_get_swipeable;
alias c_adw_swipe_tracker_set_allow_long_swipes adw_swipe_tracker_set_allow_long_swipes;
alias c_adw_swipe_tracker_set_allow_mouse_drag adw_swipe_tracker_set_allow_mouse_drag;
alias c_adw_swipe_tracker_set_enabled adw_swipe_tracker_set_enabled;
alias c_adw_swipe_tracker_set_reversed adw_swipe_tracker_set_reversed;
alias c_adw_swipe_tracker_shift_position adw_swipe_tracker_shift_position;

// adw.Swipeable

alias c_adw_swipeable_get_type adw_swipeable_get_type;
alias c_adw_swipeable_get_cancel_progress adw_swipeable_get_cancel_progress;
alias c_adw_swipeable_get_distance adw_swipeable_get_distance;
alias c_adw_swipeable_get_progress adw_swipeable_get_progress;
alias c_adw_swipeable_get_snap_points adw_swipeable_get_snap_points;
alias c_adw_swipeable_get_swipe_area adw_swipeable_get_swipe_area;

// adw.TabBar

alias c_adw_tab_bar_get_type adw_tab_bar_get_type;
alias c_adw_tab_bar_new adw_tab_bar_new;
alias c_adw_tab_bar_get_autohide adw_tab_bar_get_autohide;
alias c_adw_tab_bar_get_end_action_widget adw_tab_bar_get_end_action_widget;
alias c_adw_tab_bar_get_expand_tabs adw_tab_bar_get_expand_tabs;
alias c_adw_tab_bar_get_inverted adw_tab_bar_get_inverted;
alias c_adw_tab_bar_get_is_overflowing adw_tab_bar_get_is_overflowing;
alias c_adw_tab_bar_get_start_action_widget adw_tab_bar_get_start_action_widget;
alias c_adw_tab_bar_get_tabs_revealed adw_tab_bar_get_tabs_revealed;
alias c_adw_tab_bar_get_view adw_tab_bar_get_view;
alias c_adw_tab_bar_set_autohide adw_tab_bar_set_autohide;
alias c_adw_tab_bar_set_end_action_widget adw_tab_bar_set_end_action_widget;
alias c_adw_tab_bar_set_expand_tabs adw_tab_bar_set_expand_tabs;
alias c_adw_tab_bar_set_inverted adw_tab_bar_set_inverted;
alias c_adw_tab_bar_set_start_action_widget adw_tab_bar_set_start_action_widget;
alias c_adw_tab_bar_set_view adw_tab_bar_set_view;
alias c_adw_tab_bar_setup_extra_drop_target adw_tab_bar_setup_extra_drop_target;

// adw.TabPage

alias c_adw_tab_page_get_type adw_tab_page_get_type;
alias c_adw_tab_page_get_child adw_tab_page_get_child;
alias c_adw_tab_page_get_icon adw_tab_page_get_icon;
alias c_adw_tab_page_get_indicator_activatable adw_tab_page_get_indicator_activatable;
alias c_adw_tab_page_get_indicator_icon adw_tab_page_get_indicator_icon;
alias c_adw_tab_page_get_loading adw_tab_page_get_loading;
alias c_adw_tab_page_get_needs_attention adw_tab_page_get_needs_attention;
alias c_adw_tab_page_get_parent adw_tab_page_get_parent;
alias c_adw_tab_page_get_pinned adw_tab_page_get_pinned;
alias c_adw_tab_page_get_selected adw_tab_page_get_selected;
alias c_adw_tab_page_get_title adw_tab_page_get_title;
alias c_adw_tab_page_get_tooltip adw_tab_page_get_tooltip;
alias c_adw_tab_page_set_icon adw_tab_page_set_icon;
alias c_adw_tab_page_set_indicator_activatable adw_tab_page_set_indicator_activatable;
alias c_adw_tab_page_set_indicator_icon adw_tab_page_set_indicator_icon;
alias c_adw_tab_page_set_loading adw_tab_page_set_loading;
alias c_adw_tab_page_set_needs_attention adw_tab_page_set_needs_attention;
alias c_adw_tab_page_set_title adw_tab_page_set_title;
alias c_adw_tab_page_set_tooltip adw_tab_page_set_tooltip;

// adw.TabView

alias c_adw_tab_view_get_type adw_tab_view_get_type;
alias c_adw_tab_view_new adw_tab_view_new;
alias c_adw_tab_view_add_page adw_tab_view_add_page;
alias c_adw_tab_view_append adw_tab_view_append;
alias c_adw_tab_view_append_pinned adw_tab_view_append_pinned;
alias c_adw_tab_view_close_other_pages adw_tab_view_close_other_pages;
alias c_adw_tab_view_close_page adw_tab_view_close_page;
alias c_adw_tab_view_close_page_finish adw_tab_view_close_page_finish;
alias c_adw_tab_view_close_pages_after adw_tab_view_close_pages_after;
alias c_adw_tab_view_close_pages_before adw_tab_view_close_pages_before;
alias c_adw_tab_view_get_default_icon adw_tab_view_get_default_icon;
alias c_adw_tab_view_get_is_transferring_page adw_tab_view_get_is_transferring_page;
alias c_adw_tab_view_get_menu_model adw_tab_view_get_menu_model;
alias c_adw_tab_view_get_n_pages adw_tab_view_get_n_pages;
alias c_adw_tab_view_get_n_pinned_pages adw_tab_view_get_n_pinned_pages;
alias c_adw_tab_view_get_nth_page adw_tab_view_get_nth_page;
alias c_adw_tab_view_get_page adw_tab_view_get_page;
alias c_adw_tab_view_get_page_position adw_tab_view_get_page_position;
alias c_adw_tab_view_get_pages adw_tab_view_get_pages;
alias c_adw_tab_view_get_selected_page adw_tab_view_get_selected_page;
alias c_adw_tab_view_get_shortcut_widget adw_tab_view_get_shortcut_widget;
alias c_adw_tab_view_insert adw_tab_view_insert;
alias c_adw_tab_view_insert_pinned adw_tab_view_insert_pinned;
alias c_adw_tab_view_prepend adw_tab_view_prepend;
alias c_adw_tab_view_prepend_pinned adw_tab_view_prepend_pinned;
alias c_adw_tab_view_reorder_backward adw_tab_view_reorder_backward;
alias c_adw_tab_view_reorder_first adw_tab_view_reorder_first;
alias c_adw_tab_view_reorder_forward adw_tab_view_reorder_forward;
alias c_adw_tab_view_reorder_last adw_tab_view_reorder_last;
alias c_adw_tab_view_reorder_page adw_tab_view_reorder_page;
alias c_adw_tab_view_select_next_page adw_tab_view_select_next_page;
alias c_adw_tab_view_select_previous_page adw_tab_view_select_previous_page;
alias c_adw_tab_view_set_default_icon adw_tab_view_set_default_icon;
alias c_adw_tab_view_set_menu_model adw_tab_view_set_menu_model;
alias c_adw_tab_view_set_page_pinned adw_tab_view_set_page_pinned;
alias c_adw_tab_view_set_selected_page adw_tab_view_set_selected_page;
alias c_adw_tab_view_set_shortcut_widget adw_tab_view_set_shortcut_widget;
alias c_adw_tab_view_transfer_page adw_tab_view_transfer_page;

// adw.ValueObject

alias c_adw_value_object_get_type adw_value_object_get_type;
alias c_adw_value_object_new adw_value_object_new;
alias c_adw_value_object_new_collect adw_value_object_new_collect;
alias c_adw_value_object_new_string adw_value_object_new_string;
alias c_adw_value_object_new_take_string adw_value_object_new_take_string;
alias c_adw_value_object_copy_value adw_value_object_copy_value;
alias c_adw_value_object_dup_string adw_value_object_dup_string;
alias c_adw_value_object_get_string adw_value_object_get_string;
alias c_adw_value_object_get_value adw_value_object_get_value;

// adw.ViewSwitcher

alias c_adw_view_switcher_get_type adw_view_switcher_get_type;
alias c_adw_view_switcher_new adw_view_switcher_new;
alias c_adw_view_switcher_get_narrow_ellipsize adw_view_switcher_get_narrow_ellipsize;
alias c_adw_view_switcher_get_policy adw_view_switcher_get_policy;
alias c_adw_view_switcher_get_stack adw_view_switcher_get_stack;
alias c_adw_view_switcher_set_narrow_ellipsize adw_view_switcher_set_narrow_ellipsize;
alias c_adw_view_switcher_set_policy adw_view_switcher_set_policy;
alias c_adw_view_switcher_set_stack adw_view_switcher_set_stack;

// adw.ViewSwitcherBar

alias c_adw_view_switcher_bar_get_type adw_view_switcher_bar_get_type;
alias c_adw_view_switcher_bar_new adw_view_switcher_bar_new;
alias c_adw_view_switcher_bar_get_policy adw_view_switcher_bar_get_policy;
alias c_adw_view_switcher_bar_get_reveal adw_view_switcher_bar_get_reveal;
alias c_adw_view_switcher_bar_get_stack adw_view_switcher_bar_get_stack;
alias c_adw_view_switcher_bar_set_policy adw_view_switcher_bar_set_policy;
alias c_adw_view_switcher_bar_set_reveal adw_view_switcher_bar_set_reveal;
alias c_adw_view_switcher_bar_set_stack adw_view_switcher_bar_set_stack;

// adw.ViewSwitcherTitle

alias c_adw_view_switcher_title_get_type adw_view_switcher_title_get_type;
alias c_adw_view_switcher_title_new adw_view_switcher_title_new;
alias c_adw_view_switcher_title_get_policy adw_view_switcher_title_get_policy;
alias c_adw_view_switcher_title_get_stack adw_view_switcher_title_get_stack;
alias c_adw_view_switcher_title_get_subtitle adw_view_switcher_title_get_subtitle;
alias c_adw_view_switcher_title_get_title adw_view_switcher_title_get_title;
alias c_adw_view_switcher_title_get_title_visible adw_view_switcher_title_get_title_visible;
alias c_adw_view_switcher_title_get_view_switcher_enabled adw_view_switcher_title_get_view_switcher_enabled;
alias c_adw_view_switcher_title_set_policy adw_view_switcher_title_set_policy;
alias c_adw_view_switcher_title_set_stack adw_view_switcher_title_set_stack;
alias c_adw_view_switcher_title_set_subtitle adw_view_switcher_title_set_subtitle;
alias c_adw_view_switcher_title_set_title adw_view_switcher_title_set_title;
alias c_adw_view_switcher_title_set_view_switcher_enabled adw_view_switcher_title_set_view_switcher_enabled;

// adw.Window

alias c_adw_window_get_type adw_window_get_type;
alias c_adw_window_new adw_window_new;
alias c_adw_window_get_child adw_window_get_child;
alias c_adw_window_set_child adw_window_set_child;

// adw.WindowTitle

alias c_adw_window_title_get_type adw_window_title_get_type;
alias c_adw_window_title_new adw_window_title_new;
alias c_adw_window_title_get_subtitle adw_window_title_get_subtitle;
alias c_adw_window_title_get_title adw_window_title_get_title;
alias c_adw_window_title_set_subtitle adw_window_title_set_subtitle;
alias c_adw_window_title_set_title adw_window_title_set_title;
