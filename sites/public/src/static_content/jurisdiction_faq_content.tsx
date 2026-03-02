import Markdown from "markdown-to-jsx"
import { FaqCategory, FaqContent } from "../patterns/FrequentlyAskedQuestions"
import { t } from "@bloom-housing/ui-components"

export const getJurisdictionFaqContent = (): FaqContent => {
  const howShouldIPrepareForTheProcessSection: FaqCategory = {
    title: t("faq.howShouldIPrepareForTheProcessHeader"),
    faqs: [
      {
        question: t("faq.whatIdentificationWillINeed"),
        answer: (
          <Markdown options={{ disableParsingRawHTML: true }}>
            {t("faq.whatIdentificationWillINeedAnswer")}
          </Markdown>
        ),
      },
      {
        question: t("faq.whatOtherPaperwork"),
        answer: (
          <Markdown options={{ disableParsingRawHTML: true }}>
            {t("faq.whatOtherPaperworkAnswer")}
          </Markdown>
        ),
      },
      {
        question: t("faq.howDoIDetermineMyHouseholdSize"),
        answer: (
          <Markdown options={{ disableParsingRawHTML: true }}>
            {t("faq.howDoIDetermineMyHouseholdSizeAnswer")}
          </Markdown>
        ),
      },
      {
        question: t("faq.whatSizeUnitShouldIApply"),
        answer: (
          <Markdown options={{ disableParsingRawHTML: true }}>
            {t("faq.whatSizeUnitShouldIApplyAnswer")}
          </Markdown>
        ),
      },
      {
        question: t("faq.howCanImproveMyChancesOfGettingHousing"),
        answer: (
          <Markdown options={{ disableParsingRawHTML: true }}>
            {t("faq.howCanImproveMyChancesOfGettingHousingAnswer")}
          </Markdown>
        ),
      },
      {
        question: t("faq.areSomeUnitsSetAsideForParticularCommunities"),
        answer: (
          <Markdown options={{ disableParsingRawHTML: true }}>
            {t("faq.areSomeUnitsSetAsideForParticularCommunitiesAnswer")}
          </Markdown>
        ),
      },
    ],
  }
  const afterIApplyWhatNextSection: FaqCategory = {
    title: t("faq.afterIApplyWhatNextHeader"),
    faqs: [
      {
        question: t("faq.howDoPropertyManagersMakeTheirSelections"),
        answer: (
          <Markdown options={{ disableParsingRawHTML: true }}>
            {t("faq.howDoPropertyManagersMakeTheirSelectionsAnswer")}
          </Markdown>
        ),
      },
      {
        question: t("faq.howLongDoesTheProcessTake"),
        answer: (
          <Markdown options={{ disableParsingRawHTML: true }}>
            {t("faq.howLongDoesTheProcessTakeAnswer")}
          </Markdown>
        ),
      },
      {
        question: t("faq.whatHappensIfImSelected"),
        answer: (
          <Markdown options={{ disableParsingRawHTML: true }}>
            {t("faq.whatHappensIfImSelectedAnswer")}
          </Markdown>
        ),
      },
      {
        question: t("faq.onceIveBeenPlacedInAnAffordableUnitHowDoIRemainEligible"),
        answer: (
          <Markdown options={{ disableParsingRawHTML: true }}>
            {t("faq.onceIveBeenPlacedInAnAffordableUnitHowDoIRemainEligibleAnswer")}
          </Markdown>
        ),
      },
    ],
  }

  const whatElseShouldIKnowAboutAffordableHousingSection: FaqCategory = {
    title: t("faq.whatElseShouldIKnowAboutAffordableHousingHeader"),
    faqs: [
      {
        question: t("faq.whatMakesHousingAffordable"),
        answer: (
          <Markdown options={{ disableParsingRawHTML: true }}>
            {t("faq.whatMakesHousingAffordableAnswer")}
          </Markdown>
        ),
      },
      {
        question: t("faq.howDoesMyIncomeAffectTheRentIPay"),
        answer: (
          <Markdown options={{ disableParsingRawHTML: true }}>
            {t("faq.howDoesMyIncomeAffectTheRentIPayAnswer")}
          </Markdown>
        ),
      },
      {
        question: t("faq.whatIsTheDifferenceBetweenSection8AndHousingChoiceVouchers"),
        answer: t("faq.whatIsTheDifferenceBetweenSection8AndHousingChoiceVouchersAnswer"),
      },
      {
        question: t("faq.howCanITellIfImBeingScammed"),
        answer: (
          <Markdown options={{ disableParsingRawHTML: true }}>
            {t("faq.howCanITellIfImBeingScammedAnswer")}
          </Markdown>
        ),
      },
      {
        question: t("faq.whatAgeRestrictionsAreApplicableToSeniorDevelopments"),
        answer: t("faq.whatAgeRestrictionsAreApplicableToSeniorDevelopmentsAnswer"),
      },
      {
        question: t("faq.areSomeUnitsSetAsideForPersonsThatHaveMobility"),
        answer: t("faq.areSomeUnitsSetAsideForPersonsThatHaveMobilityAnswer"),
      },
      {
        question: t("faq.howDoIGetSection8Housing"),
        answer: (
          <Markdown options={{ disableParsingRawHTML: true }}>
            {t("faq.howDoIGetSection8HousingAnswer")}
          </Markdown>
        ),
      },
      {
        question: t("faq.howDoIKnowIfIHaveADisability"),
        answer: (
          <Markdown options={{ disableParsingRawHTML: true }}>
            {t("faq.howDoIKnowIfIHaveADisabilityAnswer")}
          </Markdown>
        ),
      },
      {
        question: t("faq.ifIveBeenDiscriminatedAgainstWhatShouldIDo"),
        answer: (
          <Markdown options={{ disableParsingRawHTML: true }}>
            {t("faq.ifIveBeenDiscriminatedAgainstWhatShouldIDoAnswer")}
          </Markdown>
        ),
      },
      {
        question: t("faq.whatIfIHaveACommunicationBarrier"),
        answer: (
          <Markdown options={{ disableParsingRawHTML: true }}>
            {t("faq.whatIfIHaveACommunicationBarrierAnswer")}
          </Markdown>
        ),
      },
      {
        question: t("faq.canApropertyAdoptANoPetPolicy"),
        answer: t("faq.canApropertyAdoptANoPetPolicyAnswer"),
      },
      {
        question: t("faq.howDoIRequestAReasonableModification"),
        answer: (
          <Markdown options={{ disableParsingRawHTML: true }}>
            {t("faq.howDoIRequestAReasonableModificationAnswer")}
          </Markdown>
        ),
      },
      {
        question: t("faq.areApplicantsWithADIsabilityTreatedDifferently"),
        answer: (
          <Markdown options={{ disableParsingRawHTML: true }}>
            {t("faq.areApplicantsWithADIsabilityTreatedDifferentlyAnswer")}
          </Markdown>
        ),
      },
      {
        question: t("faq.imExperiencingHomelessness"),
        answer: (
          <Markdown options={{ disableParsingRawHTML: true }}>
            {t("faq.imExperiencingHomelessnessAnswer")}
          </Markdown>
        ),
      },
    ],
  }

  return {
    categories: [
      howShouldIPrepareForTheProcessSection,
      afterIApplyWhatNextSection,
      whatElseShouldIKnowAboutAffordableHousingSection,
    ],
  }
}
