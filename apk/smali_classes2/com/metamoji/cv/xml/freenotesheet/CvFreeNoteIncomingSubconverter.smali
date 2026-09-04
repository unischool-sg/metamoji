.class public Lcom/metamoji/cv/xml/freenotesheet/CvFreeNoteIncomingSubconverter;
.super Ljava/lang/Object;
.source "CvFreeNoteIncomingSubconverter.java"

# interfaces
.implements Lcom/metamoji/cv/ICvSubconverter;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private parseCanonicalPageListElement(Lorg/w3c/dom/Element;Lcom/metamoji/df/model/IModel;Lcom/metamoji/cv/xml/CvHayabusadocConvertContext;)V
    .locals 2

    .line 513
    const-string p3, "canonical-page"

    const-string v0, "http://xmlns.metamoji.com/noteanytime/freenotesheet/1.0"

    invoke-static {p1, p3, v0}, Lcom/metamoji/cv/xml/XmlUtils$Incoming;->listChildElementsByNameEx(Lorg/w3c/dom/Element;Ljava/lang/String;Ljava/lang/String;)Lcom/metamoji/cv/xml/XmlUtils$NodeListEx;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 515
    new-instance p3, Ljava/util/ArrayList;

    invoke-virtual {p1}, Lcom/metamoji/cv/xml/XmlUtils$NodeListEx;->size()I

    move-result v0

    invoke-direct {p3, v0}, Ljava/util/ArrayList;-><init>(I)V

    .line 516
    invoke-virtual {p1}, Lcom/metamoji/cv/xml/XmlUtils$NodeListEx;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/w3c/dom/Node;

    .line 517
    instance-of v1, v0, Lorg/w3c/dom/Element;

    if-eqz v1, :cond_0

    .line 518
    check-cast v0, Lorg/w3c/dom/Element;

    .line 519
    const-string v1, "page-id"

    invoke-interface {v0, v1}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 521
    invoke-interface {p3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 525
    :cond_1
    const-string p1, "canonicalPageList"

    invoke-interface {p2, p1, p3}, Lcom/metamoji/df/model/IModel;->setProperty(Ljava/lang/String;Ljava/util/List;)V

    :cond_2
    return-void
.end method

.method private parseChatListElement(Lorg/w3c/dom/Element;Lcom/metamoji/df/model/IModel;Lcom/metamoji/cv/xml/CvHayabusadocConvertContext;)V
    .locals 6

    .line 537
    invoke-interface {p2}, Lcom/metamoji/df/model/IModel;->getModelManager()Lcom/metamoji/df/model/IModelManager;

    move-result-object v0

    .line 539
    const-string v1, "chat"

    const-string v2, "http://xmlns.metamoji.com/noteanytime/freenotesheet/1.0"

    invoke-static {p1, v1, v2}, Lcom/metamoji/cv/xml/XmlUtils$Incoming;->listChildElementsByNameEx(Lorg/w3c/dom/Element;Ljava/lang/String;Ljava/lang/String;)Lcom/metamoji/cv/xml/XmlUtils$NodeListEx;

    move-result-object p1

    if-eqz p1, :cond_5

    .line 541
    new-instance v1, Ljava/util/ArrayList;

    invoke-virtual {p1}, Lcom/metamoji/cv/xml/XmlUtils$NodeListEx;->size()I

    move-result v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 542
    invoke-virtual {p1}, Lcom/metamoji/cv/xml/XmlUtils$NodeListEx;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/w3c/dom/Node;

    .line 543
    instance-of v3, v2, Lorg/w3c/dom/Element;

    if-eqz v3, :cond_0

    .line 544
    check-cast v2, Lorg/w3c/dom/Element;

    .line 546
    const-string v3, "ref"

    invoke-interface {v2, v3}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_1

    goto :goto_0

    .line 550
    :cond_1
    iget-object v4, p3, Lcom/metamoji/cv/xml/CvHayabusadocConvertContext;->converter:Lcom/metamoji/cv/CvModelConverter;

    invoke-virtual {v4, v3, p3}, Lcom/metamoji/cv/CvModelConverter;->importModels(Ljava/lang/Object;Lcom/metamoji/cv/CvConvertContext;)Lcom/metamoji/df/model/IModel;

    move-result-object v3

    .line 553
    const-string v4, "timestamp"

    invoke-interface {v2, v4}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_2

    .line 555
    const-string v5, "[chat]timestamp"

    invoke-interface {v3, v5, v4}, Lcom/metamoji/df/model/IModel;->setProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 559
    :cond_2
    const-string v4, "nickname"

    invoke-interface {v2, v4}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_3

    .line 561
    const-string v4, "[chat]nickname"

    invoke-interface {v3, v4, v2}, Lcom/metamoji/df/model/IModel;->setProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 564
    :cond_3
    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 568
    :cond_4
    const-string p1, "map"

    invoke-interface {v0, p1}, Lcom/metamoji/df/model/IModelManager;->newModel(Ljava/lang/String;)Lcom/metamoji/df/model/IModel;

    move-result-object p1

    .line 569
    const-string p3, "chatdata"

    invoke-interface {p1, p3, v1}, Lcom/metamoji/df/model/IModel;->setProperty(Ljava/lang/String;Ljava/util/List;)V

    .line 570
    invoke-interface {p2, p3, p1}, Lcom/metamoji/df/model/IModel;->setProperty(Ljava/lang/String;Lcom/metamoji/df/model/IModel;)V

    :cond_5
    return-void
.end method

.method private parseGroupListElement(Lorg/w3c/dom/Element;Lcom/metamoji/df/model/IModel;Lcom/metamoji/cv/xml/CvHayabusadocConvertContext;)V
    .locals 10

    .line 583
    invoke-interface {p2}, Lcom/metamoji/df/model/IModel;->getModelManager()Lcom/metamoji/df/model/IModelManager;

    move-result-object p3

    .line 585
    const-string v0, "group"

    const-string v1, "http://xmlns.metamoji.com/noteanytime/freenotesheet/1.0"

    invoke-static {p1, v0, v1}, Lcom/metamoji/cv/xml/XmlUtils$Incoming;->listChildElementsByNameEx(Lorg/w3c/dom/Element;Ljava/lang/String;Ljava/lang/String;)Lcom/metamoji/cv/xml/XmlUtils$NodeListEx;

    move-result-object p1

    if-eqz p1, :cond_b

    .line 587
    new-instance v0, Ljava/util/ArrayList;

    invoke-virtual {p1}, Lcom/metamoji/cv/xml/XmlUtils$NodeListEx;->size()I

    move-result v2

    invoke-direct {v0, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 588
    invoke-virtual {p1}, Lcom/metamoji/cv/xml/XmlUtils$NodeListEx;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_a

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/w3c/dom/Node;

    .line 589
    instance-of v3, v2, Lorg/w3c/dom/Element;

    if-eqz v3, :cond_0

    .line 590
    check-cast v2, Lorg/w3c/dom/Element;

    .line 592
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    .line 595
    const-string v4, "group-id"

    invoke-interface {v2, v4}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_1

    .line 597
    invoke-interface {v3, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 601
    :cond_1
    const-string v4, "group-name"

    invoke-interface {v2, v4}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_2

    .line 603
    invoke-interface {v3, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 607
    :cond_2
    const-string v4, "user-list"

    invoke-static {v2, v4, v1}, Lcom/metamoji/cv/xml/XmlUtils$Incoming;->getChildElementByName(Lorg/w3c/dom/Node;Ljava/lang/String;Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v2

    if-eqz v2, :cond_9

    .line 609
    const-string v5, "user"

    invoke-static {v2, v5, v1}, Lcom/metamoji/cv/xml/XmlUtils$Incoming;->listChildElementsByNameEx(Lorg/w3c/dom/Element;Ljava/lang/String;Ljava/lang/String;)Lcom/metamoji/cv/xml/XmlUtils$NodeListEx;

    move-result-object v2

    if-eqz v2, :cond_9

    .line 611
    new-instance v5, Ljava/util/ArrayList;

    invoke-virtual {v2}, Lcom/metamoji/cv/xml/XmlUtils$NodeListEx;->size()I

    move-result v6

    invoke-direct {v5, v6}, Ljava/util/ArrayList;-><init>(I)V

    .line 612
    invoke-virtual {v2}, Lcom/metamoji/cv/xml/XmlUtils$NodeListEx;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_3
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_8

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lorg/w3c/dom/Node;

    .line 613
    instance-of v7, v6, Lorg/w3c/dom/Element;

    if-eqz v7, :cond_3

    .line 614
    check-cast v6, Lorg/w3c/dom/Element;

    .line 616
    new-instance v7, Ljava/util/HashMap;

    invoke-direct {v7}, Ljava/util/HashMap;-><init>()V

    .line 619
    const-string v8, "user-id"

    invoke-interface {v6, v8}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    if-eqz v9, :cond_4

    .line 621
    invoke-interface {v7, v8, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 625
    :cond_4
    const-string v8, "user-name"

    invoke-interface {v6, v8}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    if-eqz v9, :cond_5

    .line 627
    invoke-interface {v7, v8, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 631
    :cond_5
    const-string v8, "class-number"

    invoke-interface {v6, v8}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    if-eqz v9, :cond_6

    .line 633
    invoke-interface {v7, v8, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    .line 635
    :cond_6
    const-string v9, ""

    invoke-interface {v7, v8, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 639
    :goto_2
    const-string v8, "login-name"

    invoke-interface {v6, v8}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_7

    .line 642
    invoke-interface {v7, v8, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 645
    :cond_7
    invoke-interface {v5, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 648
    :cond_8
    invoke-interface {v3, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 651
    :cond_9
    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 655
    :cond_a
    const-string p1, "map"

    invoke-interface {p3, p1}, Lcom/metamoji/df/model/IModelManager;->newModel(Ljava/lang/String;)Lcom/metamoji/df/model/IModel;

    move-result-object p1

    .line 656
    const-string p3, "forSchoolGroupList"

    invoke-interface {p1, p3, v0}, Lcom/metamoji/df/model/IModel;->setProperty(Ljava/lang/String;Ljava/util/List;)V

    .line 657
    invoke-interface {p2, p3, p1}, Lcom/metamoji/df/model/IModel;->setProperty(Ljava/lang/String;Lcom/metamoji/df/model/IModel;)V

    :cond_b
    return-void
.end method


# virtual methods
.method public accept(Lcom/metamoji/cv/CvConvertItem;)Z
    .locals 2

    .line 64
    iget-object v0, p1, Lcom/metamoji/cv/CvConvertItem;->context:Lcom/metamoji/cv/CvConvertContext;

    const-class v1, Lcom/metamoji/cv/xml/CvHayabusadocConvertContext;

    invoke-static {v0, v1}, Lcom/metamoji/cm/CmUtils;->as(Ljava/lang/Object;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/metamoji/cv/xml/CvHayabusadocConvertContext;

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return p1

    .line 71
    :cond_0
    iget-object v1, v0, Lcom/metamoji/cv/xml/CvHayabusadocConvertContext;->freenoteModel:Lcom/metamoji/df/model/IModel;

    if-eqz v1, :cond_1

    .line 72
    iget-object v0, v0, Lcom/metamoji/cv/xml/CvHayabusadocConvertContext;->freenoteModel:Lcom/metamoji/df/model/IModel;

    iput-object v0, p1, Lcom/metamoji/cv/CvConvertItem;->model:Lcom/metamoji/df/model/IModel;

    goto :goto_0

    .line 74
    :cond_1
    invoke-virtual {p0}, Lcom/metamoji/cv/xml/freenotesheet/CvFreeNoteIncomingSubconverter;->getKey()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lcom/metamoji/cv/xml/CvHayabusadocConvertContext;->fillIncomingItem(Lcom/metamoji/cv/CvConvertItem;Ljava/lang/String;)V

    .line 75
    iget-object p1, p1, Lcom/metamoji/cv/CvConvertItem;->model:Lcom/metamoji/df/model/IModel;

    iput-object p1, v0, Lcom/metamoji/cv/xml/CvHayabusadocConvertContext;->freenoteModel:Lcom/metamoji/df/model/IModel;

    :goto_0
    const/4 p1, 0x1

    return p1
.end method

.method public convert(Lcom/metamoji/cv/CvConvertItem;)V
    .locals 4

    .line 93
    iget-object v0, p1, Lcom/metamoji/cv/CvConvertItem;->context:Lcom/metamoji/cv/CvConvertContext;

    check-cast v0, Lcom/metamoji/cv/xml/CvHayabusadocConvertContext;

    .line 94
    iget-object v1, p1, Lcom/metamoji/cv/CvConvertItem;->model:Lcom/metamoji/df/model/IModel;

    iput-object v1, v0, Lcom/metamoji/cv/xml/CvHayabusadocConvertContext;->freenoteModel:Lcom/metamoji/df/model/IModel;

    .line 97
    iget-object v1, p1, Lcom/metamoji/cv/CvConvertItem;->externalRef:Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/metamoji/cv/xml/CvHayabusadocConvertContext;->makeExternalFilePath(Ljava/lang/Object;Z)Ljava/io/File;

    move-result-object v1

    .line 99
    invoke-static {v1}, Lcom/metamoji/cv/xml/XmlUtils;->loadXMLFile(Ljava/io/File;)Lorg/w3c/dom/Document;

    move-result-object v1

    .line 100
    const-string v2, "http://xmlns.metamoji.com/noteanytime/freenotesheet/1.0"

    const-string v3, "free-note-sheet"

    invoke-static {v1, v3, v2}, Lcom/metamoji/cv/xml/XmlUtils$Incoming;->getChildElementByName(Lorg/w3c/dom/Node;Ljava/lang/String;Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 107
    iget-object p1, p1, Lcom/metamoji/cv/CvConvertItem;->model:Lcom/metamoji/df/model/IModel;

    invoke-virtual {p0, v1, p1, v0}, Lcom/metamoji/cv/xml/freenotesheet/CvFreeNoteIncomingSubconverter;->parseFreeNoteSheetElement(Lorg/w3c/dom/Element;Lcom/metamoji/df/model/IModel;Lcom/metamoji/cv/xml/CvHayabusadocConvertContext;)V

    return-void

    .line 103
    :cond_0
    const-string p1, "invalid file. root element is null for %s."

    filled-new-array {v3}, [Ljava/lang/Object;

    move-result-object v0

    invoke-static {p1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    .line 104
    new-instance v0, Lcom/metamoji/cm/CmException;

    const-string v1, "CV0023"

    invoke-direct {v0, v1, p1}, Lcom/metamoji/cm/CmException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw v0
.end method

.method public getKey()Ljava/lang/String;
    .locals 1

    .line 114
    const-string v0, "freenotesheet"

    return-object v0
.end method

.method parseFreeNoteSheetElement(Lorg/w3c/dom/Element;Lcom/metamoji/df/model/IModel;Lcom/metamoji/cv/xml/CvHayabusadocConvertContext;)V
    .locals 5

    .line 126
    const-string v0, "password"

    const-string v1, "credential"

    invoke-static {p1, p2, v0, v1}, Lcom/metamoji/cv/xml/XmlUtils$Incoming;->getAttributeAsString(Lorg/w3c/dom/Element;Lcom/metamoji/df/model/IModel;Ljava/lang/String;Ljava/lang/String;)V

    .line 130
    const-string v0, "pages"

    const-string v1, "http://xmlns.metamoji.com/noteanytime/freenotesheet/1.0"

    invoke-static {p1, v0, v1}, Lcom/metamoji/cv/xml/XmlUtils$Incoming;->getChildElementByName(Lorg/w3c/dom/Node;Ljava/lang/String;Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v0

    if-eqz v0, :cond_6

    .line 132
    invoke-virtual {p0, v0, p2, p3}, Lcom/metamoji/cv/xml/freenotesheet/CvFreeNoteIncomingSubconverter;->parsePagesElement(Lorg/w3c/dom/Element;Lcom/metamoji/df/model/IModel;Lcom/metamoji/cv/xml/CvHayabusadocConvertContext;)V

    .line 138
    instance-of v0, p3, Lcom/metamoji/cv/xml/CvAtCollaboConvertContext;

    if-eqz v0, :cond_0

    .line 139
    const-string v2, "canonical-page-list"

    invoke-static {p1, v2, v1}, Lcom/metamoji/cv/xml/XmlUtils$Incoming;->getChildElementByName(Lorg/w3c/dom/Node;Ljava/lang/String;Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 141
    invoke-direct {p0, v2, p2, p3}, Lcom/metamoji/cv/xml/freenotesheet/CvFreeNoteIncomingSubconverter;->parseCanonicalPageListElement(Lorg/w3c/dom/Element;Lcom/metamoji/df/model/IModel;Lcom/metamoji/cv/xml/CvHayabusadocConvertContext;)V

    .line 146
    :cond_0
    const-string v2, "jump-targets"

    invoke-static {p1, v2, v1}, Lcom/metamoji/cv/xml/XmlUtils$Incoming;->getChildElementByName(Lorg/w3c/dom/Node;Ljava/lang/String;Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 148
    invoke-virtual {p0, v2, p2, p3}, Lcom/metamoji/cv/xml/freenotesheet/CvFreeNoteIncomingSubconverter;->parseJumpTargetsElement(Lorg/w3c/dom/Element;Lcom/metamoji/df/model/IModel;Lcom/metamoji/cv/xml/CvHayabusadocConvertContext;)V

    :cond_1
    if-eqz v0, :cond_2

    .line 153
    const-string v2, "chat-list"

    invoke-static {p1, v2, v1}, Lcom/metamoji/cv/xml/XmlUtils$Incoming;->getChildElementByName(Lorg/w3c/dom/Node;Ljava/lang/String;Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v2

    if-eqz v2, :cond_2

    .line 155
    invoke-direct {p0, v2, p2, p3}, Lcom/metamoji/cv/xml/freenotesheet/CvFreeNoteIncomingSubconverter;->parseChatListElement(Lorg/w3c/dom/Element;Lcom/metamoji/df/model/IModel;Lcom/metamoji/cv/xml/CvHayabusadocConvertContext;)V

    :cond_2
    if-eqz v0, :cond_3

    .line 162
    const-string v0, "forschool-group-list"

    invoke-static {p1, v0, v1}, Lcom/metamoji/cv/xml/XmlUtils$Incoming;->getChildElementByName(Lorg/w3c/dom/Node;Ljava/lang/String;Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 164
    invoke-direct {p0, v0, p2, p3}, Lcom/metamoji/cv/xml/freenotesheet/CvFreeNoteIncomingSubconverter;->parseGroupListElement(Lorg/w3c/dom/Element;Lcom/metamoji/df/model/IModel;Lcom/metamoji/cv/xml/CvHayabusadocConvertContext;)V

    .line 170
    :cond_3
    const-string v0, "forSchoolPersonalModeType"

    const-string v2, "forschool-personal-mode-type"

    invoke-static {p1, p2, v0, v2}, Lcom/metamoji/cv/xml/XmlUtils$Incoming;->getAttributeAsInt(Lorg/w3c/dom/Element;Lcom/metamoji/df/model/IModel;Ljava/lang/String;Ljava/lang/String;)V

    .line 172
    const-string v0, "forschool-hidden-student-name"

    invoke-interface {p1, v0}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 173
    const-string v2, "true"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 174
    const-string v3, "forSchoolHiddenStudentName"

    invoke-interface {p2, v3, v0}, Lcom/metamoji/df/model/IModel;->setProperty(Ljava/lang/String;Z)V

    .line 176
    const-string v0, "forschool-allow-everyone-answer"

    invoke-interface {p1, v0}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 177
    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 178
    const-string v2, "forSchoolAllowEveryoneAnswer"

    invoke-interface {p2, v2, v0}, Lcom/metamoji/df/model/IModel;->setProperty(Ljava/lang/String;Z)V

    .line 182
    iget-object v0, p3, Lcom/metamoji/cv/xml/CvHayabusadocConvertContext;->options:Ljava/util/Map;

    if-eqz v0, :cond_5

    .line 183
    const-string v0, "pm"

    invoke-static {p1, v0, v1}, Lcom/metamoji/cv/xml/XmlUtils$Incoming;->getChildElementByName(Lorg/w3c/dom/Node;Ljava/lang/String;Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v0

    if-eqz v0, :cond_5

    .line 185
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 186
    invoke-interface {v0}, Lorg/w3c/dom/Element;->getAttributes()Lorg/w3c/dom/NamedNodeMap;

    move-result-object v0

    const/4 v2, 0x0

    .line 187
    :goto_0
    invoke-interface {v0}, Lorg/w3c/dom/NamedNodeMap;->getLength()I

    move-result v3

    if-ge v2, v3, :cond_4

    .line 188
    invoke-interface {v0, v2}, Lorg/w3c/dom/NamedNodeMap;->item(I)Lorg/w3c/dom/Node;

    move-result-object v3

    .line 189
    invoke-interface {v3}, Lorg/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v4, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 191
    :cond_4
    invoke-interface {v1}, Ljava/util/Map;->size()I

    move-result v0

    if-lez v0, :cond_5

    .line 192
    iget-object p3, p3, Lcom/metamoji/cv/xml/CvHayabusadocConvertContext;->options:Ljava/util/Map;

    const-string v0, "PoisonousMushroom"

    invoke-interface {p3, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 197
    :cond_5
    invoke-static {p1, p2}, Lcom/metamoji/cv/xml/XmlUtils$Incoming;->getAdditionals(Lorg/w3c/dom/Element;Lcom/metamoji/df/model/IModel;)V

    return-void

    .line 134
    :cond_6
    new-instance p1, Lcom/metamoji/cm/CmException;

    const-string p2, "CV0024"

    const-string p3, "pages element is not found."

    invoke-direct {p1, p2, p3}, Lcom/metamoji/cm/CmException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw p1
.end method

.method parseJumpTargetsElement(Lorg/w3c/dom/Element;Lcom/metamoji/df/model/IModel;Lcom/metamoji/cv/xml/CvHayabusadocConvertContext;)V
    .locals 8

    .line 468
    invoke-interface {p2}, Lcom/metamoji/df/model/IModel;->getModelManager()Lcom/metamoji/df/model/IModelManager;

    move-result-object v0

    .line 469
    const-string v1, "linkjumps"

    invoke-interface {v0, v1}, Lcom/metamoji/df/model/IModelManager;->newModel(Ljava/lang/String;)Lcom/metamoji/df/model/IModel;

    move-result-object v2

    const/4 v3, 0x2

    .line 470
    invoke-interface {v2, v3}, Lcom/metamoji/df/model/IModel;->setVersion(I)V

    .line 472
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 473
    const-string v4, "jump-target"

    const-string v5, "http://xmlns.metamoji.com/noteanytime/freenotesheet/1.0"

    invoke-static {p1, v4, v5}, Lcom/metamoji/cv/xml/XmlUtils$Incoming;->listChildElementsByNameEx(Lorg/w3c/dom/Element;Ljava/lang/String;Ljava/lang/String;)Lcom/metamoji/cv/xml/XmlUtils$NodeListEx;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 475
    invoke-virtual {p1}, Lcom/metamoji/cv/xml/XmlUtils$NodeListEx;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/w3c/dom/Node;

    .line 476
    check-cast v4, Lorg/w3c/dom/Element;

    .line 477
    new-instance v5, Ljava/util/HashMap;

    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    .line 478
    const-string v6, "url"

    invoke-interface {v4, v6}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    if-eqz v7, :cond_0

    .line 480
    invoke-virtual {v5, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 483
    :cond_0
    const-string v6, "thumbnail"

    invoke-interface {v4, v6}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_1

    .line 486
    new-instance v6, Ljava/io/File;

    iget-object v7, p3, Lcom/metamoji/cv/xml/CvHayabusadocConvertContext;->directory:Ljava/io/File;

    invoke-direct {v6, v7, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 487
    new-instance v4, Lcom/metamoji/cm/Blob;

    invoke-static {v6}, Lcom/metamoji/cm/CmUtils;->loadFileInBuffer(Ljava/io/File;)[B

    move-result-object v7

    invoke-static {v6}, Lcom/metamoji/noteanytime/cm/CmMimeType;->getMimeType(Ljava/io/File;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v4, v7, v6}, Lcom/metamoji/cm/Blob;-><init>([BLjava/lang/String;)V

    .line 488
    const-string v6, "map"

    invoke-interface {v0, v6}, Lcom/metamoji/df/model/IModelManager;->newModel(Ljava/lang/String;)Lcom/metamoji/df/model/IModel;

    move-result-object v6

    .line 489
    const-string v7, "v"

    invoke-interface {v6, v7, v4}, Lcom/metamoji/df/model/IModel;->setProperty(Ljava/lang/String;Lcom/metamoji/cm/Blob;)V

    .line 490
    const-string v4, "thumbM"

    invoke-virtual {v5, v4, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 493
    :cond_1
    invoke-interface {v3, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 498
    :cond_2
    invoke-interface {v2, v1, v3}, Lcom/metamoji/df/model/IModel;->setProperty(Ljava/lang/String;Ljava/util/List;)V

    .line 499
    invoke-interface {p2, v1, v2}, Lcom/metamoji/df/model/IModel;->setProperty(Ljava/lang/String;Lcom/metamoji/df/model/IModel;)V

    return-void
.end method

.method parseLayerContentElement(Lorg/w3c/dom/Element;Lcom/metamoji/df/model/IModel;Lcom/metamoji/cv/xml/CvHayabusadocConvertContext;)V
    .locals 1

    .line 449
    const-string v0, "ref"

    invoke-interface {p1, v0}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 450
    invoke-static {p1}, Lcom/metamoji/cv/xml/XmlUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 454
    iget-object v0, p3, Lcom/metamoji/cv/xml/CvHayabusadocConvertContext;->converter:Lcom/metamoji/cv/CvModelConverter;

    invoke-virtual {v0, p1, p3}, Lcom/metamoji/cv/CvModelConverter;->importModels(Ljava/lang/Object;Lcom/metamoji/cv/CvConvertContext;)Lcom/metamoji/df/model/IModel;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 456
    invoke-interface {p2}, Lcom/metamoji/df/model/IModel;->getModelManager()Lcom/metamoji/df/model/IModelManager;

    move-result-object p3

    invoke-interface {p1}, Lcom/metamoji/df/model/IModel;->getModelID()I

    move-result p1

    invoke-interface {p2}, Lcom/metamoji/df/model/IModel;->getModelID()I

    move-result p2

    invoke-interface {p3, p1, p2}, Lcom/metamoji/df/model/IModelManager;->addChildModel(II)V

    :cond_0
    return-void

    .line 452
    :cond_1
    new-instance p1, Lcom/metamoji/cm/CmException;

    const-string p2, "CV0028"

    const-string p3, "ref attribute is not found in layer-content element."

    invoke-direct {p1, p2, p3}, Lcom/metamoji/cm/CmException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw p1
.end method

.method parseLayerElement(Lorg/w3c/dom/Element;Lcom/metamoji/df/model/IModel;Lcom/metamoji/cv/xml/CvHayabusadocConvertContext;)V
    .locals 5

    .line 411
    invoke-interface {p2}, Lcom/metamoji/df/model/IModel;->getModelManager()Lcom/metamoji/df/model/IModelManager;

    move-result-object v0

    .line 412
    const-string v1, "$layer"

    invoke-interface {v0, v1}, Lcom/metamoji/df/model/IModelManager;->newModel(Ljava/lang/String;)Lcom/metamoji/df/model/IModel;

    move-result-object v1

    const/4 v2, 0x1

    .line 414
    invoke-interface {v1, v2}, Lcom/metamoji/df/model/IModel;->setVersion(I)V

    .line 418
    const-string v2, "layer-content"

    const-string v3, "http://xmlns.metamoji.com/noteanytime/freenotesheet/1.0"

    invoke-static {p1, v2, v3}, Lcom/metamoji/cv/xml/XmlUtils$Incoming;->listChildElementsByNameEx(Lorg/w3c/dom/Element;Ljava/lang/String;Ljava/lang/String;)Lcom/metamoji/cv/xml/XmlUtils$NodeListEx;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 420
    invoke-virtual {v2}, Lcom/metamoji/cv/xml/XmlUtils$NodeListEx;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/w3c/dom/Node;

    .line 421
    const-class v4, Lorg/w3c/dom/Element;

    invoke-static {v3, v4}, Lcom/metamoji/cm/CmUtils;->as(Ljava/lang/Object;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/w3c/dom/Element;

    invoke-virtual {p0, v3, v1, p3}, Lcom/metamoji/cv/xml/freenotesheet/CvFreeNoteIncomingSubconverter;->parseLayerContentElement(Lorg/w3c/dom/Element;Lcom/metamoji/df/model/IModel;Lcom/metamoji/cv/xml/CvHayabusadocConvertContext;)V

    goto :goto_0

    .line 426
    :cond_0
    invoke-static {p1, v1}, Lcom/metamoji/cv/xml/XmlUtils$Incoming;->getAdditionals(Lorg/w3c/dom/Element;Lcom/metamoji/df/model/IModel;)V

    .line 430
    const-string p3, "layerId"

    const-string v2, "layer-id"

    invoke-static {p1, v1, p3, v2}, Lcom/metamoji/cv/xml/XmlUtils$Incoming;->getAttributeAsString(Lorg/w3c/dom/Element;Lcom/metamoji/df/model/IModel;Ljava/lang/String;Ljava/lang/String;)V

    .line 433
    const-string p3, "layerType"

    const-string v2, "layer-type"

    invoke-static {p1, v1, p3, v2}, Lcom/metamoji/cv/xml/XmlUtils$Incoming;->getAttributeAsString(Lorg/w3c/dom/Element;Lcom/metamoji/df/model/IModel;Ljava/lang/String;Ljava/lang/String;)V

    .line 436
    invoke-interface {v1}, Lcom/metamoji/df/model/IModel;->getModelID()I

    move-result p1

    invoke-interface {p2}, Lcom/metamoji/df/model/IModel;->getModelID()I

    move-result p2

    invoke-interface {v0, p1, p2}, Lcom/metamoji/df/model/IModelManager;->addChildModel(II)V

    return-void
.end method

.method parseLayersElement(Lorg/w3c/dom/Element;Lcom/metamoji/df/model/IModel;Lcom/metamoji/cv/xml/CvHayabusadocConvertContext;)V
    .locals 3

    .line 389
    const-string v0, "layer"

    const-string v1, "http://xmlns.metamoji.com/noteanytime/freenotesheet/1.0"

    invoke-static {p1, v0, v1}, Lcom/metamoji/cv/xml/XmlUtils$Incoming;->listChildElementsByNameEx(Lorg/w3c/dom/Element;Ljava/lang/String;Ljava/lang/String;)Lcom/metamoji/cv/xml/XmlUtils$NodeListEx;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 391
    invoke-virtual {v0}, Lcom/metamoji/cv/xml/XmlUtils$NodeListEx;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/w3c/dom/Node;

    .line 392
    const-class v2, Lorg/w3c/dom/Element;

    invoke-static {v1, v2}, Lcom/metamoji/cm/CmUtils;->as(Ljava/lang/Object;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/w3c/dom/Element;

    invoke-virtual {p0, v1, p2, p3}, Lcom/metamoji/cv/xml/freenotesheet/CvFreeNoteIncomingSubconverter;->parseLayerElement(Lorg/w3c/dom/Element;Lcom/metamoji/df/model/IModel;Lcom/metamoji/cv/xml/CvHayabusadocConvertContext;)V

    goto :goto_0

    .line 400
    :cond_0
    const-string p3, "currentLayer"

    const-string v0, "current-layer"

    invoke-static {p1, p2, p3, v0}, Lcom/metamoji/cv/xml/XmlUtils$Incoming;->getAttributeAsInt(Lorg/w3c/dom/Element;Lcom/metamoji/df/model/IModel;Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 395
    :cond_1
    new-instance p1, Lcom/metamoji/cm/CmException;

    const-string p2, "CV0027"

    const-string p3, "at least one layer element is required."

    invoke-direct {p1, p2, p3}, Lcom/metamoji/cm/CmException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw p1
.end method

.method parsePageElement(Lorg/w3c/dom/Element;Lcom/metamoji/df/model/IModel;Lcom/metamoji/cv/xml/CvHayabusadocConvertContext;)V
    .locals 9

    .line 256
    invoke-interface {p2}, Lcom/metamoji/df/model/IModel;->getModelManager()Lcom/metamoji/df/model/IModelManager;

    move-result-object v0

    .line 257
    const-string v1, "$page"

    invoke-interface {v0, v1}, Lcom/metamoji/df/model/IModelManager;->newModel(Ljava/lang/String;)Lcom/metamoji/df/model/IModel;

    move-result-object v1

    .line 261
    const-string v2, "layers"

    const-string v3, "http://xmlns.metamoji.com/noteanytime/freenotesheet/1.0"

    invoke-static {p1, v2, v3}, Lcom/metamoji/cv/xml/XmlUtils$Incoming;->getChildElementByName(Lorg/w3c/dom/Node;Ljava/lang/String;Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v2

    const/4 v4, 0x1

    if-eqz v2, :cond_0

    .line 264
    invoke-interface {v1, v4}, Lcom/metamoji/df/model/IModel;->setVersion(I)V

    goto :goto_0

    .line 266
    :cond_0
    const-string v2, "layers2"

    invoke-static {p1, v2, v3}, Lcom/metamoji/cv/xml/XmlUtils$Incoming;->getChildElementByName(Lorg/w3c/dom/Node;Ljava/lang/String;Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v2

    if-eqz v2, :cond_8

    const/4 v5, 0x2

    .line 268
    invoke-interface {v1, v5}, Lcom/metamoji/df/model/IModel;->setVersion(I)V

    .line 273
    :goto_0
    invoke-virtual {p0, v2, v1, p3}, Lcom/metamoji/cv/xml/freenotesheet/CvFreeNoteIncomingSubconverter;->parseLayersElement(Lorg/w3c/dom/Element;Lcom/metamoji/df/model/IModel;Lcom/metamoji/cv/xml/CvHayabusadocConvertContext;)V

    .line 276
    invoke-static {p1, v1}, Lcom/metamoji/cv/xml/XmlUtils$Incoming;->getAdditionals(Lorg/w3c/dom/Element;Lcom/metamoji/df/model/IModel;)V

    .line 280
    const-string v2, "pageId"

    const-string v5, "page-id"

    invoke-static {p1, v1, v2, v5}, Lcom/metamoji/cv/xml/XmlUtils$Incoming;->getAttributeAsString(Lorg/w3c/dom/Element;Lcom/metamoji/df/model/IModel;Ljava/lang/String;Ljava/lang/String;)V

    .line 283
    const-string v2, "paperWidth"

    const-string v5, "paper-width"

    invoke-static {p1, v1, v2, v5}, Lcom/metamoji/cv/xml/XmlUtils$Incoming;->getAttributeAsDouble(Lorg/w3c/dom/Element;Lcom/metamoji/df/model/IModel;Ljava/lang/String;Ljava/lang/String;)V

    .line 285
    const-string v2, "paperHeight"

    const-string v5, "paper-height"

    invoke-static {p1, v1, v2, v5}, Lcom/metamoji/cv/xml/XmlUtils$Incoming;->getAttributeAsDouble(Lorg/w3c/dom/Element;Lcom/metamoji/df/model/IModel;Ljava/lang/String;Ljava/lang/String;)V

    .line 287
    const-string v2, "printWidth"

    const-string v5, "print-width"

    invoke-static {p1, v1, v2, v5}, Lcom/metamoji/cv/xml/XmlUtils$Incoming;->getAttributeAsDouble(Lorg/w3c/dom/Element;Lcom/metamoji/df/model/IModel;Ljava/lang/String;Ljava/lang/String;)V

    .line 289
    const-string v2, "printHeight"

    const-string v5, "print-height"

    invoke-static {p1, v1, v2, v5}, Lcom/metamoji/cv/xml/XmlUtils$Incoming;->getAttributeAsDouble(Lorg/w3c/dom/Element;Lcom/metamoji/df/model/IModel;Ljava/lang/String;Ljava/lang/String;)V

    .line 316
    const-string v2, "dw-lines"

    invoke-interface {p1, v2}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 318
    invoke-static {v2}, Lcom/metamoji/cv/xml/XmlUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_4

    .line 319
    const-string v5, " "

    invoke-virtual {v2, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 320
    array-length v5, v2

    const/4 v6, 0x0

    const/4 v7, 0x0

    :goto_1
    if-ge v7, v5, :cond_3

    aget-object v8, v2, v7

    .line 321
    invoke-static {v8}, Lcom/metamoji/cm/CmUtils;->safeParseDouble(Ljava/lang/String;)Ljava/lang/Double;

    move-result-object v8

    if-eqz v8, :cond_2

    if-nez v6, :cond_1

    .line 324
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 325
    :cond_1
    invoke-interface {v6, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_2
    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    :cond_3
    if-eqz v6, :cond_4

    .line 329
    const-string v2, "dw_lines"

    invoke-interface {v1, v2, v6}, Lcom/metamoji/df/model/IModel;->setProperty(Ljava/lang/String;Ljava/util/List;)V

    .line 333
    :cond_4
    const-string v2, "thumbnail"

    invoke-interface {p1, v2}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 334
    invoke-static {v2}, Lcom/metamoji/cv/xml/XmlUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_5

    .line 336
    new-instance v5, Ljava/io/File;

    iget-object v6, p3, Lcom/metamoji/cv/xml/CvHayabusadocConvertContext;->directory:Ljava/io/File;

    invoke-direct {v5, v6, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 337
    new-instance v2, Lcom/metamoji/cm/Blob;

    invoke-static {v5}, Lcom/metamoji/cm/CmUtils;->loadFileInBuffer(Ljava/io/File;)[B

    move-result-object v6

    invoke-static {v5}, Lcom/metamoji/noteanytime/cm/CmMimeType;->getMimeType(Ljava/io/File;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v2, v6, v5}, Lcom/metamoji/cm/Blob;-><init>([BLjava/lang/String;)V

    .line 338
    const-string v5, "pagethumbnail"

    invoke-interface {v0, v5}, Lcom/metamoji/df/model/IModelManager;->newModel(Ljava/lang/String;)Lcom/metamoji/df/model/IModel;

    move-result-object v5

    .line 339
    const-string v6, "v"

    invoke-interface {v5, v6, v2}, Lcom/metamoji/df/model/IModel;->setProperty(Ljava/lang/String;Lcom/metamoji/cm/Blob;)V

    .line 340
    const-string v2, "thumbModel"

    invoke-interface {v1, v2, v5}, Lcom/metamoji/df/model/IModel;->setProperty(Ljava/lang/String;Lcom/metamoji/df/model/IModel;)V

    .line 343
    invoke-interface {v5}, Lcom/metamoji/df/model/IModel;->getModelManager()Lcom/metamoji/df/model/IModelManager;

    move-result-object v2

    .line 344
    new-instance v6, Lcom/metamoji/df/model/ModelManagerSaveContext;

    invoke-direct {v6}, Lcom/metamoji/df/model/ModelManagerSaveContext;-><init>()V

    .line 345
    invoke-virtual {v6, v4}, Lcom/metamoji/df/model/ModelManagerSaveContext;->setCramped(Z)V

    .line 346
    invoke-interface {v2, v6}, Lcom/metamoji/df/model/IModelManager;->ensureSavedToStateData(Lcom/metamoji/df/model/ModelManagerSaveContext;)V

    .line 347
    invoke-interface {v5, v4}, Lcom/metamoji/df/model/IModel;->purgeMemory(Z)V

    .line 351
    :cond_5
    const-string v2, "default-text-unit-style"

    invoke-static {p1, v2, v3}, Lcom/metamoji/cv/xml/XmlUtils$Incoming;->getChildElementByName(Lorg/w3c/dom/Node;Ljava/lang/String;Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v2

    if-eqz v2, :cond_6

    .line 353
    const-string v5, "Settings"

    invoke-interface {v0, v5}, Lcom/metamoji/df/model/IModelManager;->newModel(Ljava/lang/String;)Lcom/metamoji/df/model/IModel;

    move-result-object v5

    .line 354
    invoke-interface {v5, v4}, Lcom/metamoji/df/model/IModel;->setVersion(I)V

    .line 355
    invoke-static {v2, v5, p3, v3}, Lcom/metamoji/cv/xml/docsettings/CvDocSettingsIncomingSubconverter;->parseDefaultTextUnitStyleElement(Lorg/w3c/dom/Element;Lcom/metamoji/df/model/IModel;Lcom/metamoji/cv/xml/CvDirectoryConvertContext;Ljava/lang/String;)V

    .line 356
    const-string p3, "textUnitSettings"

    invoke-interface {v1, p3, v5}, Lcom/metamoji/df/model/IModel;->setProperty(Ljava/lang/String;Lcom/metamoji/df/model/IModel;)V

    .line 365
    :cond_6
    invoke-static {}, Lcom/metamoji/forSchool/ScSchoolUtils;->getSchoolPageTypeDefaultValue()I

    move-result p3

    .line 366
    const-string v2, "forschool-page-type"

    invoke-interface {p1, v2}, Lorg/w3c/dom/Element;->hasAttribute(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_7

    .line 367
    const-string p3, "forSchoolPageType"

    invoke-static {p1, v1, p3, v2}, Lcom/metamoji/cv/xml/XmlUtils$Incoming;->getAttributeAsInt(Lorg/w3c/dom/Element;Lcom/metamoji/df/model/IModel;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    .line 370
    :cond_7
    invoke-static {p3, v1}, Lcom/metamoji/forSchool/ScSchoolUtils;->setSchoolPageType(ILcom/metamoji/df/model/IModel;)V

    .line 375
    :goto_2
    invoke-interface {v1}, Lcom/metamoji/df/model/IModel;->getModelID()I

    move-result p1

    invoke-interface {p2}, Lcom/metamoji/df/model/IModel;->getModelID()I

    move-result p2

    invoke-interface {v0, p1, p2}, Lcom/metamoji/df/model/IModelManager;->addChildModel(II)V

    return-void

    .line 270
    :cond_8
    new-instance p1, Lcom/metamoji/cm/CmException;

    const-string p2, "CV0026"

    const-string p3, "layers element is required."

    invoke-direct {p1, p2, p3}, Lcom/metamoji/cm/CmException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw p1
.end method

.method parsePagesElement(Lorg/w3c/dom/Element;Lcom/metamoji/df/model/IModel;Lcom/metamoji/cv/xml/CvHayabusadocConvertContext;)V
    .locals 4

    .line 210
    const-string v0, "page"

    const-string v1, "http://xmlns.metamoji.com/noteanytime/freenotesheet/1.0"

    invoke-static {p1, v0, v1}, Lcom/metamoji/cv/xml/XmlUtils$Incoming;->listChildElementsByNameEx(Lorg/w3c/dom/Element;Ljava/lang/String;Ljava/lang/String;)Lcom/metamoji/cv/xml/XmlUtils$NodeListEx;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 212
    invoke-virtual {v0}, Lcom/metamoji/cv/xml/XmlUtils$NodeListEx;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/w3c/dom/Node;

    .line 213
    instance-of v3, v2, Lorg/w3c/dom/Element;

    if-eqz v3, :cond_0

    .line 214
    check-cast v2, Lorg/w3c/dom/Element;

    invoke-virtual {p0, v2, p2, p3}, Lcom/metamoji/cv/xml/freenotesheet/CvFreeNoteIncomingSubconverter;->parsePageElement(Lorg/w3c/dom/Element;Lcom/metamoji/df/model/IModel;Lcom/metamoji/cv/xml/CvHayabusadocConvertContext;)V

    goto :goto_0

    .line 223
    :cond_1
    invoke-virtual {v0}, Lcom/metamoji/cv/xml/XmlUtils$NodeListEx;->getList()Lorg/w3c/dom/NodeList;

    move-result-object p3

    invoke-interface {p3}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result p3

    .line 224
    new-instance v0, Lcom/metamoji/cv/xml/freenotesheet/CvFreeNoteIncomingSubconverter$1;

    invoke-direct {v0, p0, p3}, Lcom/metamoji/cv/xml/freenotesheet/CvFreeNoteIncomingSubconverter$1;-><init>(Lcom/metamoji/cv/xml/freenotesheet/CvFreeNoteIncomingSubconverter;I)V

    const-string p3, "currentPage"

    const-string v1, "current-page"

    invoke-static {p1, p2, p3, v1, v0}, Lcom/metamoji/cv/xml/XmlUtils$Incoming;->getAttributeAsInt(Lorg/w3c/dom/Element;Lcom/metamoji/df/model/IModel;Ljava/lang/String;Ljava/lang/String;Lcom/metamoji/cv/xml/XmlUtils$Incoming$IChecker;)V

    return-void

    .line 218
    :cond_2
    new-instance p1, Lcom/metamoji/cm/CmException;

    const-string p2, "CV0025"

    const-string p3, "at least one page element is required."

    invoke-direct {p1, p2, p3}, Lcom/metamoji/cm/CmException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw p1
.end method
