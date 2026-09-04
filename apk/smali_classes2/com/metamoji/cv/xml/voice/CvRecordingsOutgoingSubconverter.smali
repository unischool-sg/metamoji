.class public Lcom/metamoji/cv/xml/voice/CvRecordingsOutgoingSubconverter;
.super Ljava/lang/Object;
.source "CvRecordingsOutgoingSubconverter.java"

# interfaces
.implements Lcom/metamoji/cv/ICvSubconverter;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private addAttributeFromIndex(Lorg/w3c/dom/Element;Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/w3c/dom/Element;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 292
    invoke-interface {p2, p3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    if-nez p2, :cond_0

    return-void

    .line 296
    :cond_0
    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-interface {p1, p4, p2}, Lorg/w3c/dom/Element;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private generateIndexesElement(Lorg/w3c/dom/Element;Ljava/util/Map;)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/w3c/dom/Element;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 239
    const-string v0, "indexes"

    const-string v1, "http://xmlns.metamoji.com/noteanytime/recordings/1.0"

    invoke-static {p1, v0, v1}, Lcom/metamoji/cv/xml/XmlUtils$Outgoing;->addElement(Lorg/w3c/dom/Element;Ljava/lang/String;Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object p1

    .line 243
    invoke-interface {p2}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 245
    invoke-interface {p2, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map;

    .line 246
    const-string v3, "index"

    invoke-static {p1, v3, v1}, Lcom/metamoji/cv/xml/XmlUtils$Outgoing;->addElement(Lorg/w3c/dom/Element;Ljava/lang/String;Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v3

    .line 248
    const-string v4, "$id"

    const-string v5, "index-id"

    invoke-direct {p0, v3, v2, v4, v5}, Lcom/metamoji/cv/xml/voice/CvRecordingsOutgoingSubconverter;->addAttributeFromIndex(Lorg/w3c/dom/Element;Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)V

    .line 249
    const-string v4, "$title"

    const-string v5, "title"

    invoke-direct {p0, v3, v2, v4, v5}, Lcom/metamoji/cv/xml/voice/CvRecordingsOutgoingSubconverter;->addAttributeFromIndex(Lorg/w3c/dom/Element;Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)V

    .line 250
    const-string v4, "$startTime"

    const-string v5, "start-time"

    invoke-direct {p0, v3, v2, v4, v5}, Lcom/metamoji/cv/xml/voice/CvRecordingsOutgoingSubconverter;->addAttributeFromIndex(Lorg/w3c/dom/Element;Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)V

    .line 251
    const-string v4, "$endTime"

    const-string v5, "end-time"

    invoke-direct {p0, v3, v2, v4, v5}, Lcom/metamoji/cv/xml/voice/CvRecordingsOutgoingSubconverter;->addAttributeFromIndex(Lorg/w3c/dom/Element;Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)V

    .line 252
    const-string v4, "$pageId"

    const-string v5, "page-id"

    invoke-direct {p0, v3, v2, v4, v5}, Lcom/metamoji/cv/xml/voice/CvRecordingsOutgoingSubconverter;->addAttributeFromIndex(Lorg/w3c/dom/Element;Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)V

    .line 256
    const-string v4, "$unknownProperties"

    invoke-interface {v2, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map;

    if-eqz v2, :cond_0

    .line 258
    invoke-interface {v2}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 259
    const-string v6, "nodeName = %s"

    filled-new-array {v5}, [Ljava/lang/Object;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/metamoji/cm/CmLog;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 260
    invoke-interface {v2, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 261
    const-string v7, "value = %s"

    filled-new-array {v6}, [Ljava/lang/Object;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/metamoji/cm/CmLog;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 263
    invoke-interface {v3, v5, v6}, Lorg/w3c/dom/Element;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method private generateRecordingElement(Lorg/w3c/dom/Element;Lcom/metamoji/df/model/IModel;Ljava/lang/String;Lcom/metamoji/cv/xml/CvDirectoryConvertContext;Z)V
    .locals 4

    .line 149
    const-string v0, "http://xmlns.metamoji.com/noteanytime/recordings/1.0"

    const-string v1, "recording"

    invoke-static {p1, v1, v0}, Lcom/metamoji/cv/xml/XmlUtils$Outgoing;->addElement(Lorg/w3c/dom/Element;Ljava/lang/String;Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object p1

    .line 151
    const-string v0, "ticket"

    invoke-interface {p1, v0, p3}, Lorg/w3c/dom/Element;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 154
    const-string p3, "$indexes"

    invoke-interface {p2, p3}, Lcom/metamoji/df/model/IModel;->getPropertyAsDictionary(Ljava/lang/String;)Ljava/util/Map;

    move-result-object p3

    .line 156
    const-string v0, "$url"

    const-string v2, "url"

    invoke-static {p1, p2, v0, v2}, Lcom/metamoji/cv/xml/XmlUtils$Outgoing;->addAttribute(Lorg/w3c/dom/Element;Lcom/metamoji/df/model/IModel;Ljava/lang/String;Ljava/lang/String;)V

    .line 157
    const-string v0, "$title"

    const-string v2, "title"

    invoke-static {p1, p2, v0, v2}, Lcom/metamoji/cv/xml/XmlUtils$Outgoing;->addAttribute(Lorg/w3c/dom/Element;Lcom/metamoji/df/model/IModel;Ljava/lang/String;Ljava/lang/String;)V

    .line 158
    const-string v0, "$mimeType"

    const-string v2, "mime-type"

    invoke-static {p1, p2, v0, v2}, Lcom/metamoji/cv/xml/XmlUtils$Outgoing;->addAttribute(Lorg/w3c/dom/Element;Lcom/metamoji/df/model/IModel;Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p5, :cond_0

    .line 163
    const-string p5, "$cacheFilename"

    invoke-interface {p2, p5}, Lcom/metamoji/df/model/IModel;->getPropertyAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p5

    .line 164
    invoke-static {p5}, Lcom/metamoji/cv/xml/XmlUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 165
    new-instance v0, Ljava/io/File;

    invoke-static {}, Lcom/metamoji/media/voice/VcUtil;->getCacheDir()Ljava/io/File;

    move-result-object v2

    invoke-direct {v0, v2, p5}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 166
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result p5

    if-eqz p5, :cond_0

    .line 167
    new-instance p5, Lcom/metamoji/cv/CvConvertItem;

    invoke-direct {p5}, Lcom/metamoji/cv/CvConvertItem;-><init>()V

    .line 168
    const-string v2, ".m4a"

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p4, p5, v1, v2}, Lcom/metamoji/cv/xml/CvDirectoryConvertContext;->fillOutgoingItem(Lcom/metamoji/cv/CvConvertItem;Ljava/lang/String;Ljava/lang/String;)V

    .line 169
    iget-object v1, p5, Lcom/metamoji/cv/CvConvertItem;->externalRef:Ljava/lang/Object;

    invoke-virtual {p4, v1, v3}, Lcom/metamoji/cv/xml/CvDirectoryConvertContext;->makeExternalFilePath(Ljava/lang/Object;Z)Ljava/io/File;

    move-result-object v1

    .line 170
    invoke-static {v0, v1}, Lcom/metamoji/cm/CmUtils;->copyFile(Ljava/io/File;Ljava/io/File;)Z

    .line 172
    iget-object p5, p5, Lcom/metamoji/cv/CvConvertItem;->externalRef:Ljava/lang/Object;

    invoke-virtual {p4, p5}, Lcom/metamoji/cv/xml/CvDirectoryConvertContext;->makeExternalFilePathRelative(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p4

    .line 173
    const-string p5, "ref"

    invoke-interface {p1, p5, p4}, Lorg/w3c/dom/Element;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 180
    :cond_0
    const-string p4, "$fileId"

    const-string p5, "file-id"

    invoke-static {p1, p2, p4, p5}, Lcom/metamoji/cv/xml/XmlUtils$Outgoing;->addAttribute(Lorg/w3c/dom/Element;Lcom/metamoji/df/model/IModel;Ljava/lang/String;Ljava/lang/String;)V

    .line 181
    const-string p4, "$mediaId"

    const-string p5, "media-id"

    invoke-static {p1, p2, p4, p5}, Lcom/metamoji/cv/xml/XmlUtils$Outgoing;->addAttribute(Lorg/w3c/dom/Element;Lcom/metamoji/df/model/IModel;Ljava/lang/String;Ljava/lang/String;)V

    .line 182
    const-string p4, "$serverType"

    const-string p5, "server-type"

    invoke-static {p1, p2, p4, p5}, Lcom/metamoji/cv/xml/XmlUtils$Outgoing;->addAttribute(Lorg/w3c/dom/Element;Lcom/metamoji/df/model/IModel;Ljava/lang/String;Ljava/lang/String;)V

    .line 185
    :goto_0
    const-string p4, "$roomId"

    const-string p5, "room-id"

    invoke-static {p1, p2, p4, p5}, Lcom/metamoji/cv/xml/XmlUtils$Outgoing;->addAttribute(Lorg/w3c/dom/Element;Lcom/metamoji/df/model/IModel;Ljava/lang/String;Ljava/lang/String;)V

    .line 186
    const-string p4, "$userId"

    const-string p5, "user-id"

    invoke-static {p1, p2, p4, p5}, Lcom/metamoji/cv/xml/XmlUtils$Outgoing;->addAttribute(Lorg/w3c/dom/Element;Lcom/metamoji/df/model/IModel;Ljava/lang/String;Ljava/lang/String;)V

    .line 187
    const-string p4, "$pageId"

    const-string p5, "page-id"

    invoke-static {p1, p2, p4, p5}, Lcom/metamoji/cv/xml/XmlUtils$Outgoing;->addAttribute(Lorg/w3c/dom/Element;Lcom/metamoji/df/model/IModel;Ljava/lang/String;Ljava/lang/String;)V

    .line 188
    const-string p4, "$nickname"

    const-string p5, "nickname"

    invoke-static {p1, p2, p4, p5}, Lcom/metamoji/cv/xml/XmlUtils$Outgoing;->addAttribute(Lorg/w3c/dom/Element;Lcom/metamoji/df/model/IModel;Ljava/lang/String;Ljava/lang/String;)V

    .line 189
    const-string p4, "$startDate"

    const-string p5, "start-date"

    invoke-static {p1, p2, p4, p5}, Lcom/metamoji/cv/xml/XmlUtils$Outgoing;->addAttribute(Lorg/w3c/dom/Element;Lcom/metamoji/df/model/IModel;Ljava/lang/String;Ljava/lang/String;)V

    .line 190
    const-string p4, "$duration"

    const-string p5, "duration"

    invoke-static {p1, p2, p4, p5}, Lcom/metamoji/cv/xml/XmlUtils$Outgoing;->addAttribute(Lorg/w3c/dom/Element;Lcom/metamoji/df/model/IModel;Ljava/lang/String;Ljava/lang/String;)V

    .line 194
    const-string p4, "$unknownProperties"

    .line 195
    invoke-interface {p2, p4}, Lcom/metamoji/df/model/IModel;->getPropertyAsDictionary(Ljava/lang/String;)Ljava/util/Map;

    move-result-object p2

    if-eqz p2, :cond_1

    .line 197
    invoke-interface {p2}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object p4

    invoke-interface {p4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p4

    :goto_1
    invoke-interface {p4}, Ljava/util/Iterator;->hasNext()Z

    move-result p5

    if-eqz p5, :cond_1

    invoke-interface {p4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p5

    check-cast p5, Ljava/lang/String;

    .line 198
    const-string v0, "nodeName = %s"

    filled-new-array {p5}, [Ljava/lang/Object;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/metamoji/cm/CmLog;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 199
    invoke-interface {p2, p5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 200
    const-string v1, "value = %s"

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/metamoji/cm/CmLog;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 202
    invoke-interface {p1, p5, v0}, Lorg/w3c/dom/Element;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :cond_1
    if-eqz p3, :cond_2

    .line 229
    invoke-direct {p0, p1, p3}, Lcom/metamoji/cv/xml/voice/CvRecordingsOutgoingSubconverter;->generateIndexesElement(Lorg/w3c/dom/Element;Ljava/util/Map;)V

    :cond_2
    return-void
.end method

.method private generateRecordingsElement(Lorg/w3c/dom/Document;Lcom/metamoji/df/model/IModel;Lcom/metamoji/cv/xml/CvDirectoryConvertContext;)V
    .locals 8

    .line 99
    const-string v0, "http://xmlns.metamoji.com/noteanytime/recordings/1.0"

    const-string v1, "recordings"

    invoke-interface {p1, v0, v1}, Lorg/w3c/dom/Document;->createElementNS(Ljava/lang/String;Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v3

    .line 100
    invoke-interface {p1, v3}, Lorg/w3c/dom/Document;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    .line 102
    iget-object p1, p3, Lcom/metamoji/cv/xml/CvDirectoryConvertContext;->options:Ljava/util/Map;

    .line 103
    sget-object v0, Lcom/metamoji/media/voice/controller/VcRecordingsDef$VcConvOption;->SHARED:Lcom/metamoji/media/voice/controller/VcRecordingsDef$VcConvOption;

    if-eqz p1, :cond_0

    .line 105
    const-string v0, "included-recordings"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 106
    check-cast v0, Lcom/metamoji/media/voice/controller/VcRecordingsDef$VcConvOption;

    .line 107
    sget-object v1, Lcom/metamoji/media/voice/controller/VcRecordingsDef$VcConvOption;->REMOVED:Lcom/metamoji/media/voice/controller/VcRecordingsDef$VcConvOption;

    if-ne v0, v1, :cond_0

    goto :goto_3

    .line 111
    :cond_0
    sget-object v1, Lcom/metamoji/media/voice/controller/VcRecordingsDef$VcConvOption;->INCLUDED:Lcom/metamoji/media/voice/controller/VcRecordingsDef$VcConvOption;

    if-ne v0, v1, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    move v7, v0

    if-eqz p1, :cond_2

    .line 115
    const-string v0, "recording-tickets"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    .line 116
    instance-of v0, p1, Ljava/util/List;

    if-eqz v0, :cond_2

    .line 117
    check-cast p1, Ljava/util/List;

    goto :goto_1

    :cond_2
    const/4 p1, 0x0

    .line 121
    :goto_1
    invoke-interface {p2}, Lcom/metamoji/df/model/IModel;->getAllPropertyNames()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_6

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    move-object v5, v1

    check-cast v5, Ljava/lang/String;

    if-eqz p1, :cond_3

    .line 123
    invoke-interface {p1, v5}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    goto :goto_2

    .line 128
    :cond_3
    invoke-interface {p2, v5}, Lcom/metamoji/df/model/IModel;->getPropertyAsModel(Ljava/lang/String;)Lcom/metamoji/df/model/IModel;

    move-result-object v4

    if-nez v4, :cond_4

    goto :goto_2

    .line 132
    :cond_4
    const-string v1, "recording"

    invoke-interface {v4}, Lcom/metamoji/df/model/IModel;->getModelType()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5

    goto :goto_2

    :cond_5
    move-object v2, p0

    move-object v6, p3

    .line 136
    invoke-direct/range {v2 .. v7}, Lcom/metamoji/cv/xml/voice/CvRecordingsOutgoingSubconverter;->generateRecordingElement(Lorg/w3c/dom/Element;Lcom/metamoji/df/model/IModel;Ljava/lang/String;Lcom/metamoji/cv/xml/CvDirectoryConvertContext;Z)V

    goto :goto_2

    :cond_6
    :goto_3
    return-void
.end method


# virtual methods
.method public accept(Lcom/metamoji/cv/CvConvertItem;)Z
    .locals 3

    .line 49
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
    const-string v1, "recordings"

    const-string v2, "xml"

    invoke-virtual {v0, p1, v1, v2}, Lcom/metamoji/cv/xml/CvDirectoryConvertContext;->fillOutgoingItem(Lcom/metamoji/cv/CvConvertItem;Ljava/lang/String;Ljava/lang/String;)V

    const/4 p1, 0x1

    return p1
.end method

.method public convert(Lcom/metamoji/cv/CvConvertItem;)V
    .locals 3

    .line 71
    iget-object v0, p1, Lcom/metamoji/cv/CvConvertItem;->context:Lcom/metamoji/cv/CvConvertContext;

    check-cast v0, Lcom/metamoji/cv/xml/CvDirectoryConvertContext;

    .line 73
    invoke-static {}, Lcom/metamoji/cv/xml/XmlUtils;->newDocument()Lorg/w3c/dom/Document;

    move-result-object v1

    .line 76
    iget-object v2, p1, Lcom/metamoji/cv/CvConvertItem;->model:Lcom/metamoji/df/model/IModel;

    .line 77
    invoke-direct {p0, v1, v2, v0}, Lcom/metamoji/cv/xml/voice/CvRecordingsOutgoingSubconverter;->generateRecordingsElement(Lorg/w3c/dom/Document;Lcom/metamoji/df/model/IModel;Lcom/metamoji/cv/xml/CvDirectoryConvertContext;)V

    .line 79
    iget-object p1, p1, Lcom/metamoji/cv/CvConvertItem;->externalRef:Ljava/lang/Object;

    const/4 v2, 0x1

    invoke-virtual {v0, p1, v2}, Lcom/metamoji/cv/xml/CvDirectoryConvertContext;->makeExternalFilePath(Ljava/lang/Object;Z)Ljava/io/File;

    move-result-object p1

    .line 80
    invoke-static {v1, p1}, Lcom/metamoji/cv/xml/XmlUtils;->saveXMLFile(Lorg/w3c/dom/Document;Ljava/io/File;)Z

    return-void
.end method

.method public getKey()Ljava/lang/String;
    .locals 1

    .line 88
    const-string v0, "recordings"

    return-object v0
.end method
