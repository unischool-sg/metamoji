.class public Lcom/metamoji/cv/xml/text/CvTextSubconverterUtils;
.super Ljava/lang/Object;
.source "CvTextSubconverterUtils.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static addParagraphStyleAttribute(Lorg/w3c/dom/Element;Lcom/metamoji/un/text/model/paragstyle/MutableParagraphStyle;)V
    .locals 4

    .line 317
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 318
    invoke-static {p1, v0}, Lcom/metamoji/un/text/DataUtil;->putStyleOfMMJEdRichTextParagraph(Lcom/metamoji/un/text/model/paragstyle/ParagraphStyle;Ljava/util/Map;)V

    .line 321
    const-string p1, "text-align"

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    const-class v1, Ljava/lang/String;

    invoke-static {p1, v1}, Lcom/metamoji/cm/CmUtils;->as(Ljava/lang/Object;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    if-eqz p1, :cond_0

    .line 323
    const-string v1, "align"

    invoke-interface {p0, v1, p1}, Lorg/w3c/dom/Element;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 326
    :cond_0
    const-string p1, "list-type"

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    if-eqz v1, :cond_1

    .line 328
    invoke-interface {p0, p1, v1}, Lorg/w3c/dom/Element;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 331
    :cond_1
    const-string p1, "list-mark"

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    if-eqz v1, :cond_2

    .line 333
    invoke-interface {p0, p1, v1}, Lorg/w3c/dom/Element;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 336
    :cond_2
    const-string p1, "list-style-type"

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    if-eqz v1, :cond_3

    .line 338
    invoke-interface {p0, p1, v1}, Lorg/w3c/dom/Element;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 341
    :cond_3
    const-string p1, "list-level"

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    if-eqz v1, :cond_4

    .line 343
    invoke-interface {p0, p1, v1}, Lorg/w3c/dom/Element;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 346
    :cond_4
    const-string p1, "tag-id"

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    if-eqz v1, :cond_5

    .line 348
    invoke-interface {p0, p1, v1}, Lorg/w3c/dom/Element;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 351
    :cond_5
    const-string p1, "author-info"

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/Map;

    if-eqz p1, :cond_8

    .line 353
    sget-object v0, Lcom/metamoji/un/text/util/NtAuthorInfoUtil;->UNDODATAKEY_PLIST_AI_USERID:Ljava/lang/String;

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    if-eqz v0, :cond_6

    .line 355
    const-string v1, "creator"

    invoke-interface {p0, v1, v0}, Lorg/w3c/dom/Element;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 357
    :cond_6
    sget-object v0, Lcom/metamoji/un/text/util/NtAuthorInfoUtil;->UNDODATAKEY_PLIST_AI_ROOMID:Ljava/lang/String;

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    if-eqz v0, :cond_7

    .line 359
    const-string v1, "collaboration-room"

    invoke-interface {p0, v1, v0}, Lorg/w3c/dom/Element;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 361
    :cond_7
    sget-object v0, Lcom/metamoji/un/text/util/NtAuthorInfoUtil;->UNDODATAKEY_PLIST_AI_ACTIONTIME:Ljava/lang/String;

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    invoke-static {p1}, Lcom/metamoji/cm/CmUtils;->toDouble(Ljava/lang/Object;)Ljava/lang/Double;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmpl-double p1, v2, v0

    if-eqz p1, :cond_8

    .line 363
    const-string p1, "creation-time"

    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p0, p1, v0}, Lorg/w3c/dom/Element;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    :cond_8
    return-void
.end method

.method public static generateAttrElement(Lorg/w3c/dom/Document;Lcom/metamoji/un/text/model/attr/StringAttributes;Ljava/lang/String;)Lorg/w3c/dom/Element;
    .locals 3

    .line 272
    const-string v0, "char-format"

    invoke-interface {p0, p2, v0}, Lorg/w3c/dom/Document;->createElementNS(Ljava/lang/String;Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object p0

    .line 274
    invoke-virtual {p1}, Lcom/metamoji/un/text/model/attr/StringAttributes;->isUseFontWeight()Z

    move-result p2

    const/4 v0, 0x1

    if-eqz p2, :cond_0

    invoke-virtual {p1}, Lcom/metamoji/un/text/model/attr/StringAttributes;->getFontWeight()I

    move-result p2

    const/16 v1, 0x190

    if-le p2, v1, :cond_0

    .line 275
    const-string p2, "font-weight"

    const-string v1, "bold"

    invoke-interface {p0, p2, v1}, Lorg/w3c/dom/Element;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    move p2, v0

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    .line 278
    :goto_0
    invoke-virtual {p1}, Lcom/metamoji/un/text/model/attr/StringAttributes;->isItalic()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 279
    const-string p2, "font-style"

    const-string v1, "italic"

    invoke-interface {p0, p2, v1}, Lorg/w3c/dom/Element;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    move p2, v0

    .line 282
    :cond_1
    invoke-virtual {p1}, Lcom/metamoji/un/text/model/attr/StringAttributes;->isStrikeout()Z

    move-result v1

    const-string v2, "true"

    if-eqz v1, :cond_2

    .line 283
    const-string p2, "strikeout"

    invoke-interface {p0, p2, v2}, Lorg/w3c/dom/Element;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    move p2, v0

    .line 286
    :cond_2
    invoke-virtual {p1}, Lcom/metamoji/un/text/model/attr/StringAttributes;->isUnderline()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 287
    const-string p2, "underline"

    invoke-interface {p0, p2, v2}, Lorg/w3c/dom/Element;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    move p2, v0

    .line 290
    :cond_3
    invoke-virtual {p1}, Lcom/metamoji/un/text/model/attr/StringAttributes;->isUseColor()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 291
    invoke-virtual {p1}, Lcom/metamoji/un/text/model/attr/StringAttributes;->getColor()Lcom/metamoji/un/text/model/ColorComponent;

    move-result-object p2

    invoke-virtual {p2}, Lcom/metamoji/un/text/model/ColorComponent;->getUIColor()I

    move-result p2

    invoke-static {p2}, Lcom/metamoji/un/text/DataUtil;->createCSSRgbaColorStringFromUIColor(I)Ljava/lang/String;

    move-result-object p2

    const-string v1, "color"

    invoke-interface {p0, v1, p2}, Lorg/w3c/dom/Element;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    move p2, v0

    .line 294
    :cond_4
    invoke-virtual {p1}, Lcom/metamoji/un/text/model/attr/StringAttributes;->isUseBackgroundColor()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 295
    invoke-virtual {p1}, Lcom/metamoji/un/text/model/attr/StringAttributes;->getBackgroundColor()Lcom/metamoji/un/text/model/ColorComponent;

    move-result-object p2

    invoke-virtual {p2}, Lcom/metamoji/un/text/model/ColorComponent;->getUIColor()I

    move-result p2

    invoke-static {p2}, Lcom/metamoji/un/text/DataUtil;->createCSSRgbaColorStringFromUIColor(I)Ljava/lang/String;

    move-result-object p2

    const-string v1, "background-color"

    invoke-interface {p0, v1, p2}, Lorg/w3c/dom/Element;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    move p2, v0

    .line 298
    :cond_5
    invoke-virtual {p1}, Lcom/metamoji/un/text/model/attr/StringAttributes;->isUseFontSize()Z

    move-result v1

    if-eqz v1, :cond_6

    .line 299
    invoke-virtual {p1}, Lcom/metamoji/un/text/model/attr/StringAttributes;->getFontSize()F

    move-result p2

    invoke-static {p2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p2

    filled-new-array {p2}, [Ljava/lang/Object;

    move-result-object p2

    const-string v1, "%fpx"

    invoke-static {v1, p2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    const-string v1, "font-size"

    invoke-interface {p0, v1, p2}, Lorg/w3c/dom/Element;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    move p2, v0

    .line 302
    :cond_6
    invoke-virtual {p1}, Lcom/metamoji/un/text/model/attr/StringAttributes;->getFontName()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_7

    .line 303
    const-string p2, "font-family"

    invoke-virtual {p1}, Lcom/metamoji/un/text/model/attr/StringAttributes;->getFontName()Ljava/lang/String;

    move-result-object p1

    invoke-interface {p0, p2, p1}, Lorg/w3c/dom/Element;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :cond_7
    move v0, p2

    :goto_1
    if-nez v0, :cond_8

    const/4 p0, 0x0

    :cond_8
    return-object p0
.end method

.method public static generateStringWsElementInto(Lorg/w3c/dom/Element;Ljava/util/List;Ljava/lang/String;)V
    .locals 22
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/w3c/dom/Element;",
            "Ljava/util/List<",
            "Lcom/metamoji/un/text/model/stringws/StringWithStrokes;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    .line 47
    invoke-interface {v0}, Lorg/w3c/dom/Element;->getOwnerDocument()Lorg/w3c/dom/Document;

    move-result-object v2

    .line 48
    const-string v3, "p"

    invoke-interface {v2, v1, v3}, Lorg/w3c/dom/Document;->createElementNS(Ljava/lang/String;Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v4

    .line 55
    const-string v5, "([^\r\n\u2028]*)(\n|\r|\r\n|\u2028)*"

    invoke-static {v5}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v5

    .line 57
    invoke-interface/range {p1 .. p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    const/4 v8, 0x0

    const/4 v9, 0x0

    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_10

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/metamoji/un/text/model/stringws/ImmutableStringWithStrokes;

    if-nez v9, :cond_0

    .line 60
    invoke-virtual {v10}, Lcom/metamoji/un/text/model/stringws/ImmutableStringWithStrokes;->getParagraphStyle()Lcom/metamoji/un/text/model/paragstyle/MutableParagraphStyle;

    move-result-object v9

    invoke-static {v4, v9}, Lcom/metamoji/cv/xml/text/CvTextSubconverterUtils;->addParagraphStyleAttribute(Lorg/w3c/dom/Element;Lcom/metamoji/un/text/model/paragstyle/MutableParagraphStyle;)V

    const/4 v9, 0x1

    .line 63
    :cond_0
    invoke-virtual {v10}, Lcom/metamoji/un/text/model/stringws/ImmutableStringWithStrokes;->hasStrokes()Z

    move-result v12

    if-eqz v12, :cond_1

    .line 65
    invoke-static {v4, v10, v1}, Lcom/metamoji/cv/xml/text/CvTextSubconverterUtils;->generateStrokeElement(Lorg/w3c/dom/Element;Lcom/metamoji/un/text/model/stringws/ImmutableStringWithStrokes;Ljava/lang/String;)V

    move-object/from16 v17, v5

    move-object/from16 v18, v6

    const/4 v8, 0x1

    goto/16 :goto_9

    .line 67
    :cond_1
    invoke-virtual {v10}, Lcom/metamoji/un/text/model/stringws/ImmutableStringWithStrokes;->hasString()Z

    move-result v12

    if-eqz v12, :cond_f

    .line 69
    invoke-virtual {v10}, Lcom/metamoji/un/text/model/stringws/ImmutableStringWithStrokes;->getStringAndAttributeRunArray()Ljava/util/List;

    move-result-object v10

    .line 70
    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v12

    const/4 v13, 0x0

    :goto_1
    if-ge v13, v12, :cond_e

    .line 71
    invoke-interface {v10, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/metamoji/un/text/model/stringws/StringAndAttribute;

    .line 72
    iget-object v15, v14, Lcom/metamoji/un/text/model/stringws/StringAndAttribute;->text:Ljava/lang/String;

    invoke-virtual {v5, v15}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v15

    .line 73
    :goto_2
    invoke-virtual {v15}, Ljava/util/regex/Matcher;->find()Z

    move-result v16

    if-eqz v16, :cond_c

    invoke-virtual {v15}, Ljava/util/regex/Matcher;->groupCount()I

    move-result v7

    const/4 v11, 0x2

    if-ne v7, v11, :cond_c

    .line 74
    invoke-virtual {v15, v11}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v7

    if-eqz v7, :cond_a

    .line 75
    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v7

    if-lez v7, :cond_a

    const/4 v7, 0x1

    .line 78
    invoke-virtual {v15, v7}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v11

    if-eqz v11, :cond_2

    .line 80
    invoke-virtual {v11}, Ljava/lang/String;->length()I

    move-result v7

    if-lez v7, :cond_2

    .line 81
    invoke-interface {v2, v11}, Lorg/w3c/dom/Document;->createTextNode(Ljava/lang/String;)Lorg/w3c/dom/Text;

    move-result-object v7

    move-object/from16 v17, v5

    .line 82
    iget-object v5, v14, Lcom/metamoji/un/text/model/stringws/StringAndAttribute;->attributes:Lcom/metamoji/un/text/model/attr/StringAttributes;

    invoke-static {v2, v5, v1}, Lcom/metamoji/cv/xml/text/CvTextSubconverterUtils;->generateAttrElement(Lorg/w3c/dom/Document;Lcom/metamoji/un/text/model/attr/StringAttributes;Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v5

    if-eqz v5, :cond_3

    .line 84
    invoke-static {v5, v7}, Lcom/metamoji/cv/xml/text/CvTextSubconverterUtils;->safeAppendChild(Lorg/w3c/dom/Node;Lorg/w3c/dom/Node;)V

    goto :goto_3

    :cond_2
    move-object/from16 v17, v5

    .line 89
    iget-object v5, v14, Lcom/metamoji/un/text/model/stringws/StringAndAttribute;->attributes:Lcom/metamoji/un/text/model/attr/StringAttributes;

    invoke-static {v2, v5, v1}, Lcom/metamoji/cv/xml/text/CvTextSubconverterUtils;->generateAttrElement(Lorg/w3c/dom/Document;Lcom/metamoji/un/text/model/attr/StringAttributes;Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v5

    .line 93
    :cond_3
    :goto_3
    const-string v7, "br"

    invoke-interface {v2, v1, v7}, Lorg/w3c/dom/Document;->createElementNS(Ljava/lang/String;Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v7

    move-object/from16 v18, v6

    if-eqz v5, :cond_5

    .line 99
    invoke-interface {v5}, Lorg/w3c/dom/Element;->getAttributes()Lorg/w3c/dom/NamedNodeMap;

    move-result-object v6

    move/from16 v19, v8

    move/from16 v20, v9

    if-eqz v6, :cond_6

    const/4 v8, 0x0

    .line 101
    :goto_4
    invoke-interface {v6}, Lorg/w3c/dom/NamedNodeMap;->getLength()I

    move-result v9

    if-ge v8, v9, :cond_6

    .line 102
    invoke-interface {v6, v8}, Lorg/w3c/dom/NamedNodeMap;->item(I)Lorg/w3c/dom/Node;

    move-result-object v9

    move-object/from16 v21, v6

    const-class v6, Lorg/w3c/dom/Attr;

    invoke-static {v9, v6}, Lcom/metamoji/cm/CmUtils;->as(Ljava/lang/Object;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lorg/w3c/dom/Attr;

    if-eqz v6, :cond_4

    .line 104
    invoke-interface {v6}, Lorg/w3c/dom/Attr;->getNodeName()Ljava/lang/String;

    move-result-object v9

    invoke-interface {v6}, Lorg/w3c/dom/Attr;->getNodeValue()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v7, v9, v6}, Lorg/w3c/dom/Element;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    :cond_4
    add-int/lit8 v8, v8, 0x1

    move-object/from16 v6, v21

    goto :goto_4

    :cond_5
    move/from16 v19, v8

    move/from16 v20, v9

    :cond_6
    if-eqz v11, :cond_8

    .line 111
    invoke-virtual {v11}, Ljava/lang/String;->length()I

    move-result v6

    if-lez v6, :cond_8

    if-eqz v5, :cond_7

    .line 113
    invoke-static {v4, v5}, Lcom/metamoji/cv/xml/text/CvTextSubconverterUtils;->safeAppendChild(Lorg/w3c/dom/Node;Lorg/w3c/dom/Node;)V

    goto :goto_5

    .line 115
    :cond_7
    invoke-interface {v2, v11}, Lorg/w3c/dom/Document;->createTextNode(Ljava/lang/String;)Lorg/w3c/dom/Text;

    move-result-object v5

    .line 116
    invoke-static {v4, v5}, Lcom/metamoji/cv/xml/text/CvTextSubconverterUtils;->safeAppendChild(Lorg/w3c/dom/Node;Lorg/w3c/dom/Node;)V

    .line 132
    :cond_8
    :goto_5
    invoke-static {v4, v7}, Lcom/metamoji/cv/xml/text/CvTextSubconverterUtils;->safeAppendChild(Lorg/w3c/dom/Node;Lorg/w3c/dom/Node;)V

    const/4 v5, 0x2

    .line 137
    invoke-virtual {v15, v5}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v5

    .line 138
    sget-object v6, Lcom/metamoji/un/text/model/TextModel;->UNICODE_LINE_SEPARATOR_STRING:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_9

    .line 140
    invoke-static {v0, v4}, Lcom/metamoji/cv/xml/text/CvTextSubconverterUtils;->safeAppendChild(Lorg/w3c/dom/Node;Lorg/w3c/dom/Node;)V

    .line 144
    invoke-interface {v2, v1, v3}, Lorg/w3c/dom/Document;->createElementNS(Ljava/lang/String;Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v4

    const/4 v8, 0x0

    const/4 v9, 0x0

    goto :goto_6

    :cond_9
    move/from16 v8, v19

    move/from16 v9, v20

    :goto_6
    move-object/from16 v5, v17

    move-object/from16 v6, v18

    goto/16 :goto_2

    :cond_a
    move-object/from16 v17, v5

    move-object/from16 v18, v6

    move/from16 v19, v8

    move/from16 v20, v9

    const/4 v7, 0x1

    .line 149
    invoke-virtual {v15, v7}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_d

    .line 150
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v6

    if-lez v6, :cond_d

    .line 151
    invoke-interface {v2, v5}, Lorg/w3c/dom/Document;->createTextNode(Ljava/lang/String;)Lorg/w3c/dom/Text;

    move-result-object v5

    .line 152
    iget-object v6, v14, Lcom/metamoji/un/text/model/stringws/StringAndAttribute;->attributes:Lcom/metamoji/un/text/model/attr/StringAttributes;

    invoke-static {v2, v6, v1}, Lcom/metamoji/cv/xml/text/CvTextSubconverterUtils;->generateAttrElement(Lorg/w3c/dom/Document;Lcom/metamoji/un/text/model/attr/StringAttributes;Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v6

    if-eqz v6, :cond_b

    .line 154
    invoke-static {v6, v5}, Lcom/metamoji/cv/xml/text/CvTextSubconverterUtils;->safeAppendChild(Lorg/w3c/dom/Node;Lorg/w3c/dom/Node;)V

    .line 155
    invoke-static {v4, v6}, Lcom/metamoji/cv/xml/text/CvTextSubconverterUtils;->safeAppendChild(Lorg/w3c/dom/Node;Lorg/w3c/dom/Node;)V

    goto :goto_7

    .line 159
    :cond_b
    invoke-static {v4, v5}, Lcom/metamoji/cv/xml/text/CvTextSubconverterUtils;->safeAppendChild(Lorg/w3c/dom/Node;Lorg/w3c/dom/Node;)V

    :goto_7
    move v8, v7

    goto :goto_8

    :cond_c
    move-object/from16 v17, v5

    move-object/from16 v18, v6

    move/from16 v19, v8

    move/from16 v20, v9

    const/4 v7, 0x1

    :cond_d
    move/from16 v8, v19

    :goto_8
    add-int/lit8 v13, v13, 0x1

    move-object/from16 v5, v17

    move-object/from16 v6, v18

    move/from16 v9, v20

    goto/16 :goto_1

    :cond_e
    move-object/from16 v17, v5

    move-object/from16 v18, v6

    goto :goto_9

    :cond_f
    move-object/from16 v17, v5

    move-object/from16 v18, v6

    .line 169
    invoke-static {v0, v4}, Lcom/metamoji/cv/xml/text/CvTextSubconverterUtils;->safeAppendChild(Lorg/w3c/dom/Node;Lorg/w3c/dom/Node;)V

    const/4 v8, 0x0

    :goto_9
    move-object/from16 v5, v17

    move-object/from16 v6, v18

    goto/16 :goto_0

    :cond_10
    if-eqz v8, :cond_11

    .line 174
    invoke-static {v0, v4}, Lcom/metamoji/cv/xml/text/CvTextSubconverterUtils;->safeAppendChild(Lorg/w3c/dom/Node;Lorg/w3c/dom/Node;)V

    :cond_11
    return-void
.end method

.method private static generateStrokeElement(Lorg/w3c/dom/Element;Lcom/metamoji/un/text/model/stringws/ImmutableStringWithStrokes;Ljava/lang/String;)V
    .locals 10

    .line 194
    invoke-interface {p0}, Lorg/w3c/dom/Element;->getOwnerDocument()Lorg/w3c/dom/Document;

    move-result-object v0

    .line 195
    const-string v1, "stroke"

    invoke-interface {v0, p2, v1}, Lorg/w3c/dom/Document;->createElementNS(Ljava/lang/String;Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v1

    .line 198
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 199
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 201
    invoke-virtual {p1}, Lcom/metamoji/un/text/model/stringws/ImmutableStringWithStrokes;->getStrokes()Ljava/util/List;

    move-result-object v4

    .line 202
    invoke-virtual {p1}, Lcom/metamoji/un/text/model/stringws/ImmutableStringWithStrokes;->getStrokeAttributes()Ljava/util/List;

    move-result-object v5

    const/4 v6, 0x0

    move v7, v6

    .line 203
    :goto_0
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v8

    if-ge v7, v8, :cond_0

    .line 204
    invoke-interface {v4, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/metamoji/mazecclient/stroke/IHandwriteStrokes;

    .line 205
    invoke-interface {v5, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/metamoji/un/text/model/attr/StrokeAttributes;

    .line 207
    invoke-static {v8}, Lcom/metamoji/un/text/DataUtil;->createMMJEdRichTextHandwriteStrokes(Lcom/metamoji/mazecclient/stroke/IHandwriteStrokes;)Ljava/util/Map;

    move-result-object v8

    invoke-virtual {v2, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 209
    invoke-static {v9}, Lcom/metamoji/un/text/DataUtil;->createMMJEdRichTextWithStrokesPartStrokeAttributesItem(Lcom/metamoji/un/text/model/attr/StrokeAttributes;)Ljava/util/Map;

    move-result-object v8

    invoke-virtual {v3, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    .line 215
    :cond_0
    new-instance v4, Ljava/util/HashMap;

    const/4 v5, 0x2

    invoke-direct {v4, v5}, Ljava/util/HashMap;-><init>(I)V

    .line 216
    const-string v5, "m_handwriteStrokes"

    invoke-virtual {v4, v5, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 217
    const-string v2, "m_strokeAttributes"

    invoke-virtual {v4, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 222
    :try_start_0
    invoke-static {v4}, Lcom/metamoji/cm/CmJson;->createJsonFromMap(Ljava/util/Map;)Lorg/json/JSONObject;

    move-result-object v2
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 227
    invoke-virtual {v2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v2

    .line 228
    const-string v3, "stroke/strk"

    const-string v4, "json"

    const-string v5, "data"

    filled-new-array {v5, v3, v4, v2}, [Ljava/lang/Object;

    move-result-object v2

    const-string v3, "%s:%s;%s,%s"

    invoke-static {v3, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 238
    invoke-virtual {p1}, Lcom/metamoji/un/text/model/stringws/ImmutableStringWithStrokes;->hasString()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 239
    invoke-virtual {p1}, Lcom/metamoji/un/text/model/stringws/ImmutableStringWithStrokes;->getStringAndAttributeRunArray()Ljava/util/List;

    move-result-object v3

    .line 240
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v4

    :goto_1
    if-ge v6, v4, :cond_3

    .line 241
    invoke-interface {v3, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/metamoji/un/text/model/stringws/StringAndAttribute;

    .line 242
    iget-object v7, v5, Lcom/metamoji/un/text/model/stringws/StringAndAttribute;->text:Ljava/lang/String;

    .line 243
    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v8

    if-lez v8, :cond_2

    .line 244
    iget-object v5, v5, Lcom/metamoji/un/text/model/stringws/StringAndAttribute;->attributes:Lcom/metamoji/un/text/model/attr/StringAttributes;

    invoke-static {v0, v5, p2}, Lcom/metamoji/cv/xml/text/CvTextSubconverterUtils;->generateAttrElement(Lorg/w3c/dom/Document;Lcom/metamoji/un/text/model/attr/StringAttributes;Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v5

    if-eqz v5, :cond_1

    .line 246
    invoke-interface {v0, v7}, Lorg/w3c/dom/Document;->createTextNode(Ljava/lang/String;)Lorg/w3c/dom/Text;

    move-result-object v7

    invoke-interface {v5, v7}, Lorg/w3c/dom/Element;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    .line 247
    invoke-interface {v1, v5}, Lorg/w3c/dom/Element;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    goto :goto_2

    .line 249
    :cond_1
    invoke-interface {v0, v7}, Lorg/w3c/dom/Document;->createTextNode(Ljava/lang/String;)Lorg/w3c/dom/Text;

    move-result-object v5

    invoke-interface {v1, v5}, Lorg/w3c/dom/Element;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    :cond_2
    :goto_2
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    .line 254
    :cond_3
    const-string v3, "src"

    invoke-interface {v1, v3, v2}, Lorg/w3c/dom/Element;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 257
    const-string v2, "render-strokes"

    invoke-interface {v0, p2, v2}, Lorg/w3c/dom/Document;->createElementNS(Ljava/lang/String;Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object p2

    .line 258
    invoke-virtual {p1}, Lcom/metamoji/un/text/model/stringws/ImmutableStringWithStrokes;->isRenderStrokes()Z

    move-result p1

    if-eqz p1, :cond_4

    .line 259
    const-string p1, "true"

    invoke-interface {p2, v2, p1}, Lorg/w3c/dom/Element;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3

    .line 261
    :cond_4
    const-string p1, "false"

    invoke-interface {p2, v2, p1}, Lorg/w3c/dom/Element;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 263
    :goto_3
    invoke-interface {v1, p2}, Lorg/w3c/dom/Element;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    .line 264
    invoke-interface {p0, v1}, Lorg/w3c/dom/Element;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    return-void

    :catch_0
    move-exception p0

    .line 224
    invoke-static {p0}, Lcom/metamoji/cm/CmLog;->error(Ljava/lang/Throwable;)V

    .line 225
    new-instance p1, Lcom/metamoji/cm/CmException;

    const-string p2, "json error"

    invoke-direct {p1, p2, p0}, Lcom/metamoji/cm/CmException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p1
.end method

.method static parseCharFormatElement(Lorg/w3c/dom/Element;Lcom/metamoji/un/text/model/stringws/StringWithStrokes;Ljava/lang/String;)Z
    .locals 7

    .line 571
    invoke-static {p0}, Lcom/metamoji/cv/xml/text/CvTextSubconverterUtils;->parseCharStyleElement(Lorg/w3c/dom/Element;)Lcom/metamoji/un/text/model/attr/StringAttributes;

    move-result-object v0

    .line 572
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 574
    invoke-interface {p0}, Lorg/w3c/dom/Element;->getChildNodes()Lorg/w3c/dom/NodeList;

    move-result-object p0

    const/4 v2, 0x0

    move v3, v2

    move v4, v3

    .line 575
    :goto_0
    invoke-interface {p0}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v5

    if-ge v3, v5, :cond_2

    .line 576
    invoke-interface {p0, v3}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v5

    .line 577
    instance-of v6, v5, Lorg/w3c/dom/Text;

    if-eqz v6, :cond_0

    .line 579
    invoke-interface {v5}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move v4, v2

    goto :goto_1

    .line 581
    :cond_0
    instance-of v6, v5, Lorg/w3c/dom/Element;

    if-eqz v6, :cond_1

    .line 583
    invoke-interface {v5}, Lorg/w3c/dom/Node;->getNamespaceURI()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 585
    invoke-interface {v5}, Lorg/w3c/dom/Node;->getLocalName()Ljava/lang/String;

    move-result-object v5

    const-string v6, "br"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 586
    const-string v4, "\n"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v4, 0x1

    :cond_1
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 593
    :cond_2
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    move-result p0

    .line 594
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2, p0}, Ljava/util/ArrayList;-><init>(I)V

    move v3, v2

    :goto_2
    if-ge v3, p0, :cond_3

    .line 596
    invoke-virtual {p2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    :cond_3
    const/4 p0, 0x0

    .line 599
    invoke-virtual {p1, v1, p2, p0, v2}, Lcom/metamoji/un/text/model/stringws/StringWithStrokes;->appendString(Ljava/lang/CharSequence;Ljava/util/List;Lcom/metamoji/un/text/model/undo/ITextUndoManager;I)V

    return v4
.end method

.method static parseCharStyleElement(Lorg/w3c/dom/Element;)Lcom/metamoji/un/text/model/attr/StringAttributes;
    .locals 5

    .line 610
    new-instance v0, Lcom/metamoji/un/text/model/attr/MutableStringAttributes;

    invoke-direct {v0}, Lcom/metamoji/un/text/model/attr/MutableStringAttributes;-><init>()V

    .line 613
    const-string v1, "font-family"

    invoke-interface {p0, v1}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 614
    invoke-static {v1}, Lcom/metamoji/cv/xml/XmlUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 616
    invoke-virtual {v0, v1}, Lcom/metamoji/un/text/model/attr/MutableStringAttributes;->setFontName(Ljava/lang/String;)V

    .line 621
    :cond_0
    const-string v1, "font-weight"

    invoke-interface {p0, v1}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 622
    invoke-static {v1}, Lcom/metamoji/cv/xml/XmlUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 623
    const-string v2, "bold"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/16 v1, 0x2bc

    .line 624
    invoke-virtual {v0, v1}, Lcom/metamoji/un/text/model/attr/MutableStringAttributes;->setFontWeight(I)V

    .line 628
    :cond_1
    const-string v1, "font-size"

    invoke-interface {p0, v1}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 629
    invoke-static {v1}, Lcom/metamoji/cv/xml/XmlUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 632
    invoke-static {v1}, Lcom/metamoji/cm/CmUtils;->extractDoubleFromString(Ljava/lang/String;)Ljava/lang/Double;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 634
    invoke-virtual {v1}, Ljava/lang/Double;->floatValue()F

    move-result v1

    invoke-virtual {v0, v1}, Lcom/metamoji/un/text/model/attr/MutableStringAttributes;->setFontSize(F)V

    .line 638
    :cond_2
    const-string v1, "font-style"

    invoke-interface {p0, v1}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 639
    invoke-static {v1}, Lcom/metamoji/cv/xml/XmlUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v2

    const/4 v3, 0x1

    if-nez v2, :cond_3

    .line 640
    const-string v2, "italic"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 642
    invoke-virtual {v0, v3}, Lcom/metamoji/un/text/model/attr/MutableStringAttributes;->setItalic(Z)V

    .line 646
    :cond_3
    const-string v1, "strikeout"

    invoke-interface {p0, v1}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 647
    invoke-static {v1}, Lcom/metamoji/cv/xml/XmlUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v2

    const-string v4, "true"

    if-nez v2, :cond_4

    .line 648
    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 650
    invoke-virtual {v0, v3}, Lcom/metamoji/un/text/model/attr/MutableStringAttributes;->setStrikeout(Z)V

    .line 654
    :cond_4
    const-string v1, "underline"

    invoke-interface {p0, v1}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 655
    invoke-static {v1}, Lcom/metamoji/cv/xml/XmlUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_5

    .line 656
    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 658
    invoke-virtual {v0, v3}, Lcom/metamoji/un/text/model/attr/MutableStringAttributes;->setUnderline(Z)V

    .line 662
    :cond_5
    const-string v1, "color"

    invoke-interface {p0, v1}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 664
    invoke-static {v1}, Lcom/metamoji/cv/xml/XmlUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_6

    .line 665
    invoke-static {v1}, Lcom/metamoji/cm/ColorUtils;->parseColor(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    if-eqz v1, :cond_6

    .line 667
    new-instance v2, Lcom/metamoji/un/text/model/ColorComponent;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-direct {v2, v1}, Lcom/metamoji/un/text/model/ColorComponent;-><init>(I)V

    invoke-virtual {v0, v2}, Lcom/metamoji/un/text/model/attr/MutableStringAttributes;->setColor(Lcom/metamoji/un/text/model/ColorComponent;)V

    .line 671
    :cond_6
    const-string v1, "background-color"

    invoke-interface {p0, v1}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 672
    invoke-static {p0}, Lcom/metamoji/cv/xml/XmlUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_7

    .line 673
    invoke-static {p0}, Lcom/metamoji/cm/ColorUtils;->parseColor(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object p0

    if-eqz p0, :cond_7

    .line 675
    new-instance v1, Lcom/metamoji/un/text/model/ColorComponent;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    invoke-direct {v1, p0}, Lcom/metamoji/un/text/model/ColorComponent;-><init>(I)V

    invoke-virtual {v0, v1}, Lcom/metamoji/un/text/model/attr/MutableStringAttributes;->setBackgroundColor(Lcom/metamoji/un/text/model/ColorComponent;)V

    :cond_7
    return-object v0
.end method

.method static parseParagraphAttribute(Lorg/w3c/dom/Element;)Lcom/metamoji/un/text/model/paragstyle/MutableParagraphStyle;
    .locals 4

    .line 730
    new-instance v0, Lcom/metamoji/un/text/model/paragstyle/MutableParagraphStyle;

    invoke-direct {v0}, Lcom/metamoji/un/text/model/paragstyle/MutableParagraphStyle;-><init>()V

    .line 732
    const-string v1, "align"

    invoke-interface {p0, v1}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 733
    invoke-static {v1}, Lcom/metamoji/cv/xml/XmlUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 734
    const-string v2, "center"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 735
    sget-object v1, Lcom/metamoji/un/text/model/paragstyle/ParagraphStyle$Align;->Centering:Lcom/metamoji/un/text/model/paragstyle/ParagraphStyle$Align;

    invoke-virtual {v0, v1}, Lcom/metamoji/un/text/model/paragstyle/MutableParagraphStyle;->setAlign(Lcom/metamoji/un/text/model/paragstyle/ParagraphStyle$Align;)V

    goto :goto_0

    .line 736
    :cond_0
    const-string v2, "right"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 737
    sget-object v1, Lcom/metamoji/un/text/model/paragstyle/ParagraphStyle$Align;->Right:Lcom/metamoji/un/text/model/paragstyle/ParagraphStyle$Align;

    invoke-virtual {v0, v1}, Lcom/metamoji/un/text/model/paragstyle/MutableParagraphStyle;->setAlign(Lcom/metamoji/un/text/model/paragstyle/ParagraphStyle$Align;)V

    goto :goto_0

    .line 739
    :cond_1
    sget-object v1, Lcom/metamoji/un/text/model/paragstyle/ParagraphStyle$Align;->Left:Lcom/metamoji/un/text/model/paragstyle/ParagraphStyle$Align;

    invoke-virtual {v0, v1}, Lcom/metamoji/un/text/model/paragstyle/MutableParagraphStyle;->setAlign(Lcom/metamoji/un/text/model/paragstyle/ParagraphStyle$Align;)V

    .line 743
    :cond_2
    :goto_0
    const-string v1, "list-type"

    invoke-interface {p0, v1}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 744
    invoke-static {v1}, Lcom/metamoji/cv/xml/XmlUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_5

    .line 745
    const-string v2, "ul"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 747
    sget-object v1, Lcom/metamoji/un/text/model/paragstyle/ParagraphStyle$ListKind;->BulletedList:Lcom/metamoji/un/text/model/paragstyle/ParagraphStyle$ListKind;

    invoke-virtual {v0, v1}, Lcom/metamoji/un/text/model/paragstyle/MutableParagraphStyle;->setListKind(Lcom/metamoji/un/text/model/paragstyle/ParagraphStyle$ListKind;)V

    .line 749
    const-string v1, "list-mark"

    invoke-interface {p0, v1}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 750
    invoke-static {v1}, Lcom/metamoji/cv/xml/XmlUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_4

    .line 751
    invoke-virtual {v0, v1}, Lcom/metamoji/un/text/model/paragstyle/MutableParagraphStyle;->setBulletedChar(Ljava/lang/String;)V

    goto :goto_1

    .line 753
    :cond_3
    const-string v2, "ol"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 755
    sget-object v1, Lcom/metamoji/un/text/model/paragstyle/ParagraphStyle$ListKind;->NumberedList:Lcom/metamoji/un/text/model/paragstyle/ParagraphStyle$ListKind;

    invoke-virtual {v0, v1}, Lcom/metamoji/un/text/model/paragstyle/MutableParagraphStyle;->setListKind(Lcom/metamoji/un/text/model/paragstyle/ParagraphStyle$ListKind;)V

    .line 757
    const-string v1, "list-style-type"

    invoke-interface {p0, v1}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 758
    invoke-static {v1}, Lcom/metamoji/un/text/DataUtil;->createParagraphNumberedListKindFromString(Ljava/lang/String;)Lcom/metamoji/un/text/model/paragstyle/ParagraphStyle$NumberedListKind;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/metamoji/un/text/model/paragstyle/MutableParagraphStyle;->setNumberedListKind(Lcom/metamoji/un/text/model/paragstyle/ParagraphStyle$NumberedListKind;)V

    .line 760
    :cond_4
    :goto_1
    sget-object v1, Lcom/metamoji/un/text/model/paragstyle/ParagraphStyle$ListKind;->NoList:Lcom/metamoji/un/text/model/paragstyle/ParagraphStyle$ListKind;

    invoke-virtual {v0}, Lcom/metamoji/un/text/model/paragstyle/MutableParagraphStyle;->getListKind()Lcom/metamoji/un/text/model/paragstyle/ParagraphStyle$ListKind;

    move-result-object v2

    if-eq v1, v2, :cond_5

    .line 762
    const-string v1, "list-level"

    invoke-interface {p0, v1}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 763
    invoke-static {v1}, Lcom/metamoji/cv/xml/XmlUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_5

    .line 764
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-lez v1, :cond_5

    .line 766
    invoke-virtual {v0, v1}, Lcom/metamoji/un/text/model/paragstyle/MutableParagraphStyle;->setListLevel(I)V

    .line 773
    :cond_5
    const-string v1, "tag-id"

    invoke-interface {p0, v1}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 774
    invoke-static {v1}, Lcom/metamoji/cv/xml/XmlUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_6

    .line 775
    invoke-virtual {v0, v1}, Lcom/metamoji/un/text/model/paragstyle/MutableParagraphStyle;->setTagId(Ljava/lang/String;)V

    .line 779
    :cond_6
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 781
    const-string v2, "creator"

    invoke-interface {p0, v2}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 782
    invoke-static {v2}, Lcom/metamoji/cv/xml/XmlUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_7

    .line 783
    sget-object v3, Lcom/metamoji/un/text/util/NtAuthorInfoUtil;->UNDODATAKEY_PLIST_AI_USERID:Ljava/lang/String;

    invoke-interface {v1, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 785
    :cond_7
    const-string v2, "collaboration-room"

    invoke-interface {p0, v2}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 786
    invoke-static {v2}, Lcom/metamoji/cv/xml/XmlUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_8

    .line 787
    sget-object v3, Lcom/metamoji/un/text/util/NtAuthorInfoUtil;->UNDODATAKEY_PLIST_AI_ROOMID:Ljava/lang/String;

    invoke-interface {v1, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 789
    :cond_8
    const-string v2, "creation-time"

    invoke-interface {p0, v2}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 790
    invoke-static {p0}, Lcom/metamoji/cv/xml/XmlUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_9

    .line 791
    invoke-static {p0}, Ljava/lang/Double;->valueOf(Ljava/lang/String;)Ljava/lang/Double;

    move-result-object p0

    .line 792
    sget-object v2, Lcom/metamoji/un/text/util/NtAuthorInfoUtil;->UNDODATAKEY_PLIST_AI_ACTIONTIME:Ljava/lang/String;

    invoke-interface {v1, v2, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 794
    :cond_9
    invoke-interface {v1}, Ljava/util/Map;->size()I

    move-result p0

    if-lez p0, :cond_a

    .line 795
    new-instance p0, Lcom/metamoji/nt/NtAuthorInfo;

    invoke-direct {p0}, Lcom/metamoji/nt/NtAuthorInfo;-><init>()V

    invoke-static {p0, v1}, Lcom/metamoji/un/text/util/NtAuthorInfoUtil;->init(Lcom/metamoji/nt/NtAuthorInfo;Ljava/util/Map;)Lcom/metamoji/nt/NtAuthorInfo;

    move-result-object p0

    .line 796
    invoke-virtual {v0, p0}, Lcom/metamoji/un/text/model/paragstyle/MutableParagraphStyle;->setAuthorInfo(Lcom/metamoji/nt/NtAuthorInfo;)V

    :cond_a
    return-object v0
.end method

.method static parseParagraphChildren(Lorg/w3c/dom/NodeList;Ljava/util/List;Lcom/metamoji/un/text/model/paragstyle/MutableParagraphStyle;Ljava/lang/String;)Lcom/metamoji/un/text/model/stringws/StringWithStrokes;
    .locals 17
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/w3c/dom/NodeList;",
            "Ljava/util/List<",
            "Lcom/metamoji/un/text/model/stringws/StringWithStrokes;",
            ">;",
            "Lcom/metamoji/un/text/model/paragstyle/MutableParagraphStyle;",
            "Ljava/lang/String;",
            ")",
            "Lcom/metamoji/un/text/model/stringws/StringWithStrokes;"
        }
    .end annotation

    move-object/from16 v0, p1

    move-object/from16 v1, p2

    move-object/from16 v2, p3

    .line 404
    invoke-interface/range {p0 .. p0}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v3

    const/4 v4, 0x0

    if-lez v3, :cond_13

    .line 405
    invoke-interface/range {p0 .. p0}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v3

    const/4 v5, 0x0

    move-object v7, v4

    move v6, v5

    :goto_0
    if-ge v6, v3, :cond_12

    move-object/from16 v8, p0

    .line 406
    invoke-interface {v8, v6}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v9

    .line 408
    invoke-interface {v9}, Lorg/w3c/dom/Node;->getNodeType()S

    move-result v10

    const/4 v11, 0x1

    if-eq v10, v11, :cond_3

    const/4 v11, 0x3

    if-eq v10, v11, :cond_0

    goto :goto_3

    .line 517
    :cond_0
    invoke-interface {v9}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v9

    .line 519
    new-instance v10, Lcom/metamoji/un/text/model/attr/MutableStringAttributes;

    invoke-direct {v10}, Lcom/metamoji/un/text/model/attr/MutableStringAttributes;-><init>()V

    .line 521
    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v11

    .line 522
    new-instance v12, Ljava/util/ArrayList;

    invoke-direct {v12, v11}, Ljava/util/ArrayList;-><init>(I)V

    move v13, v5

    :goto_1
    if-ge v13, v11, :cond_1

    .line 524
    invoke-virtual {v12, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v13, v13, 0x1

    goto :goto_1

    :cond_1
    if-nez v7, :cond_2

    .line 528
    new-instance v7, Lcom/metamoji/un/text/model/stringws/StringWithStrokes;

    invoke-direct {v7}, Lcom/metamoji/un/text/model/stringws/StringWithStrokes;-><init>()V

    if-eqz v1, :cond_2

    .line 531
    invoke-virtual {v7, v1}, Lcom/metamoji/un/text/model/stringws/StringWithStrokes;->setParagraphStyle(Lcom/metamoji/un/text/model/paragstyle/MutableParagraphStyle;)V

    move-object v1, v4

    .line 536
    :cond_2
    invoke-virtual {v7, v9, v12, v4, v5}, Lcom/metamoji/un/text/model/stringws/StringWithStrokes;->appendString(Ljava/lang/CharSequence;Ljava/util/List;Lcom/metamoji/un/text/model/undo/ITextUndoManager;I)V

    goto :goto_3

    .line 411
    :cond_3
    invoke-interface {v9}, Lorg/w3c/dom/Node;->getNamespaceURI()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v10, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_5

    .line 412
    invoke-interface {v9}, Lorg/w3c/dom/Node;->getLocalName()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Lcom/metamoji/cv/xml/text/CvTextSubconverterUtils;->safe_local_name(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    const-string v12, "char-format"

    invoke-virtual {v10, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_6

    if-nez v7, :cond_4

    .line 415
    new-instance v7, Lcom/metamoji/un/text/model/stringws/StringWithStrokes;

    invoke-direct {v7}, Lcom/metamoji/un/text/model/stringws/StringWithStrokes;-><init>()V

    if-eqz v1, :cond_4

    .line 418
    invoke-virtual {v7, v1}, Lcom/metamoji/un/text/model/stringws/StringWithStrokes;->setParagraphStyle(Lcom/metamoji/un/text/model/paragstyle/MutableParagraphStyle;)V

    move-object v1, v4

    .line 422
    :cond_4
    check-cast v9, Lorg/w3c/dom/Element;

    invoke-static {v9, v7, v2}, Lcom/metamoji/cv/xml/text/CvTextSubconverterUtils;->parseCharFormatElement(Lorg/w3c/dom/Element;Lcom/metamoji/un/text/model/stringws/StringWithStrokes;Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_5

    .line 424
    invoke-interface {v0, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_2
    move-object v7, v4

    move-object v9, v7

    goto/16 :goto_7

    :cond_5
    :goto_3
    move-object v9, v4

    goto/16 :goto_7

    .line 427
    :cond_6
    invoke-interface {v9}, Lorg/w3c/dom/Node;->getLocalName()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Lcom/metamoji/cv/xml/text/CvTextSubconverterUtils;->safe_local_name(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    const-string v12, "br"

    invoke-virtual {v10, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_a

    if-nez v7, :cond_7

    .line 429
    new-instance v7, Lcom/metamoji/un/text/model/stringws/StringWithStrokes;

    invoke-direct {v7}, Lcom/metamoji/un/text/model/stringws/StringWithStrokes;-><init>()V

    if-eqz v1, :cond_7

    .line 432
    invoke-virtual {v7, v1}, Lcom/metamoji/un/text/model/stringws/StringWithStrokes;->setParagraphStyle(Lcom/metamoji/un/text/model/paragstyle/MutableParagraphStyle;)V

    move-object v1, v4

    .line 437
    :cond_7
    check-cast v9, Lorg/w3c/dom/Element;

    invoke-static {v9}, Lcom/metamoji/cv/xml/text/CvTextSubconverterUtils;->parseCharStyleElement(Lorg/w3c/dom/Element;)Lcom/metamoji/un/text/model/attr/StringAttributes;

    move-result-object v9

    .line 439
    invoke-virtual {v9}, Lcom/metamoji/un/text/model/attr/StringAttributes;->sameAsDefaultValue()Z

    move-result v10

    if-eqz v10, :cond_8

    move-object v9, v4

    :cond_8
    if-nez v9, :cond_9

    .line 444
    sget-object v9, Lcom/metamoji/un/text/model/TextModel;->UNICODE_LINE_SEPARATOR_STRING:Ljava/lang/String;

    invoke-virtual {v7, v9, v4, v5}, Lcom/metamoji/un/text/model/stringws/StringWithStrokes;->appendString(Ljava/lang/CharSequence;Lcom/metamoji/un/text/model/undo/ITextUndoManager;I)V

    goto :goto_4

    .line 446
    :cond_9
    sget-object v10, Lcom/metamoji/un/text/model/TextModel;->UNICODE_LINE_SEPARATOR_STRING:Ljava/lang/String;

    new-array v11, v11, [Lcom/metamoji/un/text/model/attr/StringAttributes;

    aput-object v9, v11, v5

    invoke-static {v11}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v9

    invoke-virtual {v7, v10, v9, v4, v5}, Lcom/metamoji/un/text/model/stringws/StringWithStrokes;->appendString(Ljava/lang/CharSequence;Ljava/util/List;Lcom/metamoji/un/text/model/undo/ITextUndoManager;I)V

    .line 449
    :goto_4
    invoke-interface {v0, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 451
    :cond_a
    invoke-interface {v9}, Lorg/w3c/dom/Node;->getLocalName()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Lcom/metamoji/cv/xml/text/CvTextSubconverterUtils;->safe_local_name(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    const-string v12, "stroke"

    invoke-virtual {v10, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_5

    if-eqz v7, :cond_b

    .line 453
    invoke-interface {v0, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-object v7, v4

    .line 460
    :cond_b
    move-object v10, v9

    check-cast v10, Lorg/w3c/dom/Element;

    .line 461
    const-string v12, "src"

    invoke-interface {v10, v12}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 462
    invoke-static {v12}, Lcom/metamoji/cv/xml/XmlUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v13

    if-nez v13, :cond_5

    .line 463
    invoke-static {v12}, Lcom/metamoji/cv/xml/text/CvTextSubconverterUtils;->parseStokeSrcString(Ljava/lang/String;)Ljava/util/Map;

    move-result-object v7

    .line 468
    const-string v12, "m_handwriteStrokes"

    invoke-interface {v7, v12}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/util/List;

    .line 469
    invoke-static {v12}, Lcom/metamoji/un/text/DataUtil;->makeHandwriteStrokesArray(Ljava/util/List;)Ljava/util/List;

    move-result-object v12

    .line 474
    const-string v13, "m_strokeAttributes"

    invoke-interface {v7, v13}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/List;

    if-eqz v7, :cond_d

    .line 476
    new-instance v13, Ljava/util/ArrayList;

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v14

    invoke-direct {v13, v14}, Ljava/util/ArrayList;-><init>(I)V

    .line 477
    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v14

    move v15, v5

    :goto_5
    if-ge v15, v14, :cond_e

    .line 479
    invoke-interface {v7, v15}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Ljava/util/Map;

    if-eqz v16, :cond_c

    .line 481
    invoke-static/range {v16 .. v16}, Lcom/metamoji/un/text/DataUtil;->createStrokeAttributesWithMMJEdRichTextWithStrokesPartStrokeAttributes(Ljava/util/Map;)Lcom/metamoji/un/text/model/attr/StrokeAttributes;

    move-result-object v4

    invoke-interface {v13, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_c
    add-int/lit8 v15, v15, 0x1

    const/4 v4, 0x0

    goto :goto_5

    :cond_d
    const/4 v13, 0x0

    .line 485
    :cond_e
    new-instance v4, Lcom/metamoji/un/text/model/stringws/StringWithStrokes;

    invoke-direct {v4, v12, v13}, Lcom/metamoji/un/text/model/stringws/StringWithStrokes;-><init>(Ljava/util/List;Ljava/util/List;)V

    if-eqz v1, :cond_f

    .line 488
    invoke-virtual {v4, v1}, Lcom/metamoji/un/text/model/stringws/StringWithStrokes;->setParagraphStyle(Lcom/metamoji/un/text/model/paragstyle/MutableParagraphStyle;)V

    const/4 v1, 0x0

    .line 492
    :cond_f
    const-string v7, "render-strokes"

    invoke-interface {v10, v7}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    if-eqz v7, :cond_10

    .line 493
    const-string v10, "true"

    invoke-virtual {v7, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_10

    .line 494
    invoke-virtual {v4, v11}, Lcom/metamoji/un/text/model/stringws/StringWithStrokes;->setRenderStrokes(Z)V

    goto :goto_6

    .line 496
    :cond_10
    invoke-virtual {v4, v5}, Lcom/metamoji/un/text/model/stringws/StringWithStrokes;->setRenderStrokes(Z)V

    .line 502
    :goto_6
    invoke-interface {v9}, Lorg/w3c/dom/Node;->getChildNodes()Lorg/w3c/dom/NodeList;

    move-result-object v7

    const/4 v9, 0x0

    invoke-static {v7, v9, v9, v2}, Lcom/metamoji/cv/xml/text/CvTextSubconverterUtils;->parseParagraphChildren(Lorg/w3c/dom/NodeList;Ljava/util/List;Lcom/metamoji/un/text/model/paragstyle/MutableParagraphStyle;Ljava/lang/String;)Lcom/metamoji/un/text/model/stringws/StringWithStrokes;

    move-result-object v7

    if-eqz v7, :cond_11

    .line 503
    invoke-virtual {v7}, Lcom/metamoji/un/text/model/stringws/StringWithStrokes;->getStringLength()I

    move-result v10

    if-lez v10, :cond_11

    .line 504
    invoke-virtual {v7}, Lcom/metamoji/un/text/model/stringws/StringWithStrokes;->getString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v7}, Lcom/metamoji/un/text/model/stringws/StringWithStrokes;->getStringAttributes()Ljava/util/List;

    move-result-object v7

    const/4 v11, -0x1

    invoke-virtual {v4, v10, v7, v9, v11}, Lcom/metamoji/un/text/model/stringws/StringWithStrokes;->appendString(Ljava/lang/CharSequence;Ljava/util/List;Lcom/metamoji/un/text/model/undo/ITextUndoManager;I)V

    .line 507
    :cond_11
    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-object v7, v9

    :goto_7
    add-int/lit8 v6, v6, 0x1

    move-object v4, v9

    goto/16 :goto_0

    :cond_12
    move-object v4, v7

    goto :goto_8

    :cond_13
    move-object v9, v4

    if-eqz v1, :cond_14

    .line 546
    new-instance v2, Lcom/metamoji/un/text/model/stringws/StringWithStrokes;

    invoke-direct {v2}, Lcom/metamoji/un/text/model/stringws/StringWithStrokes;-><init>()V

    .line 547
    invoke-virtual {v2, v1}, Lcom/metamoji/un/text/model/stringws/StringWithStrokes;->setParagraphStyle(Lcom/metamoji/un/text/model/paragstyle/MutableParagraphStyle;)V

    .line 548
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_14
    move-object v4, v9

    :goto_8
    if-nez v4, :cond_15

    if-eqz v0, :cond_15

    .line 555
    invoke-static {v0}, Lcom/metamoji/cm/ListUtils;->getLast(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/metamoji/un/text/model/stringws/StringWithStrokes;

    if-eqz v0, :cond_15

    .line 556
    invoke-virtual {v0}, Lcom/metamoji/un/text/model/stringws/StringWithStrokes;->stringEndWithNewLineChar()Z

    move-result v1

    if-eqz v1, :cond_15

    invoke-virtual {v0}, Lcom/metamoji/un/text/model/stringws/StringWithStrokes;->stringEndWithEndOfParagraphChar()Z

    move-result v1

    if-nez v1, :cond_15

    .line 557
    invoke-virtual {v0}, Lcom/metamoji/un/text/model/stringws/StringWithStrokes;->replaceNewLineCodeAtEnd()Z

    :cond_15
    return-object v4
.end method

.method public static parseParagraphElements(Lorg/w3c/dom/NodeList;Ljava/lang/String;)Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/w3c/dom/NodeList;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Lcom/metamoji/un/text/model/stringws/StringWithStrokes;",
            ">;"
        }
    .end annotation

    .line 378
    new-instance v0, Ljava/util/ArrayList;

    invoke-interface {p0}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 381
    invoke-interface {p0}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v1, :cond_0

    .line 382
    invoke-interface {p0, v3}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v2

    check-cast v2, Lorg/w3c/dom/Element;

    .line 383
    invoke-interface {v2}, Lorg/w3c/dom/Element;->getChildNodes()Lorg/w3c/dom/NodeList;

    move-result-object v4

    invoke-static {v2}, Lcom/metamoji/cv/xml/text/CvTextSubconverterUtils;->parseParagraphAttribute(Lorg/w3c/dom/Element;)Lcom/metamoji/un/text/model/paragstyle/MutableParagraphStyle;

    move-result-object v2

    invoke-static {v4, v0, v2, p1}, Lcom/metamoji/cv/xml/text/CvTextSubconverterUtils;->parseParagraphChildren(Lorg/w3c/dom/NodeList;Ljava/util/List;Lcom/metamoji/un/text/model/paragstyle/MutableParagraphStyle;Ljava/lang/String;)Lcom/metamoji/un/text/model/stringws/StringWithStrokes;

    move-result-object v2

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    if-eqz v2, :cond_1

    .line 386
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_1
    return-object v0
.end method

.method static parseStokeSrcString(Ljava/lang/String;)Ljava/util/Map;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 688
    const-string v0, "([^:]+)[:]([^;]+)[;]([^,]+)[,](.*)"

    const/16 v1, 0x20

    invoke-static {v0, v1}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;I)Ljava/util/regex/Pattern;

    move-result-object v0

    .line 689
    invoke-virtual {v0, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object p0

    .line 690
    invoke-virtual {p0}, Ljava/util/regex/Matcher;->find()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    :cond_0
    const/4 v0, 0x1

    .line 695
    invoke-virtual {p0, v0}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v0

    .line 696
    invoke-static {v0}, Lcom/metamoji/cv/xml/XmlUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_5

    const-string v2, "data"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    goto :goto_0

    :cond_1
    const/4 v0, 0x2

    .line 700
    invoke-virtual {p0, v0}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v0

    .line 701
    invoke-static {v0}, Lcom/metamoji/cv/xml/XmlUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_5

    const-string v2, "stroke/strk"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    goto :goto_0

    :cond_2
    const/4 v0, 0x3

    .line 705
    invoke-virtual {p0, v0}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v0

    .line 706
    invoke-static {v0}, Lcom/metamoji/cv/xml/XmlUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_5

    const-string v2, "json"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    goto :goto_0

    :cond_3
    const/4 v0, 0x4

    .line 710
    invoke-virtual {p0, v0}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object p0

    .line 711
    invoke-static {p0}, Lcom/metamoji/cv/xml/XmlUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    return-object v1

    .line 716
    :cond_4
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 717
    invoke-static {v0}, Lcom/metamoji/cm/CmJson;->createMapFromJson(Lorg/json/JSONObject;)Ljava/util/Map;

    move-result-object p0
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    .line 719
    invoke-static {p0}, Lcom/metamoji/cm/CmLog;->error(Ljava/lang/Throwable;)V

    :cond_5
    :goto_0
    return-object v1
.end method

.method private static safeAppendChild(Lorg/w3c/dom/Node;Lorg/w3c/dom/Node;)V
    .locals 1

    .line 181
    invoke-interface {p1}, Lorg/w3c/dom/Node;->getParentNode()Lorg/w3c/dom/Node;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 183
    invoke-interface {v0, p1}, Lorg/w3c/dom/Node;->removeChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    .line 184
    :cond_0
    invoke-interface {p0, p1}, Lorg/w3c/dom/Node;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    return-void
.end method

.method static safe_local_name(Ljava/lang/Object;)Ljava/lang/String;
    .locals 0

    if-eqz p0, :cond_0

    .line 392
    invoke-static {p0}, Lcom/metamoji/cm/CmUtils;->toString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    const-string p0, ""

    return-object p0
.end method
