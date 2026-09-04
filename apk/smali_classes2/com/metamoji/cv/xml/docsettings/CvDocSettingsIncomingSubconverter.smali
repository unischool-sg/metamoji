.class public Lcom/metamoji/cv/xml/docsettings/CvDocSettingsIncomingSubconverter;
.super Ljava/lang/Object;
.source "CvDocSettingsIncomingSubconverter.java"

# interfaces
.implements Lcom/metamoji/cv/ICvSubconverter;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static parseDefaultTextUnitStyleElement(Lorg/w3c/dom/Element;Lcom/metamoji/df/model/IModel;Lcom/metamoji/cv/xml/CvDirectoryConvertContext;Ljava/lang/String;)V
    .locals 3

    .line 188
    const-string p2, "font-family"

    invoke-static {p0, p2, p3}, Lcom/metamoji/cv/xml/XmlUtils$Incoming;->getChildElementByName(Lorg/w3c/dom/Node;Ljava/lang/String;Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object p2

    .line 189
    const-string v0, "value"

    if-eqz p2, :cond_0

    .line 190
    const-string v1, "textUnitFontFamily"

    invoke-static {p2, p1, v1, v0}, Lcom/metamoji/cv/xml/XmlUtils$Incoming;->getAttributeAsString(Lorg/w3c/dom/Element;Lcom/metamoji/df/model/IModel;Ljava/lang/String;Ljava/lang/String;)V

    .line 191
    const-string v1, "textUnitFontFamilyForG5"

    const-string v2, "g5-value"

    invoke-static {p2, p1, v1, v2}, Lcom/metamoji/cv/xml/XmlUtils$Incoming;->getAttributeAsString(Lorg/w3c/dom/Element;Lcom/metamoji/df/model/IModel;Ljava/lang/String;Ljava/lang/String;)V

    .line 195
    :cond_0
    const-string p2, "font-size"

    invoke-static {p0, p2, p3}, Lcom/metamoji/cv/xml/XmlUtils$Incoming;->getChildElementByName(Lorg/w3c/dom/Node;Ljava/lang/String;Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object p2

    if-eqz p2, :cond_1

    .line 197
    const-string v1, "textUnitFontSize"

    invoke-static {p2, p1, v1, v0}, Lcom/metamoji/cv/xml/XmlUtils$Incoming;->getAttributeAsDouble(Lorg/w3c/dom/Element;Lcom/metamoji/df/model/IModel;Ljava/lang/String;Ljava/lang/String;)V

    .line 201
    :cond_1
    const-string p2, "char-color"

    invoke-static {p0, p2, p3}, Lcom/metamoji/cv/xml/XmlUtils$Incoming;->getChildElementByName(Lorg/w3c/dom/Node;Ljava/lang/String;Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object p2

    if-eqz p2, :cond_2

    .line 203
    const-string v1, "textUnitFontColor"

    invoke-static {p2, p1, v1, v0}, Lcom/metamoji/cv/xml/XmlUtils$Incoming;->getAttributeAsString(Lorg/w3c/dom/Element;Lcom/metamoji/df/model/IModel;Ljava/lang/String;Ljava/lang/String;)V

    .line 207
    :cond_2
    const-string p2, "line-height"

    invoke-static {p0, p2, p3}, Lcom/metamoji/cv/xml/XmlUtils$Incoming;->getChildElementByName(Lorg/w3c/dom/Node;Ljava/lang/String;Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object p2

    if-eqz p2, :cond_3

    .line 209
    const-string v1, "textUnitLineHeight"

    invoke-static {p2, p1, v1, v0}, Lcom/metamoji/cv/xml/XmlUtils$Incoming;->getAttributeAsDouble(Lorg/w3c/dom/Element;Lcom/metamoji/df/model/IModel;Ljava/lang/String;Ljava/lang/String;)V

    .line 213
    :cond_3
    const-string p2, "ruled-line"

    invoke-static {p0, p2, p3}, Lcom/metamoji/cv/xml/XmlUtils$Incoming;->getChildElementByName(Lorg/w3c/dom/Node;Ljava/lang/String;Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object p2

    if-eqz p2, :cond_4

    .line 215
    const-string v1, "textUnitRuledLineStyle"

    invoke-static {p2, p1, v1, v0}, Lcom/metamoji/cv/xml/XmlUtils$Incoming;->getAttributeAsString(Lorg/w3c/dom/Element;Lcom/metamoji/df/model/IModel;Ljava/lang/String;Ljava/lang/String;)V

    .line 219
    :cond_4
    const-string p2, "unit-background-color"

    invoke-static {p0, p2, p3}, Lcom/metamoji/cv/xml/XmlUtils$Incoming;->getChildElementByName(Lorg/w3c/dom/Node;Ljava/lang/String;Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object p2

    if-eqz p2, :cond_5

    .line 221
    const-string v1, "textUnitBackgroundColor"

    invoke-static {p2, p1, v1, v0}, Lcom/metamoji/cv/xml/XmlUtils$Incoming;->getAttributeAsString(Lorg/w3c/dom/Element;Lcom/metamoji/df/model/IModel;Ljava/lang/String;Ljava/lang/String;)V

    .line 222
    const-string v1, "textUnitBackgroundColorAlpha"

    const-string v2, "alpha"

    invoke-static {p2, p1, v1, v2}, Lcom/metamoji/cv/xml/XmlUtils$Incoming;->getAttributeAsDouble(Lorg/w3c/dom/Element;Lcom/metamoji/df/model/IModel;Ljava/lang/String;Ljava/lang/String;)V

    .line 226
    :cond_5
    const-string p2, "unit-border-style"

    invoke-static {p0, p2, p3}, Lcom/metamoji/cv/xml/XmlUtils$Incoming;->getChildElementByName(Lorg/w3c/dom/Node;Ljava/lang/String;Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object p2

    if-eqz p2, :cond_6

    .line 228
    const-string v1, "textUnitBorderStyle"

    invoke-static {p2, p1, v1, v0}, Lcom/metamoji/cv/xml/XmlUtils$Incoming;->getAttributeAsString(Lorg/w3c/dom/Element;Lcom/metamoji/df/model/IModel;Ljava/lang/String;Ljava/lang/String;)V

    .line 232
    :cond_6
    sget-boolean p2, Lcom/metamoji/noteanytime/ModelInfo;->isTextVerticalWritingEnabled:Z

    if-eqz p2, :cond_8

    .line 233
    const-string p2, "unit-verticalwriting"

    invoke-static {p0, p2, p3}, Lcom/metamoji/cv/xml/XmlUtils$Incoming;->getChildElementByName(Lorg/w3c/dom/Node;Ljava/lang/String;Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object p0

    if-eqz p0, :cond_8

    .line 235
    invoke-interface {p0, v0}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 236
    invoke-static {p0}, Lcom/metamoji/cv/xml/XmlUtils;->isEmpty(Ljava/lang/String;)Z

    move-result p2

    if-nez p2, :cond_8

    .line 237
    const-string p2, "true"

    invoke-virtual {p2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    const-string p2, "textUnitVerticalWriting"

    if-eqz p0, :cond_7

    const/4 p0, 0x1

    .line 238
    invoke-interface {p1, p2, p0}, Lcom/metamoji/df/model/IModel;->setProperty(Ljava/lang/String;Z)V

    return-void

    :cond_7
    const/4 p0, 0x0

    .line 240
    invoke-interface {p1, p2, p0}, Lcom/metamoji/df/model/IModel;->setProperty(Ljava/lang/String;Z)V

    :cond_8
    return-void
.end method


# virtual methods
.method public accept(Lcom/metamoji/cv/CvConvertItem;)Z
    .locals 2

    .line 45
    iget-object v0, p1, Lcom/metamoji/cv/CvConvertItem;->context:Lcom/metamoji/cv/CvConvertContext;

    const-class v1, Lcom/metamoji/cv/xml/CvDirectoryConvertContext;

    invoke-static {v0, v1}, Lcom/metamoji/cm/CmUtils;->as(Ljava/lang/Object;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/metamoji/cv/xml/CvDirectoryConvertContext;

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return p1

    .line 50
    :cond_0
    const-string v1, "MMJNtDocumentSettings"

    invoke-virtual {v0, p1, v1}, Lcom/metamoji/cv/xml/CvDirectoryConvertContext;->fillIncomingItem(Lcom/metamoji/cv/CvConvertItem;Ljava/lang/String;)V

    const/4 p1, 0x1

    return p1
.end method

.method public convert(Lcom/metamoji/cv/CvConvertItem;)V
    .locals 4

    .line 67
    iget-object v0, p1, Lcom/metamoji/cv/CvConvertItem;->context:Lcom/metamoji/cv/CvConvertContext;

    check-cast v0, Lcom/metamoji/cv/xml/CvDirectoryConvertContext;

    .line 69
    iget-object v1, p1, Lcom/metamoji/cv/CvConvertItem;->externalRef:Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/metamoji/cv/xml/CvDirectoryConvertContext;->makeExternalFilePath(Ljava/lang/Object;Z)Ljava/io/File;

    move-result-object v1

    .line 71
    invoke-static {v1}, Lcom/metamoji/cv/xml/XmlUtils;->loadXMLFile(Ljava/io/File;)Lorg/w3c/dom/Document;

    move-result-object v1

    .line 72
    const-string v2, "document-settings"

    const-string v3, "http://xmlns.metamoji.com/noteanytime/documentsettings/1.0"

    invoke-static {v1, v2, v3}, Lcom/metamoji/cv/xml/XmlUtils$Incoming;->getChildElementByName(Lorg/w3c/dom/Node;Ljava/lang/String;Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 80
    iget-object p1, p1, Lcom/metamoji/cv/CvConvertItem;->model:Lcom/metamoji/df/model/IModel;

    invoke-virtual {p0, v1, p1, v0}, Lcom/metamoji/cv/xml/docsettings/CvDocSettingsIncomingSubconverter;->parseDocSettingsElement(Lorg/w3c/dom/Element;Lcom/metamoji/df/model/IModel;Lcom/metamoji/cv/xml/CvDirectoryConvertContext;)V

    return-void

    .line 77
    :cond_0
    new-instance p1, Lcom/metamoji/cm/CmException;

    const-string v0, "CV0016"

    const-string v1, "not a document settings file. (no root element)"

    invoke-direct {p1, v0, v1}, Lcom/metamoji/cm/CmException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw p1
.end method

.method public getKey()Ljava/lang/String;
    .locals 1

    .line 88
    const-string v0, "documentsettings"

    return-object v0
.end method

.method parseDocSettingsElement(Lorg/w3c/dom/Element;Lcom/metamoji/df/model/IModel;Lcom/metamoji/cv/xml/CvDirectoryConvertContext;)V
    .locals 10

    const/4 v0, 0x1

    .line 99
    invoke-interface {p2, v0}, Lcom/metamoji/df/model/IModel;->setVersion(I)V

    .line 103
    const-string v1, "page-header"

    const-string v2, "http://xmlns.metamoji.com/noteanytime/documentsettings/1.0"

    invoke-static {p1, v1, v2}, Lcom/metamoji/cv/xml/XmlUtils$Incoming;->getChildElementByName(Lorg/w3c/dom/Node;Ljava/lang/String;Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v1

    .line 104
    const-string v3, "format"

    if-eqz v1, :cond_0

    .line 105
    const-string v4, "header"

    invoke-static {v1, p2, v4, v3}, Lcom/metamoji/cv/xml/XmlUtils$Incoming;->getAttributeAsString(Lorg/w3c/dom/Element;Lcom/metamoji/df/model/IModel;Ljava/lang/String;Ljava/lang/String;)V

    .line 109
    :cond_0
    const-string v1, "page-footer"

    invoke-static {p1, v1, v2}, Lcom/metamoji/cv/xml/XmlUtils$Incoming;->getChildElementByName(Lorg/w3c/dom/Node;Ljava/lang/String;Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 111
    const-string v4, "footer"

    invoke-static {v1, p2, v4, v3}, Lcom/metamoji/cv/xml/XmlUtils$Incoming;->getAttributeAsString(Lorg/w3c/dom/Element;Lcom/metamoji/df/model/IModel;Ljava/lang/String;Ljava/lang/String;)V

    .line 116
    :cond_1
    const-string v1, "thumbnail"

    invoke-static {p1, v1, v2}, Lcom/metamoji/cv/xml/XmlUtils$Incoming;->getChildElementByName(Lorg/w3c/dom/Node;Ljava/lang/String;Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v3

    const/4 v4, 0x0

    if-eqz v3, :cond_2

    .line 118
    const-string v5, "data"

    invoke-interface {v3, v5}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 119
    invoke-static {v3}, Lcom/metamoji/cv/xml/XmlUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_2

    .line 120
    new-instance v5, Ljava/io/File;

    iget-object v6, p3, Lcom/metamoji/cv/xml/CvDirectoryConvertContext;->directory:Ljava/io/File;

    invoke-direct {v5, v6, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 121
    new-instance v3, Lcom/metamoji/cm/Blob;

    invoke-static {v5}, Lcom/metamoji/cm/CmUtils;->loadFileInBuffer(Ljava/io/File;)[B

    move-result-object v6

    invoke-static {v5}, Lcom/metamoji/noteanytime/cm/CmMimeType;->getMimeType(Ljava/io/File;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v3, v6, v5}, Lcom/metamoji/cm/Blob;-><init>([BLjava/lang/String;)V

    .line 122
    invoke-interface {p2}, Lcom/metamoji/df/model/IModel;->getModelManager()Lcom/metamoji/df/model/IModelManager;

    move-result-object v5

    invoke-interface {v5, v1}, Lcom/metamoji/df/model/IModelManager;->newModel(Ljava/lang/String;)Lcom/metamoji/df/model/IModel;

    move-result-object v5

    .line 123
    invoke-interface {v5, v1, v3}, Lcom/metamoji/df/model/IModel;->setProperty(Ljava/lang/String;Lcom/metamoji/cm/Blob;)V

    .line 124
    invoke-interface {p2, v1, v5}, Lcom/metamoji/df/model/IModel;->setProperty(Ljava/lang/String;Lcom/metamoji/df/model/IModel;)V

    move v1, v0

    goto :goto_0

    :cond_2
    move v1, v4

    .line 128
    :goto_0
    const-string v3, "thumbnailType"

    invoke-interface {p2, v3, v1}, Lcom/metamoji/df/model/IModel;->setProperty(Ljava/lang/String;I)V

    .line 131
    const-string v1, "front-cover"

    invoke-static {p1, v1, v2}, Lcom/metamoji/cv/xml/XmlUtils$Incoming;->getChildElementByName(Lorg/w3c/dom/Node;Ljava/lang/String;Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v1

    .line 132
    const-string v3, "value"

    const-string v5, "false"

    const-string v6, "true"

    if-eqz v1, :cond_6

    .line 133
    invoke-interface {v1, v3}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 134
    invoke-static {v7}, Lcom/metamoji/cv/xml/XmlUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_4

    .line 135
    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    const-string v9, "frontCover"

    if-eqz v8, :cond_3

    .line 136
    invoke-interface {p2, v9, v0}, Lcom/metamoji/df/model/IModel;->setProperty(Ljava/lang/String;Z)V

    goto :goto_1

    .line 137
    :cond_3
    invoke-virtual {v5, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_4

    .line 138
    invoke-interface {p2, v9, v4}, Lcom/metamoji/df/model/IModel;->setProperty(Ljava/lang/String;Z)V

    .line 141
    :cond_4
    :goto_1
    const-string v7, "print"

    invoke-interface {v1, v7}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 142
    invoke-static {v1}, Lcom/metamoji/cv/xml/XmlUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_6

    .line 143
    invoke-virtual {v6, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    const-string v8, "noFrontCoverOnPrinting"

    if-eqz v7, :cond_5

    .line 144
    invoke-interface {p2, v8, v4}, Lcom/metamoji/df/model/IModel;->setProperty(Ljava/lang/String;Z)V

    goto :goto_2

    .line 145
    :cond_5
    invoke-virtual {v5, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 146
    invoke-interface {p2, v8, v0}, Lcom/metamoji/df/model/IModel;->setProperty(Ljava/lang/String;Z)V

    .line 152
    :cond_6
    :goto_2
    const-string v1, "default-text-unit-style"

    invoke-static {p1, v1, v2}, Lcom/metamoji/cv/xml/XmlUtils$Incoming;->getChildElementByName(Lorg/w3c/dom/Node;Ljava/lang/String;Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v1

    if-eqz v1, :cond_9

    .line 155
    const-string v7, "useSystemTextSettings"

    invoke-interface {v1, v7}, Lorg/w3c/dom/Element;->getAttributeNode(Ljava/lang/String;)Lorg/w3c/dom/Attr;

    move-result-object v8

    if-eqz v8, :cond_8

    .line 158
    invoke-interface {v8}, Lorg/w3c/dom/Attr;->getValue()Ljava/lang/String;

    move-result-object v8

    .line 159
    invoke-virtual {v6, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_7

    .line 161
    invoke-interface {p2, v7, v0}, Lcom/metamoji/df/model/IModel;->setProperty(Ljava/lang/String;Z)V

    goto :goto_3

    .line 163
    :cond_7
    invoke-virtual {v5, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 165
    invoke-interface {p2, v7, v4}, Lcom/metamoji/df/model/IModel;->setProperty(Ljava/lang/String;Z)V

    .line 169
    :cond_8
    :goto_3
    invoke-static {v1, p2, p3, v2}, Lcom/metamoji/cv/xml/docsettings/CvDocSettingsIncomingSubconverter;->parseDefaultTextUnitStyleElement(Lorg/w3c/dom/Element;Lcom/metamoji/df/model/IModel;Lcom/metamoji/cv/xml/CvDirectoryConvertContext;Ljava/lang/String;)V

    .line 173
    :cond_9
    const-string p3, "titlerule"

    invoke-static {p1, p3, v2}, Lcom/metamoji/cv/xml/XmlUtils$Incoming;->getChildElementByName(Lorg/w3c/dom/Node;Ljava/lang/String;Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object p1

    if-eqz p1, :cond_a

    .line 175
    const-string p3, "titleRule"

    invoke-static {p1, p2, p3, v3}, Lcom/metamoji/cv/xml/XmlUtils$Incoming;->getAttributeAsString(Lorg/w3c/dom/Element;Lcom/metamoji/df/model/IModel;Ljava/lang/String;Ljava/lang/String;)V

    :cond_a
    return-void
.end method
