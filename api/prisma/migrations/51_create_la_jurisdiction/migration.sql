WITH
jurisdiction AS (
  INSERT INTO jurisdictions (
    created_at,
    updated_at,
    name,
    notifications_sign_up_url,
    languages,
    minimum_listing_publish_images_required,
    public_url,
    email_from_address,
    rental_assistance_default,
    what_to_expect,
    what_to_expect_under_construction,
    enable_partner_settings,
    enable_partner_demographics,
    enable_geocoding_preferences,
    enable_geocoding_radius_method,
    allow_single_use_code_login,
    listing_approval_permission,
    duplicate_listing_permissions,
    required_listing_fields,
    partner_terms,
    what_to_expect_additional_text,
    visible_accessibility_priority_types,
    visible_neighborhood_amenities,
    visible_spoken_languages,
    regions,
    listing_features_configuration,
    race_ethnicity_configuration
  ) VALUES (
    now(),
    now(),
    'Los Angeles',
    NULL,
    ARRAY['en','es','zh','vi','tl','ko','hy','fa']::"languages_enum"[],
    3,
    'TODO: set public URL without trailing slash',
    'TODO: set email from address',
    'Housing Choice Vouchers, Section 8 and other valid rental assistance programs will be considered for this property. In the case of a valid rental subsidy, the required minimum income will be based on the portion of the rent that the tenant pays after use of the subsidy.',
    '<p>If you are interested in applying for this property, please get in touch in one of these ways:</p><ul><li><p>Phone</p></li><li><p>Email</p></li><li><p>In-person</p></li><li><p>In some instances, the property has a link directly to an application</p></li></ul><p>Once you contact a property, ask if they have any available units if you are looking to move in immediately.</p><p><strong>Waitlists</strong>:</p><p>If none are available, but you are still interested in eventually living at the property, ask how you can be placed on their waitlist.</p>',
    'This property is still under construction by the property owners. You can check back later to this page for updates.',
    true,
    false,
    false,
    false,
    false,
    ARRAY['admin']::"user_role_enum"[],
    ARRAY['admin','partner']::"user_role_enum"[],
    ARRAY['listingsBuildingAddress','name','listingImages','leasingAgentEmail','leasingAgentName','leasingAgentPhone','jurisdictions','units','digitalApplication','paperApplication','referralOpportunity','rentalAssistance','listingFileNumber','listingImages.description'],
    'TODO: set partner terms',
    NULL,
    ARRAY['mobility','hearingAndVision','mobilityHearingAndVision']::"unit_accessibility_priority_type_enum"[],
    ARRAY['groceryStores','pharmacies','shoppingVenues','hospitals','seniorCenters','recreationalFacilities','playgrounds','busStops']::"neighborhood_amenities_enum"[],
    ARRAY['chineseCantonese','chineseMandarin','english','filipino','korean','russian','spanish','vietnamese','farsi','afghani','notListed']::"spoken_language_enum"[],
    ARRAY['Antelope Valley','San Gabriel Valley','San Fernando Valley and Santa Clarita Valley','Metro Los Angeles','West Los Angeles','South Los Angeles','East Los Angeles','South Bay / Harbor'],
    '{
      "categories": [
        {
          "id": "mobility",
          "fields": [
            {"id": "accessibleParking"},
            {"id": "barrierFreePropertyEntrance"},
            {"id": "barrierFreeUnitEntrance"},
            {"id": "elevator"},
            {"id": "frontControlsDishwasher"},
            {"id": "frontControlsStoveCookTop"},
            {"id": "kitchenCounterLowered"},
            {"id": "leverHandlesOnDoors"},
            {"id": "loweredLightSwitch"},
            {"id": "mobility"},
            {"id": "noEntryStairs"},
            {"id": "noStairsToParkingSpots"},
            {"id": "noStairsWithinUnit"},
            {"id": "refrigeratorWithBottomDoorFreezer"},
            {"id": "streetLevelEntrance"},
            {"id": "wheelchairRamp"}
          ]
        },
        {
          "id": "bathroom",
          "fields": [
            {"id": "accessibleHeightToilet"},
            {"id": "barrierFreeBathroom"},
            {"id": "bathGrabBarsOrReinforcements"},
            {"id": "bathroomCounterLowered"},
            {"id": "rollInShower"},
            {"id": "toiletGrabBarsOrReinforcements"},
            {"id": "turningCircleInBathrooms"},
            {"id": "walkInShower"},
            {"id": "wideDoorways"}
          ]
        },
        {
          "id": "flooring",
          "fields": [
            {"id": "carpetInUnit"},
            {"id": "hardFlooringInUnit"}
          ],
          "required": true
        },
        {
          "id": "utility",
          "fields": [
            {"id": "acInUnit"},
            {"id": "fireSuppressionSprinklerSystem"},
            {"id": "heatingInUnit"},
            {"id": "inUnitWasherDryer"},
            {"id": "laundryInBuilding"},
            {"id": "leverHandlesOnFaucets"}
          ]
        },
        {
          "id": "hearingVision",
          "fields": [
            {"id": "brailleSignageInBuilding"},
            {"id": "carbonMonoxideDetectorWithStrobe"},
            {"id": "extraAudibleCarbonMonoxideDetector"},
            {"id": "extraAudibleSmokeDetector"},
            {"id": "hearingAndVision"},
            {"id": "nonDigitalKitchenAppliances"},
            {"id": "smokeDetectorWithStrobe"},
            {"id": "ttyAmplifiedPhone"}
          ]
        }
      ]
    }'::jsonb,
    '{
      "options": [
        {"id": "americanIndianAlaskanNative", "subOptions": [], "allowOtherText": false},
        {"id": "asian", "subOptions": [], "allowOtherText": false},
        {"id": "blackAfricanAmerican", "subOptions": [], "allowOtherText": false},
        {"id": "hispanicLatino", "subOptions": [], "allowOtherText": false},
        {"id": "middleEasternNorthAfrican", "subOptions": [], "allowOtherText": false},
        {"id": "nativeHawaiianOtherPacificIslander", "subOptions": [], "allowOtherText": false},
        {"id": "white", "subOptions": [], "allowOtherText": false},
        {"id": "otherMultiracial", "subOptions": [], "allowOtherText": true}
      ]
    }'::jsonb
  )
  ON CONFLICT (name) DO UPDATE SET
    updated_at                              = now(),
    notifications_sign_up_url              = EXCLUDED.notifications_sign_up_url,
    languages                              = EXCLUDED.languages,
    minimum_listing_publish_images_required = EXCLUDED.minimum_listing_publish_images_required,
    public_url                             = EXCLUDED.public_url,
    email_from_address                     = EXCLUDED.email_from_address,
    rental_assistance_default              = EXCLUDED.rental_assistance_default,
    what_to_expect                         = EXCLUDED.what_to_expect,
    what_to_expect_under_construction      = EXCLUDED.what_to_expect_under_construction,
    enable_partner_settings                = EXCLUDED.enable_partner_settings,
    enable_partner_demographics            = EXCLUDED.enable_partner_demographics,
    enable_geocoding_preferences           = EXCLUDED.enable_geocoding_preferences,
    enable_geocoding_radius_method         = EXCLUDED.enable_geocoding_radius_method,
    allow_single_use_code_login            = EXCLUDED.allow_single_use_code_login,
    listing_approval_permission            = EXCLUDED.listing_approval_permission,
    duplicate_listing_permissions          = EXCLUDED.duplicate_listing_permissions,
    required_listing_fields                = EXCLUDED.required_listing_fields,
    partner_terms                          = EXCLUDED.partner_terms,
    what_to_expect_additional_text         = EXCLUDED.what_to_expect_additional_text,
    visible_accessibility_priority_types   = EXCLUDED.visible_accessibility_priority_types,
    visible_neighborhood_amenities         = EXCLUDED.visible_neighborhood_amenities,
    visible_spoken_languages               = EXCLUDED.visible_spoken_languages,
    regions                                = EXCLUDED.regions,
    listing_features_configuration         = EXCLUDED.listing_features_configuration,
    race_ethnicity_configuration           = EXCLUDED.race_ethnicity_configuration
  RETURNING id
),
rct AS (
  INSERT INTO reserved_community_types (created_at, updated_at, description, jurisdiction_id, name)
  SELECT now(), now(), NULL, jurisdiction.id, rct_name
  FROM jurisdiction
  CROSS JOIN unnest(ARRAY['senior55', 'senior62', 'referralOnly']::TEXT[]) AS rct_name
  WHERE NOT EXISTS (
    SELECT 1 FROM reserved_community_types rct
    WHERE rct.jurisdiction_id = jurisdiction.id AND rct.name = rct_name
  )
),
flags AS (
  INSERT INTO feature_flags (created_at, updated_at, name, description, active)
  VALUES
    (now(), now(), 'disableBuildingSelectionCriteria',  '', true),
    (now(), now(), 'disableCommonApplication',          '', false),
    (now(), now(), 'disableEthnicityQuestion',          '', true),
    (now(), now(), 'disableJurisdictionalAdmin',        '', true),
    (now(), now(), 'disableListingPreferences',         '', true),
    (now(), now(), 'disableWorkInRegion',               '', true),
    (now(), now(), 'enableAccessibilityFeatures',       '', true),
    (now(), now(), 'enableAdaOtherOption',              '', false),
    (now(), now(), 'enableAdditionalResources',         '', true),
    (now(), now(), 'enableApplicationStatus',           '', true),
    (now(), now(), 'enableCompanyWebsite',              '', false),
    (now(), now(), 'enableConfigurableRegions',         '', true),
    (now(), now(), 'enableCreditScreeningFee',          '', true),
    (now(), now(), 'enableFullTimeStudentQuestion',     '', false),
    (now(), now(), 'enableGeocodingPreferences',        '', false),
    (now(), now(), 'enableGeocodingRadiusMethod',       '', false),
    (now(), now(), 'enableHomeType',                    '', false),
    (now(), now(), 'enableHousingAdvocate',             '', true),
    (now(), now(), 'enableHousingDeveloperOwner',       '', true),
    (now(), now(), 'enableIsVerified',                  '', false),
    (now(), now(), 'enableLimitedHowDidYouHear',        '', false),
    (now(), now(), 'enableListingFavoriting',           '', false),
    (now(), now(), 'enableListingFileNumber',           '', true),
    (now(), now(), 'enableListingFiltering',            '', true),
    (now(), now(), 'enableLeasingAgentAltText',         '', true),
    (now(), now(), 'enableListingImageAltText',         '', true),
    (now(), now(), 'enableListingOpportunity',          '', false),
    (now(), now(), 'enableListingPagination',           '', true),
    (now(), now(), 'enableListingUpdatedAt',            '', true),
    (now(), now(), 'enableMarketingFlyer',              '', true),
    (now(), now(), 'enableMarketingStatus',             '', true),
    (now(), now(), 'enableMarketingStatusMonths',       '', true),
    (now(), now(), 'enableNeighborhoodAmenities',       '', true),
    (now(), now(), 'enableNeighborhoodAmenitiesDropdown', '', true),
    (now(), now(), 'enableNonRegulatedListings',        '', false),
    (now(), now(), 'enableParkingFee',                  '', true),
    (now(), now(), 'enablePartnerDemographics',         '', false),
    (now(), now(), 'enablePartnerSettings',             '', true),
    (now(), now(), 'enablePetPolicyCheckbox',           '', true),
    (now(), now(), 'enableProperties',                  '', true),
    (now(), now(), 'enableReferralQuestionUnits',       '', true),
    (now(), now(), 'enableRegions',                     '', false),
    (now(), now(), 'enableResources',                   '', true),
    (now(), now(), 'enableSection8Question',            '', false),
    (now(), now(), 'enableSingleUseCode',               '', false),
    (now(), now(), 'enableSmokingPolicyRadio',          '', true),
    (now(), now(), 'enableSpokenLanguage',              '', true),
    (now(), now(), 'enableSupportAdmin',                '', false),
    (now(), now(), 'enableUnderConstructionHome',       '', false),
    (now(), now(), 'enableUnitGroups',                  '', false),
    (now(), now(), 'enableUtilitiesIncluded',           '', true),
    (now(), now(), 'enableVerifyIncome',                '', false),
    (now(), now(), 'enableWaitlistAdditionalFields',    '', false),
    (now(), now(), 'enableWaitlistLottery',             '', false),
    (now(), now(), 'enableWhatToExpectAdditionalField', '', false),
    (now(), now(), 'enableParkingType',                 '', true),
    (now(), now(), 'enableV2MSQ',                       '', false),
    (now(), now(), 'hideCloseListingButton',            '', false),
    (now(), now(), 'swapCommunityTypeWithPrograms',     '', false)
  ON CONFLICT (name) DO UPDATE SET
    active     = EXCLUDED.active,
    updated_at = now()
  RETURNING id
)
INSERT INTO "_FeatureFlagsToJurisdictions" ("A", "B")
SELECT flags.id, jurisdiction.id
FROM flags
CROSS JOIN jurisdiction
ON CONFLICT DO NOTHING;
