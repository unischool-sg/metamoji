.class public Lcom/metamoji/cv/xml/text/CvTextIncomingSubconverter;
.super Ljava/lang/Object;
.source "CvTextIncomingSubconverter.java"

# interfaces
.implements Lcom/metamoji/cv/ICvSubconverter;


# instance fields
.field private _nsuri:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public accept(Lcom/metamoji/cv/CvConvertItem;)Z
    .locals 2

    .line 53
    iget-object v0, p1, Lcom/metamoji/cv/CvConvertItem;->context:Lcom/metamoji/cv/CvConvertContext;

    const-class v1, Lcom/metamoji/cv/xml/CvDirectoryConvertContext;

    invoke-static {v0, v1}, Lcom/metamoji/cm/CmUtils;->as(Ljava/lang/Object;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/metamoji/cv/xml/CvDirectoryConvertContext;

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return p1

    .line 58
    :cond_0
    const-string v1, "$text"

    invoke-virtual {v0, p1, v1}, Lcom/metamoji/cv/xml/CvDirectoryConvertContext;->fillIncomingItem(Lcom/metamoji/cv/CvConvertItem;Ljava/lang/String;)V

    const/4 p1, 0x1

    return p1
.end method

.method public convert(Lcom/metamoji/cv/CvConvertItem;)V
    .locals 5

    .line 76
    iget-object v0, p1, Lcom/metamoji/cv/CvConvertItem;->context:Lcom/metamoji/cv/CvConvertContext;

    check-cast v0, Lcom/metamoji/cv/xml/CvDirectoryConvertContext;

    .line 78
    iget-object v1, p1, Lcom/metamoji/cv/CvConvertItem;->externalRef:Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/metamoji/cv/xml/CvDirectoryConvertContext;->makeExternalFilePath(Ljava/lang/Object;Z)Ljava/io/File;

    move-result-object v0

    .line 80
    invoke-static {v0}, Lcom/metamoji/cv/xml/XmlUtils;->loadXMLFile(Ljava/io/File;)Lorg/w3c/dom/Document;

    move-result-object v0

    .line 81
    invoke-interface {v0}, Lorg/w3c/dom/Document;->getDocumentElement()Lorg/w3c/dom/Element;

    move-result-object v0

    .line 82
    const-string v1, "text"

    if-eqz v0, :cond_1

    invoke-interface {v0}, Lorg/w3c/dom/Element;->getLocalName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 83
    invoke-interface {v0}, Lorg/w3c/dom/Element;->getNamespaceURI()Ljava/lang/String;

    move-result-object v2

    .line 84
    const-string v3, "http://xmlns.metamoji.com/noteanytime/text/1.0"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 85
    sget-boolean v4, Lcom/metamoji/noteanytime/ModelInfo;->isTextVerticalWritingEnabled:Z

    if-eqz v4, :cond_0

    .line 86
    const-string v3, "http://xmlns.metamoji.com/noteanytime/text/2.0"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    :cond_0
    if-eqz v3, :cond_1

    .line 88
    iput-object v2, p0, Lcom/metamoji/cv/xml/text/CvTextIncomingSubconverter;->_nsuri:Ljava/lang/String;

    .line 91
    :cond_1
    iget-object v2, p0, Lcom/metamoji/cv/xml/text/CvTextIncomingSubconverter;->_nsuri:Ljava/lang/String;

    if-eqz v2, :cond_2

    .line 92
    iget-object p1, p1, Lcom/metamoji/cv/CvConvertItem;->model:Lcom/metamoji/df/model/IModel;

    invoke-virtual {p0, v0, p1}, Lcom/metamoji/cv/xml/text/CvTextIncomingSubconverter;->parseTextElement(Lorg/w3c/dom/Element;Lcom/metamoji/df/model/IModel;)V

    return-void

    :cond_2
    if-nez v0, :cond_3

    .line 97
    const-string p1, "invalid file. root element is null for %s"

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v0

    invoke-static {p1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    .line 99
    :cond_3
    invoke-interface {v0}, Lorg/w3c/dom/Element;->getLocalName()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0}, Lorg/w3c/dom/Element;->getNamespaceURI()Ljava/lang/String;

    move-result-object v0

    filled-new-array {p1, v0, v1}, [Ljava/lang/Object;

    move-result-object p1

    const-string v0, "invalid file. root element is %s (%s); expected: %s"

    invoke-static {v0, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    .line 100
    :goto_0
    new-instance v0, Lcom/metamoji/cm/CmException;

    const-string v1, "CV0043"

    invoke-direct {v0, v1, p1}, Lcom/metamoji/cm/CmException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw v0
.end method

.method public getKey()Ljava/lang/String;
    .locals 1

    .line 109
    const-string v0, "text"

    return-object v0
.end method

.method parseBodyElement(Lorg/w3c/dom/Element;Lcom/metamoji/un/text/model/TextModel;)V
    .locals 2

    if-eqz p1, :cond_0

    .line 331
    const-string v0, "p"

    iget-object v1, p0, Lcom/metamoji/cv/xml/text/CvTextIncomingSubconverter;->_nsuri:Ljava/lang/String;

    invoke-static {p1, v0, v1}, Lcom/metamoji/cv/xml/XmlUtils$Incoming;->listChildElementsByName(Lorg/w3c/dom/Node;Ljava/lang/String;Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 333
    iget-object v0, p0, Lcom/metamoji/cv/xml/text/CvTextIncomingSubconverter;->_nsuri:Ljava/lang/String;

    invoke-static {p1, v0}, Lcom/metamoji/cv/xml/text/CvTextSubconverterUtils;->parseParagraphElements(Lorg/w3c/dom/NodeList;Ljava/lang/String;)Ljava/util/List;

    move-result-object p1

    const/4 v0, 0x0

    .line 335
    invoke-virtual {p2, p1, v0}, Lcom/metamoji/un/text/model/TextModel;->setStringWsArrayObject(Ljava/util/List;Z)V

    :cond_0
    return-void
.end method

.method parseHeadElement(Lorg/w3c/dom/Element;Lcom/metamoji/un/text/model/TextModel;)V
    .locals 2

    if-eqz p1, :cond_0

    .line 187
    const-string v0, "style"

    iget-object v1, p0, Lcom/metamoji/cv/xml/text/CvTextIncomingSubconverter;->_nsuri:Ljava/lang/String;

    invoke-static {p1, v0, v1}, Lcom/metamoji/cv/xml/XmlUtils$Incoming;->getChildElementByName(Lorg/w3c/dom/Node;Ljava/lang/String;Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 189
    invoke-virtual {p0, p1, p2}, Lcom/metamoji/cv/xml/text/CvTextIncomingSubconverter;->parseStyleElement(Lorg/w3c/dom/Element;Lcom/metamoji/un/text/model/TextModel;)V

    :cond_0
    return-void
.end method

.method parseStyleElement(Lorg/w3c/dom/Element;Lcom/metamoji/un/text/model/TextModel;)V
    .locals 8

    .line 200
    invoke-virtual {p2}, Lcom/metamoji/un/text/model/TextModel;->getUnitStyles()Lcom/metamoji/un/text/model/UnitStyles;

    move-result-object v0

    .line 205
    const-string v1, "font-family"

    iget-object v2, p0, Lcom/metamoji/cv/xml/text/CvTextIncomingSubconverter;->_nsuri:Ljava/lang/String;

    invoke-static {p1, v1, v2}, Lcom/metamoji/cv/xml/XmlUtils$Incoming;->getChildElementByName(Lorg/w3c/dom/Node;Ljava/lang/String;Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v1

    .line 206
    const-string v2, "value"

    const/4 v3, 0x0

    if-eqz v1, :cond_0

    .line 207
    invoke-interface {v1, v2}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_0
    move-object v1, v3

    .line 211
    :goto_0
    const-string v4, "font-size"

    iget-object v5, p0, Lcom/metamoji/cv/xml/text/CvTextIncomingSubconverter;->_nsuri:Ljava/lang/String;

    invoke-static {p1, v4, v5}, Lcom/metamoji/cv/xml/XmlUtils$Incoming;->getChildElementByName(Lorg/w3c/dom/Node;Ljava/lang/String;Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v4

    const/4 v5, 0x0

    if-eqz v4, :cond_1

    .line 213
    invoke-interface {v4, v2}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 214
    invoke-static {v4}, Lcom/metamoji/cv/xml/XmlUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_1

    const-wide/16 v6, 0x0

    .line 215
    invoke-static {v4, v6, v7}, Lcom/metamoji/cm/CmUtils;->extractDoubleFromString(Ljava/lang/String;D)D

    move-result-wide v6

    double-to-float v4, v6

    goto :goto_1

    :cond_1
    move v4, v5

    :goto_1
    if-nez v1, :cond_2

    cmpl-float v6, v5, v4

    if-eqz v6, :cond_3

    .line 221
    :cond_2
    iput-object v1, v0, Lcom/metamoji/un/text/model/UnitStyles;->fontFamilyName:Ljava/lang/String;

    .line 222
    invoke-static {v4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    iput-object v1, v0, Lcom/metamoji/un/text/model/UnitStyles;->fontSize:Ljava/lang/Float;

    .line 226
    :cond_3
    const-string v1, "char-color"

    iget-object v4, p0, Lcom/metamoji/cv/xml/text/CvTextIncomingSubconverter;->_nsuri:Ljava/lang/String;

    invoke-static {p1, v1, v4}, Lcom/metamoji/cv/xml/XmlUtils$Incoming;->getChildElementByName(Lorg/w3c/dom/Node;Ljava/lang/String;Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v1

    if-eqz v1, :cond_4

    .line 228
    invoke-interface {v1, v2}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 229
    invoke-static {v1}, Lcom/metamoji/cv/xml/XmlUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_4

    .line 230
    invoke-static {v1}, Lcom/metamoji/cm/ColorUtils;->parseColor(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    if-eqz v1, :cond_4

    .line 232
    iput-object v1, v0, Lcom/metamoji/un/text/model/UnitStyles;->charColor:Ljava/lang/Integer;

    .line 239
    :cond_4
    const-string v1, "unit-padding"

    iget-object v4, p0, Lcom/metamoji/cv/xml/text/CvTextIncomingSubconverter;->_nsuri:Ljava/lang/String;

    invoke-static {p1, v1, v4}, Lcom/metamoji/cv/xml/XmlUtils$Incoming;->getChildElementByName(Lorg/w3c/dom/Node;Ljava/lang/String;Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v1

    if-eqz v1, :cond_a

    .line 241
    iget-object v4, v0, Lcom/metamoji/un/text/model/UnitStyles;->paddingRect:Lcom/metamoji/cm/EdgeInsets;

    if-eqz v4, :cond_5

    iget-object v4, v0, Lcom/metamoji/un/text/model/UnitStyles;->paddingRect:Lcom/metamoji/cm/EdgeInsets;

    goto :goto_2

    :cond_5
    new-instance v4, Lcom/metamoji/cm/EdgeInsets;

    invoke-direct {v4, v5, v5, v5, v5}, Lcom/metamoji/cm/EdgeInsets;-><init>(FFFF)V

    .line 243
    :goto_2
    const-string v5, "left"

    invoke-interface {v1, v5}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 244
    invoke-static {v5}, Lcom/metamoji/cv/xml/XmlUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_6

    .line 245
    invoke-static {v5}, Lcom/metamoji/cm/CmUtils;->extractDoubleFromString(Ljava/lang/String;)Ljava/lang/Double;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Double;->floatValue()F

    move-result v5

    iput v5, v4, Lcom/metamoji/cm/EdgeInsets;->left:F

    .line 247
    :cond_6
    const-string v5, "top"

    invoke-interface {v1, v5}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 248
    invoke-static {v5}, Lcom/metamoji/cv/xml/XmlUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_7

    .line 249
    invoke-static {v5}, Lcom/metamoji/cm/CmUtils;->extractDoubleFromString(Ljava/lang/String;)Ljava/lang/Double;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Double;->floatValue()F

    move-result v5

    iput v5, v4, Lcom/metamoji/cm/EdgeInsets;->top:F

    .line 251
    :cond_7
    const-string v5, "right"

    invoke-interface {v1, v5}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 252
    invoke-static {v5}, Lcom/metamoji/cv/xml/XmlUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_8

    .line 253
    invoke-static {v5}, Lcom/metamoji/cm/CmUtils;->extractDoubleFromString(Ljava/lang/String;)Ljava/lang/Double;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Double;->floatValue()F

    move-result v5

    iput v5, v4, Lcom/metamoji/cm/EdgeInsets;->right:F

    .line 255
    :cond_8
    const-string v5, "bottom"

    invoke-interface {v1, v5}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 256
    invoke-static {v1}, Lcom/metamoji/cv/xml/XmlUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_9

    .line 257
    invoke-static {v1}, Lcom/metamoji/cm/CmUtils;->extractDoubleFromString(Ljava/lang/String;)Ljava/lang/Double;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Double;->floatValue()F

    move-result v1

    iput v1, v4, Lcom/metamoji/cm/EdgeInsets;->bottom:F

    .line 259
    :cond_9
    iput-object v4, v0, Lcom/metamoji/un/text/model/UnitStyles;->paddingRect:Lcom/metamoji/cm/EdgeInsets;

    .line 263
    :cond_a
    const-string v1, "line-height"

    iget-object v4, p0, Lcom/metamoji/cv/xml/text/CvTextIncomingSubconverter;->_nsuri:Ljava/lang/String;

    invoke-static {p1, v1, v4}, Lcom/metamoji/cv/xml/XmlUtils$Incoming;->getChildElementByName(Lorg/w3c/dom/Node;Ljava/lang/String;Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v1

    if-eqz v1, :cond_b

    .line 265
    invoke-interface {v1, v2}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 266
    invoke-static {v1}, Lcom/metamoji/cv/xml/XmlUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_b

    .line 267
    invoke-static {v1}, Lcom/metamoji/cm/CmUtils;->extractDoubleFromString(Ljava/lang/String;)Ljava/lang/Double;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Double;->floatValue()F

    move-result v1

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    iput-object v1, v0, Lcom/metamoji/un/text/model/UnitStyles;->lineHeight:Ljava/lang/Float;

    .line 272
    :cond_b
    const-string v1, "ruled-line"

    iget-object v4, p0, Lcom/metamoji/cv/xml/text/CvTextIncomingSubconverter;->_nsuri:Ljava/lang/String;

    invoke-static {p1, v1, v4}, Lcom/metamoji/cv/xml/XmlUtils$Incoming;->getChildElementByName(Lorg/w3c/dom/Node;Ljava/lang/String;Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v1

    .line 273
    const-string v4, "style"

    if-eqz v1, :cond_c

    .line 274
    invoke-interface {v1, v4}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 275
    invoke-static {v1}, Lcom/metamoji/cv/xml/XmlUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_c

    .line 276
    invoke-static {v1}, Lcom/metamoji/cv/xml/text/CvTextDef;->stringToLineStyle(Ljava/lang/String;)Lcom/metamoji/un/text/model/RuledLineStyle;

    move-result-object v1

    iput-object v1, v0, Lcom/metamoji/un/text/model/UnitStyles;->ruledLineStyle:Lcom/metamoji/un/text/model/RuledLineStyle;

    .line 281
    :cond_c
    const-string v1, "unit-background-color"

    iget-object v5, p0, Lcom/metamoji/cv/xml/text/CvTextIncomingSubconverter;->_nsuri:Ljava/lang/String;

    invoke-static {p1, v1, v5}, Lcom/metamoji/cv/xml/XmlUtils$Incoming;->getChildElementByName(Lorg/w3c/dom/Node;Ljava/lang/String;Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v1

    if-eqz v1, :cond_d

    .line 283
    invoke-interface {v1, v2}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 284
    invoke-static {v1}, Lcom/metamoji/cv/xml/XmlUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_d

    .line 285
    invoke-static {v1}, Lcom/metamoji/cm/ColorUtils;->parseColor(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    if-eqz v1, :cond_d

    .line 287
    iput-object v1, v0, Lcom/metamoji/un/text/model/UnitStyles;->bgColor:Ljava/lang/Integer;

    .line 293
    :cond_d
    const-string v1, "unit-border-style"

    iget-object v5, p0, Lcom/metamoji/cv/xml/text/CvTextIncomingSubconverter;->_nsuri:Ljava/lang/String;

    invoke-static {p1, v1, v5}, Lcom/metamoji/cv/xml/XmlUtils$Incoming;->getChildElementByName(Lorg/w3c/dom/Node;Ljava/lang/String;Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v1

    if-eqz v1, :cond_e

    .line 295
    invoke-interface {v1, v4}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 296
    invoke-static {v1}, Lcom/metamoji/cv/xml/XmlUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_e

    const/4 v4, 0x0

    .line 297
    invoke-static {v1, v4}, Lcom/metamoji/cm/CmUtils;->toInt(Ljava/lang/Object;I)I

    move-result v1

    invoke-static {v1}, Lcom/metamoji/un/text/model/UnitBorderStyle;->valueOf(I)Lcom/metamoji/un/text/model/UnitBorderStyle;

    move-result-object v1

    iput-object v1, v0, Lcom/metamoji/un/text/model/UnitStyles;->unitBorderStyle:Lcom/metamoji/un/text/model/UnitBorderStyle;

    :cond_e
    const/4 v1, 0x1

    .line 301
    invoke-virtual {p2, v0, v1}, Lcom/metamoji/un/text/model/TextModel;->setUnitStyles(Lcom/metamoji/un/text/model/UnitStyles;Z)V

    .line 305
    const-string v0, "unit-width-adjustment"

    iget-object v4, p0, Lcom/metamoji/cv/xml/text/CvTextIncomingSubconverter;->_nsuri:Ljava/lang/String;

    invoke-static {p1, v0, v4}, Lcom/metamoji/cv/xml/XmlUtils$Incoming;->getChildElementByName(Lorg/w3c/dom/Node;Ljava/lang/String;Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v0

    if-eqz v0, :cond_f

    .line 307
    invoke-interface {v0, v2}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 309
    :cond_f
    invoke-static {v3}, Lcom/metamoji/cv/xml/text/CvTextDef;->stringToUnitWidthSelfAdjustment(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p2, Lcom/metamoji/un/text/model/TextModel;->unitWidthSelfAdjustment:Z

    .line 312
    sget-boolean v0, Lcom/metamoji/noteanytime/ModelInfo;->isTextVerticalWritingEnabled:Z

    if-eqz v0, :cond_10

    .line 313
    const-string v0, "unit-vertical-writing"

    iget-object v3, p0, Lcom/metamoji/cv/xml/text/CvTextIncomingSubconverter;->_nsuri:Ljava/lang/String;

    invoke-static {p1, v0, v3}, Lcom/metamoji/cv/xml/XmlUtils$Incoming;->getChildElementByName(Lorg/w3c/dom/Node;Ljava/lang/String;Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object p1

    if-eqz p1, :cond_10

    .line 315
    invoke-interface {p1, v2}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 316
    const-string v0, "true"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_10

    .line 317
    invoke-virtual {p2, v1}, Lcom/metamoji/un/text/model/TextModel;->setVerticalWriting(Z)V

    :cond_10
    return-void
.end method

.method parseTextElement(Lorg/w3c/dom/Element;Lcom/metamoji/df/model/IModel;)V
    .locals 5

    .line 123
    const-string v0, "cTagIdGenerator"

    invoke-static {p1, p2, v0}, Lcom/metamoji/ctold/CtIdGenerator;->restoreFromElement(Lorg/w3c/dom/Element;Lcom/metamoji/df/model/IModel;Ljava/lang/String;)V

    .line 127
    sget-boolean v0, Lcom/metamoji/noteanytime/ModelInfo;->isTextVerticalWritingEnabled:Z

    if-eqz v0, :cond_0

    .line 128
    const-string v0, "http://xmlns.metamoji.com/noteanytime/text/2.0"

    iget-object v1, p0, Lcom/metamoji/cv/xml/text/CvTextIncomingSubconverter;->_nsuri:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x4

    goto :goto_0

    :cond_0
    const/4 v0, 0x3

    .line 131
    :goto_0
    invoke-interface {p2, v0}, Lcom/metamoji/df/model/IModel;->setVersion(I)V

    .line 134
    const-string v0, "unitId"

    const-string v1, "unit-id"

    invoke-static {p1, p2, v0, v1}, Lcom/metamoji/cv/xml/XmlUtils$Incoming;->getAttributeAsString(Lorg/w3c/dom/Element;Lcom/metamoji/df/model/IModel;Ljava/lang/String;Ljava/lang/String;)V

    .line 138
    const-string v0, "no-dropshadow"

    invoke-interface {p1, v0}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 140
    const-string v1, "0"

    const-string v2, "1"

    const/4 v3, 0x0

    if-eqz v0, :cond_2

    .line 141
    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 142
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    goto :goto_1

    .line 143
    :cond_1
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 144
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    goto :goto_1

    :cond_2
    move-object v0, v3

    :goto_1
    if-eqz v0, :cond_3

    .line 148
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    invoke-static {v0, p2}, Lcom/metamoji/un/text/model/TextModel;->setUnitNoDropShadowToModel(ZLcom/metamoji/df/model/IModel;)V

    .line 154
    :cond_3
    const-string v0, "not-del-when-empty"

    invoke-interface {p1, v0}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_5

    .line 157
    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 158
    sget-object v3, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    goto :goto_2

    .line 159
    :cond_4
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 160
    sget-object v3, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    :cond_5
    :goto_2
    if-eqz v3, :cond_6

    .line 164
    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    invoke-static {v0, p2}, Lcom/metamoji/un/text/model/TextModel;->setUnitNotDelWhenEmptyToModel(ZLcom/metamoji/df/model/IModel;)V

    .line 169
    :cond_6
    iget-object v0, p0, Lcom/metamoji/cv/xml/text/CvTextIncomingSubconverter;->_nsuri:Ljava/lang/String;

    invoke-static {p1, p2, v0}, Lcom/metamoji/cv/CvConverterUtils;->parseGeometricPropsElementFromParent(Lorg/w3c/dom/Element;Lcom/metamoji/df/model/IModel;Ljava/lang/String;)Z

    .line 172
    const-string v0, "head"

    iget-object v1, p0, Lcom/metamoji/cv/xml/text/CvTextIncomingSubconverter;->_nsuri:Ljava/lang/String;

    invoke-static {p1, v0, v1}, Lcom/metamoji/cv/xml/XmlUtils$Incoming;->getChildElementByName(Lorg/w3c/dom/Node;Ljava/lang/String;Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v0

    .line 173
    check-cast p2, Lcom/metamoji/un/text/model/TextModel;

    invoke-virtual {p0, v0, p2}, Lcom/metamoji/cv/xml/text/CvTextIncomingSubconverter;->parseHeadElement(Lorg/w3c/dom/Element;Lcom/metamoji/un/text/model/TextModel;)V

    .line 175
    const-string v0, "body"

    iget-object v1, p0, Lcom/metamoji/cv/xml/text/CvTextIncomingSubconverter;->_nsuri:Ljava/lang/String;

    invoke-static {p1, v0, v1}, Lcom/metamoji/cv/xml/XmlUtils$Incoming;->getChildElementByName(Lorg/w3c/dom/Node;Ljava/lang/String;Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object p1

    .line 176
    invoke-virtual {p0, p1, p2}, Lcom/metamoji/cv/xml/text/CvTextIncomingSubconverter;->parseBodyElement(Lorg/w3c/dom/Element;Lcom/metamoji/un/text/model/TextModel;)V

    return-void
.end method
