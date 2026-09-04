.class public abstract Lcom/metamoji/cv/xml/valuelist/CvValueListOutgoingSubconverter;
.super Ljava/lang/Object;
.source "CvValueListOutgoingSubconverter.java"

# interfaces
.implements Lcom/metamoji/cv/ICvSubconverter;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private generateValueListElement(Lorg/w3c/dom/Document;Lcom/metamoji/df/model/IModel;Lcom/metamoji/cv/xml/CvDirectoryConvertContext;)V
    .locals 2

    .line 117
    invoke-virtual {p0}, Lcom/metamoji/cv/xml/valuelist/CvValueListOutgoingSubconverter;->namespaceURI()Ljava/lang/String;

    move-result-object v0

    const-string v1, "value-list"

    invoke-interface {p1, v0, v1}, Lorg/w3c/dom/Document;->createElementNS(Ljava/lang/String;Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v0

    .line 120
    invoke-virtual {p0, v0, p2, p3}, Lcom/metamoji/cv/xml/valuelist/CvValueListOutgoingSubconverter;->addChildValues(Lorg/w3c/dom/Element;Lcom/metamoji/df/model/IModel;Lcom/metamoji/cv/xml/CvDirectoryConvertContext;)V

    .line 121
    invoke-interface {p1, v0}, Lorg/w3c/dom/Document;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    return-void
.end method


# virtual methods
.method public accept(Lcom/metamoji/cv/CvConvertItem;)Z
    .locals 3

    .line 69
    iget-object v0, p1, Lcom/metamoji/cv/CvConvertItem;->context:Lcom/metamoji/cv/CvConvertContext;

    const-class v1, Lcom/metamoji/cv/xml/CvDirectoryConvertContext;

    invoke-static {v0, v1}, Lcom/metamoji/cm/CmUtils;->as(Ljava/lang/Object;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/metamoji/cv/xml/CvDirectoryConvertContext;

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return p1

    .line 74
    :cond_0
    invoke-virtual {p0}, Lcom/metamoji/cv/xml/valuelist/CvValueListOutgoingSubconverter;->targetFilePrefix()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/metamoji/cv/xml/valuelist/CvValueListOutgoingSubconverter;->targetExtension()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, p1, v1, v2}, Lcom/metamoji/cv/xml/CvDirectoryConvertContext;->fillOutgoingItem(Lcom/metamoji/cv/CvConvertItem;Ljava/lang/String;Ljava/lang/String;)V

    const/4 p1, 0x1

    return p1
.end method

.method protected addChildValues(Lorg/w3c/dom/Element;Lcom/metamoji/df/model/IModel;Lcom/metamoji/cv/xml/CvDirectoryConvertContext;)V
    .locals 5

    .line 129
    invoke-interface {p2}, Lcom/metamoji/df/model/IModel;->getAllPropertyNames()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 131
    invoke-interface {p1}, Lorg/w3c/dom/Element;->getOwnerDocument()Lorg/w3c/dom/Document;

    move-result-object v1

    .line 132
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    const/4 v3, 0x0

    .line 133
    invoke-virtual {v2, v3}, Ljava/lang/String;->charAt(I)C

    move-result v3

    const/16 v4, 0x21

    if-ne v3, v4, :cond_1

    goto :goto_0

    .line 137
    :cond_1
    invoke-interface {p2, v2}, Lcom/metamoji/df/model/IModel;->getPropertyAsObject(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    .line 138
    invoke-virtual {p0, v1, v3, v2, p3}, Lcom/metamoji/cv/xml/valuelist/CvValueListOutgoingSubconverter;->generateValueElement(Lorg/w3c/dom/Document;Ljava/lang/Object;Ljava/lang/String;Lcom/metamoji/cv/xml/CvDirectoryConvertContext;)Lorg/w3c/dom/Element;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 140
    invoke-interface {p1, v2}, Lorg/w3c/dom/Element;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    goto :goto_0

    :cond_2
    return-void
.end method

.method public convert(Lcom/metamoji/cv/CvConvertItem;)V
    .locals 3

    .line 90
    iget-object v0, p1, Lcom/metamoji/cv/CvConvertItem;->context:Lcom/metamoji/cv/CvConvertContext;

    check-cast v0, Lcom/metamoji/cv/xml/CvDirectoryConvertContext;

    .line 92
    invoke-static {}, Lcom/metamoji/cv/xml/XmlUtils;->newDocument()Lorg/w3c/dom/Document;

    move-result-object v1

    .line 95
    iget-object v2, p1, Lcom/metamoji/cv/CvConvertItem;->model:Lcom/metamoji/df/model/IModel;

    .line 96
    invoke-direct {p0, v1, v2, v0}, Lcom/metamoji/cv/xml/valuelist/CvValueListOutgoingSubconverter;->generateValueListElement(Lorg/w3c/dom/Document;Lcom/metamoji/df/model/IModel;Lcom/metamoji/cv/xml/CvDirectoryConvertContext;)V

    .line 98
    iget-object p1, p1, Lcom/metamoji/cv/CvConvertItem;->externalRef:Ljava/lang/Object;

    const/4 v2, 0x1

    invoke-virtual {v0, p1, v2}, Lcom/metamoji/cv/xml/CvDirectoryConvertContext;->makeExternalFilePath(Ljava/lang/Object;Z)Ljava/io/File;

    move-result-object p1

    .line 99
    invoke-static {v1, p1}, Lcom/metamoji/cv/xml/XmlUtils;->saveXMLFile(Lorg/w3c/dom/Document;Ljava/io/File;)Z

    return-void
.end method

.method protected generateValueElement(Lorg/w3c/dom/Document;Ljava/lang/Object;Lcom/metamoji/cv/xml/CvDirectoryConvertContext;)Lorg/w3c/dom/Element;
    .locals 4

    if-nez p2, :cond_0

    .line 168
    invoke-virtual {p0}, Lcom/metamoji/cv/xml/valuelist/CvValueListOutgoingSubconverter;->namespaceURI()Ljava/lang/String;

    move-result-object p2

    const-string p3, "null-value"

    invoke-interface {p1, p2, p3}, Lorg/w3c/dom/Document;->createElementNS(Ljava/lang/String;Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object p1

    return-object p1

    .line 170
    :cond_0
    instance-of v0, p2, Ljava/lang/Number;

    const-string v1, "value"

    if-eqz v0, :cond_1

    .line 171
    invoke-virtual {p0}, Lcom/metamoji/cv/xml/valuelist/CvValueListOutgoingSubconverter;->namespaceURI()Ljava/lang/String;

    move-result-object p3

    const-string v0, "number-value"

    invoke-interface {p1, p3, v0}, Lorg/w3c/dom/Document;->createElementNS(Ljava/lang/String;Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object p1

    .line 172
    invoke-static {p2}, Lcom/metamoji/cm/CmUtils;->toString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-interface {p1, v1, p2}, Lorg/w3c/dom/Element;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    return-object p1

    .line 173
    :cond_1
    instance-of v0, p2, Ljava/lang/Boolean;

    if-eqz v0, :cond_3

    .line 174
    invoke-virtual {p0}, Lcom/metamoji/cv/xml/valuelist/CvValueListOutgoingSubconverter;->namespaceURI()Ljava/lang/String;

    move-result-object p3

    const-string v0, "boolean-value"

    invoke-interface {p1, p3, v0}, Lorg/w3c/dom/Document;->createElementNS(Ljava/lang/String;Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object p1

    .line 175
    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    if-eqz p2, :cond_2

    const-string p2, "true"

    goto :goto_0

    :cond_2
    const-string p2, "false"

    :goto_0
    invoke-interface {p1, v1, p2}, Lorg/w3c/dom/Element;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    return-object p1

    .line 176
    :cond_3
    instance-of v0, p2, Ljava/lang/String;

    if-eqz v0, :cond_4

    .line 177
    invoke-virtual {p0}, Lcom/metamoji/cv/xml/valuelist/CvValueListOutgoingSubconverter;->namespaceURI()Ljava/lang/String;

    move-result-object p3

    const-string v0, "string-value"

    invoke-interface {p1, p3, v0}, Lorg/w3c/dom/Document;->createElementNS(Ljava/lang/String;Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object p1

    .line 178
    check-cast p2, Ljava/lang/String;

    invoke-interface {p1, v1, p2}, Lorg/w3c/dom/Element;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    return-object p1

    .line 179
    :cond_4
    instance-of v0, p2, Ljava/util/List;

    if-eqz v0, :cond_7

    .line 180
    invoke-virtual {p0}, Lcom/metamoji/cv/xml/valuelist/CvValueListOutgoingSubconverter;->namespaceURI()Ljava/lang/String;

    move-result-object v0

    const-string v1, "array-value"

    invoke-interface {p1, v0, v1}, Lorg/w3c/dom/Document;->createElementNS(Ljava/lang/String;Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v0

    .line 181
    check-cast p2, Ljava/util/List;

    .line 182
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_5
    :goto_1
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_6

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 183
    invoke-virtual {p0, p1, v1, p3}, Lcom/metamoji/cv/xml/valuelist/CvValueListOutgoingSubconverter;->generateValueElement(Lorg/w3c/dom/Document;Ljava/lang/Object;Lcom/metamoji/cv/xml/CvDirectoryConvertContext;)Lorg/w3c/dom/Element;

    move-result-object v1

    if-eqz v1, :cond_5

    .line 185
    invoke-interface {v0, v1}, Lorg/w3c/dom/Element;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    goto :goto_1

    :cond_6
    return-object v0

    .line 188
    :cond_7
    instance-of v0, p2, Ljava/util/Map;

    if-eqz v0, :cond_a

    .line 190
    invoke-virtual {p0}, Lcom/metamoji/cv/xml/valuelist/CvValueListOutgoingSubconverter;->namespaceURI()Ljava/lang/String;

    move-result-object v0

    const-string v1, "map-value"

    invoke-interface {p1, v0, v1}, Lorg/w3c/dom/Document;->createElementNS(Ljava/lang/String;Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v0

    .line 191
    check-cast p2, Ljava/util/Map;

    .line 193
    invoke-interface {p2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p2

    .line 194
    invoke-interface {p2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_8
    :goto_2
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_9

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 195
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    .line 196
    invoke-virtual {p0, p1, v2, p3}, Lcom/metamoji/cv/xml/valuelist/CvValueListOutgoingSubconverter;->generateValueElement(Lorg/w3c/dom/Document;Ljava/lang/Object;Lcom/metamoji/cv/xml/CvDirectoryConvertContext;)Lorg/w3c/dom/Element;

    move-result-object v2

    if-eqz v2, :cond_8

    .line 198
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    const-string v3, "key"

    invoke-interface {v2, v3, v1}, Lorg/w3c/dom/Element;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 199
    invoke-interface {v0, v2}, Lorg/w3c/dom/Element;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    goto :goto_2

    :cond_9
    return-object v0

    :cond_a
    const/4 p1, 0x0

    return-object p1
.end method

.method protected generateValueElement(Lorg/w3c/dom/Document;Ljava/lang/Object;Ljava/lang/String;Lcom/metamoji/cv/xml/CvDirectoryConvertContext;)Lorg/w3c/dom/Element;
    .locals 0

    .line 150
    invoke-virtual {p0, p1, p2, p4}, Lcom/metamoji/cv/xml/valuelist/CvValueListOutgoingSubconverter;->generateValueElement(Lorg/w3c/dom/Document;Ljava/lang/Object;Lcom/metamoji/cv/xml/CvDirectoryConvertContext;)Lorg/w3c/dom/Element;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 152
    const-string p2, "key"

    invoke-interface {p1, p2, p3}, Lorg/w3c/dom/Element;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-object p1
.end method

.method public getKey()Ljava/lang/String;
    .locals 1

    .line 106
    invoke-virtual {p0}, Lcom/metamoji/cv/xml/valuelist/CvValueListOutgoingSubconverter;->targetModelType()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public namespacePrefix()Ljava/lang/String;
    .locals 1

    .line 48
    const-string v0, ""

    return-object v0
.end method

.method public abstract namespaceURI()Ljava/lang/String;
.end method

.method public abstract targetExtension()Ljava/lang/String;
.end method

.method public abstract targetFilePrefix()Ljava/lang/String;
.end method

.method public abstract targetModelType()Ljava/lang/String;
.end method
