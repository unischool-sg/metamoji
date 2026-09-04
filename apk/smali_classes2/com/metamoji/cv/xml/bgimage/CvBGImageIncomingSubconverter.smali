.class public Lcom/metamoji/cv/xml/bgimage/CvBGImageIncomingSubconverter;
.super Ljava/lang/Object;
.source "CvBGImageIncomingSubconverter.java"

# interfaces
.implements Lcom/metamoji/cv/ICvSubconverter;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public accept(Lcom/metamoji/cv/CvConvertItem;)Z
    .locals 2

    .line 41
    iget-object v0, p1, Lcom/metamoji/cv/CvConvertItem;->context:Lcom/metamoji/cv/CvConvertContext;

    const-class v1, Lcom/metamoji/cv/xml/CvDirectoryConvertContext;

    invoke-static {v0, v1}, Lcom/metamoji/cm/CmUtils;->as(Ljava/lang/Object;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/metamoji/cv/xml/CvDirectoryConvertContext;

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return p1

    .line 46
    :cond_0
    const-string v1, "$bgimage"

    invoke-virtual {v0, p1, v1}, Lcom/metamoji/cv/xml/CvDirectoryConvertContext;->fillIncomingItem(Lcom/metamoji/cv/CvConvertItem;Ljava/lang/String;)V

    const/4 p1, 0x1

    return p1
.end method

.method public convert(Lcom/metamoji/cv/CvConvertItem;)V
    .locals 4

    .line 64
    iget-object v0, p1, Lcom/metamoji/cv/CvConvertItem;->context:Lcom/metamoji/cv/CvConvertContext;

    check-cast v0, Lcom/metamoji/cv/xml/CvDirectoryConvertContext;

    .line 66
    iget-object v1, p1, Lcom/metamoji/cv/CvConvertItem;->externalRef:Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/metamoji/cv/xml/CvDirectoryConvertContext;->makeExternalFilePath(Ljava/lang/Object;Z)Ljava/io/File;

    move-result-object v1

    .line 68
    invoke-static {v1}, Lcom/metamoji/cv/xml/XmlUtils;->loadXMLFile(Ljava/io/File;)Lorg/w3c/dom/Document;

    move-result-object v1

    .line 69
    const-string v2, "bgimage"

    const-string v3, "http://xmlns.metamoji.com/noteanytime/bgimage/1.0"

    invoke-static {v1, v2, v3}, Lcom/metamoji/cv/xml/XmlUtils$Incoming;->getChildElementByName(Lorg/w3c/dom/Node;Ljava/lang/String;Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 76
    iget-object p1, p1, Lcom/metamoji/cv/CvConvertItem;->model:Lcom/metamoji/df/model/IModel;

    invoke-virtual {p0, v1, p1, v0}, Lcom/metamoji/cv/xml/bgimage/CvBGImageIncomingSubconverter;->parseBGImageElement(Lorg/w3c/dom/Element;Lcom/metamoji/df/model/IModel;Lcom/metamoji/cv/xml/CvDirectoryConvertContext;)V

    return-void

    .line 73
    :cond_0
    new-instance p1, Lcom/metamoji/cm/CmException;

    const-string v0, "CV0003"

    const-string v1, "not a bgImage data file. (no root element)"

    invoke-direct {p1, v0, v1}, Lcom/metamoji/cm/CmException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw p1
.end method

.method public getKey()Ljava/lang/String;
    .locals 1

    .line 84
    const-string v0, "bgimage"

    return-object v0
.end method

.method parseBGImageElement(Lorg/w3c/dom/Element;Lcom/metamoji/df/model/IModel;Lcom/metamoji/cv/xml/CvDirectoryConvertContext;)V
    .locals 3

    const/4 p3, 0x1

    .line 95
    invoke-interface {p2, p3}, Lcom/metamoji/df/model/IModel;->setVersion(I)V

    .line 98
    const-string p3, "unitId"

    const-string v0, "unit-id"

    invoke-static {p1, p2, p3, v0}, Lcom/metamoji/cv/xml/XmlUtils$Incoming;->getAttributeAsString(Lorg/w3c/dom/Element;Lcom/metamoji/df/model/IModel;Ljava/lang/String;Ljava/lang/String;)V

    .line 101
    const-string p3, "image-data"

    const-string v0, "http://xmlns.metamoji.com/noteanytime/bgimage/1.0"

    invoke-static {p1, p3, v0}, Lcom/metamoji/cv/xml/XmlUtils$Incoming;->getChildElementByName(Lorg/w3c/dom/Node;Ljava/lang/String;Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object p3

    if-eqz p3, :cond_0

    .line 103
    const-string v1, "imageTicket"

    const-string v2, "attachment-ticket"

    invoke-static {p3, p2, v1, v2}, Lcom/metamoji/cv/xml/XmlUtils$Incoming;->getAttributeAsString(Lorg/w3c/dom/Element;Lcom/metamoji/df/model/IModel;Ljava/lang/String;Ljava/lang/String;)V

    .line 107
    :cond_0
    const-string p3, "bgstyle"

    invoke-static {p1, p3, v0}, Lcom/metamoji/cv/xml/XmlUtils$Incoming;->getChildElementByName(Lorg/w3c/dom/Node;Ljava/lang/String;Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object p3

    if-eqz p3, :cond_5

    .line 109
    const-string v1, "style"

    invoke-interface {p3, v1}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    .line 110
    sget-object v1, Lcom/metamoji/un/bgimage/UnBGImageUnit$Style;->NONE:Lcom/metamoji/un/bgimage/UnBGImageUnit$Style;

    .line 111
    const-string v2, "center"

    invoke-virtual {p3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 112
    sget-object v1, Lcom/metamoji/un/bgimage/UnBGImageUnit$Style;->CENTER:Lcom/metamoji/un/bgimage/UnBGImageUnit$Style;

    goto :goto_0

    .line 113
    :cond_1
    const-string v2, "fit-to-paper"

    invoke-virtual {p3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 114
    sget-object v1, Lcom/metamoji/un/bgimage/UnBGImageUnit$Style;->FIT_TO_PAPER:Lcom/metamoji/un/bgimage/UnBGImageUnit$Style;

    goto :goto_0

    .line 115
    :cond_2
    const-string v2, "tiled"

    invoke-virtual {p3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 116
    sget-object v1, Lcom/metamoji/un/bgimage/UnBGImageUnit$Style;->TILED:Lcom/metamoji/un/bgimage/UnBGImageUnit$Style;

    goto :goto_0

    .line 117
    :cond_3
    const-string v2, "fit-to-whole-paper"

    invoke-virtual {p3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_4

    .line 118
    sget-object v1, Lcom/metamoji/un/bgimage/UnBGImageUnit$Style;->FIT_TO_WHOLE_PAPER:Lcom/metamoji/un/bgimage/UnBGImageUnit$Style;

    .line 120
    :cond_4
    :goto_0
    sget-object p3, Lcom/metamoji/un/bgimage/UnBGImageUnit$Style;->NONE:Lcom/metamoji/un/bgimage/UnBGImageUnit$Style;

    if-eq v1, p3, :cond_5

    .line 121
    const-string p3, "bgStyle"

    invoke-virtual {v1}, Lcom/metamoji/un/bgimage/UnBGImageUnit$Style;->intValue()I

    move-result v1

    invoke-interface {p2, p3, v1}, Lcom/metamoji/df/model/IModel;->setProperty(Ljava/lang/String;I)V

    .line 126
    :cond_5
    const-string p3, "bgcolor"

    invoke-static {p1, p3, v0}, Lcom/metamoji/cv/xml/XmlUtils$Incoming;->getChildElementByName(Lorg/w3c/dom/Node;Ljava/lang/String;Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object p3

    if-eqz p3, :cond_6

    .line 128
    const-string v1, "bgColor"

    const-string v2, "color"

    invoke-static {p3, p2, v1, v2}, Lcom/metamoji/cv/xml/XmlUtils$Incoming;->getAttributeAsString(Lorg/w3c/dom/Element;Lcom/metamoji/df/model/IModel;Ljava/lang/String;Ljava/lang/String;)V

    .line 132
    :cond_6
    const-string p3, "opacity"

    invoke-static {p1, p3, v0}, Lcom/metamoji/cv/xml/XmlUtils$Incoming;->getChildElementByName(Lorg/w3c/dom/Node;Ljava/lang/String;Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v1

    .line 133
    const-string v2, "value"

    if-eqz v1, :cond_7

    .line 134
    invoke-static {v1, p2, p3, v2}, Lcom/metamoji/cv/xml/XmlUtils$Incoming;->getAttributeAsDouble(Lorg/w3c/dom/Element;Lcom/metamoji/df/model/IModel;Ljava/lang/String;Ljava/lang/String;)V

    .line 138
    :cond_7
    const-string p3, "color-opacity"

    invoke-static {p1, p3, v0}, Lcom/metamoji/cv/xml/XmlUtils$Incoming;->getChildElementByName(Lorg/w3c/dom/Node;Ljava/lang/String;Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object p3

    if-eqz p3, :cond_8

    .line 140
    const-string v0, "colorOpacity"

    invoke-static {p3, p2, v0, v2}, Lcom/metamoji/cv/xml/XmlUtils$Incoming;->getAttributeAsDouble(Lorg/w3c/dom/Element;Lcom/metamoji/df/model/IModel;Ljava/lang/String;Ljava/lang/String;)V

    .line 144
    :cond_8
    invoke-static {p1}, Lcom/metamoji/cv/CvConverterUtils;->childAdditionalsElement(Lorg/w3c/dom/Element;)Lorg/w3c/dom/Element;

    move-result-object p1

    if-eqz p1, :cond_9

    .line 146
    invoke-static {p1}, Lcom/metamoji/cv/CvConverterUtils;->parseAdditionalsElement(Lorg/w3c/dom/Element;)Ljava/util/Map;

    move-result-object p1

    .line 147
    invoke-static {p1, p2}, Lcom/metamoji/cv/CvConverterUtils;->saveAdditionalsProperty(Ljava/util/Map;Lcom/metamoji/df/model/IModel;)Lcom/metamoji/df/model/IModel;

    :cond_9
    return-void
.end method
