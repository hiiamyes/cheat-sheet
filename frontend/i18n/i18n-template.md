# i18n template

- Airtable: management
- Github: version control
- s3: deployment
- i18next + react-i18next: framework
  - https://react.i18next.com/
  - https://github.com/dotcore64/i18next-fetch-backend
  - https://github.com/i18next/i18next-browser-languageDetector

## Getting started

```
yarn add i18next react-i18next i18next-browser-languagedetector
```

```i18n.js
import i18n from "i18next";
import { initReactI18next } from "react-i18next";
import LanguageDetector from 'i18next-browser-languagedetector';

if (!i18n.isInitialized) {
  i18n.use(initReactI18next).use(LanguageDetector).init({
    fallbackLng: "en",
    ns: ["translations"],
    defaultNS: "translations",
    debug: process.env.NODE_ENV !== "production",
    interpolation: {
      escapeValue: false, // react already safes from xss
    },
    react: {
      wait: true,
    },
    resources: {
      zh: {
        translations: transactions_zh,
      },
      en: {
        translations: transactions_en,
      },
      id: {
        translations: transactions_id,
      },
      vi: {
        translations: transactions_vi,
      },
    },
  });
}
export default i18n;
```

## Airtable

| Key        | en      | zh-tw   | updated_at |
| ---------- | ------- | ------- | ---------- |
| home.title | Hiiiike | Hiiiike |            |

```

```

## Usage

```
import { useTranslation } from 'react-i18next';
function MyComponent () {
  const { t, i18n } = useTranslation();
  return <h1>{t('Welcome to React')}</h1>
}
```

## Async init
