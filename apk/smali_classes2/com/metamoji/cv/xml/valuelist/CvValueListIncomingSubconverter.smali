.class public abstract Lcom/metamoji/cv/xml/valuelist/CvValueListIncomingSubconverter;
.super Ljava/lang/Object;
.source "CvValueListIncomingSubconverter.java"

# interfaces
.implements Lcom/metamoji/cv/ICvSubconverter;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/metamoji/cv/xml/valuelist/CvValueListIncomingSubconverter$ParseValueException;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private isInteger(Ljava/lang/String;)Z
    .locals 0

    .line 141
    :try_start_0
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 p1, 0x1

    return p1

    :catchall_0
    const/4 p1, 0x0

    return p1
.end method

.method private parseValue(Lorg/w3c/dom/Element;)Ljava/lang/Object;
    .locals 7

    .line 187
    invoke-interface {p1}, Lorg/w3c/dom/Element;->getLocalName()Ljava/lang/String;

    move-result-object v0

    .line 188
    const-string v1, "string-value"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const-string v2, "value"

    if-eqz v1, :cond_1

    .line 189
    invoke-interface {p1, v2}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 190
    invoke-static {p1}, Lcom/metamoji/cv/xml/XmlUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    return-object p1

    .line 191
    :cond_0
    new-instance p1, Lcom/metamoji/cv/xml/valuelist/CvValueListIncomingSubconverter$ParseValueException;

    invoke-direct {p1, p0}, Lcom/metamoji/cv/xml/valuelist/CvValueListIncomingSubconverter$ParseValueException;-><init>(Lcom/metamoji/cv/xml/valuelist/CvValueListIncomingSubconverter;)V

    throw p1

    .line 194
    :cond_1
    const-string v1, "number-value"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 195
    invoke-interface {p1, v2}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 196
    invoke-static {p1}, Lcom/metamoji/cv/xml/XmlUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 199
    invoke-direct {p0, p1}, Lcom/metamoji/cv/xml/valuelist/CvValueListIncomingSubconverter;->isInteger(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 200
    invoke-static {p1}, Lcom/metamoji/cm/CmUtils;->toInt(Ljava/lang/Object;)Ljava/lang/Integer;

    move-result-object p1

    return-object p1

    .line 202
    :cond_2
    invoke-static {p1}, Lcom/metamoji/cm/CmUtils;->toDouble(Ljava/lang/Object;)Ljava/lang/Double;

    move-result-object p1

    return-object p1

    .line 197
    :cond_3
    new-instance p1, Lcom/metamoji/cv/xml/valuelist/CvValueListIncomingSubconverter$ParseValueException;

    invoke-direct {p1, p0}, Lcom/metamoji/cv/xml/valuelist/CvValueListIncomingSubconverter$ParseValueException;-><init>(Lcom/metamoji/cv/xml/valuelist/CvValueListIncomingSubconverter;)V

    throw p1

    .line 204
    :cond_4
    const-string v1, "boolean-value"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 205
    invoke-interface {p1, v2}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 206
    invoke-static {p1}, Lcom/metamoji/cv/xml/XmlUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_5

    .line 209
    invoke-static {p1}, Lcom/metamoji/cm/CmUtils;->toBool(Ljava/lang/Object;)Z

    move-result p1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1

    .line 207
    :cond_5
    new-instance p1, Lcom/metamoji/cv/xml/valuelist/CvValueListIncomingSubconverter$ParseValueException;

    invoke-direct {p1, p0}, Lcom/metamoji/cv/xml/valuelist/CvValueListIncomingSubconverter$ParseValueException;-><init>(Lcom/metamoji/cv/xml/valuelist/CvValueListIncomingSubconverter;)V

    throw p1

    .line 210
    :cond_6
    const-string v1, "array-value"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    const/4 v4, 0x0

    if-eqz v1, :cond_a

    .line 211
    invoke-interface {p1}, Lorg/w3c/dom/Element;->getChildNodes()Lorg/w3c/dom/NodeList;

    move-result-object p1

    if-eqz p1, :cond_8

    .line 213
    new-instance v4, Ljava/util/ArrayList;

    invoke-interface {p1}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v0

    invoke-direct {v4, v0}, Ljava/util/ArrayList;-><init>(I)V

    .line 215
    invoke-interface {p1}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v0

    move v1, v3

    :goto_0
    if-ge v1, v0, :cond_8

    .line 216
    invoke-interface {p1, v1}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v5

    if-eqz v5, :cond_7

    .line 217
    instance-of v6, v5, Lorg/w3c/dom/Element;

    if-eqz v6, :cond_7

    .line 218
    check-cast v5, Lorg/w3c/dom/Element;

    .line 223
    :try_start_0
    invoke-direct {p0, v5}, Lcom/metamoji/cv/xml/valuelist/CvValueListIncomingSubconverter;->parseValue(Lorg/w3c/dom/Element;)Ljava/lang/Object;

    move-result-object v5

    .line 224
    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Lcom/metamoji/cv/xml/valuelist/CvValueListIncomingSubconverter$ParseValueException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_7
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_8
    if-eqz v4, :cond_9

    goto :goto_1

    :cond_9
    move v2, v3

    .line 231
    :goto_1
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1

    .line 232
    :cond_a
    const-string v1, "map-value"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_e

    .line 233
    invoke-interface {p1}, Lorg/w3c/dom/Element;->getChildNodes()Lorg/w3c/dom/NodeList;

    move-result-object p1

    if-eqz p1, :cond_c

    .line 235
    new-instance v4, Ljava/util/HashMap;

    invoke-interface {p1}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v0

    invoke-direct {v4, v0}, Ljava/util/HashMap;-><init>(I)V

    .line 237
    invoke-interface {p1}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v0

    move v1, v3

    :goto_2
    if-ge v1, v0, :cond_c

    .line 238
    invoke-interface {p1, v1}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v5

    if-eqz v5, :cond_b

    .line 239
    instance-of v6, v5, Lorg/w3c/dom/Element;

    if-eqz v6, :cond_b

    .line 240
    check-cast v5, Lorg/w3c/dom/Element;

    .line 244
    const-string v6, "key"

    invoke-interface {v5, v6}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_b

    .line 247
    :try_start_1
    invoke-direct {p0, v5}, Lcom/metamoji/cv/xml/valuelist/CvValueListIncomingSubconverter;->parseValue(Lorg/w3c/dom/Element;)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v4, v6, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Lcom/metamoji/cv/xml/valuelist/CvValueListIncomingSubconverter$ParseValueException; {:try_start_1 .. :try_end_1} :catch_1

    :catch_1
    :cond_b
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_c
    if-eqz v4, :cond_d

    goto :goto_3

    :cond_d
    move v2, v3

    .line 255
    :goto_3
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1

    .line 256
    :cond_e
    const-string p1, "null-value"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_f

    return-object v4

    .line 259
    :cond_f
    new-instance p1, Lcom/metamoji/cv/xml/valuelist/CvValueListIncomingSubconverter$ParseValueException;

    invoke-direct {p1, p0}, Lcom/metamoji/cv/xml/valuelist/CvValueListIncomingSubconverter$ParseValueException;-><init>(Lcom/metamoji/cv/xml/valuelist/CvValueListIncomingSubconverter;)V

    throw p1
.end method

.method private parseValueListElement(Lorg/w3c/dom/Element;Lcom/metamoji/df/model/IModel;Lcom/metamoji/cv/xml/CvDirectoryConvertContext;)V
    .locals 1

    .line 115
    invoke-virtual {p0}, Lcom/metamoji/cv/xml/valuelist/CvValueListIncomingSubconverter;->targetModelVersion()I

    move-result v0

    invoke-interface {p2, v0}, Lcom/metamoji/df/model/IModel;->setVersion(I)V

    .line 118
    invoke-virtual {p0, p1, p2, p3}, Lcom/metamoji/cv/xml/valuelist/CvValueListIncomingSubconverter;->parseChildValues(Lorg/w3c/dom/Element;Lcom/metamoji/df/model/IModel;Lcom/metamoji/cv/xml/CvDirectoryConvertContext;)V

    return-void
.end method


# virtual methods
.method public accept(Lcom/metamoji/cv/CvConvertItem;)Z
    .locals 2

    .line 63
    iget-object v0, p1, Lcom/metamoji/cv/CvConvertItem;->context:Lcom/metamoji/cv/CvConvertContext;

    const-class v1, Lcom/metamoji/cv/xml/CvDirectoryConvertContext;

    invoke-static {v0, v1}, Lcom/metamoji/cm/CmUtils;->as(Ljava/lang/Object;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/metamoji/cv/xml/CvDirectoryConvertContext;

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return p1

    .line 68
    :cond_0
    invoke-virtual {p0}, Lcom/metamoji/cv/xml/valuelist/CvValueListIncomingSubconverter;->targetModelType()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lcom/metamoji/cv/xml/CvDirectoryConvertContext;->fillIncomingItem(Lcom/metamoji/cv/CvConvertItem;Ljava/lang/String;)V

    const/4 p1, 0x1

    return p1
.end method

.method public convert(Lcom/metamoji/cv/CvConvertItem;)V
    .locals 4

    .line 86
    iget-object v0, p1, Lcom/metamoji/cv/CvConvertItem;->context:Lcom/metamoji/cv/CvConvertContext;

    check-cast v0, Lcom/metamoji/cv/xml/CvDirectoryConvertContext;

    .line 88
    iget-object v1, p1, Lcom/metamoji/cv/CvConvertItem;->externalRef:Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/metamoji/cv/xml/CvDirectoryConvertContext;->makeExternalFilePath(Ljava/lang/Object;Z)Ljava/io/File;

    move-result-object v1

    .line 89
    invoke-static {v1}, Lcom/metamoji/cv/xml/XmlUtils;->loadXMLFile(Ljava/io/File;)Lorg/w3c/dom/Document;

    move-result-object v1

    .line 90
    const-string v2, "value-list"

    invoke-virtual {p0}, Lcom/metamoji/cv/xml/valuelist/CvValueListIncomingSubconverter;->namespaceURI()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcom/metamoji/cv/xml/XmlUtils$Incoming;->getChildElementByName(Lorg/w3c/dom/Node;Ljava/lang/String;Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 96
    iget-object p1, p1, Lcom/metamoji/cv/CvConvertItem;->model:Lcom/metamoji/df/model/IModel;

    invoke-direct {p0, v1, p1, v0}, Lcom/metamoji/cv/xml/valuelist/CvValueListIncomingSubconverter;->parseValueListElement(Lorg/w3c/dom/Element;Lcom/metamoji/df/model/IModel;Lcom/metamoji/cv/xml/CvDirectoryConvertContext;)V

    return-void

    .line 93
    :cond_0
    new-instance p1, Lcom/metamoji/cm/CmException;

    const-string v0, "CV0049"

    const-string v1, "invalid file."

    invoke-direct {p1, v0, v1}, Lcom/metamoji/cm/CmException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw p1
.end method

.method public getKey()Ljava/lang/String;
    .locals 1

    .line 104
    invoke-virtual {p0}, Lcom/metamoji/cv/xml/valuelist/CvValueListIncomingSubconverter;->targetFilePrefix()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public abstract namespaceURI()Ljava/lang/String;
.end method

.method protected parseChildValues(Lorg/w3c/dom/Element;Lcom/metamoji/df/model/IModel;Lcom/metamoji/cv/xml/CvDirectoryConvertContext;)V
    .locals 4

    .line 125
    invoke-interface {p1}, Lorg/w3c/dom/Element;->getChildNodes()Lorg/w3c/dom/NodeList;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 127
    invoke-interface {p1}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    .line 128
    invoke-interface {p1, v1}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 129
    instance-of v3, v2, Lorg/w3c/dom/Element;

    if-eqz v3, :cond_0

    .line 130
    check-cast v2, Lorg/w3c/dom/Element;

    invoke-virtual {p0, v2, p2, p3}, Lcom/metamoji/cv/xml/valuelist/CvValueListIncomingSubconverter;->parseValueElement(Lorg/w3c/dom/Element;Lcom/metamoji/df/model/IModel;Lcom/metamoji/cv/xml/CvDirectoryConvertContext;)V

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method protected parseValueElement(Lorg/w3c/dom/Element;Lcom/metamoji/df/model/IModel;Lcom/metamoji/cv/xml/CvDirectoryConvertContext;)V
    .locals 0

    .line 166
    const-string p3, "key"

    invoke-interface {p1, p3}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    if-nez p3, :cond_0

    goto :goto_0

    .line 172
    :cond_0
    :try_start_0
    invoke-direct {p0, p1}, Lcom/metamoji/cv/xml/valuelist/CvValueListIncomingSubconverter;->parseValue(Lorg/w3c/dom/Element;)Ljava/lang/Object;

    move-result-object p1

    invoke-interface {p2, p3, p1}, Lcom/metamoji/df/model/IModel;->setPropertyWithObject(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_0
    .catch Lcom/metamoji/cv/xml/valuelist/CvValueListIncomingSubconverter$ParseValueException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :goto_0
    return-void
.end method

.method public abstract targetFilePrefix()Ljava/lang/String;
.end method

.method public abstract targetModelType()Ljava/lang/String;
.end method

.method public abstract targetModelVersion()I
.end method
