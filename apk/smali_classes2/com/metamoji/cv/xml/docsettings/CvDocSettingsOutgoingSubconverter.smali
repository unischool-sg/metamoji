.class public Lcom/metamoji/cv/xml/docsettings/CvDocSettingsOutgoingSubconverter;
.super Ljava/lang/Object;
.source "CvDocSettingsOutgoingSubconverter.java"

# interfaces
.implements Lcom/metamoji/cv/ICvSubconverter;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static documentThumbnailFromDocumentSettingsModel(Lcom/metamoji/df/model/IModel;)Lcom/metamoji/cm/Blob;
    .locals 2

    .line 279
    const-string v0, "thumbnailType"

    const/4 v1, -0x1

    invoke-interface {p0, v0, v1}, Lcom/metamoji/df/model/IModel;->getPropertyAsInt(Ljava/lang/String;I)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 281
    const-string v0, "thumbnail"

    invoke-interface {p0, v0}, Lcom/metamoji/df/model/IModel;->getPropertyAsModel(Ljava/lang/String;)Lcom/metamoji/df/model/IModel;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 283
    invoke-interface {p0, v0}, Lcom/metamoji/df/model/IModel;->getPropertyAsBlob(Ljava/lang/String;)Lcom/metamoji/cm/Blob;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public static generateDefaultTextUnitStyleElement(Lorg/w3c/dom/Element;Lcom/metamoji/df/model/IModel;Lcom/metamoji/cv/xml/CvDirectoryConvertContext;Ljava/lang/String;)V
    .locals 10

    .line 168
    invoke-interface {p0}, Lorg/w3c/dom/Element;->getOwnerDocument()Lorg/w3c/dom/Document;

    move-result-object p2

    .line 169
    const-string v0, "default-text-unit-style"

    invoke-interface {p2, p3, v0}, Lorg/w3c/dom/Document;->createElementNS(Ljava/lang/String;Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v1

    .line 172
    const-string v4, "font-family"

    const-string v6, "value"

    const-string v3, "textUnitFontFamily"

    move-object v2, p1

    move-object v5, p3

    invoke-static/range {v1 .. v6}, Lcom/metamoji/cv/xml/XmlUtils$Outgoing;->addElementWithAttribute(Lorg/w3c/dom/Element;Lcom/metamoji/df/model/IModel;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 174
    const-string p3, "textUnitFontFamilyForG5"

    const-string v0, "g5-value"

    invoke-static {p1, v2, p3, v0}, Lcom/metamoji/cv/xml/XmlUtils$Outgoing;->addAttribute(Lorg/w3c/dom/Element;Lcom/metamoji/df/model/IModel;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 176
    :cond_0
    const-string v4, "font-family"

    const-string v6, "g5-value"

    const-string v3, "textUnitFontFamilyForG5"

    invoke-static/range {v1 .. v6}, Lcom/metamoji/cv/xml/XmlUtils$Outgoing;->addElementWithAttribute(Lorg/w3c/dom/Element;Lcom/metamoji/df/model/IModel;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/w3c/dom/Element;

    .line 185
    :goto_0
    const-string v4, "font-size"

    const-string v6, "value"

    const-string v3, "textUnitFontSize"

    invoke-static/range {v1 .. v6}, Lcom/metamoji/cv/xml/XmlUtils$Outgoing;->addElementWithDoubleAttribute(Lorg/w3c/dom/Element;Lcom/metamoji/df/model/IModel;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 194
    const-string v4, "char-color"

    const-string v6, "value"

    const-string v3, "textUnitFontColor"

    invoke-static/range {v1 .. v6}, Lcom/metamoji/cv/xml/XmlUtils$Outgoing;->addElementWithAttribute(Lorg/w3c/dom/Element;Lcom/metamoji/df/model/IModel;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/w3c/dom/Element;

    .line 203
    const-string v4, "line-height"

    const-string v6, "value"

    const-string v3, "textUnitLineHeight"

    invoke-static/range {v1 .. v6}, Lcom/metamoji/cv/xml/XmlUtils$Outgoing;->addElementWithDoubleAttribute(Lorg/w3c/dom/Element;Lcom/metamoji/df/model/IModel;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 214
    const-string v4, "ruled-line"

    const-string v6, "value"

    const-string v3, "textUnitRuledLineStyle"

    invoke-static/range {v1 .. v6}, Lcom/metamoji/cv/xml/XmlUtils$Outgoing;->addElementWithAttribute(Lorg/w3c/dom/Element;Lcom/metamoji/df/model/IModel;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/w3c/dom/Element;

    .line 225
    const-string p1, "textUnitBackgroundColor"

    invoke-interface {v2, p1}, Lcom/metamoji/df/model/IModel;->getPropertyAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 226
    const-string p3, "textUnitBackgroundColorAlpha"

    invoke-interface {v2, p3}, Lcom/metamoji/df/model/IModel;->getPropertyAsObject(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p3

    .line 227
    const-string v0, "value"

    if-nez p1, :cond_1

    if-eqz p3, :cond_4

    :cond_1
    const/high16 v3, -0x40800000    # -1.0f

    .line 228
    invoke-static {p3, v3}, Lcom/metamoji/cm/CmUtils;->toFloat(Ljava/lang/Object;F)F

    move-result p3

    .line 229
    const-string v3, "unit-background-color"

    invoke-interface {p2, v5, v3}, Lorg/w3c/dom/Document;->createElementNS(Ljava/lang/String;Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v3

    if-eqz p1, :cond_2

    .line 231
    invoke-interface {v3, v0, p1}, Lorg/w3c/dom/Element;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    float-to-double v6, p3

    const-wide/16 v8, 0x0

    cmpl-double p1, v6, v8

    if-ltz p1, :cond_3

    .line 234
    invoke-static {p3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    invoke-static {p1}, Lcom/metamoji/cm/CmUtils;->toString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string p3, "alpha"

    invoke-interface {v3, p3, p1}, Lorg/w3c/dom/Element;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 236
    :cond_3
    invoke-interface {v1, v3}, Lorg/w3c/dom/Element;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    .line 240
    :cond_4
    const-string v4, "unit-border-style"

    const-string v6, "value"

    const-string v3, "textUnitBorderStyle"

    invoke-static/range {v1 .. v6}, Lcom/metamoji/cv/xml/XmlUtils$Outgoing;->addElementWithAttribute(Lorg/w3c/dom/Element;Lcom/metamoji/df/model/IModel;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/w3c/dom/Element;

    .line 252
    const-string p1, "useSystemTextSettings"

    invoke-interface {v2, p1}, Lcom/metamoji/df/model/IModel;->getPropertyAsObject(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p3

    .line 253
    const-string v3, "true"

    const-string v4, "false"

    if-eqz p3, :cond_6

    .line 256
    invoke-static {p3}, Lcom/metamoji/cm/CmUtils;->toBool(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_5

    move-object p3, v3

    goto :goto_1

    :cond_5
    move-object p3, v4

    .line 255
    :goto_1
    invoke-interface {v1, p1, p3}, Lorg/w3c/dom/Element;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 260
    :cond_6
    sget-boolean p1, Lcom/metamoji/noteanytime/ModelInfo;->isTextVerticalWritingEnabled:Z

    if-eqz p1, :cond_8

    const-string p1, "textUnitVerticalWriting"

    invoke-interface {v2, p1}, Lcom/metamoji/df/model/IModel;->hasProperty(Ljava/lang/String;)Z

    move-result p3

    if-eqz p3, :cond_8

    const/4 p3, 0x0

    .line 261
    invoke-interface {v2, p1, p3}, Lcom/metamoji/df/model/IModel;->getPropertyAsBool(Ljava/lang/String;Z)Z

    move-result p1

    if-eqz p1, :cond_7

    goto :goto_2

    :cond_7
    move-object v3, v4

    .line 264
    :goto_2
    const-string p1, "http://xmlns.metamoji.com/noteanytime/documentsettings/1.0"

    const-string p3, "unit-verticalwriting"

    invoke-interface {p2, p1, p3}, Lorg/w3c/dom/Document;->createElementNS(Ljava/lang/String;Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object p1

    .line 265
    invoke-interface {p1, v0, v3}, Lorg/w3c/dom/Element;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 266
    invoke-interface {v1, p1}, Lorg/w3c/dom/Element;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    .line 269
    :cond_8
    invoke-interface {p0, v1}, Lorg/w3c/dom/Element;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    return-void
.end method


# virtual methods
.method public accept(Lcom/metamoji/cv/CvConvertItem;)Z
    .locals 3

    .line 43
    iget-object v0, p1, Lcom/metamoji/cv/CvConvertItem;->context:Lcom/metamoji/cv/CvConvertContext;

    const-class v1, Lcom/metamoji/cv/xml/CvDirectoryConvertContext;

    invoke-static {v0, v1}, Lcom/metamoji/cm/CmUtils;->as(Ljava/lang/Object;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/metamoji/cv/xml/CvDirectoryConvertContext;

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return p1

    .line 48
    :cond_0
    const-string v1, "documentsettings"

    const-string v2, "xml"

    invoke-virtual {v0, p1, v1, v2}, Lcom/metamoji/cv/xml/CvDirectoryConvertContext;->fillOutgoingItem(Lcom/metamoji/cv/CvConvertItem;Ljava/lang/String;Ljava/lang/String;)V

    const/4 p1, 0x1

    return p1
.end method

.method public convert(Lcom/metamoji/cv/CvConvertItem;)V
    .locals 3

    .line 65
    iget-object v0, p1, Lcom/metamoji/cv/CvConvertItem;->context:Lcom/metamoji/cv/CvConvertContext;

    check-cast v0, Lcom/metamoji/cv/xml/CvDirectoryConvertContext;

    .line 66
    iget-object v1, p1, Lcom/metamoji/cv/CvConvertItem;->model:Lcom/metamoji/df/model/IModel;

    .line 68
    invoke-static {}, Lcom/metamoji/cv/xml/XmlUtils;->newDocument()Lorg/w3c/dom/Document;

    move-result-object v2

    .line 69
    invoke-virtual {p0, v2, v1, v0}, Lcom/metamoji/cv/xml/docsettings/CvDocSettingsOutgoingSubconverter;->generateDocSettingsElement(Lorg/w3c/dom/Document;Lcom/metamoji/df/model/IModel;Lcom/metamoji/cv/xml/CvDirectoryConvertContext;)V

    .line 71
    iget-object p1, p1, Lcom/metamoji/cv/CvConvertItem;->externalRef:Ljava/lang/Object;

    const/4 v1, 0x1

    invoke-virtual {v0, p1, v1}, Lcom/metamoji/cv/xml/CvDirectoryConvertContext;->makeExternalFilePath(Ljava/lang/Object;Z)Ljava/io/File;

    move-result-object p1

    .line 72
    invoke-static {v2, p1}, Lcom/metamoji/cv/xml/XmlUtils;->saveXMLFile(Lorg/w3c/dom/Document;Ljava/io/File;)Z

    return-void
.end method

.method generateDocSettingsElement(Lorg/w3c/dom/Document;Lcom/metamoji/df/model/IModel;Lcom/metamoji/cv/xml/CvDirectoryConvertContext;)V
    .locals 8

    .line 92
    const-string v0, "document-settings"

    const-string v1, "http://xmlns.metamoji.com/noteanytime/documentsettings/1.0"

    invoke-interface {p1, v1, v0}, Lorg/w3c/dom/Document;->createElementNS(Ljava/lang/String;Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v2

    .line 96
    const-string v6, "http://xmlns.metamoji.com/noteanytime/documentsettings/1.0"

    const-string v7, "format"

    const-string v4, "header"

    const-string v5, "page-header"

    move-object v3, p2

    invoke-static/range {v2 .. v7}, Lcom/metamoji/cv/xml/XmlUtils$Outgoing;->addElementWithAttribute(Lorg/w3c/dom/Element;Lcom/metamoji/df/model/IModel;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/w3c/dom/Element;

    .line 105
    const-string v6, "http://xmlns.metamoji.com/noteanytime/documentsettings/1.0"

    const-string v7, "format"

    const-string v4, "footer"

    const-string v5, "page-footer"

    invoke-static/range {v2 .. v7}, Lcom/metamoji/cv/xml/XmlUtils$Outgoing;->addElementWithAttribute(Lorg/w3c/dom/Element;Lcom/metamoji/df/model/IModel;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/w3c/dom/Element;

    .line 115
    const-string p2, "thumbnailType"

    const/4 v0, -0x1

    invoke-interface {v3, p2, v0}, Lcom/metamoji/df/model/IModel;->getPropertyAsInt(Ljava/lang/String;I)I

    move-result p2

    const/4 v0, 0x1

    if-ne p2, v0, :cond_2

    .line 118
    instance-of p2, p3, Lcom/metamoji/cv/xml/CvHayabusadocConvertContext;

    if-eqz p2, :cond_0

    .line 119
    move-object p2, p3

    check-cast p2, Lcom/metamoji/cv/xml/CvHayabusadocConvertContext;

    iget-object p2, p2, Lcom/metamoji/cv/xml/CvHayabusadocConvertContext;->docThumbnailFileName:Ljava/lang/String;

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    .line 121
    :goto_0
    const-string v4, "thumbnail"

    if-nez p2, :cond_1

    .line 122
    invoke-interface {v3, v4}, Lcom/metamoji/df/model/IModel;->getPropertyAsModel(Ljava/lang/String;)Lcom/metamoji/df/model/IModel;

    move-result-object v5

    if-eqz v5, :cond_1

    .line 124
    invoke-interface {v5, v4}, Lcom/metamoji/df/model/IModel;->getPropertyAsBlob(Ljava/lang/String;)Lcom/metamoji/cm/Blob;

    move-result-object v5

    if-eqz v5, :cond_1

    .line 126
    invoke-virtual {v5}, Lcom/metamoji/cm/Blob;->getMimeType()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lcom/metamoji/cv/CvConverterUtils;->imageExtensionFromMimeType(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 127
    new-instance v6, Lcom/metamoji/cv/CvConvertItem;

    invoke-direct {v6}, Lcom/metamoji/cv/CvConvertItem;-><init>()V

    .line 128
    const-string v7, "docthumbnail"

    invoke-virtual {p3, v6, v7, p2}, Lcom/metamoji/cv/xml/CvDirectoryConvertContext;->fillOutgoingItem(Lcom/metamoji/cv/CvConvertItem;Ljava/lang/String;Ljava/lang/String;)V

    .line 129
    iget-object p2, v6, Lcom/metamoji/cv/CvConvertItem;->externalRef:Ljava/lang/Object;

    invoke-virtual {p3, p2, v0}, Lcom/metamoji/cv/xml/CvDirectoryConvertContext;->makeExternalFilePath(Ljava/lang/Object;Z)Ljava/io/File;

    move-result-object p2

    .line 130
    invoke-virtual {v5}, Lcom/metamoji/cm/Blob;->getData()[B

    move-result-object v0

    invoke-static {p2, v0}, Lcom/metamoji/cm/CmUtils;->saveBufferToFile(Ljava/io/File;[B)Z

    .line 131
    invoke-virtual {p2}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object p2

    :cond_1
    if-eqz p2, :cond_2

    .line 137
    const-string v0, "data"

    invoke-static {v2, p2, v4, v1, v0}, Lcom/metamoji/cv/xml/XmlUtils$Outgoing;->addElementWithAttribute(Lorg/w3c/dom/Element;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/w3c/dom/Element;

    .line 145
    :cond_2
    const-string p2, "frontCover"

    const/4 v0, 0x0

    invoke-interface {v3, p2, v0}, Lcom/metamoji/df/model/IModel;->getPropertyAsBool(Ljava/lang/String;Z)Z

    move-result p2

    .line 146
    const-string v4, "noFrontCoverOnPrinting"

    invoke-interface {v3, v4, v0}, Lcom/metamoji/df/model/IModel;->getPropertyAsBool(Ljava/lang/String;Z)Z

    move-result v0

    .line 147
    const-string v4, "front-cover"

    invoke-interface {p1, v1, v4}, Lorg/w3c/dom/Document;->createElementNS(Ljava/lang/String;Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v4

    .line 148
    const-string v5, "true"

    const-string v6, "false"

    if-eqz p2, :cond_3

    move-object p2, v5

    goto :goto_1

    :cond_3
    move-object p2, v6

    :goto_1
    const-string v7, "value"

    invoke-interface {v4, v7, p2}, Lorg/w3c/dom/Element;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz v0, :cond_4

    move-object v5, v6

    .line 149
    :cond_4
    const-string p2, "print"

    invoke-interface {v4, p2, v5}, Lorg/w3c/dom/Element;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 150
    invoke-interface {v2, v4}, Lorg/w3c/dom/Element;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    .line 153
    invoke-static {v2, v3, p3, v1}, Lcom/metamoji/cv/xml/docsettings/CvDocSettingsOutgoingSubconverter;->generateDefaultTextUnitStyleElement(Lorg/w3c/dom/Element;Lcom/metamoji/df/model/IModel;Lcom/metamoji/cv/xml/CvDirectoryConvertContext;Ljava/lang/String;)V

    .line 156
    const-string v6, "http://xmlns.metamoji.com/noteanytime/documentsettings/1.0"

    const-string v7, "value"

    const-string v4, "titleRule"

    const-string v5, "titlerule"

    invoke-static/range {v2 .. v7}, Lcom/metamoji/cv/xml/XmlUtils$Outgoing;->addElementWithAttribute(Lorg/w3c/dom/Element;Lcom/metamoji/df/model/IModel;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/w3c/dom/Element;

    .line 158
    invoke-interface {p1, v2}, Lorg/w3c/dom/Document;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    return-void
.end method

.method public getKey()Ljava/lang/String;
    .locals 1

    .line 82
    const-string v0, "MMJNtDocumentSettings"

    return-object v0
.end method
