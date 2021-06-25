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
version (Windows)
	static immutable LIBRARY_ADW = ["libadwaita-1-0.dll;adwaita-1-1.0.dll;adwaita-1.dll"];
else version (OSX)
	static immutable LIBRARY_ADW = ["libadwaita-1.0.dylib"];
else
	static immutable LIBRARY_ADW = ["libadwaita-1.so.0"];

__gshared extern(C)
{

	// adw.ActionRow

	GType adw_action_row_get_type();
	GtkWidget* adw_action_row_new();
	void adw_action_row_activate(AdwActionRow* self);
	void adw_action_row_add_prefix(AdwActionRow* self, GtkWidget* widget);
	void adw_action_row_add_suffix(AdwActionRow* self, GtkWidget* widget);
	GtkWidget* adw_action_row_get_activatable_widget(AdwActionRow* self);
	const(char)* adw_action_row_get_icon_name(AdwActionRow* self);
	const(char)* adw_action_row_get_subtitle(AdwActionRow* self);
	int adw_action_row_get_subtitle_lines(AdwActionRow* self);
	int adw_action_row_get_title_lines(AdwActionRow* self);
	int adw_action_row_get_use_underline(AdwActionRow* self);
	void adw_action_row_remove(AdwActionRow* self, GtkWidget* widget);
	void adw_action_row_set_activatable_widget(AdwActionRow* self, GtkWidget* widget);
	void adw_action_row_set_icon_name(AdwActionRow* self, const(char)* iconName);
	void adw_action_row_set_subtitle(AdwActionRow* self, const(char)* subtitle);
	void adw_action_row_set_subtitle_lines(AdwActionRow* self, int subtitleLines);
	void adw_action_row_set_title_lines(AdwActionRow* self, int titleLines);
	void adw_action_row_set_use_underline(AdwActionRow* self, int useUnderline);

	// adw.ApplicationWindow

	GType adw_application_window_get_type();
	GtkWidget* adw_application_window_new(GtkApplication* app);
	GtkWidget* adw_application_window_get_child(AdwApplicationWindow* self);
	void adw_application_window_set_child(AdwApplicationWindow* self, GtkWidget* child);

	// adw.Avatar

	GType adw_avatar_get_type();
	GtkWidget* adw_avatar_new(int size, const(char)* text, int showInitials);
	GdkPixbuf* adw_avatar_draw_to_pixbuf(AdwAvatar* self, int size, int scaleFactor);
	GdkPaintable* adw_avatar_get_custom_image(AdwAvatar* self);
	const(char)* adw_avatar_get_icon_name(AdwAvatar* self);
	int adw_avatar_get_show_initials(AdwAvatar* self);
	int adw_avatar_get_size(AdwAvatar* self);
	const(char)* adw_avatar_get_text(AdwAvatar* self);
	void adw_avatar_set_custom_image(AdwAvatar* self, GdkPaintable* customImage);
	void adw_avatar_set_icon_name(AdwAvatar* self, const(char)* iconName);
	void adw_avatar_set_show_initials(AdwAvatar* self, int showInitials);
	void adw_avatar_set_size(AdwAvatar* self, int size);
	void adw_avatar_set_text(AdwAvatar* self, const(char)* text);

	// adw.Bin

	GType adw_bin_get_type();
	GtkWidget* adw_bin_new();
	GtkWidget* adw_bin_get_child(AdwBin* self);
	void adw_bin_set_child(AdwBin* self, GtkWidget* child);

	// adw.Carousel

	GType adw_carousel_get_type();
	GtkWidget* adw_carousel_new();
	void adw_carousel_append(AdwCarousel* self, GtkWidget* child);
	int adw_carousel_get_allow_long_swipes(AdwCarousel* self);
	int adw_carousel_get_allow_mouse_drag(AdwCarousel* self);
	int adw_carousel_get_allow_scroll_wheel(AdwCarousel* self);
	uint adw_carousel_get_animation_duration(AdwCarousel* self);
	int adw_carousel_get_interactive(AdwCarousel* self);
	uint adw_carousel_get_n_pages(AdwCarousel* self);
	GtkWidget* adw_carousel_get_nth_page(AdwCarousel* self, uint n);
	double adw_carousel_get_position(AdwCarousel* self);
	uint adw_carousel_get_reveal_duration(AdwCarousel* self);
	uint adw_carousel_get_spacing(AdwCarousel* self);
	void adw_carousel_insert(AdwCarousel* self, GtkWidget* child, int position);
	void adw_carousel_prepend(AdwCarousel* self, GtkWidget* child);
	void adw_carousel_remove(AdwCarousel* self, GtkWidget* child);
	void adw_carousel_reorder(AdwCarousel* self, GtkWidget* child, int position);
	void adw_carousel_scroll_to(AdwCarousel* self, GtkWidget* widget);
	void adw_carousel_scroll_to_full(AdwCarousel* self, GtkWidget* widget, long duration);
	void adw_carousel_set_allow_long_swipes(AdwCarousel* self, int allowLongSwipes);
	void adw_carousel_set_allow_mouse_drag(AdwCarousel* self, int allowMouseDrag);
	void adw_carousel_set_allow_scroll_wheel(AdwCarousel* self, int allowScrollWheel);
	void adw_carousel_set_animation_duration(AdwCarousel* self, uint duration);
	void adw_carousel_set_interactive(AdwCarousel* self, int interactive);
	void adw_carousel_set_reveal_duration(AdwCarousel* self, uint revealDuration);
	void adw_carousel_set_spacing(AdwCarousel* self, uint spacing);

	// adw.CarouselIndicatorDots

	GType adw_carousel_indicator_dots_get_type();
	GtkWidget* adw_carousel_indicator_dots_new();
	AdwCarousel* adw_carousel_indicator_dots_get_carousel(AdwCarouselIndicatorDots* self);
	void adw_carousel_indicator_dots_set_carousel(AdwCarouselIndicatorDots* self, AdwCarousel* carousel);

	// adw.CarouselIndicatorLines

	GType adw_carousel_indicator_lines_get_type();
	GtkWidget* adw_carousel_indicator_lines_new();
	AdwCarousel* adw_carousel_indicator_lines_get_carousel(AdwCarouselIndicatorLines* self);
	void adw_carousel_indicator_lines_set_carousel(AdwCarouselIndicatorLines* self, AdwCarousel* carousel);

	// adw.Clamp

	GType adw_clamp_get_type();
	GtkWidget* adw_clamp_new();
	GtkWidget* adw_clamp_get_child(AdwClamp* self);
	int adw_clamp_get_maximum_size(AdwClamp* self);
	int adw_clamp_get_tightening_threshold(AdwClamp* self);
	void adw_clamp_set_child(AdwClamp* self, GtkWidget* child);
	void adw_clamp_set_maximum_size(AdwClamp* self, int maximumSize);
	void adw_clamp_set_tightening_threshold(AdwClamp* self, int tighteningThreshold);

	// adw.ClampLayout

	GType adw_clamp_layout_get_type();
	GtkLayoutManager* adw_clamp_layout_new();
	int adw_clamp_layout_get_maximum_size(AdwClampLayout* self);
	int adw_clamp_layout_get_tightening_threshold(AdwClampLayout* self);
	void adw_clamp_layout_set_maximum_size(AdwClampLayout* self, int maximumSize);
	void adw_clamp_layout_set_tightening_threshold(AdwClampLayout* self, int tighteningThreshold);

	// adw.ClampScrollable

	GType adw_clamp_scrollable_get_type();
	GtkWidget* adw_clamp_scrollable_new();
	GtkWidget* adw_clamp_scrollable_get_child(AdwClampScrollable* self);
	int adw_clamp_scrollable_get_maximum_size(AdwClampScrollable* self);
	int adw_clamp_scrollable_get_tightening_threshold(AdwClampScrollable* self);
	void adw_clamp_scrollable_set_child(AdwClampScrollable* self, GtkWidget* child);
	void adw_clamp_scrollable_set_maximum_size(AdwClampScrollable* self, int maximumSize);
	void adw_clamp_scrollable_set_tightening_threshold(AdwClampScrollable* self, int tighteningThreshold);

	// adw.ComboRow

	GType adw_combo_row_get_type();
	GtkWidget* adw_combo_row_new();
	GtkExpression* adw_combo_row_get_expression(AdwComboRow* self);
	GtkListItemFactory* adw_combo_row_get_factory(AdwComboRow* self);
	GtkListItemFactory* adw_combo_row_get_list_factory(AdwComboRow* self);
	GListModel* adw_combo_row_get_model(AdwComboRow* self);
	uint adw_combo_row_get_selected(AdwComboRow* self);
	void* adw_combo_row_get_selected_item(AdwComboRow* self);
	int adw_combo_row_get_use_subtitle(AdwComboRow* self);
	void adw_combo_row_set_expression(AdwComboRow* self, GtkExpression* expression);
	void adw_combo_row_set_factory(AdwComboRow* self, GtkListItemFactory* factory);
	void adw_combo_row_set_list_factory(AdwComboRow* self, GtkListItemFactory* factory);
	void adw_combo_row_set_model(AdwComboRow* self, GListModel* model);
	void adw_combo_row_set_selected(AdwComboRow* self, uint position);
	void adw_combo_row_set_use_subtitle(AdwComboRow* self, int useSubtitle);

	// adw.EnumListModel

	GType adw_enum_list_model_get_type();
	AdwEnumListModel* adw_enum_list_model_new(GType enumType);
	uint adw_enum_list_model_find_position(AdwEnumListModel* self, int value);
	GType adw_enum_list_model_get_enum_type(AdwEnumListModel* self);

	// adw.EnumValueObject

	GType adw_enum_value_object_get_type();
	const(char)* adw_enum_value_object_get_name(AdwEnumValueObject* self);
	const(char)* adw_enum_value_object_get_nick(AdwEnumValueObject* self);
	int adw_enum_value_object_get_value(AdwEnumValueObject* self);

	// adw.ExpanderRow

	GType adw_expander_row_get_type();
	GtkWidget* adw_expander_row_new();
	void adw_expander_row_add(AdwExpanderRow* self, GtkWidget* child);
	void adw_expander_row_add_action(AdwExpanderRow* self, GtkWidget* widget);
	void adw_expander_row_add_prefix(AdwExpanderRow* self, GtkWidget* widget);
	int adw_expander_row_get_enable_expansion(AdwExpanderRow* self);
	int adw_expander_row_get_expanded(AdwExpanderRow* self);
	const(char)* adw_expander_row_get_icon_name(AdwExpanderRow* self);
	int adw_expander_row_get_show_enable_switch(AdwExpanderRow* self);
	const(char)* adw_expander_row_get_subtitle(AdwExpanderRow* self);
	int adw_expander_row_get_use_underline(AdwExpanderRow* self);
	void adw_expander_row_remove(AdwExpanderRow* self, GtkWidget* child);
	void adw_expander_row_set_enable_expansion(AdwExpanderRow* self, int enableExpansion);
	void adw_expander_row_set_expanded(AdwExpanderRow* self, int expanded);
	void adw_expander_row_set_icon_name(AdwExpanderRow* self, const(char)* iconName);
	void adw_expander_row_set_show_enable_switch(AdwExpanderRow* self, int showEnableSwitch);
	void adw_expander_row_set_subtitle(AdwExpanderRow* self, const(char)* subtitle);
	void adw_expander_row_set_use_underline(AdwExpanderRow* self, int useUnderline);

	// adw.Flap

	GType adw_flap_get_type();
	GtkWidget* adw_flap_new();
	GtkWidget* adw_flap_get_content(AdwFlap* self);
	GtkWidget* adw_flap_get_flap(AdwFlap* self);
	GtkPackType adw_flap_get_flap_position(AdwFlap* self);
	uint adw_flap_get_fold_duration(AdwFlap* self);
	AdwFlapFoldPolicy adw_flap_get_fold_policy(AdwFlap* self);
	int adw_flap_get_folded(AdwFlap* self);
	int adw_flap_get_locked(AdwFlap* self);
	int adw_flap_get_modal(AdwFlap* self);
	uint adw_flap_get_reveal_duration(AdwFlap* self);
	int adw_flap_get_reveal_flap(AdwFlap* self);
	double adw_flap_get_reveal_progress(AdwFlap* self);
	GtkWidget* adw_flap_get_separator(AdwFlap* self);
	int adw_flap_get_swipe_to_close(AdwFlap* self);
	int adw_flap_get_swipe_to_open(AdwFlap* self);
	AdwFlapTransitionType adw_flap_get_transition_type(AdwFlap* self);
	void adw_flap_set_content(AdwFlap* self, GtkWidget* content);
	void adw_flap_set_flap(AdwFlap* self, GtkWidget* flap);
	void adw_flap_set_flap_position(AdwFlap* self, GtkPackType position);
	void adw_flap_set_fold_duration(AdwFlap* self, uint duration);
	void adw_flap_set_fold_policy(AdwFlap* self, AdwFlapFoldPolicy policy);
	void adw_flap_set_locked(AdwFlap* self, int locked);
	void adw_flap_set_modal(AdwFlap* self, int modal);
	void adw_flap_set_reveal_duration(AdwFlap* self, uint duration);
	void adw_flap_set_reveal_flap(AdwFlap* self, int revealFlap);
	void adw_flap_set_separator(AdwFlap* self, GtkWidget* separator);
	void adw_flap_set_swipe_to_close(AdwFlap* self, int swipeToClose);
	void adw_flap_set_swipe_to_open(AdwFlap* self, int swipeToOpen);
	void adw_flap_set_transition_type(AdwFlap* self, AdwFlapTransitionType transitionType);

	// adw.HeaderBar

	GType adw_header_bar_get_type();
	GtkWidget* adw_header_bar_new();
	AdwCenteringPolicy adw_header_bar_get_centering_policy(AdwHeaderBar* self);
	const(char)* adw_header_bar_get_decoration_layout(AdwHeaderBar* self);
	int adw_header_bar_get_show_end_title_buttons(AdwHeaderBar* self);
	int adw_header_bar_get_show_start_title_buttons(AdwHeaderBar* self);
	GtkWidget* adw_header_bar_get_title_widget(AdwHeaderBar* self);
	void adw_header_bar_pack_end(AdwHeaderBar* self, GtkWidget* child);
	void adw_header_bar_pack_start(AdwHeaderBar* self, GtkWidget* child);
	void adw_header_bar_remove(AdwHeaderBar* self, GtkWidget* child);
	void adw_header_bar_set_centering_policy(AdwHeaderBar* self, AdwCenteringPolicy centeringPolicy);
	void adw_header_bar_set_decoration_layout(AdwHeaderBar* self, const(char)* layout);
	void adw_header_bar_set_show_end_title_buttons(AdwHeaderBar* self, int setting);
	void adw_header_bar_set_show_start_title_buttons(AdwHeaderBar* self, int setting);
	void adw_header_bar_set_title_widget(AdwHeaderBar* self, GtkWidget* titleWidget);

	// adw.Leaflet

	GType adw_leaflet_get_type();
	GtkWidget* adw_leaflet_new();
	AdwLeafletPage* adw_leaflet_append(AdwLeaflet* self, GtkWidget* child);
	GtkWidget* adw_leaflet_get_adjacent_child(AdwLeaflet* self, AdwNavigationDirection direction);
	int adw_leaflet_get_can_swipe_back(AdwLeaflet* self);
	int adw_leaflet_get_can_swipe_forward(AdwLeaflet* self);
	int adw_leaflet_get_can_unfold(AdwLeaflet* self);
	GtkWidget* adw_leaflet_get_child_by_name(AdwLeaflet* self, const(char)* name);
	uint adw_leaflet_get_child_transition_duration(AdwLeaflet* self);
	int adw_leaflet_get_child_transition_running(AdwLeaflet* self);
	int adw_leaflet_get_folded(AdwLeaflet* self);
	int adw_leaflet_get_homogeneous(AdwLeaflet* self, int folded, GtkOrientation orientation);
	int adw_leaflet_get_interpolate_size(AdwLeaflet* self);
	uint adw_leaflet_get_mode_transition_duration(AdwLeaflet* self);
	AdwLeafletPage* adw_leaflet_get_page(AdwLeaflet* self, GtkWidget* child);
	GtkSelectionModel* adw_leaflet_get_pages(AdwLeaflet* self);
	AdwLeafletTransitionType adw_leaflet_get_transition_type(AdwLeaflet* self);
	GtkWidget* adw_leaflet_get_visible_child(AdwLeaflet* self);
	const(char)* adw_leaflet_get_visible_child_name(AdwLeaflet* self);
	AdwLeafletPage* adw_leaflet_insert_child_after(AdwLeaflet* self, GtkWidget* child, GtkWidget* sibling);
	int adw_leaflet_navigate(AdwLeaflet* self, AdwNavigationDirection direction);
	AdwLeafletPage* adw_leaflet_prepend(AdwLeaflet* self, GtkWidget* child);
	void adw_leaflet_remove(AdwLeaflet* self, GtkWidget* child);
	void adw_leaflet_reorder_child_after(AdwLeaflet* self, GtkWidget* child, GtkWidget* sibling);
	void adw_leaflet_set_can_swipe_back(AdwLeaflet* self, int canSwipeBack);
	void adw_leaflet_set_can_swipe_forward(AdwLeaflet* self, int canSwipeForward);
	void adw_leaflet_set_can_unfold(AdwLeaflet* self, int canUnfold);
	void adw_leaflet_set_child_transition_duration(AdwLeaflet* self, uint duration);
	void adw_leaflet_set_homogeneous(AdwLeaflet* self, int folded, GtkOrientation orientation, int homogeneous);
	void adw_leaflet_set_interpolate_size(AdwLeaflet* self, int interpolateSize);
	void adw_leaflet_set_mode_transition_duration(AdwLeaflet* self, uint duration);
	void adw_leaflet_set_transition_type(AdwLeaflet* self, AdwLeafletTransitionType transition);
	void adw_leaflet_set_visible_child(AdwLeaflet* self, GtkWidget* visibleChild);
	void adw_leaflet_set_visible_child_name(AdwLeaflet* self, const(char)* name);

	// adw.LeafletPage

	GType adw_leaflet_page_get_type();
	GtkWidget* adw_leaflet_page_get_child(AdwLeafletPage* self);
	const(char)* adw_leaflet_page_get_name(AdwLeafletPage* self);
	int adw_leaflet_page_get_navigatable(AdwLeafletPage* self);
	void adw_leaflet_page_set_name(AdwLeafletPage* self, const(char)* name);
	void adw_leaflet_page_set_navigatable(AdwLeafletPage* self, int navigatable);

	// adw.PreferencesGroup

	GType adw_preferences_group_get_type();
	GtkWidget* adw_preferences_group_new();
	void adw_preferences_group_add(AdwPreferencesGroup* self, GtkWidget* child);
	const(char)* adw_preferences_group_get_description(AdwPreferencesGroup* self);
	const(char)* adw_preferences_group_get_title(AdwPreferencesGroup* self);
	void adw_preferences_group_remove(AdwPreferencesGroup* self, GtkWidget* child);
	void adw_preferences_group_set_description(AdwPreferencesGroup* self, const(char)* description);
	void adw_preferences_group_set_title(AdwPreferencesGroup* self, const(char)* title);

	// adw.PreferencesPage

	GType adw_preferences_page_get_type();
	GtkWidget* adw_preferences_page_new();
	void adw_preferences_page_add(AdwPreferencesPage* self, AdwPreferencesGroup* group);
	const(char)* adw_preferences_page_get_icon_name(AdwPreferencesPage* self);
	const(char)* adw_preferences_page_get_title(AdwPreferencesPage* self);
	int adw_preferences_page_get_use_underline(AdwPreferencesPage* self);
	void adw_preferences_page_remove(AdwPreferencesPage* self, AdwPreferencesGroup* group);
	void adw_preferences_page_set_icon_name(AdwPreferencesPage* self, const(char)* iconName);
	void adw_preferences_page_set_title(AdwPreferencesPage* self, const(char)* title);
	void adw_preferences_page_set_use_underline(AdwPreferencesPage* self, int useUnderline);

	// adw.PreferencesRow

	GType adw_preferences_row_get_type();
	GtkWidget* adw_preferences_row_new();
	const(char)* adw_preferences_row_get_title(AdwPreferencesRow* self);
	int adw_preferences_row_get_use_underline(AdwPreferencesRow* self);
	void adw_preferences_row_set_title(AdwPreferencesRow* self, const(char)* title);
	void adw_preferences_row_set_use_underline(AdwPreferencesRow* self, int useUnderline);

	// adw.PreferencesWindow

	GType adw_preferences_window_get_type();
	GtkWidget* adw_preferences_window_new();
	void adw_preferences_window_add(AdwPreferencesWindow* self, AdwPreferencesPage* page);
	void adw_preferences_window_close_subpage(AdwPreferencesWindow* self);
	int adw_preferences_window_get_can_swipe_back(AdwPreferencesWindow* self);
	int adw_preferences_window_get_search_enabled(AdwPreferencesWindow* self);
	void adw_preferences_window_present_subpage(AdwPreferencesWindow* self, GtkWidget* subpage);
	void adw_preferences_window_remove(AdwPreferencesWindow* self, AdwPreferencesPage* page);
	void adw_preferences_window_set_can_swipe_back(AdwPreferencesWindow* self, int canSwipeBack);
	void adw_preferences_window_set_search_enabled(AdwPreferencesWindow* self, int searchEnabled);

	// adw.Squeezer

	GType adw_squeezer_get_type();
	GtkWidget* adw_squeezer_new();
	AdwSqueezerPage* adw_squeezer_add(AdwSqueezer* self, GtkWidget* child);
	int adw_squeezer_get_homogeneous(AdwSqueezer* self);
	int adw_squeezer_get_interpolate_size(AdwSqueezer* self);
	AdwSqueezerPage* adw_squeezer_get_page(AdwSqueezer* self, GtkWidget* child);
	GtkSelectionModel* adw_squeezer_get_pages(AdwSqueezer* self);
	uint adw_squeezer_get_transition_duration(AdwSqueezer* self);
	int adw_squeezer_get_transition_running(AdwSqueezer* self);
	AdwSqueezerTransitionType adw_squeezer_get_transition_type(AdwSqueezer* self);
	GtkWidget* adw_squeezer_get_visible_child(AdwSqueezer* self);
	float adw_squeezer_get_xalign(AdwSqueezer* self);
	float adw_squeezer_get_yalign(AdwSqueezer* self);
	void adw_squeezer_remove(AdwSqueezer* self, GtkWidget* child);
	void adw_squeezer_set_homogeneous(AdwSqueezer* self, int homogeneous);
	void adw_squeezer_set_interpolate_size(AdwSqueezer* self, int interpolateSize);
	void adw_squeezer_set_transition_duration(AdwSqueezer* self, uint duration);
	void adw_squeezer_set_transition_type(AdwSqueezer* self, AdwSqueezerTransitionType transition);
	void adw_squeezer_set_xalign(AdwSqueezer* self, float xalign);
	void adw_squeezer_set_yalign(AdwSqueezer* self, float yalign);

	// adw.SqueezerPage

	GType adw_squeezer_page_get_type();
	GtkWidget* adw_squeezer_page_get_child(AdwSqueezerPage* self);
	int adw_squeezer_page_get_enabled(AdwSqueezerPage* self);
	void adw_squeezer_page_set_enabled(AdwSqueezerPage* self, int enabled);

	// adw.StatusPage

	GType adw_status_page_get_type();
	GtkWidget* adw_status_page_new();
	GtkWidget* adw_status_page_get_child(AdwStatusPage* self);
	const(char)* adw_status_page_get_description(AdwStatusPage* self);
	const(char)* adw_status_page_get_icon_name(AdwStatusPage* self);
	const(char)* adw_status_page_get_title(AdwStatusPage* self);
	void adw_status_page_set_child(AdwStatusPage* self, GtkWidget* child);
	void adw_status_page_set_description(AdwStatusPage* self, const(char)* description);
	void adw_status_page_set_icon_name(AdwStatusPage* self, const(char)* iconName);
	void adw_status_page_set_title(AdwStatusPage* self, const(char)* title);

	// adw.SwipeTracker

	GType adw_swipe_tracker_get_type();
	AdwSwipeTracker* adw_swipe_tracker_new(AdwSwipeable* swipeable);
	int adw_swipe_tracker_get_allow_long_swipes(AdwSwipeTracker* self);
	int adw_swipe_tracker_get_allow_mouse_drag(AdwSwipeTracker* self);
	int adw_swipe_tracker_get_enabled(AdwSwipeTracker* self);
	int adw_swipe_tracker_get_reversed(AdwSwipeTracker* self);
	AdwSwipeable* adw_swipe_tracker_get_swipeable(AdwSwipeTracker* self);
	void adw_swipe_tracker_set_allow_long_swipes(AdwSwipeTracker* self, int allowLongSwipes);
	void adw_swipe_tracker_set_allow_mouse_drag(AdwSwipeTracker* self, int allowMouseDrag);
	void adw_swipe_tracker_set_enabled(AdwSwipeTracker* self, int enabled);
	void adw_swipe_tracker_set_reversed(AdwSwipeTracker* self, int reversed);
	void adw_swipe_tracker_shift_position(AdwSwipeTracker* self, double delta);

	// adw.Swipeable

	GType adw_swipeable_get_type();
	double adw_swipeable_get_cancel_progress(AdwSwipeable* self);
	double adw_swipeable_get_distance(AdwSwipeable* self);
	double adw_swipeable_get_progress(AdwSwipeable* self);
	double* adw_swipeable_get_snap_points(AdwSwipeable* self, int* nSnapPoints);
	void adw_swipeable_get_swipe_area(AdwSwipeable* self, AdwNavigationDirection navigationDirection, int isDrag, GdkRectangle* rect);

	// adw.TabBar

	GType adw_tab_bar_get_type();
	AdwTabBar* adw_tab_bar_new();
	int adw_tab_bar_get_autohide(AdwTabBar* self);
	GtkWidget* adw_tab_bar_get_end_action_widget(AdwTabBar* self);
	int adw_tab_bar_get_expand_tabs(AdwTabBar* self);
	int adw_tab_bar_get_inverted(AdwTabBar* self);
	int adw_tab_bar_get_is_overflowing(AdwTabBar* self);
	GtkWidget* adw_tab_bar_get_start_action_widget(AdwTabBar* self);
	int adw_tab_bar_get_tabs_revealed(AdwTabBar* self);
	AdwTabView* adw_tab_bar_get_view(AdwTabBar* self);
	void adw_tab_bar_set_autohide(AdwTabBar* self, int autohide);
	void adw_tab_bar_set_end_action_widget(AdwTabBar* self, GtkWidget* widget);
	void adw_tab_bar_set_expand_tabs(AdwTabBar* self, int expandTabs);
	void adw_tab_bar_set_inverted(AdwTabBar* self, int inverted);
	void adw_tab_bar_set_start_action_widget(AdwTabBar* self, GtkWidget* widget);
	void adw_tab_bar_set_view(AdwTabBar* self, AdwTabView* view);
	void adw_tab_bar_setup_extra_drop_target(AdwTabBar* self, GdkDragAction actions, GType* types, size_t nTypes);

	// adw.TabPage

	GType adw_tab_page_get_type();
	GtkWidget* adw_tab_page_get_child(AdwTabPage* self);
	GIcon* adw_tab_page_get_icon(AdwTabPage* self);
	int adw_tab_page_get_indicator_activatable(AdwTabPage* self);
	GIcon* adw_tab_page_get_indicator_icon(AdwTabPage* self);
	int adw_tab_page_get_loading(AdwTabPage* self);
	int adw_tab_page_get_needs_attention(AdwTabPage* self);
	AdwTabPage* adw_tab_page_get_parent(AdwTabPage* self);
	int adw_tab_page_get_pinned(AdwTabPage* self);
	int adw_tab_page_get_selected(AdwTabPage* self);
	const(char)* adw_tab_page_get_title(AdwTabPage* self);
	const(char)* adw_tab_page_get_tooltip(AdwTabPage* self);
	void adw_tab_page_set_icon(AdwTabPage* self, GIcon* icon);
	void adw_tab_page_set_indicator_activatable(AdwTabPage* self, int activatable);
	void adw_tab_page_set_indicator_icon(AdwTabPage* self, GIcon* indicatorIcon);
	void adw_tab_page_set_loading(AdwTabPage* self, int loading);
	void adw_tab_page_set_needs_attention(AdwTabPage* self, int needsAttention);
	void adw_tab_page_set_title(AdwTabPage* self, const(char)* title);
	void adw_tab_page_set_tooltip(AdwTabPage* self, const(char)* tooltip);

	// adw.TabView

	GType adw_tab_view_get_type();
	AdwTabView* adw_tab_view_new();
	AdwTabPage* adw_tab_view_add_page(AdwTabView* self, GtkWidget* child, AdwTabPage* parent);
	AdwTabPage* adw_tab_view_append(AdwTabView* self, GtkWidget* child);
	AdwTabPage* adw_tab_view_append_pinned(AdwTabView* self, GtkWidget* child);
	void adw_tab_view_close_other_pages(AdwTabView* self, AdwTabPage* page);
	void adw_tab_view_close_page(AdwTabView* self, AdwTabPage* page);
	void adw_tab_view_close_page_finish(AdwTabView* self, AdwTabPage* page, int confirm);
	void adw_tab_view_close_pages_after(AdwTabView* self, AdwTabPage* page);
	void adw_tab_view_close_pages_before(AdwTabView* self, AdwTabPage* page);
	GIcon* adw_tab_view_get_default_icon(AdwTabView* self);
	int adw_tab_view_get_is_transferring_page(AdwTabView* self);
	GMenuModel* adw_tab_view_get_menu_model(AdwTabView* self);
	int adw_tab_view_get_n_pages(AdwTabView* self);
	int adw_tab_view_get_n_pinned_pages(AdwTabView* self);
	AdwTabPage* adw_tab_view_get_nth_page(AdwTabView* self, int position);
	AdwTabPage* adw_tab_view_get_page(AdwTabView* self, GtkWidget* child);
	int adw_tab_view_get_page_position(AdwTabView* self, AdwTabPage* page);
	GtkSelectionModel* adw_tab_view_get_pages(AdwTabView* self);
	AdwTabPage* adw_tab_view_get_selected_page(AdwTabView* self);
	GtkWidget* adw_tab_view_get_shortcut_widget(AdwTabView* self);
	AdwTabPage* adw_tab_view_insert(AdwTabView* self, GtkWidget* child, int position);
	AdwTabPage* adw_tab_view_insert_pinned(AdwTabView* self, GtkWidget* child, int position);
	AdwTabPage* adw_tab_view_prepend(AdwTabView* self, GtkWidget* child);
	AdwTabPage* adw_tab_view_prepend_pinned(AdwTabView* self, GtkWidget* child);
	int adw_tab_view_reorder_backward(AdwTabView* self, AdwTabPage* page);
	int adw_tab_view_reorder_first(AdwTabView* self, AdwTabPage* page);
	int adw_tab_view_reorder_forward(AdwTabView* self, AdwTabPage* page);
	int adw_tab_view_reorder_last(AdwTabView* self, AdwTabPage* page);
	int adw_tab_view_reorder_page(AdwTabView* self, AdwTabPage* page, int position);
	int adw_tab_view_select_next_page(AdwTabView* self);
	int adw_tab_view_select_previous_page(AdwTabView* self);
	void adw_tab_view_set_default_icon(AdwTabView* self, GIcon* defaultIcon);
	void adw_tab_view_set_menu_model(AdwTabView* self, GMenuModel* menuModel);
	void adw_tab_view_set_page_pinned(AdwTabView* self, AdwTabPage* page, int pinned);
	void adw_tab_view_set_selected_page(AdwTabView* self, AdwTabPage* selectedPage);
	void adw_tab_view_set_shortcut_widget(AdwTabView* self, GtkWidget* widget);
	void adw_tab_view_transfer_page(AdwTabView* self, AdwTabPage* page, AdwTabView* otherView, int position);

	// adw.ValueObject

	GType adw_value_object_get_type();
	AdwValueObject* adw_value_object_new(GValue* value);
	AdwValueObject* adw_value_object_new_collect(GType type, ... );
	AdwValueObject* adw_value_object_new_string(const(char)* string_);
	AdwValueObject* adw_value_object_new_take_string(char* string_);
	void adw_value_object_copy_value(AdwValueObject* value, GValue* dest);
	char* adw_value_object_dup_string(AdwValueObject* value);
	const(char)* adw_value_object_get_string(AdwValueObject* value);
	GValue* adw_value_object_get_value(AdwValueObject* value);

	// adw.ViewSwitcher

	GType adw_view_switcher_get_type();
	GtkWidget* adw_view_switcher_new();
	PangoEllipsizeMode adw_view_switcher_get_narrow_ellipsize(AdwViewSwitcher* self);
	AdwViewSwitcherPolicy adw_view_switcher_get_policy(AdwViewSwitcher* self);
	GtkStack* adw_view_switcher_get_stack(AdwViewSwitcher* self);
	void adw_view_switcher_set_narrow_ellipsize(AdwViewSwitcher* self, PangoEllipsizeMode mode);
	void adw_view_switcher_set_policy(AdwViewSwitcher* self, AdwViewSwitcherPolicy policy);
	void adw_view_switcher_set_stack(AdwViewSwitcher* self, GtkStack* stack);

	// adw.ViewSwitcherBar

	GType adw_view_switcher_bar_get_type();
	GtkWidget* adw_view_switcher_bar_new();
	AdwViewSwitcherPolicy adw_view_switcher_bar_get_policy(AdwViewSwitcherBar* self);
	int adw_view_switcher_bar_get_reveal(AdwViewSwitcherBar* self);
	GtkStack* adw_view_switcher_bar_get_stack(AdwViewSwitcherBar* self);
	void adw_view_switcher_bar_set_policy(AdwViewSwitcherBar* self, AdwViewSwitcherPolicy policy);
	void adw_view_switcher_bar_set_reveal(AdwViewSwitcherBar* self, int reveal);
	void adw_view_switcher_bar_set_stack(AdwViewSwitcherBar* self, GtkStack* stack);

	// adw.ViewSwitcherTitle

	GType adw_view_switcher_title_get_type();
	GtkWidget* adw_view_switcher_title_new();
	AdwViewSwitcherPolicy adw_view_switcher_title_get_policy(AdwViewSwitcherTitle* self);
	GtkStack* adw_view_switcher_title_get_stack(AdwViewSwitcherTitle* self);
	const(char)* adw_view_switcher_title_get_subtitle(AdwViewSwitcherTitle* self);
	const(char)* adw_view_switcher_title_get_title(AdwViewSwitcherTitle* self);
	int adw_view_switcher_title_get_title_visible(AdwViewSwitcherTitle* self);
	int adw_view_switcher_title_get_view_switcher_enabled(AdwViewSwitcherTitle* self);
	void adw_view_switcher_title_set_policy(AdwViewSwitcherTitle* self, AdwViewSwitcherPolicy policy);
	void adw_view_switcher_title_set_stack(AdwViewSwitcherTitle* self, GtkStack* stack);
	void adw_view_switcher_title_set_subtitle(AdwViewSwitcherTitle* self, const(char)* subtitle);
	void adw_view_switcher_title_set_title(AdwViewSwitcherTitle* self, const(char)* title);
	void adw_view_switcher_title_set_view_switcher_enabled(AdwViewSwitcherTitle* self, int enabled);

	// adw.Window

	GType adw_window_get_type();
	GtkWidget* adw_window_new();
	GtkWidget* adw_window_get_child(AdwWindow* self);
	void adw_window_set_child(AdwWindow* self, GtkWidget* child);

	// adw.WindowTitle

	GType adw_window_title_get_type();
	GtkWidget* adw_window_title_new(const(char)* title, const(char)* subtitle);
	const(char)* adw_window_title_get_subtitle(AdwWindowTitle* self);
	const(char)* adw_window_title_get_title(AdwWindowTitle* self);
	void adw_window_title_set_subtitle(AdwWindowTitle* self, const(char)* subtitle);
	void adw_window_title_set_title(AdwWindowTitle* self, const(char)* title);
}