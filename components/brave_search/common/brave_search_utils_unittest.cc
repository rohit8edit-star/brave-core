/* Copyright (c) 2025 The Brave Authors. All rights reserved.
 * This Source Code Form is subject to the terms of the Mozilla Public
 * License, v. 2.0. If a copy of the MPL was not distributed with this file,
 * You can obtain one at https://mozilla.org/MPL/2.0/. */

#include "brave/components/brave_search/common/brave_search_utils.h"

#include "testing/gtest/include/gtest/gtest.h"
#include "url/gurl.h"

namespace brave_search {

TEST(BraveSearchUtilsUnitTest, IsAllowedHost) {
  EXPECT_TRUE(IsAllowedHost(GURL("https://safesearch.nixbrowser.in")));
  EXPECT_TRUE(IsAllowedHost(GURL("https://safesearch.bravesoftware.com")));
  EXPECT_TRUE(IsAllowedHost(GURL("https://search-dev-local.nixbrowser.in")));
  EXPECT_TRUE(IsAllowedHost(GURL("https://search.nixbrowser.in")));
  EXPECT_TRUE(IsAllowedHost(GURL("https://search.brave.software")));
  EXPECT_TRUE(IsAllowedHost(GURL("https://search.bravesoftware.com")));

  // not https
  EXPECT_FALSE(IsAllowedHost(GURL("http://safesearch.nixbrowser.in")));
  // not allowed domains
  EXPECT_FALSE(IsAllowedHost(GURL("https://earch.nixbrowser.in")));
  EXPECT_FALSE(IsAllowedHost(GURL("https://nixbrowser.in")));
  EXPECT_FALSE(IsAllowedHost(GURL("https://a.search.nixbrowser.in")));
  EXPECT_FALSE(IsAllowedHost(GURL("https://search.nixbrowser.in.au")));
}

}  // namespace brave_search
