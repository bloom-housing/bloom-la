import Markdown from "markdown-to-jsx"
import { FaqCategory, FaqContent } from "../patterns/FrequentlyAskedQuestions"
import styles from "../patterns/PageHeaderLayout.module.scss"
import { t } from "@bloom-housing/ui-components"

export const getJurisdictionFaqContent = (): FaqContent => {
  const faqContentSection: FaqCategory = {
    title: "Frequently Asked Questions",
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
    ],
  }

  return {
    categories: [faqContentSection],
  }
}
