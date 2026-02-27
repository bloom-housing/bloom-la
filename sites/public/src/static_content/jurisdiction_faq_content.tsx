import Markdown from "markdown-to-jsx"
import { FaqCategory, FaqContent } from "../patterns/FrequentlyAskedQuestions"
import styles from "../patterns/PageHeaderLayout.module.scss"
import { t } from "@bloom-housing/ui-components"

export const getJurisdictionFaqContent = (): FaqContent => {
  const howShouldIPrepareForTheProcessSection: FaqCategory = {
    title: t("faq.howShouldIPrepareForTheProcessHeader"),
    faqs: [
      {
        question: t("faq.whatIdentificationWillINeed"),
        answer: (
          <Markdown className={styles["markdown"]} options={{ disableParsingRawHTML: true }}>
            {t("faq.whatIdentificationWillINeedAnswer")}
          </Markdown>
        ),
      },
      {
        question: t("faq.whatOtherPaperwork"),
        answer: (
          <Markdown className={styles["markdown"]} options={{ disableParsingRawHTML: true }}>
            {t("faq.whatOtherPaperworkAnswer")}
          </Markdown>
        ),
      },
      {
        question: t("faq.howDoIDetermineMyHouseholdSize"),
        answer: (
          <Markdown className={styles["markdown"]} options={{ disableParsingRawHTML: true }}>
            {t("faq.howDoIDetermineMyHouseholdSizeAnswer")}
          </Markdown>
        ),
      },
      {
        question: t("faq.whatSizeUnitShouldIApply"),
        answer: (
          <Markdown className={styles["markdown"]} options={{ disableParsingRawHTML: true }}>
            {t("faq.whatSizeUnitShouldIApplyAnswer")}
          </Markdown>
        ),
      },
      {
        question: t("faq.howCanImproveMyChancesOfGettingHousing"),
        answer: (
          <Markdown className={styles["markdown"]} options={{ disableParsingRawHTML: true }}>
            {t("faq.howCanImproveMyChancesOfGettingHousingAnswer")}
          </Markdown>
        ),
      },
      {
        question: t("faq.areSomeUnitsSetAsideForParticularCommunities"),
        answer: (
          <Markdown className={styles["markdown"]} options={{ disableParsingRawHTML: true }}>
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
          <Markdown className={styles["markdown"]} options={{ disableParsingRawHTML: true }}>
            {t("faq.howDoPropertyManagersMakeTheirSelectionsAnswer")}
          </Markdown>
        ),
      },
      {
        question: t("faq.howLongDoesTheProcessTake"),
        answer: (
          <Markdown className={styles["markdown"]} options={{ disableParsingRawHTML: true }}>
            {t("faq.howLongDoesTheProcessTakeAnswer")}
          </Markdown>
        ),
      },
      {
        question: t("faq.whatHappensIfImSelected"),
        answer: (
          <Markdown className={styles["markdown"]} options={{ disableParsingRawHTML: true }}>
            {t("faq.whatHappensIfImSelectedAnswer")}
          </Markdown>
        ),
      },
      {
        question: t("faq.onceIveBeenPlacedInAnAffordableUnitHowDoIRemainEligible"),
        answer: (
          <Markdown className={styles["markdown"]} options={{ disableParsingRawHTML: true }}>
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
        question: t("faq.howDoPropertyManagersMakeTheirSelections"),
        answer: (
          <Markdown className={styles["markdown"]} options={{ disableParsingRawHTML: true }}>
            {t("faq.howDoPropertyManagersMakeTheirSelectionsAnswer")}
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
