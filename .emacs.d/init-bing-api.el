(add-to-list 'load-path (concat plugin-path "bingapiel"))
;; Your bing api client_id.
(defvar bingapi-clientid "667f3adb-e22d-4dca-b476-ca536c0a6d8a")
;; Your bing api client_secret.
(defvar bingapi-clientsecret "xBTJ5Ee5RSFf++uVjSVKVFcsoswQlDyb8kPp5wSyrV8=")
;; list all language codes may be used
(defvar bingtranslate-language-list '("en" "zh-CHS" "ja"))
;; Turn auto detect language code on
(defvar bingtranslate-auto-detect t)

(require 'bing-translate)
;; key bounding
(global-set-key [M-f3] 'bingtranslate-region-or-input)
;; add a pair of language
;; Parameters: "pair name" "from language" "to language"
(bingtranslate-add-pair "1" "zh-CHS" "ja")


(provide bingapiel)
