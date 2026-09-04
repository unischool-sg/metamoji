.class public Lcom/metamoji/cv/xml/bgimage/CvBGImageOutgoingSubconverter;
.super Ljava/lang/Object;
.source "CvBGImageOutgoingSubconverter.java"

# interfaces
.implements Lcom/metamoji/cv/ICvSubconverter;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public accept(Lcom/metamoji/cv/CvConvertItem;)Z
    .locals 3

    .line 40
    iget-object v0, p1, Lcom/metamoji/cv/CvConvertItem;->context:Lcom/metamoji/cv/CvConvertContext;

    const-class v1, Lcom/metamoji/cv/xml/CvDirectoryConvertContext;

    invoke-static {v0, v1}, Lcom/metamoji/cm/CmUtils;->as(Ljava/lang/Object;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/metamoji/cv/xml/CvDirectoryConvertContext;

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return p1

    .line 45
    :cond_0
    const-string v1, "bgimage"

    const-string v2, "xml"

    invoke-virtual {v0, p1, v1, v2}, Lcom/metamoji/cv/xml/CvDirectoryConvertContext;->fillOutgoingItem(Lcom/metamoji/cv/CvConvertItem;Ljava/lang/String;Ljava/lang/String;)V

    const/4 p1, 0x1

    return p1
.end method

.method public convert(Lcom/metamoji/cv/CvConvertItem;)V
    .locals 3

    .line 62
    iget-object v0, p1, Lcom/metamoji/cv/CvConvertItem;->context:Lcom/metamoji/cv/CvConvertContext;

    check-cast v0, Lcom/metamoji/cv/xml/CvDirectoryConvertContext;

    .line 64
    invoke-static {}, Lcom/metamoji/cv/xml/XmlUtils;->newDocument()Lorg/w3c/dom/Document;

    move-result-object v1

    .line 66
    iget-object v2, p1, Lcom/metamoji/cv/CvConvertItem;->model:Lcom/metamoji/df/model/IModel;

    .line 67
    invoke-virtual {p0, v1, v2}, Lcom/metamoji/cv/xml/bgimage/CvBGImageOutgoingSubconverter;->generateBGImageElement(Lorg/w3c/dom/Document;Lcom/metamoji/df/model/IModel;)V

    .line 69
    iget-object p1, p1, Lcom/metamoji/cv/CvConvertItem;->externalRef:Ljava/lang/Object;

    const/4 v2, 0x1

    invoke-virtual {v0, p1, v2}, Lcom/metamoji/cv/xml/CvDirectoryConvertContext;->makeExternalFilePath(Ljava/lang/Object;Z)Ljava/io/File;

    move-result-object p1

    .line 70
    invoke-static {v1, p1}, Lcom/metamoji/cv/xml/XmlUtils;->saveXMLFile(Lorg/w3c/dom/Document;Ljava/io/File;)Z

    return-void
.end method

.method generateBGImageElement(Lorg/w3c/dom/Document;Lcom/metamoji/df/model/IModel;)V
    .locals 8

    .line 87
    const-string v0, "bgimage"

    const-string v1, "http://xmlns.metamoji.com/noteanytime/bgimage/1.0"

    invoke-interface {p1, v1, v0}, Lorg/w3c/dom/Document;->createElementNS(Ljava/lang/String;Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v2

    .line 90
    const-string v0, "unitId"

    const-string v3, "unit-id"

    invoke-static {v2, p2, v0, v3}, Lcom/metamoji/cv/xml/XmlUtils$Outgoing;->addAttribute(Lorg/w3c/dom/Element;Lcom/metamoji/df/model/IModel;Ljava/lang/String;Ljava/lang/String;)V

    .line 93
    const-string v6, "http://xmlns.metamoji.com/noteanytime/bgimage/1.0"

    const-string v7, "attachment-ticket"

    const-string v4, "imageTicket"

    const-string v5, "image-data"

    move-object v3, p2

    invoke-static/range {v2 .. v7}, Lcom/metamoji/cv/xml/XmlUtils$Outgoing;->addElementWithAttribute(Lorg/w3c/dom/Element;Lcom/metamoji/df/model/IModel;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/w3c/dom/Element;

    .line 96
    sget-object p2, Lcom/metamoji/un/bgimage/UnBGImageUnit$Style;->NONE:Lcom/metamoji/un/bgimage/UnBGImageUnit$Style;

    invoke-virtual {p2}, Lcom/metamoji/un/bgimage/UnBGImageUnit$Style;->intValue()I

    move-result p2

    const-string v0, "bgStyle"

    invoke-interface {v3, v0, p2}, Lcom/metamoji/df/model/IModel;->getPropertyAsInt(Ljava/lang/String;I)I

    move-result p2

    .line 98
    sget-object v0, Lcom/metamoji/cv/xml/bgimage/CvBGImageOutgoingSubconverter$1;->$SwitchMap$com$metamoji$un$bgimage$UnBGImageUnit$Style:[I

    invoke-static {p2}, Lcom/metamoji/un/bgimage/UnBGImageUnit$Style;->valueOf(I)Lcom/metamoji/un/bgimage/UnBGImageUnit$Style;

    move-result-object p2

    invoke-virtual {p2}, Lcom/metamoji/un/bgimage/UnBGImageUnit$Style;->ordinal()I

    move-result p2

    aget p2, v0, p2

    const/4 v0, 0x1

    if-eq p2, v0, :cond_3

    const/4 v0, 0x2

    if-eq p2, v0, :cond_2

    const/4 v0, 0x3

    if-eq p2, v0, :cond_1

    const/4 v0, 0x4

    if-eq p2, v0, :cond_0

    const/4 p2, 0x0

    goto :goto_0

    .line 110
    :cond_0
    const-string p2, "fit-to-whole-paper"

    goto :goto_0

    .line 107
    :cond_1
    const-string p2, "tiled"

    goto :goto_0

    .line 104
    :cond_2
    const-string p2, "fit-to-paper"

    goto :goto_0

    .line 101
    :cond_3
    const-string p2, "center"

    :goto_0
    if-eqz p2, :cond_4

    .line 115
    const-string v0, "bgstyle"

    const-string v4, "style"

    invoke-static {v2, p2, v0, v1, v4}, Lcom/metamoji/cv/xml/XmlUtils$Outgoing;->addElementWithAttribute(Lorg/w3c/dom/Element;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/w3c/dom/Element;

    .line 119
    :cond_4
    const-string p2, "bgColor"

    invoke-interface {v3, p2}, Lcom/metamoji/df/model/IModel;->getPropertyAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    if-eqz p2, :cond_5

    .line 121
    const-string v0, "bgcolor"

    const-string v4, "color"

    invoke-static {v2, p2, v0, v1, v4}, Lcom/metamoji/cv/xml/XmlUtils$Outgoing;->addElementWithAttribute(Lorg/w3c/dom/Element;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/w3c/dom/Element;

    .line 125
    :cond_5
    const-string v6, "http://xmlns.metamoji.com/noteanytime/bgimage/1.0"

    const-string v7, "value"

    const-string v4, "opacity"

    const-string v5, "opacity"

    invoke-static/range {v2 .. v7}, Lcom/metamoji/cv/xml/XmlUtils$Outgoing;->addElementWithDoubleAttribute(Lorg/w3c/dom/Element;Lcom/metamoji/df/model/IModel;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 128
    const-string v6, "http://xmlns.metamoji.com/noteanytime/bgimage/1.0"

    const-string v7, "value"

    const-string v4, "colorOpacity"

    const-string v5, "color-opacity"

    invoke-static/range {v2 .. v7}, Lcom/metamoji/cv/xml/XmlUtils$Outgoing;->addElementWithDoubleAttribute(Lorg/w3c/dom/Element;Lcom/metamoji/df/model/IModel;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 132
    invoke-static {v3}, Lcom/metamoji/cv/CvConverterUtils;->loadAdditionalsPropertyFromModel(Lcom/metamoji/df/model/IModel;)Ljava/util/Map;

    move-result-object p2

    if-eqz p2, :cond_6

    .line 134
    invoke-static {p1, p2}, Lcom/metamoji/cv/CvConverterUtils;->generateAdditionalsElement(Lorg/w3c/dom/Document;Ljava/util/Map;)Lorg/w3c/dom/Node;

    move-result-object p2

    invoke-interface {v2, p2}, Lorg/w3c/dom/Element;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    .line 136
    :cond_6
    invoke-interface {p1, v2}, Lorg/w3c/dom/Document;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    return-void
.end method

.method public getKey()Ljava/lang/String;
    .locals 1

    .line 78
    const-string v0, "$bgimage"

    return-object v0
.end method
