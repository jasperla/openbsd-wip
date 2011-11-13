/* $OpenBSD$ */

/* -*- Mode: C; tab-width: 8; indent-tabs-mode: t; c-basic-offset: 8 -*-
 *
 * Copyright (C) 2011 Jasper Lievisse Adriaanse <jasper@openbsd.org>
 *
 * Licensed under the GNU General Public License Version 2
 *
 * This program is free software; you can redistribute it and/or modify
 * it under the terms of the GNU General Public License as published by
 * the Free Software Foundation; either version 2 of the License, or
 * (at your option) any later version.
 *
 * This program is distributed in the hope that it will be useful,
 * but WITHOUT ANY WARRANTY; without even the implied warranty of
 * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
 * GNU General Public License for more details.
 *
 * You should have received a copy of the GNU General Public License
 * along with this program; if not, write to the Free Software
 * Foundation, Inc., 51 Franklin Street, Fifth Floor, Boston, MA 02110-1301 USA.
 */

#include <pk-backend.h>
#include <pk-backend-spawn.h>

static PkBackendSpawn *spawn = NULL;
static const gchar* BACKEND_FILE = "openbsd-backend.pl";

/**
 * backend_initialize:
 */
static void
backend_initialize(PkBackend *backend)
{
	g_debug("backend: initialize");
	spawn = pk_backend_spawn_new();
	pk_backend_spawn_set_name(spawn, "openbsd");
	pk_backend_spawn_set_allow_sigkill(spawn, TRUE);
}

/**
 * backend_destroy:
 */
static void
backend_destroy(PkBackend *backend)
{
	g_debug("backend: destroy");
	g_object_unref(backend);
}

/**
 * backend_get_groups:
 */
static PkBitfield
backend_get_groups (PkBackend *backend)
{
	return pk_bitfield_from_enums (
			PK_GROUP_ENUM_ACCESSIBILITY,
			PK_GROUP_ENUM_ACCESSORIES,
			PK_GROUP_ENUM_ADMIN_TOOLS,
			PK_GROUP_ENUM_COMMUNICATION,
			PK_GROUP_ENUM_DESKTOP_GNOME,
			PK_GROUP_ENUM_DESKTOP_KDE,
			PK_GROUP_ENUM_DESKTOP_OTHER,
			PK_GROUP_ENUM_DESKTOP_XFCE,
			PK_GROUP_ENUM_DOCUMENTATION,
			PK_GROUP_ENUM_EDUCATION,
			PK_GROUP_ENUM_ELECTRONICS,
			PK_GROUP_ENUM_FONTS,
			PK_GROUP_ENUM_GAMES,
			PK_GROUP_ENUM_GRAPHICS,
			PK_GROUP_ENUM_INTERNET,
			PK_GROUP_ENUM_LEGACY,
			PK_GROUP_ENUM_LOCALIZATION,
			PK_GROUP_ENUM_MAPS,
			PK_GROUP_ENUM_MULTIMEDIA,
			PK_GROUP_ENUM_NETWORK,
			PK_GROUP_ENUM_OFFICE,
			PK_GROUP_ENUM_OTHER,
			PK_GROUP_ENUM_PROGRAMMING,
			PK_GROUP_ENUM_PUBLISHING,
			PK_GROUP_ENUM_SCIENCE,
			PK_GROUP_ENUM_SECURITY,
			PK_GROUP_ENUM_SERVERS,
			PK_GROUP_ENUM_SYSTEM,
			PK_GROUP_ENUM_UNKNOWN,
			PK_GROUP_ENUM_VIRTUALIZATION,
			-1);
}

/**
 * backend_get_filters:
 */
static PkBitfield
backend_get_filters(PkBackend *backend)
{
	return pk_bitfield_from_enums(
	    PK_FILTER_ENUM_ARCH,
	    PK_FILTER_ENUM_INSTALLED,
	    -1);
}

/**
 * backend_get_mime_types:
 */
static gchar *
backend_get_mime_types (PkBackend *backend)
{
	return g_strdup ("application/x-compressed-tar");	/* .tgz */
}

/**
 * backend_cancel:
 */
static void
backend_cancel(PkBackend *backend)
{
	pk_backend_spawn_kill(spawn);
}

/**
 * backend_get_depends:
 */
static void
backend_get_depends (PkBackend *backend, PkBitfield filters, gchar **package_ids, gboolean recursive)
{
	gchar *filters_text;
	gchar *package_ids_temp;
	package_ids_temp = pk_package_ids_to_string (package_ids);
	filters_text = pk_filter_bitfield_to_string (filters);
	pk_backend_spawn_helper (spawn, BACKEND_FILE, "get-depends", filters_text, package_ids_temp, pk_backend_bool_to_string (recursive), NULL);
	g_free (filters_text);
	g_free (package_ids_temp);
}

/**
 * backend_get_details:
 */
static void
backend_get_details (PkBackend *backend, gchar **package_ids)
{
	gchar *package_ids_temp;
	package_ids_temp = pk_package_ids_to_string (package_ids);
	pk_backend_spawn_helper (spawn, BACKEND_FILE, "get-details", package_ids_temp, NULL);
	g_free (package_ids_temp);
}

/**
 * backend_get_packages:
 */
static void
backend_get_packages (PkBackend *backend, PkBitfield filters)
{
	gchar *filters_text;
	filters_text = pk_filter_bitfield_to_string (filters);
	pk_backend_spawn_helper (spawn, BACKEND_FILE, "get-packages", filters_text, NULL);
	g_free (filters_text);
}

/**
 * backend_get_repo_list:
 */
static void
backend_get_repo_list(PkBackend *backend, PkBitfield filters)
{
	gchar *filters_text;

	g_debug("backend: get_repo_list");

	filters_text = pk_filter_bitfield_to_string (filters);
	pk_backend_spawn_helper (spawn, BACKEND_FILE, "get-repo-list", filters_text, NULL);
	g_free (filters_text);
}

/**
 * backend_install_packages:
 */
static void
backend_install_packages (PkBackend *backend, gboolean only_trusted, gchar **package_ids)
{
	gchar *package_ids_temp;

	/* send the complete list as stdin */
	package_ids_temp = pk_package_ids_to_string (package_ids);
	pk_backend_spawn_helper (spawn, BACKEND_FILE, "install-packages", pk_backend_bool_to_string (only_trusted), package_ids_temp, NULL);
	g_free (package_ids_temp);
}

/**
 * backend_refresh_cache:
 */
static void
backend_refresh_cache (PkBackend *backend, gboolean force)
{
	pk_backend_spawn_helper (spawn, BACKEND_FILE, "refresh-cache", pk_backend_bool_to_string (force), NULL);
}

/**
 * pk_backend_resolve:
 */
static void
backend_resolve (PkBackend *backend, PkBitfield filters, gchar **package_ids)
{
	gchar *filters_text;
	gchar *package_ids_temp;
	filters_text = pk_filter_bitfield_to_string (filters);
	package_ids_temp = pk_package_ids_to_string (package_ids);
	pk_backend_spawn_helper (spawn, BACKEND_FILE, "resolve", filters_text, package_ids_temp, NULL);
	g_free (filters_text);
	g_free (package_ids_temp);
}

/**
 * backend_search_details:
 */
static void
backend_search_details (PkBackend *backend, PkBitfield filters, gchar **search)
{
	gchar *filters_text;
	filters_text = pk_filter_bitfield_to_string (filters);

	pk_backend_spawn_helper (spawn, BACKEND_FILE, "search-details", filters_text, search[0], NULL);
	g_free (filters_text);
}

/**
 * pk_backend_search_groups:
 */
static void
backend_search_groups (PkBackend *backend, PkBitfield filters, gchar **search)
{
	gchar *filters_text;
	filters_text = pk_filter_bitfield_to_string (filters);
	pk_backend_spawn_helper (spawn, BACKEND_FILE, "search-group", filters_text, search[0], NULL);
	g_free (filters_text);
}

/**
 * backend_search_names:
 */
static void
backend_search_names (PkBackend *backend, PkBitfield filters, gchar **search)
{
	gchar *filters_text;
	filters_text = pk_filter_bitfield_to_string (filters);

	pk_backend_spawn_helper (spawn, BACKEND_FILE, "search-name", filters_text, search[0], NULL);
	g_free (filters_text);
}

/* FIXME: port this away from PK_BACKEND_OPTIONS */

/*
 * Some functions are not available for the following reaons:
 * search_files - PLISTs are not recorded in sqlports.
*/

PK_BACKEND_OPTIONS(
	"openbsd",				/* description */
	"Jasper Lievisse Adriaanse <jasper@openbsd.org>", 	/* author */
	backend_initialize,			/* initalize */
	backend_destroy,			/* destroy */
	backend_get_groups,			/* get_groups */
	backend_get_filters,			/* get_filters */
	NULL,					/* get_roles */
	backend_get_mime_types,			/* get_mime_types */
	backend_cancel,				/* cancel */
	NULL,					/* download_packages */
	NULL,					/* get_categories */
	backend_get_depends,			/* get_depends */
	backend_get_details,			/* get_details */
	NULL,					/* get_distro_upgrades */
	NULL,					/* get_files */
	backend_get_packages,			/* get_packages */
	backend_get_repo_list,			/* get_repo_list */
	NULL,					/* get_requires */
	NULL,					/* get_update_detail */
	NULL,					/* get_updates */
	NULL,					/* install_files */
	backend_install_packages,		/* install_packages */
	NULL,					/* install_signature */
	backend_refresh_cache,			/* refresh_cache */
	NULL,					/* remove_packages */
	NULL,					/* repo_enable */
	NULL,					/* repo_set_data */
	backend_resolve,			/* resolve */
	NULL,					/* rollback */
	backend_search_details,			/* search_details */
	NULL,					/* search_files */
	backend_search_groups,			/* search_groups */
	backend_search_names,			/* search_names */
	NULL,					/* update_packages */
	NULL,					/* update_system */
	NULL,					/* what_provides */
	NULL,					/* simulate_install_files */
	NULL,					/* simulate_install_packages */
	NULL,					/* simulate_remove_packages */
	NULL,					/* simulate_update_packages */
	NULL,					/* upgrade_system */
	NULL,					/* transaction_start */
	NULL					/* transaction_stop */
);
