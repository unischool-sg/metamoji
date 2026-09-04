.class public Lcom/metamoji/cv/xml/drawelements/CvDrawElementOutgoingSubconverter;
.super Lcom/metamoji/cv/xml/draw/CvDrawOutgoingSubconverter;
.source "CvDrawElementOutgoingSubconverter.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 25
    invoke-direct {p0}, Lcom/metamoji/cv/xml/draw/CvDrawOutgoingSubconverter;-><init>()V

    return-void
.end method


# virtual methods
.method public accept(Lcom/metamoji/cv/CvConvertItem;)Z
    .locals 5

    .line 45
    iget-object v0, p1, Lcom/metamoji/cv/CvConvertItem;->context:Lcom/metamoji/cv/CvConvertContext;

    const-class v1, Lcom/metamoji/cv/xml/CvDirectoryConvertContext;

    invoke-static {v0, v1}, Lcom/metamoji/cm/CmUtils;->as(Ljava/lang/Object;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/metamoji/cv/xml/CvDirectoryConvertContext;

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return p1

    .line 54
    :cond_0
    iget-object v1, p1, Lcom/metamoji/cv/CvConvertItem;->model:Lcom/metamoji/df/model/IModel;

    .line 55
    const-string v2, "modelVersion"

    const/4 v3, 0x4

    invoke-interface {v1, v2, v3}, Lcom/metamoji/df/model/IModel;->getPropertyAsInt(Ljava/lang/String;I)I

    move-result v1

    const/4 v2, 0x1

    .line 56
    const-string v4, "xml"

    if-ne v1, v3, :cond_1

    .line 58
    const-string v1, "drawelements2"

    invoke-virtual {v0, p1, v1, v4}, Lcom/metamoji/cv/xml/CvDirectoryConvertContext;->fillOutgoingItem(Lcom/metamoji/cv/CvConvertItem;Ljava/lang/String;Ljava/lang/String;)V

    return v2

    .line 62
    :cond_1
    const-string v1, "drawelements3"

    invoke-virtual {v0, p1, v1, v4}, Lcom/metamoji/cv/xml/CvDirectoryConvertContext;->fillOutgoingItem(Lcom/metamoji/cv/CvConvertItem;Ljava/lang/String;Ljava/lang/String;)V

    return v2
.end method

.method public convert(Lcom/metamoji/cv/CvConvertItem;)V
    .locals 3

    .line 79
    iget-object v0, p1, Lcom/metamoji/cv/CvConvertItem;->context:Lcom/metamoji/cv/CvConvertContext;

    check-cast v0, Lcom/metamoji/cv/xml/CvDirectoryConvertContext;

    .line 81
    invoke-static {}, Lcom/metamoji/cv/xml/XmlUtils;->newDocument()Lorg/w3c/dom/Document;

    move-result-object v1

    .line 84
    iget-object v2, p1, Lcom/metamoji/cv/CvConvertItem;->model:Lcom/metamoji/df/model/IModel;

    .line 85
    invoke-virtual {p0, v1, v2, v0}, Lcom/metamoji/cv/xml/drawelements/CvDrawElementOutgoingSubconverter;->generateDrawElementsElement(Lorg/w3c/dom/Document;Lcom/metamoji/df/model/IModel;Lcom/metamoji/cv/xml/CvDirectoryConvertContext;)V

    .line 87
    iget-object p1, p1, Lcom/metamoji/cv/CvConvertItem;->externalRef:Ljava/lang/Object;

    const/4 v2, 0x1

    invoke-virtual {v0, p1, v2}, Lcom/metamoji/cv/xml/CvDirectoryConvertContext;->makeExternalFilePath(Ljava/lang/Object;Z)Ljava/io/File;

    move-result-object p1

    .line 88
    invoke-static {v1, p1}, Lcom/metamoji/cv/xml/XmlUtils;->saveXMLFile(Lorg/w3c/dom/Document;Ljava/io/File;)Z

    return-void
.end method

.method generateDrawElementsElement(Lorg/w3c/dom/Document;Lcom/metamoji/df/model/IModel;Lcom/metamoji/cv/xml/CvDirectoryConvertContext;)V
    .locals 10

    .line 108
    const-string v0, "http://xmlns.metamoji.com/noteanytime/drawelements/1.0"

    const-string v1, "drawelements"

    invoke-interface {p1, v0, v1}, Lorg/w3c/dom/Document;->createElementNS(Ljava/lang/String;Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v0

    .line 112
    const-string v1, "version"

    invoke-static {v0, p2, v1, v1}, Lcom/metamoji/cv/xml/XmlUtils$Outgoing;->addAttribute(Lorg/w3c/dom/Element;Lcom/metamoji/df/model/IModel;Ljava/lang/String;Ljava/lang/String;)V

    .line 113
    const-string v1, "x"

    invoke-static {v0, p2, v1, v1}, Lcom/metamoji/cv/xml/XmlUtils$Outgoing;->addAttribute(Lorg/w3c/dom/Element;Lcom/metamoji/df/model/IModel;Ljava/lang/String;Ljava/lang/String;)V

    .line 114
    const-string v1, "y"

    invoke-static {v0, p2, v1, v1}, Lcom/metamoji/cv/xml/XmlUtils$Outgoing;->addAttribute(Lorg/w3c/dom/Element;Lcom/metamoji/df/model/IModel;Ljava/lang/String;Ljava/lang/String;)V

    .line 115
    const-string v1, "width"

    const-string v2, "w"

    invoke-static {v0, p2, v1, v2}, Lcom/metamoji/cv/xml/XmlUtils$Outgoing;->addAttribute(Lorg/w3c/dom/Element;Lcom/metamoji/df/model/IModel;Ljava/lang/String;Ljava/lang/String;)V

    .line 116
    const-string v1, "height"

    const-string v2, "h"

    invoke-static {v0, p2, v1, v2}, Lcom/metamoji/cv/xml/XmlUtils$Outgoing;->addAttribute(Lorg/w3c/dom/Element;Lcom/metamoji/df/model/IModel;Ljava/lang/String;Ljava/lang/String;)V

    .line 124
    const-string v1, "modelVersion"

    const/4 v2, 0x1

    invoke-interface {p2, v1, v2}, Lcom/metamoji/df/model/IModel;->getPropertyAsInt(Ljava/lang/String;I)I

    move-result v1

    const/4 v3, 0x4

    .line 129
    const-string v4, "GM"

    const/4 v5, 0x2

    const-string v6, "SM"

    const-string v7, "E"

    const-string v8, "models"

    const/4 v9, 0x0

    if-lt v1, v3, :cond_3

    .line 135
    invoke-interface {p2, v8}, Lcom/metamoji/df/model/IModel;->getPropertyAsList(Ljava/lang/String;)Ljava/util/List;

    move-result-object p2

    .line 139
    invoke-interface {p2, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/metamoji/df/model/IModel;

    if-eqz v1, :cond_0

    .line 140
    invoke-interface {v1}, Lcom/metamoji/df/model/IModel;->getModelType()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v6, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 141
    invoke-super {p0, v0, v1, p3}, Lcom/metamoji/cv/xml/draw/CvDrawOutgoingSubconverter;->generateSMElement(Lorg/w3c/dom/Element;Lcom/metamoji/df/model/IModel;Lcom/metamoji/cv/xml/CvDirectoryConvertContext;)V

    .line 146
    :cond_0
    invoke-interface {p2, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/metamoji/df/model/IModel;

    if-eqz v1, :cond_1

    .line 147
    invoke-interface {v1}, Lcom/metamoji/df/model/IModel;->getModelType()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 148
    invoke-super {p0, v0, v1, p3}, Lcom/metamoji/cv/xml/draw/CvDrawOutgoingSubconverter;->generateGMElement(Lorg/w3c/dom/Element;Lcom/metamoji/df/model/IModel;Lcom/metamoji/cv/xml/CvDirectoryConvertContext;)V

    .line 152
    :cond_1
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v1

    :goto_0
    if-ge v5, v1, :cond_b

    .line 153
    invoke-interface {p2, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/metamoji/df/model/IModel;

    if-eqz v2, :cond_2

    .line 154
    invoke-interface {v2}, Lcom/metamoji/df/model/IModel;->getModelType()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v7, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 155
    invoke-super {p0, v0, v2, p3}, Lcom/metamoji/cv/xml/draw/CvDrawOutgoingSubconverter;->generateEElement(Lorg/w3c/dom/Element;Lcom/metamoji/df/model/IModel;Lcom/metamoji/cv/xml/CvDirectoryConvertContext;)V

    :cond_2
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_3
    const/4 v3, 0x3

    if-ne v1, v3, :cond_8

    .line 163
    iput v9, p0, Lcom/metamoji/cv/xml/drawelements/CvDrawElementOutgoingSubconverter;->m_idCount:I

    .line 164
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lcom/metamoji/cv/xml/drawelements/CvDrawElementOutgoingSubconverter;->m_styleIdMap:Ljava/util/HashMap;

    .line 165
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lcom/metamoji/cv/xml/drawelements/CvDrawElementOutgoingSubconverter;->m_elemIdMap:Ljava/util/HashMap;

    const/4 v1, 0x0

    .line 166
    iput-object v1, p0, Lcom/metamoji/cv/xml/drawelements/CvDrawElementOutgoingSubconverter;->m_groupManager:Lcom/metamoji/un/draw2/library/group/DrGrGroupManager;

    .line 170
    invoke-interface {p2, v8}, Lcom/metamoji/df/model/IModel;->getPropertyAsList(Ljava/lang/String;)Ljava/util/List;

    move-result-object p2

    .line 174
    invoke-interface {p2, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/metamoji/df/model/IModel;

    if-eqz v3, :cond_4

    .line 175
    invoke-interface {v3}, Lcom/metamoji/df/model/IModel;->getModelType()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_4

    .line 176
    invoke-super {p0, v0, v3, p3}, Lcom/metamoji/cv/xml/draw/CvDrawOutgoingSubconverter;->generateStylesElementFromV3(Lorg/w3c/dom/Element;Lcom/metamoji/df/model/IModel;Lcom/metamoji/cv/xml/CvDirectoryConvertContext;)V

    .line 181
    :cond_4
    invoke-interface {p2, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/metamoji/df/model/IModel;

    if-eqz v2, :cond_5

    .line 182
    invoke-interface {v2}, Lcom/metamoji/df/model/IModel;->getModelType()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 183
    new-instance v3, Lcom/metamoji/un/draw2/library/group/DrGrGroupManager;

    invoke-direct {v3, v2}, Lcom/metamoji/un/draw2/library/group/DrGrGroupManager;-><init>(Lcom/metamoji/df/model/IModel;)V

    iput-object v3, p0, Lcom/metamoji/cv/xml/drawelements/CvDrawElementOutgoingSubconverter;->m_groupManager:Lcom/metamoji/un/draw2/library/group/DrGrGroupManager;

    .line 187
    :cond_5
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v2

    :goto_1
    if-ge v5, v2, :cond_7

    .line 188
    invoke-interface {p2, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/metamoji/df/model/IModel;

    if-eqz v3, :cond_6

    .line 189
    invoke-interface {v3}, Lcom/metamoji/df/model/IModel;->getModelType()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v7, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_6

    .line 190
    invoke-super {p0, v3, v0, p3}, Lcom/metamoji/cv/xml/draw/CvDrawOutgoingSubconverter;->generateElemsElementFromV3(Lcom/metamoji/df/model/IModel;Lorg/w3c/dom/Element;Lcom/metamoji/cv/xml/CvDirectoryConvertContext;)V

    :cond_6
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 195
    :cond_7
    iput v9, p0, Lcom/metamoji/cv/xml/drawelements/CvDrawElementOutgoingSubconverter;->m_idCount:I

    .line 196
    iget-object p2, p0, Lcom/metamoji/cv/xml/drawelements/CvDrawElementOutgoingSubconverter;->m_styleIdMap:Ljava/util/HashMap;

    invoke-virtual {p2}, Ljava/util/HashMap;->clear()V

    .line 197
    iput-object v1, p0, Lcom/metamoji/cv/xml/drawelements/CvDrawElementOutgoingSubconverter;->m_styleIdMap:Ljava/util/HashMap;

    .line 198
    iget-object p2, p0, Lcom/metamoji/cv/xml/drawelements/CvDrawElementOutgoingSubconverter;->m_elemIdMap:Ljava/util/HashMap;

    invoke-virtual {p2}, Ljava/util/HashMap;->clear()V

    .line 199
    iput-object v1, p0, Lcom/metamoji/cv/xml/drawelements/CvDrawElementOutgoingSubconverter;->m_elemIdMap:Ljava/util/HashMap;

    .line 200
    iput-object v1, p0, Lcom/metamoji/cv/xml/drawelements/CvDrawElementOutgoingSubconverter;->m_groupManager:Lcom/metamoji/un/draw2/library/group/DrGrGroupManager;

    goto :goto_3

    .line 206
    :cond_8
    invoke-interface {p2, v8}, Lcom/metamoji/df/model/IModel;->getPropertyAsList(Ljava/lang/String;)Ljava/util/List;

    move-result-object p2

    .line 207
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_9
    :goto_2
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_b

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 208
    check-cast v1, Lcom/metamoji/df/model/IModel;

    .line 209
    invoke-interface {v1}, Lcom/metamoji/df/model/IModel;->getModelType()Ljava/lang/String;

    move-result-object v2

    .line 210
    const-string v3, "type=%s"

    filled-new-array {v2}, [Ljava/lang/Object;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/metamoji/cm/CmLog;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 211
    const-string v3, "S"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_a

    .line 212
    invoke-super {p0, v0, v1, p3}, Lcom/metamoji/cv/xml/draw/CvDrawOutgoingSubconverter;->generateStylesElementFromV2(Lorg/w3c/dom/Element;Lcom/metamoji/df/model/IModel;Lcom/metamoji/cv/xml/CvDirectoryConvertContext;)V

    goto :goto_2

    .line 213
    :cond_a
    invoke-virtual {v2, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_9

    .line 214
    invoke-super {p0, v0, v1, p3}, Lcom/metamoji/cv/xml/draw/CvDrawOutgoingSubconverter;->generateElemElementFromV2(Lorg/w3c/dom/Element;Lcom/metamoji/df/model/IModel;Lcom/metamoji/cv/xml/CvDirectoryConvertContext;)V

    goto :goto_2

    .line 219
    :cond_b
    :goto_3
    invoke-interface {p1, v0}, Lorg/w3c/dom/Document;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    return-void
.end method

.method public getKey()Ljava/lang/String;
    .locals 1

    .line 96
    const-string v0, "drawelements"

    return-object v0
.end method
