;;; vhdl-lex.el --- tokenize VHDL files

;; Copyright (C) 2016 Sebastian Schueppel

;; This file is not part of GNU Emacs.

;; This program is free software: you can redistribute it and/or modify
;; it under the terms of the GNU General Public License as published by
;; the Free Software Foundation, either version 3 of the License, or
;; (at your option) any later version.

;; This program is distributed in the hope that it will be useful,
;; but WITHOUT ANY WARRANTY; without even the implied warranty of
;; MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
;; GNU General Public License for more details.

;; You should have received a copy of the GNU General Public License
;; along with this program.  If not, see <http://www.gnu.org/licenses/>.

;;; Commentary:

;; Taken a VHDL file it uses mostly regular expressions to tokenize the vhdl input
;; Potentially can be used by CEDET and one of the parser generators
;;
;; vhdl-lex depends on the cedet semantic library that should come with the latest emacs
;;
;; It does not support Extended Identifier!
;;
;; TODO More comments needed on how to use it within CEDET/SEMANTIC
;;
;; to lex a complete buffer execute the following within a VHDL buffer to get a
;; list of all tokens
;; (defun lex-buffer ()
;;      (semantic-lex-init)
;;      (setq semantic-lex-analyzer 'vhdl-lex-vhdl-lexer)
;;      (semantic-lex-buffer))

;;; Code:




(require 'semantic/lex)
;;(require 'semantic/wisent/vhdl-wy)
;; case-fold-search

(defmacro define-lex-string-type-case-insensitive-analyzer (name doc syntax matches default)
  "Define a string type analyzer NAME with DOC string.
SYNTAX is the regexp that matches a syntactic expression.
MATCHES is an alist of lexical elements used to refine the syntactic
expression. MATCHES is expeded to be lower case strings.
DEFAULT is the default lexical token returned when no MATCHES."
  (if matches
      (let* ((val (make-symbol "val"))
             (lst (make-symbol "lst"))
             (elt (make-symbol "elt"))
             (pos (make-symbol "pos"))
             (end (make-symbol "end"))
             (len (make-symbol "len")))
        `(define-lex-analyzer ,name
           ,doc
           (and (looking-at ,syntax)
                (let* ((,val (downcase (match-string 0)))
                       (,pos (match-beginning 0))
                       (,end (match-end 0))
                       (,len (- ,end ,pos))
                       (,lst ,matches)
                       ,elt)
                  (setq ,elt (rassoc ,val ,lst))
                  (when ,elt ;; Adjust token end position.
                    (setq ,elt (car ,elt)))
                  (semantic-lex-push-token
                   (semantic-lex-token (or ,elt ,default) ,pos ,end))))))))

;`(define-lex-simple-regex-analyzer ,name
;   ,doc
;   ,syntax ,default)
;))


(defun vhdl-lex--group (&rest args)
  "TODO docstring"
  (if (listp args)
      (concat "\\(" (mapconcat 'identity args "\\|") "\\)")
    (concat "\\(" (mapconcat 'identity (list args) "\\|") "\\)")))

;(defun vhdl-lex--any (&rest args)
;  "TODO docstring"
;  (concat (apply #'vhdl-lex--group args) "*"))

;(defun vhdl-lex--maybe (&rest args)
;  "TODO docstring"
;  (message args)
;  (concat (apply #'vhdl-lex--group args "?")))
;


(defconst vhdl-lex--binnum
  "[bB]\"[01]\\(_?[01]\\)*\""
  "binary number as defined in TODO <ADDREF>")

(defconst vhdl-lex--hexnum
  "[xX]\"[0-9a-fA-F]\\(_?[0-9a-fA-F]\\)*\""
  "hexadecimal number as defined in TODO <ADDREF>")

(defconst vhdl-lex--octnum
  "[oO]\"[0-7]\\(_?[0-7]\\)*\""
  "octal number as defined in TODO <ADDREF>")


(define-lex-regex-analyzer vhdl-lex-ignore-comments
  "detect and skip over comments"
  ;; starts with `-- and includes anything until the end of line
  "--[^\n\r]*"
  ;; Skip over the detected comment, do not create a token for it.
  (setq semantic-lex-end-point (match-end 0)))

(define-lex-simple-regex-analyzer vhdl-lex-bitstringliteral
  "detect bitstring literals and create BITSTRINGLITERAL token"
  (eval (vhdl-lex--group vhdl-lex--binnum vhdl-lex--hexnum vhdl-lex--octnum))
  'BITSTRINGLITERAL)



;(define-lex-simple-regex-analyzer vhdl-lex-identifier
;  "detect bitstring literals and create IDENTIFIER token"
;  "[A-Za-z]\\(_?[a-zA-Z0-9]\\)*"
;  'IDENTIFIER)
;; LRM 2002 excluding procedural and reference
(define-lex-string-type-case-insensitive-analyzer vhdl-lex-identifier
  "detect either and return either KEYWORDS or IDENTIFIERS"
  "[A-Za-z]\\(_?[a-zA-Z0-9]\\)*"
  '(( ABS .           "abs")
    ( ACCESS .        "access")
    ( AFTER .         "after")
    ( ALIAS .         "alias")
    ( ALL .           "all")
    ( AND .           "and")
    ( ARCHITECTURE .  "architecture")
    ( ARRAY .         "array")
    ( ASSERT .        "assert")
    ( ATTRIBUTE .     "attribute")
    ( BEGIN .         "begin")
    ( BLOCK .         "block")
    ( BODY .          "body")
    ( BUFFER .        "buffer")
    ( BUS .           "bus")
    ( CASE .          "case")
    ( COMPONENT .     "component")
    ( CONFIGURATION . "configuration")
    ( CONSTANT .      "constant")
    ( DISCONNECT .    "disconnect")
    ( DOWNTO .        "downto")
    ( ELSE .          "else")
    ( ELSIF .         "elsif")
    ( END .           "end")
    ( ENTITY .        "entity")
    ( EXIT .          "exit")
    ( FILE .          "file")
    ( FOR .           "for")
    ( FUNCTION .      "function")
    ( GENERATE .      "generate")
    ( GENERIC .       "generic")
    ( GROUP .         "group")
    ( GUARDED .       "guarded")
    ( IF .            "if")
    ( IMPURE .        "impure")
    ( IN .            "in")
    ( INERTIAL .      "inertial")
    ( INOUT .         "inout")
    ( IS .            "is")
    ( LABEL .         "label")
    ( LIBRARY .       "library")
    ( LINKAGE .       "linkage")
    ( LITERAL .       "literal")
    ( LOOP .          "loop")
    ( MAP .           "map")
    ( MOD .           "mod")
    ( NAND .          "nand")
    ( NEW .           "new")
    ( NEXT .          "next")
    ( NOR .           "nor")
    ( NOT .           "not")
    ( NULL .          "null")
    ( OF .            "of")
    ( ON .            "on")
    ( OPEN .          "open")
    ( OR .            "or")
    ( OTHERS .        "others")
    ( OUT .           "out")
    ( PACKAGE .       "package")
    ( PORT .          "port")
    ( POSTPONED .     "postponed")
    ( PROCEDURE .     "procedure")
    ( PROCESS .       "process")
    ( PROTECTED .     "protected")
    ( PURE .          "pure")
    ( RANGE .         "range")
    ( RECORD .        "record")
    ( REGISTER .      "register")
    ( REJECT .        "reject")
    ( REM .           "rem")
    ( REPORT .        "report")
    ( RETURN .        "return")
    ( ROL .           "rol")
    ( ROR .           "ror")
    ( SELECT .        "select")
    ( SEVERITY .      "severity")
    ( SHARED .        "shared")
    ( SIGNAL .        "signal")
    ( SLA .           "sla")
    ( SLL .           "sll")
    ( SRA .           "sra")
    ( SRL .           "srl")
    ( SUBTYPE .       "subtype")
    ( THEN .          "then")
    ( TO .            "to")
    ( TRANSPORT .     "transport")
    ( TYPE .          "type")
    ( UNAFFECTED .    "unaffected")
    ( UNITS .         "units")
    ( UNTIL .         "until")
    ( USE .           "use")
    ( VARIABLE .      "variable")
    ( WAIT .          "wait")
    ( WHEN .          "when")
    ( WHILE .         "while")
    ( WITH .          "with")
    ( XNOR .          "xnor")
    ( XOR .           "xor"))
  'IDENTIFIER)



(define-lex-regex-analyzer vhdl-lex-charliteral
  "detect character literals and create CHARLITERAL token"
  ;; http://www.eda-stds.org/isac/IRs-VHDL-93/IR1045.txt
  "'[^\n\r]'"
  (let ((last-token (car semantic-lex-token-stream)))
    ;;  (if last-token
    ;;      (message "%d .. %d" (semantic-lex-token-end last-token) (match-beginning 0)))
    (if (and last-token
             (eql (semantic-lex-token-end last-token) (match-beginning 0))
             (or
              (eq 'IDENTIFIER (semantic-lex-token-class last-token))
              (eq 'STRING (semantic-lex-token-class last-token))
              (eq 'CHARLITERAL (semantic-lex-token-class last-token))
              (eq 'RPAREN (semantic-lex-token-class last-token))
              (eq 'RSQUARE (semantic-lex-token-class last-token))))
        (progn
          (semantic-lex-push-token
           (semantic-lex-token 'TICK
                               (match-beginning 0)
                               (+ 1 (match-beginning 0))))
          (setq semantic-lex-end-point (+ 1 (match-beginning 0))))
      (semantic-lex-push-token
       (semantic-lex-token 'CHARLITERAL
                           (match-beginning 0)
                           (match-end 0))))))


(define-lex-string-type-case-insensitive-analyzer vhdl-lex-delimiter
  ;(define-lex-simple-regex-analyzer vhdl-lex-delimiter
  ;; regex foo is bad here
  ;; TODO define more delimiters as TOKEN type
  ;; first the ones that are 2 long followed by the single char ones
  "TODO docstring"
  (rx (or "=>" "**" ":=" "/=" ">=" "<=" "<>"
          (in "&'()*+,-./:;<=>|[]")))
  '(( ARROW .     "=>")
    ( EXPT .      "**")
    ( ASSIGN .    ":=")
    ( NEQ .       "/=")
    ( GE .        ">=")
    ( LE .        "<=")
    ( BOX .       "<>")
    ( AMP .       "&")
    ( TICK .      "'")
    ( LPAREN .    "(")
    ( RPAREN .    ")")
    ( MULT .      "*")
    ( PLUS .      "+")
    ( COMMA .     ",")
    ( MINUS .     "-")
    ( DOT .       ".")
    ( DIV .       "/")
    ( COLON  .    ":")
    ( SEMICOLON . ";")
    ( LT .        "<")
    ( EQ .        "=")
    ( GT .        ">")
    ( BAR .       "|")
    ( LSQUARE .   "[")
    ( RSQUARE .   "]"))
  'DELIMITER)

(define-lex-simple-regex-analyzer vhdl-lex-string
  "string"
  "\"\\(\"\"\\|[^\n\r\"]\\)*\""
  'STRING)

(defconst vhdl-lex--exponent
  "[eE][+-]?[0-9]\\(_?[0-9]\\)*"
  "regexp for an exponent")

(defconst vhdl-lex--integer
  "[0-9]\\(_?[0-9]\\)*"
  "regexp for an integer")
(defconst vhdl-lex--decimalliteral
  (concat vhdl-lex--integer
          (vhdl-lex--group (concat "\\." vhdl-lex--integer)) "?"
          (vhdl-lex--group vhdl-lex--exponent) "?"))

(defconst vhdl-lex--basedinteger
  "[0-9A-Fa-f]\\(_?[0-9A-Fa-f]\\)*")

; LRM supports based 2 to based 16
; no check is done to see if the characters use match the base
(defconst vhdl-lex--basedliteral
  (concat vhdl-lex--integer "#"
          vhdl-lex--basedinteger (vhdl-lex--group (concat "\\." vhdl-lex--integer)) "?" "#"
          (vhdl-lex--group "[eE][+]?[0-9]\\(_?[0-9]\\)*") "?" ))

(define-lex-simple-regex-analyzer vhdl-lex-abstractliteral
  "some doc"
  (eval (vhdl-lex--group vhdl-lex--basedliteral vhdl-lex--decimalliteral))
  'ABSTRACTLITERAL)

(define-lex vhdl-lex-vhdl-lexer
  "Bundleing all the lexical analyzers together. The order of those analyzers matters"
  semantic-lex-ignore-whitespace
  semantic-lex-ignore-newline
  vhdl-lex-ignore-comments

  vhdl-lex-bitstringliteral
  vhdl-lex-identifier
  vhdl-lex-charliteral
  vhdl-lex-delimiter
  vhdl-lex-string
  vhdl-lex-abstractliteral
  semantic-lex-default-action
  )

;(defun wisent-vhdl-default-setup ()
;  (wisent-vhdl-wy--install-parser)
;(setq semantic-lex-analyzer 'vhdl-lex-vhdl-lexer))

(provide 'vhdl-lex)


;;; vhdl-lex.el ends here
