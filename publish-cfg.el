(require 'ox-publish)

(setq org-publish-project-alist
      '(
        ("vyrindar-notes"
         :base-directory "./src/"
         :base-extension "org"
         :publishing-function org-html-publish-to-html
         :publishing-directory "./dist/"
         :section-numbers t
         :table-of-contents t
         :recursive t
         :auto-sitemap t
         :sitemap-filename "Pages.org"
         :sitemap-title "Pages"
         :html-link-home "index.html"
         :html-head-include-default-style nil
         :html-head "<script type=\"text/javascript\" src=\"app.bundle.js\"></script>"
         :html-postamble t
         :html-postamble-format (("en"
                                 "<p class=\"author\">Author: %a (%e)</p>
<p class=\"date\">Date: %d</p>
<p class=\"creator\">%c</p>
<p class=\"validation\">%v</p>
<p><a id=\"source\" href=\"https://github.com/InkBrownell/vyrindar-notes\">Source</a></p>")))

        ("vyrindar-static"
         :base-directory "./src/"
         :base-extension "png\\|jpg\\|gif\\|pdf\\|mp3\\|ogg\\|swf"
         :publishing-directory "./dist/"
         :recursive t
         :publishing-function org-publish-attachment)

        ("vyrindar" :components ("vyrindar-notes" "vyrindar-static"))))
