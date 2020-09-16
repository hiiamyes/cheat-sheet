# coddddddde

- Airtable: management
- Github: version control
- s3: deployment
- i18next + react-i18next: framework

## Getting started

```
yarn add i18next react-i18next
```

```i18n.js
import i18n from "i18next";
import { initReactI18next } from "react-i18next";
if (!i18n.isInitialized) {
  i18n.use(initReactI18next).init({
    fallbackLng: "en",
    ns: ["translations"],
    defaultNS: "translations",
    debug: process.env.NODE_ENV !== "production",
    interpolation: {
      escapeValue: false, // not needed for react!!
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
