import Markdown from "markdown-to-jsx"
import { FaqCategory, FaqContent } from "../patterns/FrequentlyAskedQuestions"

export const getJurisdictionFaqContent = (): FaqContent => {
  const faqContentSection: FaqCategory = {
    title: "Frequently Asked Questions",
    faqs: [
      {
        question: "How should I prepare for the process?",
        answer: (
          <Markdown>
            Identification for non-federally funded listings Many of the properties on the Los
            Angeles Housing Portal are not federally funded. For these properties, you do not need
            to provide proof of residency or to present a government-issued ID. However, you will be
            asked for some form of documentation that verifies your identity. Identification for
            federally funded listings Federally funded properties require applicants to provide
            proof of residency and to present a government ID. For these listings, verify that you
            have documentation for everyone in your household: - 18 and older: Government-issued
            photo identification - Under 18: Birth Certificate, or Social Security Card, or passport
            To find out whether the property is federally funded: - Check the property listing for
            details. - Contact the property listing’s developer or property manager for more
            information.
          </Markdown>
        ),
      },
      {
        question: " What identification will I need?",
        answer: (
          <Markdown>
            Copy of Bloom LA Static Site Content Each property has its own tenant selection process.
            In most cases, you won't need any supporting documentation to complete the initial
            application on this website. However, you should to begin to gather the documentation
            you'll need if your application is selected for review. Under the Additional Information
            section of the property listing, there may be a Required Documents text box which lists
            which documents you’ll need. Don't wait to get started! Income If you’re selected to
            move forward in the selection process, you will be asked to provide proof of household
            income. This applies to all sources of income for each member of your household over 18
            years of age. Supporting documentation can include: - Welfare, veteran benefits, social
            security letter - Rental assistance voucher - Recent paystubs from your current employer
            - Self-employment proof - Alimony - Current pension or retirement income Assets This
            applies to all sources of assets including income for each member of your household over
            18 years of age. Assets can include: - Checking account statements - Savings account
            statements - Real property - Investment accounts Refer to the property listing or the
            property's own application requirements or for more information about financial
            documents that will be required to determine eligibility. Each property has its own
            tenant selection process. In most cases, you won't need any supporting documentation to
            complete the initial application on this website. However, you should to begin to gather
            the documentation you'll need if your application is selected for review. Under the
            Additional Information section of the property listing, there may be a Required
            Documents text box which lists which documents you’ll need. Don't wait to get started!
            Income If you’re selected to move forward in the selection process, you will be asked to
            provide proof of household income. This applies to all sources of income for each member
            of your household over 18 years of age. Supporting documentation can include: - Welfare,
            veteran benefits, social security letter - Rental assistance voucher - Recent paystubs
            from your current employer - Self-employment proof - Alimony - Current pension or
            retirement income Assets This applies to all sources of assets including income for each
            member of your household over 18 years of age. Assets can include: - Checking account
            statements - Savings account statements - Real property - Investment accounts Refer to
            the property listing or the property's own application requirements or for more
            information about financial documents that will be required to determine eligibility.
            Activar la compatibilidad con el lector de pantalla Para habilitar la compatibilidad con
            lectores de pantalla, presiona Ctrl+Alt+Z. Para más información sobre la combinación de
            teclas para acceso directo, presiona Ctrl+barra.
          </Markdown>
        ),
      },
      {
        question: "What other paperwork might I need?",
        answer: (
          <Markdown>
            Each property has its own tenant selection process. In most cases, you won't need any
            supporting documentation to complete the initial application on this website. However,
            you should to begin to gather the documentation you'll need if your application is
            selected for review. Under the Additional Information section of the property listing,
            there may be a Required Documents text box which lists which documents you’ll need.
            Don't wait to get started! Income If you’re selected to move forward in the selection
            process, you will be asked to provide proof of household income. This applies to all
            sources of income for each member of your household over 18 years of age. Supporting
            documentation can include: - Welfare, veteran benefits, social security letter - Rental
            assistance voucher - Recent paystubs from your current employer - Self-employment proof
            - Alimony - Current pension or retirement income Assets This applies to all sources of
            assets including income for each member of your household over 18 years of age. Assets
            can include: - Checking account statements - Savings account statements - Real property
            - Investment accounts Refer to the property listing or the property's own application
            requirements or for more information about financial documents that will be required to
            determine eligibility.
          </Markdown>
        ),
      },
    ],
  }

  return {
    categories: [faqContentSection],
  }
}
