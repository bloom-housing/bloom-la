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
    'accesshousingla.org',
    'City of Los Angeles Housing Department <lahd.AcHP.DoNotReply@lacity.org>',
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
    'I have reviewed the [Terms of Use](https://lahousing.lacity.org/AAHR/ComCon/Tab/RenderTab?tabName=Terms%20and%20Conditions) for this Website, as that term is defined in the Terms of Use, and agree to comply with all requirements described therein that relate to my use as a Professional Partner or Local Government. If I am agreeing to comply with the Terms of Use on behalf of a Professional Partner or Local Government, I warrant that I am authorized to enter into agreements such as the Terms of Use on behalf of such Professional Partner or Local Government.',
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
    (now(), now(), 'disableBuildingSelectionCriteria',  'When true, building selection criteria is not displayed in the listing', true),
    (now(), now(), 'disableCommonApplication',          'When true, the digital common application is not an option for listings', false),
    (now(), now(), 'disableEthnicityQuestion',          'When true, the ethnicity question is hidden in the application demographics section', true),
    (now(), now(), 'disableJurisdictionalAdmin',        'When true, jurisdictional admins cannot be created', true),
    (now(), now(), 'disableListingPreferences',         'When true listings will no longer support preferences section', true),
    (now(), now(), 'disableWorkInRegion',               'When true the "Work in Region" question will be removed from the application process', true),
    (now(), now(), 'enableAccessibilityFeatures',       "When true, the 'accessibility features' section is displayed in listing creation/edit and the public listing view", true),
    (now(), now(), 'enableAdaOtherOption',              "When true, the ADA impairment options will include 'For Other Impairments'", false),
    (now(), now(), 'enableAdditionalResources',         "When true, the 'learn more' section is displayed on the home page", true),
    (now(), now(), 'enableApplicationStatus',           'When true, the application status and notifications feature is enabled on public and partners', true),
    (now(), now(), 'enableCompanyWebsite',              'When true, allows partners to add company website information', false),
    (now(), now(), 'enableConfigurableRegions',         'When true, allows for configurable regions per jurisdiction enabled on partners and public', true),
    (now(), now(), 'enableCreditScreeningFee',          'When true, credit screening fee is enabled for listings', true),
    (now(), now(), 'enableFullTimeStudentQuestion',     'When true, the full time student question is displayed in the application form', false),
    (now(), now(), 'enableGeocodingPreferences',        'When true, preferences can be created with geocoding functionality and when an application is created/updated on a listing that is geocoding then the application gets geocoded', false),
    (now(), now(), 'enableGeocodingRadiusMethod',       'When true, preferences can be created with geocoding functionality that verifies via a mile radius', false),
    (now(), now(), 'enableHomeType',                    'When true, home type feature is turned on', false),
    (now(), now(), 'enableHousingAdvocate',             'When true, partners can view housing advocate users', true),
    (now(), now(), 'enableHousingDeveloperOwner',       "When true, the 'Housing developer' field label becomes 'Housing developer / owner'", true),
    (now(), now(), 'enableIsVerified',                  'When true, the listing can ba have its contents manually verified by a user', false),
    (now(), now(), 'enableLimitedHowDidYouHear',        'When true, the Radio Ad and Bus Ad options are removed from the how did you hear section.', false),
    (now(), now(), 'enableListingFavoriting',           'When true, a Favorite button is shown for public listings and users can view their favorited listings', false),
    (now(), now(), 'enableListingFileNumber',           'When true, partners can enter and export a listing file number', true),
    (now(), now(), 'enableListingFiltering',            'When true, a filter button is shown on listings browse and users can filter with the options in the drawer', true),
    (now(), now(), 'enableLeasingAgentAltText',         'When true, shows alternative text for LA users', true),
    (now(), now(), 'enableListingImageAltText',         'When true, allows partners to add alt text to listing images', true),
    (now(), now(), 'enableListingOpportunity',          "When true, any newly published listing will send a gov delivery email to everyone that has signed up for the 'listing alerts'", false),
    (now(), now(), 'enableListingPagination',           'When true listings browser will display pagination controls section', true),
    (now(), now(), 'enableListingUpdatedAt',            'When true, listings detail will display an updated at date', true),
    (now(), now(), 'enableMarketingFlyer',              "When true, the 'marketing flyer' sub-section is displayed in listing creation/edit and the public listing view", true),
    (now(), now(), 'enableMarketingStatus',             "When true, the 'marketing status' sub-section is displayed in listing creation/edit and the public listing view", true),
    (now(), now(), 'enableMarketingStatusMonths',       "When true, the 'marketing status' sub-section uses months instead of seasons (functions only if enableMarketingStatus is also true)", true),
    (now(), now(), 'enableNeighborhoodAmenities',       "When true, the 'neighborhood amenities' section is displayed in listing creation/edit and the public listing view", true),
    (now(), now(), 'enableNeighborhoodAmenitiesDropdown', 'When true, neighborhood amenities inputs render as dropdowns with distance options instead of textareas', true),
    (now(), now(), 'enableNonRegulatedListings',        'When true, non-regulated listings are displayed in listing creation/edit and public listing view', false),
    (now(), now(), 'enableParkingFee',                  'When true, the parking fee field should be visible', true),
    (now(), now(), 'enablePartnerDemographics',         'When true, demographics data is included in application or lottery exports for partners', false),
    (now(), now(), 'enablePartnerSettings',             "When true, the 'settings' tab in the partner site is visible", true),
    (now(), now(), 'enablePetPolicyCheckbox',           'When true, the pet policy field in the listing form is displayed as checkboxes instead of a text area', true),
    (now(), now(), 'enableProperties',                  'When true, the properties feature is enabled', true),
    (now(), now(), 'enableReferralQuestionUnits',       'when true, updates the the referral details question labels', true),
    (now(), now(), 'enableRegions',                     'When true, the region can be defined for the building address', false),
    (now(), now(), 'enableResources',                   'When true, the public site displays links to resources on various pages', true),
    (now(), now(), 'enableSection8Question',            'When true, the Section 8 listing data will be visible', false),
    (now(), now(), 'enableSingleUseCode',               'When true, the backend allows for logging into this jurisdiction using the single use code flow', false),
    (now(), now(), 'enableSmokingPolicyRadio',          "When true, the listing 'Smoking policy' field is a radio group", true),
    (now(), now(), 'enableSpokenLanguage',              'When true, the application demographics section displays a spoken language question with options configured on the jurisdiction', true),
    (now(), now(), 'enableSupportAdmin',                'When true, support admins can be created', false),
    (now(), now(), 'enableUnderConstructionHome',       "When true, the 'under construction' section is displayed on the home page", false),
    (now(), now(), 'enableUnitGroups',                  'When true, uses unit groups instead of units', false),
    (now(), now(), 'enableUtilitiesIncluded',           "When true, the 'utilities included' section is displayed in listing creation/edit and the public listing view", true),
    (now(), now(), 'enableVerifyIncome',                'When true, the income question on the application will be validated against the income limits for the listing and an error message will be shown if income is outside limits', false),
    (now(), now(), 'enableWaitlistAdditionalFields',    'When true, the waitlist additional fields are displayed in the waitlist section of the listing form', false),
    (now(), now(), 'enableWaitlistLottery',             'When true, jurisdiction supports lotteries for waitlist opportunities', false),
    (now(), now(), 'enableWhatToExpectAdditionalField', 'When true, the what to expect additional field is displayed in listing creation/edit form on the partner site', false),
    (now(), now(), 'enableParkingType',                 'When true, the parking type field is visible in the listing form', true),
    (now(), now(), 'enableV2MSQ',                       'When true, the new mutliselect question logic will be used.', false),
    (now(), now(), 'hideCloseListingButton',            'When true, close button is hidden on the listing edit form', false),
    (now(), now(), 'swapCommunityTypeWithPrograms',     'When true, the programs section on the frontend is displayed as community types.', false)
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
