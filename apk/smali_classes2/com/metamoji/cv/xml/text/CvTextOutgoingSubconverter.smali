.class public Lcom/metamoji/cv/xml/text/CvTextOutgoingSubconverter;
.super Ljava/lang/Object;
.source "CvTextOutgoingSubconverter.java"

# interfaces
.implements Lcom/metamoji/cv/ICvSubconverter;


# instance fields
.field private _rootURI:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public accept(Lcom/metamoji/cv/CvConvertItem;)Z
    .locals 3

    .line 46
    iget-object v0, p1, Lcom/metamoji/cv/CvConvertItem;->context:Lcom/metamoji/cv/CvConvertContext;

    const-class v1, Lcom/metamoji/cv/xml/CvDirectoryConvertContext;

    invoke-static {v0, v1}, Lcom/metamoji/cm/CmUtils;->as(Ljava/lang/Object;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/metamoji/cv/xml/CvDirectoryConvertContext;

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return p1

    .line 51
    :cond_0
    const-string v1, "text"

    const-string v2, "xml"

    invoke-virtual {v0, p1, v1, v2}, Lcom/metamoji/cv/xml/CvDirectoryConvertContext;->fillOutgoingItem(Lcom/metamoji/cv/CvConvertItem;Ljava/lang/String;Ljava/lang/String;)V

    const/4 p1, 0x1

    return p1
.end method

.method public convert(Lcom/metamoji/cv/CvConvertItem;)V
    .locals 5

    .line 68
    iget-object v0, p1, Lcom/metamoji/cv/CvConvertItem;->context:Lcom/metamoji/cv/CvConvertContext;

    check-cast v0, Lcom/metamoji/cv/xml/CvDirectoryConvertContext;

    .line 70
    invoke-static {}, Lcom/metamoji/cv/xml/XmlUtils;->newDocument()Lorg/w3c/dom/Document;

    move-result-object v1

    .line 73
    iget-object v2, p1, Lcom/metamoji/cv/CvConvertItem;->model:Lcom/metamoji/df/model/IModel;

    check-cast v2, Lcom/metamoji/un/text/model/TextModel;

    .line 78
    sget-boolean v3, Lcom/metamoji/noteanytime/ModelInfo;->isTextVerticalWritingEnabled:Z

    if-eqz v3, :cond_0

    invoke-virtual {v2}, Lcom/metamoji/un/text/model/TextModel;->getVersion()I

    move-result v3

    const/4 v4, 0x4

    if-ne v3, v4, :cond_0

    .line 79
    const-string v3, "http://xmlns.metamoji.com/noteanytime/text/2.0"

    iput-object v3, p0, Lcom/metamoji/cv/xml/text/CvTextOutgoingSubconverter;->_rootURI:Ljava/lang/String;

    goto :goto_0

    .line 81
    :cond_0
    const-string v3, "http://xmlns.metamoji.com/noteanytime/text/1.0"

    iput-object v3, p0, Lcom/metamoji/cv/xml/text/CvTextOutgoingSubconverter;->_rootURI:Ljava/lang/String;

    .line 83
    :goto_0
    invoke-virtual {p0, v1, v2}, Lcom/metamoji/cv/xml/text/CvTextOutgoingSubconverter;->generateTextElement(Lorg/w3c/dom/Document;Lcom/metamoji/un/text/model/TextModel;)V

    .line 86
    iget-object p1, p1, Lcom/metamoji/cv/CvConvertItem;->externalRef:Ljava/lang/Object;

    const/4 v2, 0x1

    invoke-virtual {v0, p1, v2}, Lcom/metamoji/cv/xml/CvDirectoryConvertContext;->makeExternalFilePath(Ljava/lang/Object;Z)Ljava/io/File;

    move-result-object p1

    .line 87
    invoke-static {v1, p1}, Lcom/metamoji/cv/xml/XmlUtils;->saveXMLFile(Lorg/w3c/dom/Document;Ljava/io/File;)Z

    return-void
.end method

.method generateBodyElement(Lorg/w3c/dom/Element;Lcom/metamoji/un/text/model/TextModel;)V
    .locals 3

    .line 247
    invoke-interface {p1}, Lorg/w3c/dom/Element;->getOwnerDocument()Lorg/w3c/dom/Document;

    move-result-object v0

    .line 248
    iget-object v1, p0, Lcom/metamoji/cv/xml/text/CvTextOutgoingSubconverter;->_rootURI:Ljava/lang/String;

    const-string v2, "body"

    invoke-interface {v0, v1, v2}, Lorg/w3c/dom/Document;->createElementNS(Ljava/lang/String;Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v0

    .line 251
    invoke-virtual {p2}, Lcom/metamoji/un/text/model/TextModel;->getStringWsArrayObject()Lcom/metamoji/un/text/model/StringWithStrokesArray;

    move-result-object p2

    invoke-virtual {p2}, Lcom/metamoji/un/text/model/StringWithStrokesArray;->getTextArray()Ljava/util/List;

    move-result-object p2

    iget-object v1, p0, Lcom/metamoji/cv/xml/text/CvTextOutgoingSubconverter;->_rootURI:Ljava/lang/String;

    invoke-static {v0, p2, v1}, Lcom/metamoji/cv/xml/text/CvTextSubconverterUtils;->generateStringWsElementInto(Lorg/w3c/dom/Element;Ljava/util/List;Ljava/lang/String;)V

    .line 252
    invoke-interface {p1, v0}, Lorg/w3c/dom/Element;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    return-void
.end method

.method generateHeadElement(Lorg/w3c/dom/Element;Lcom/metamoji/un/text/model/TextModel;)V
    .locals 3

    .line 146
    invoke-interface {p1}, Lorg/w3c/dom/Element;->getOwnerDocument()Lorg/w3c/dom/Document;

    move-result-object v0

    .line 147
    iget-object v1, p0, Lcom/metamoji/cv/xml/text/CvTextOutgoingSubconverter;->_rootURI:Ljava/lang/String;

    const-string v2, "head"

    invoke-interface {v0, v1, v2}, Lorg/w3c/dom/Document;->createElementNS(Ljava/lang/String;Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v0

    .line 150
    invoke-virtual {p0, v0, p2}, Lcom/metamoji/cv/xml/text/CvTextOutgoingSubconverter;->generateStyleElement(Lorg/w3c/dom/Element;Lcom/metamoji/un/text/model/TextModel;)V

    .line 151
    invoke-interface {p1, v0}, Lorg/w3c/dom/Element;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    return-void
.end method

.method generateStyleElement(Lorg/w3c/dom/Element;Lcom/metamoji/un/text/model/TextModel;)V
    .locals 9

    .line 158
    invoke-interface {p1}, Lorg/w3c/dom/Element;->getOwnerDocument()Lorg/w3c/dom/Document;

    move-result-object v0

    .line 160
    iget-object v1, p0, Lcom/metamoji/cv/xml/text/CvTextOutgoingSubconverter;->_rootURI:Ljava/lang/String;

    const-string v2, "style"

    invoke-interface {v0, v1, v2}, Lorg/w3c/dom/Document;->createElementNS(Ljava/lang/String;Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v1

    .line 162
    invoke-virtual {p2}, Lcom/metamoji/un/text/model/TextModel;->getUnitStyles()Lcom/metamoji/un/text/model/UnitStyles;

    move-result-object v3

    .line 165
    iget-object v4, p0, Lcom/metamoji/cv/xml/text/CvTextOutgoingSubconverter;->_rootURI:Ljava/lang/String;

    const-string v5, "font-family"

    invoke-interface {v0, v4, v5}, Lorg/w3c/dom/Document;->createElementNS(Ljava/lang/String;Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v4

    .line 167
    iget-object v5, v3, Lcom/metamoji/un/text/model/UnitStyles;->fontFamilyName:Ljava/lang/String;

    const-string v6, "value"

    invoke-interface {v4, v6, v5}, Lorg/w3c/dom/Element;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 168
    invoke-interface {v1, v4}, Lorg/w3c/dom/Element;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    .line 171
    iget-object v4, p0, Lcom/metamoji/cv/xml/text/CvTextOutgoingSubconverter;->_rootURI:Ljava/lang/String;

    const-string v5, "font-size"

    invoke-interface {v0, v4, v5}, Lorg/w3c/dom/Document;->createElementNS(Ljava/lang/String;Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v4

    .line 173
    iget-object v5, v3, Lcom/metamoji/un/text/model/UnitStyles;->fontSize:Ljava/lang/Float;

    filled-new-array {v5}, [Ljava/lang/Object;

    move-result-object v5

    const-string v7, "%fpx"

    invoke-static {v7, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v6, v5}, Lorg/w3c/dom/Element;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 174
    invoke-interface {v1, v4}, Lorg/w3c/dom/Element;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    .line 177
    iget-object v4, v3, Lcom/metamoji/un/text/model/UnitStyles;->charColor:Ljava/lang/Integer;

    if-eqz v4, :cond_0

    .line 178
    iget-object v4, p0, Lcom/metamoji/cv/xml/text/CvTextOutgoingSubconverter;->_rootURI:Ljava/lang/String;

    const-string v5, "char-color"

    invoke-interface {v0, v4, v5}, Lorg/w3c/dom/Document;->createElementNS(Ljava/lang/String;Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v4

    .line 180
    iget-object v5, v3, Lcom/metamoji/un/text/model/UnitStyles;->charColor:Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    invoke-static {v5}, Lcom/metamoji/cm/ColorUtils;->composeColorString(I)Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v6, v5}, Lorg/w3c/dom/Element;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 181
    invoke-interface {v1, v4}, Lorg/w3c/dom/Element;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    .line 185
    :cond_0
    iget-object v4, v3, Lcom/metamoji/un/text/model/UnitStyles;->paddingRect:Lcom/metamoji/cm/EdgeInsets;

    const-string v5, "%fem"

    if-eqz v4, :cond_1

    .line 186
    iget-object v4, p0, Lcom/metamoji/cv/xml/text/CvTextOutgoingSubconverter;->_rootURI:Ljava/lang/String;

    const-string v7, "unit-padding"

    invoke-interface {v0, v4, v7}, Lorg/w3c/dom/Document;->createElementNS(Ljava/lang/String;Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v4

    .line 187
    iget-object v7, v3, Lcom/metamoji/un/text/model/UnitStyles;->paddingRect:Lcom/metamoji/cm/EdgeInsets;

    iget v7, v7, Lcom/metamoji/cm/EdgeInsets;->left:F

    invoke-static {v7}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v7

    filled-new-array {v7}, [Ljava/lang/Object;

    move-result-object v7

    invoke-static {v5, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    const-string v8, "left"

    invoke-interface {v4, v8, v7}, Lorg/w3c/dom/Element;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 188
    iget-object v7, v3, Lcom/metamoji/un/text/model/UnitStyles;->paddingRect:Lcom/metamoji/cm/EdgeInsets;

    iget v7, v7, Lcom/metamoji/cm/EdgeInsets;->top:F

    invoke-static {v7}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v7

    filled-new-array {v7}, [Ljava/lang/Object;

    move-result-object v7

    invoke-static {v5, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    const-string v8, "top"

    invoke-interface {v4, v8, v7}, Lorg/w3c/dom/Element;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 189
    iget-object v7, v3, Lcom/metamoji/un/text/model/UnitStyles;->paddingRect:Lcom/metamoji/cm/EdgeInsets;

    iget v7, v7, Lcom/metamoji/cm/EdgeInsets;->right:F

    invoke-static {v7}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v7

    filled-new-array {v7}, [Ljava/lang/Object;

    move-result-object v7

    invoke-static {v5, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    const-string v8, "right"

    invoke-interface {v4, v8, v7}, Lorg/w3c/dom/Element;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 190
    iget-object v7, v3, Lcom/metamoji/un/text/model/UnitStyles;->paddingRect:Lcom/metamoji/cm/EdgeInsets;

    iget v7, v7, Lcom/metamoji/cm/EdgeInsets;->bottom:F

    invoke-static {v7}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v7

    filled-new-array {v7}, [Ljava/lang/Object;

    move-result-object v7

    invoke-static {v5, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    const-string v8, "bottom"

    invoke-interface {v4, v8, v7}, Lorg/w3c/dom/Element;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 191
    invoke-interface {v1, v4}, Lorg/w3c/dom/Element;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    .line 195
    :cond_1
    iget-object v4, p0, Lcom/metamoji/cv/xml/text/CvTextOutgoingSubconverter;->_rootURI:Ljava/lang/String;

    const-string v7, "line-height"

    invoke-interface {v0, v4, v7}, Lorg/w3c/dom/Document;->createElementNS(Ljava/lang/String;Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v4

    .line 197
    iget-object v7, v3, Lcom/metamoji/un/text/model/UnitStyles;->lineHeight:Ljava/lang/Float;

    filled-new-array {v7}, [Ljava/lang/Object;

    move-result-object v7

    invoke-static {v5, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v6, v5}, Lorg/w3c/dom/Element;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 198
    invoke-interface {v1, v4}, Lorg/w3c/dom/Element;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    .line 201
    iget-object v4, v3, Lcom/metamoji/un/text/model/UnitStyles;->ruledLineStyle:Lcom/metamoji/un/text/model/RuledLineStyle;

    if-eqz v4, :cond_2

    .line 202
    iget-object v4, p0, Lcom/metamoji/cv/xml/text/CvTextOutgoingSubconverter;->_rootURI:Ljava/lang/String;

    const-string v5, "ruled-line"

    invoke-interface {v0, v4, v5}, Lorg/w3c/dom/Document;->createElementNS(Ljava/lang/String;Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v4

    .line 204
    iget-object v5, v3, Lcom/metamoji/un/text/model/UnitStyles;->ruledLineStyle:Lcom/metamoji/un/text/model/RuledLineStyle;

    invoke-static {v5}, Lcom/metamoji/cv/xml/text/CvTextDef;->lineStyleToString(Lcom/metamoji/un/text/model/RuledLineStyle;)Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v2, v5}, Lorg/w3c/dom/Element;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 205
    invoke-interface {v1, v4}, Lorg/w3c/dom/Element;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    .line 209
    :cond_2
    iget-object v4, v3, Lcom/metamoji/un/text/model/UnitStyles;->bgColor:Ljava/lang/Integer;

    if-eqz v4, :cond_3

    .line 210
    iget-object v4, p0, Lcom/metamoji/cv/xml/text/CvTextOutgoingSubconverter;->_rootURI:Ljava/lang/String;

    const-string v5, "unit-background-color"

    invoke-interface {v0, v4, v5}, Lorg/w3c/dom/Document;->createElementNS(Ljava/lang/String;Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v4

    .line 211
    iget-object v5, v3, Lcom/metamoji/un/text/model/UnitStyles;->bgColor:Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    invoke-static {v5}, Lcom/metamoji/cm/ColorUtils;->composeColorString(I)Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v6, v5}, Lorg/w3c/dom/Element;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 213
    invoke-interface {v1, v4}, Lorg/w3c/dom/Element;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    .line 217
    :cond_3
    iget-object v4, v3, Lcom/metamoji/un/text/model/UnitStyles;->unitBorderStyle:Lcom/metamoji/un/text/model/UnitBorderStyle;

    if-eqz v4, :cond_4

    .line 218
    iget-object v4, p0, Lcom/metamoji/cv/xml/text/CvTextOutgoingSubconverter;->_rootURI:Ljava/lang/String;

    const-string v5, "unit-border-style"

    invoke-interface {v0, v4, v5}, Lorg/w3c/dom/Document;->createElementNS(Ljava/lang/String;Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v4

    .line 220
    iget-object v3, v3, Lcom/metamoji/un/text/model/UnitStyles;->unitBorderStyle:Lcom/metamoji/un/text/model/UnitBorderStyle;

    invoke-virtual {v3}, Lcom/metamoji/un/text/model/UnitBorderStyle;->getIntValue()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v3}, Lcom/metamoji/cm/CmUtils;->toString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v4, v2, v3}, Lorg/w3c/dom/Element;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 221
    invoke-interface {v1, v4}, Lorg/w3c/dom/Element;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    .line 225
    :cond_4
    iget-boolean v2, p2, Lcom/metamoji/un/text/model/TextModel;->unitWidthSelfAdjustment:Z

    invoke-static {v2}, Lcom/metamoji/cv/xml/text/CvTextDef;->unitWidthSelfAdjustmentToString(Z)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_5

    .line 227
    iget-object v3, p0, Lcom/metamoji/cv/xml/text/CvTextOutgoingSubconverter;->_rootURI:Ljava/lang/String;

    const-string v4, "unit-width-adjustment"

    invoke-interface {v0, v3, v4}, Lorg/w3c/dom/Document;->createElementNS(Ljava/lang/String;Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v3

    .line 228
    invoke-interface {v3, v6, v2}, Lorg/w3c/dom/Element;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 229
    invoke-interface {v1, v3}, Lorg/w3c/dom/Element;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    .line 233
    :cond_5
    invoke-virtual {p2}, Lcom/metamoji/un/text/model/TextModel;->getVerticalWriting()Z

    move-result p2

    if-eqz p2, :cond_6

    .line 235
    iget-object p2, p0, Lcom/metamoji/cv/xml/text/CvTextOutgoingSubconverter;->_rootURI:Ljava/lang/String;

    const-string v2, "unit-vertical-writing"

    invoke-interface {v0, p2, v2}, Lorg/w3c/dom/Document;->createElementNS(Ljava/lang/String;Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object p2

    .line 236
    const-string v0, "true"

    invoke-interface {p2, v6, v0}, Lorg/w3c/dom/Element;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 237
    invoke-interface {v1, p2}, Lorg/w3c/dom/Element;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    .line 240
    :cond_6
    invoke-interface {p1, v1}, Lorg/w3c/dom/Element;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    return-void
.end method

.method generateTextElement(Lorg/w3c/dom/Document;Lcom/metamoji/un/text/model/TextModel;)V
    .locals 5

    .line 106
    iget-object v0, p0, Lcom/metamoji/cv/xml/text/CvTextOutgoingSubconverter;->_rootURI:Ljava/lang/String;

    const-string v1, "text"

    invoke-interface {p1, v0, v1}, Lorg/w3c/dom/Document;->createElementNS(Ljava/lang/String;Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v0

    .line 111
    const-string v1, "cTagIdGenerator"

    invoke-static {v0, p2, v1}, Lcom/metamoji/ctold/CtIdGenerator;->storeToElement(Lorg/w3c/dom/Element;Lcom/metamoji/df/model/IModel;Ljava/lang/String;)V

    .line 114
    const-string v1, "unitId"

    const-string v2, "unit-id"

    invoke-static {v0, p2, v1, v2}, Lcom/metamoji/cv/xml/XmlUtils$Outgoing;->addAttribute(Lorg/w3c/dom/Element;Lcom/metamoji/df/model/IModel;Ljava/lang/String;Ljava/lang/String;)V

    .line 118
    const-string v1, "no.dropshadow"

    invoke-virtual {p2, v1}, Lcom/metamoji/un/text/model/TextModel;->hasProperty(Ljava/lang/String;)Z

    move-result v1

    const-string v2, "1"

    const-string v3, "0"

    if-eqz v1, :cond_1

    .line 120
    invoke-virtual {p2}, Lcom/metamoji/un/text/model/TextModel;->getUnitNoDropShadow()Z

    move-result v1

    if-eqz v1, :cond_0

    move-object v1, v2

    goto :goto_0

    :cond_0
    move-object v1, v3

    .line 121
    :goto_0
    const-string v4, "no-dropshadow"

    invoke-interface {v0, v4, v1}, Lorg/w3c/dom/Element;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 125
    :cond_1
    const-string v1, "not.del.when.empty"

    invoke-virtual {p2, v1}, Lcom/metamoji/un/text/model/TextModel;->hasProperty(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 127
    invoke-virtual {p2}, Lcom/metamoji/un/text/model/TextModel;->getUnitNotDelWhenEmpty()Z

    move-result v1

    if-eqz v1, :cond_2

    goto :goto_1

    :cond_2
    move-object v2, v3

    .line 128
    :goto_1
    const-string v1, "not-del-when-empty"

    invoke-interface {v0, v1, v2}, Lorg/w3c/dom/Element;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 133
    :cond_3
    iget-object v1, p0, Lcom/metamoji/cv/xml/text/CvTextOutgoingSubconverter;->_rootURI:Ljava/lang/String;

    invoke-static {v0, p2, v1}, Lcom/metamoji/cv/CvConverterUtils;->generateGeometricPropsElementFromModel(Lorg/w3c/dom/Element;Lcom/metamoji/df/model/IModel;Ljava/lang/String;)V

    .line 135
    invoke-virtual {p0, v0, p2}, Lcom/metamoji/cv/xml/text/CvTextOutgoingSubconverter;->generateHeadElement(Lorg/w3c/dom/Element;Lcom/metamoji/un/text/model/TextModel;)V

    .line 137
    invoke-virtual {p0, v0, p2}, Lcom/metamoji/cv/xml/text/CvTextOutgoingSubconverter;->generateBodyElement(Lorg/w3c/dom/Element;Lcom/metamoji/un/text/model/TextModel;)V

    .line 139
    invoke-interface {p1, v0}, Lorg/w3c/dom/Document;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    return-void
.end method

.method public getKey()Ljava/lang/String;
    .locals 1

    .line 95
    const-string v0, "$text"

    return-object v0
.end method
