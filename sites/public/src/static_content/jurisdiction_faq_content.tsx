import Markdown from "markdown-to-jsx"
import { FaqCategory, FaqContent } from "../patterns/FrequentlyAskedQuestions"
import styles from "../patterns/PageHeaderLayout.module.scss"
import preparedContent from "../static_content/prepare_for_process.md"
import identificationContent from "../static_content/identification.md"
import paperworkContent from "../static_content/paperwork.md"

export const getJurisdictionFaqContent = (): FaqContent => {
  const faqContentSection: FaqCategory = {
    title: "Frequently Asked Questions",
    faqs: [
      {
        question: "How should I prepare for the process?",
        answer: <Markdown className={styles["markdown"]}>{preparedContent.toString()}</Markdown>,
      },
      {
        question: "What identification will I need?",
        answer: <Markdown>{identificationContent.toString()}</Markdown>,
      },
      {
        question: "What other paperwork might I need?",
        answer: <Markdown>{paperworkContent.toString()}</Markdown>,
      },
    ],
  }

  return {
    categories: [faqContentSection],
  }
}
