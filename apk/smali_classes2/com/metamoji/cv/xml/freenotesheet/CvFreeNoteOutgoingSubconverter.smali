.class public Lcom/metamoji/cv/xml/freenotesheet/CvFreeNoteOutgoingSubconverter;
.super Ljava/lang/Object;
.source "CvFreeNoteOutgoingSubconverter.java"

# interfaces
.implements Lcom/metamoji/cv/ICvSubconverter;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private generateCanonicalPageListElement(Lorg/w3c/dom/Element;Lcom/metamoji/df/model/IModel;Lcom/metamoji/cv/xml/CvHayabusadocConvertContext;)V
    .locals 5

    .line 619
    const-string p3, "canonicalPageList"

    invoke-interface {p2, p3}, Lcom/metamoji/df/model/IModel;->getPropertyAsList(Ljava/lang/String;)Ljava/util/List;

    move-result-object p2

    if-nez p2, :cond_0

    return-void

    .line 624
    :cond_0
    invoke-interface {p1}, Lorg/w3c/dom/Element;->getOwnerDocument()Lorg/w3c/dom/Document;

    move-result-object p3

    .line 625
    const-string v0, "canonical-page-list"

    const-string v1, "http://xmlns.metamoji.com/noteanytime/freenotesheet/1.0"

    invoke-interface {p3, v1, v0}, Lorg/w3c/dom/Document;->createElementNS(Ljava/lang/String;Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v0

    .line 627
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_1
    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    .line 628
    instance-of v3, v2, Ljava/lang/String;

    if-eqz v3, :cond_1

    .line 629
    check-cast v2, Ljava/lang/String;

    .line 630
    const-string v3, "canonical-page"

    invoke-interface {p3, v1, v3}, Lorg/w3c/dom/Document;->createElementNS(Ljava/lang/String;Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v3

    .line 631
    const-string v4, "page-id"

    invoke-interface {v3, v4, v2}, Lorg/w3c/dom/Element;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 632
    invoke-interface {v0, v3}, Lorg/w3c/dom/Element;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    goto :goto_0

    .line 635
    :cond_2
    invoke-interface {p1, v0}, Lorg/w3c/dom/Element;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    return-void
.end method

.method private generateChatListElement(Lorg/w3c/dom/Element;Lcom/metamoji/df/model/IModel;Lcom/metamoji/cv/xml/CvHayabusadocConvertContext;)V
    .locals 7

    .line 645
    invoke-interface {p1}, Lorg/w3c/dom/Element;->getOwnerDocument()Lorg/w3c/dom/Document;

    move-result-object v0

    .line 647
    const-string v1, "chatdata"

    invoke-interface {p2, v1}, Lcom/metamoji/df/model/IModel;->getPropertyAsModel(Ljava/lang/String;)Lcom/metamoji/df/model/IModel;

    move-result-object p2

    if-nez p2, :cond_0

    goto :goto_0

    .line 652
    :cond_0
    invoke-interface {p2, v1}, Lcom/metamoji/df/model/IModel;->getPropertyAsList(Ljava/lang/String;)Ljava/util/List;

    move-result-object p2

    if-nez p2, :cond_1

    :goto_0
    return-void

    .line 657
    :cond_1
    const-string v1, "chat-list"

    const-string v2, "http://xmlns.metamoji.com/noteanytime/freenotesheet/1.0"

    invoke-interface {v0, v2, v1}, Lorg/w3c/dom/Document;->createElementNS(Ljava/lang/String;Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v1

    .line 659
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_2
    :goto_1
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_5

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    .line 660
    instance-of v4, v3, Lcom/metamoji/df/model/IModel;

    if-eqz v4, :cond_2

    .line 661
    check-cast v3, Lcom/metamoji/df/model/IModel;

    .line 662
    const-string v4, "chat"

    invoke-interface {v0, v2, v4}, Lorg/w3c/dom/Document;->createElementNS(Ljava/lang/String;Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v4

    .line 665
    iget-object v5, p3, Lcom/metamoji/cv/xml/CvHayabusadocConvertContext;->converter:Lcom/metamoji/cv/CvModelConverter;

    invoke-virtual {v5, v3, p3}, Lcom/metamoji/cv/CvModelConverter;->exportModels(Lcom/metamoji/df/model/IModel;Lcom/metamoji/cv/CvConvertContext;)Ljava/lang/Object;

    move-result-object v5

    .line 666
    invoke-virtual {p3, v5}, Lcom/metamoji/cv/xml/CvHayabusadocConvertContext;->makeExternalFilePathRelative(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    .line 667
    const-string v6, "ref"

    invoke-interface {v4, v6, v5}, Lorg/w3c/dom/Element;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 670
    const-string v5, "[chat]timestamp"

    invoke-interface {v3, v5}, Lcom/metamoji/df/model/IModel;->getPropertyAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_3

    .line 672
    const-string v6, "timestamp"

    invoke-interface {v4, v6, v5}, Lorg/w3c/dom/Element;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 676
    :cond_3
    const-string v5, "[chat]nickname"

    invoke-interface {v3, v5}, Lcom/metamoji/df/model/IModel;->getPropertyAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_4

    .line 678
    const-string v5, "nickname"

    invoke-interface {v4, v5, v3}, Lorg/w3c/dom/Element;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 680
    :cond_4
    invoke-interface {v1, v4}, Lorg/w3c/dom/Element;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    goto :goto_1

    .line 683
    :cond_5
    invoke-interface {p1, v1}, Lorg/w3c/dom/Element;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    return-void
.end method

.method private generateFreeNoteSheetElement(Lorg/w3c/dom/Document;Lcom/metamoji/df/model/IModel;Lcom/metamoji/cv/xml/CvHayabusadocConvertContext;)V
    .locals 7

    .line 106
    const-string v0, "free-note-sheet"

    const-string v1, "http://xmlns.metamoji.com/noteanytime/freenotesheet/1.0"

    invoke-interface {p1, v1, v0}, Lorg/w3c/dom/Document;->createElementNS(Ljava/lang/String;Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v0

    .line 110
    const-string v2, "password"

    const-string v3, "credential"

    invoke-static {v0, p2, v2, v3}, Lcom/metamoji/cv/xml/XmlUtils$Outgoing;->addAttribute(Lorg/w3c/dom/Element;Lcom/metamoji/df/model/IModel;Ljava/lang/String;Ljava/lang/String;)V

    .line 114
    invoke-direct {p0, v0, p2, p3}, Lcom/metamoji/cv/xml/freenotesheet/CvFreeNoteOutgoingSubconverter;->generatePagesElement(Lorg/w3c/dom/Element;Lcom/metamoji/df/model/IModel;Lcom/metamoji/cv/xml/CvHayabusadocConvertContext;)V

    .line 117
    instance-of v2, p3, Lcom/metamoji/cv/xml/CvAtCollaboConvertContext;

    if-eqz v2, :cond_0

    .line 119
    invoke-direct {p0, v0, p2, p3}, Lcom/metamoji/cv/xml/freenotesheet/CvFreeNoteOutgoingSubconverter;->generateCanonicalPageListElement(Lorg/w3c/dom/Element;Lcom/metamoji/df/model/IModel;Lcom/metamoji/cv/xml/CvHayabusadocConvertContext;)V

    .line 123
    :cond_0
    invoke-virtual {p0, v0, p2, p3}, Lcom/metamoji/cv/xml/freenotesheet/CvFreeNoteOutgoingSubconverter;->generateJumpTargetsElement(Lorg/w3c/dom/Element;Lcom/metamoji/df/model/IModel;Lcom/metamoji/cv/xml/CvHayabusadocConvertContext;)V

    if-eqz v2, :cond_1

    .line 128
    invoke-direct {p0, v0, p2, p3}, Lcom/metamoji/cv/xml/freenotesheet/CvFreeNoteOutgoingSubconverter;->generateChatListElement(Lorg/w3c/dom/Element;Lcom/metamoji/df/model/IModel;Lcom/metamoji/cv/xml/CvHayabusadocConvertContext;)V

    .line 133
    :cond_1
    invoke-direct {p0, v0, p2, p3}, Lcom/metamoji/cv/xml/freenotesheet/CvFreeNoteOutgoingSubconverter;->generateGroupListElement(Lorg/w3c/dom/Element;Lcom/metamoji/df/model/IModel;Lcom/metamoji/cv/xml/CvHayabusadocConvertContext;)V

    .line 137
    const-string v2, "forSchoolPersonalModeType"

    const-string v3, "forschool-personal-mode-type"

    invoke-static {v0, p2, v2, v3}, Lcom/metamoji/cv/xml/XmlUtils$Outgoing;->addAttribute(Lorg/w3c/dom/Element;Lcom/metamoji/df/model/IModel;Ljava/lang/String;Ljava/lang/String;)V

    .line 139
    const-string v2, "forSchoolHiddenStudentName"

    const/4 v3, 0x0

    invoke-interface {p2, v2, v3}, Lcom/metamoji/df/model/IModel;->getPropertyAsBool(Ljava/lang/String;Z)Z

    move-result v2

    .line 140
    const-string v4, "true"

    const-string v5, "false"

    if-eqz v2, :cond_2

    move-object v2, v4

    goto :goto_0

    :cond_2
    move-object v2, v5

    :goto_0
    const-string v6, "forschool-hidden-student-name"

    invoke-interface {v0, v6, v2}, Lorg/w3c/dom/Element;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 142
    const-string v2, "forSchoolAllowEveryoneAnswer"

    invoke-interface {p2, v2, v3}, Lcom/metamoji/df/model/IModel;->getPropertyAsBool(Ljava/lang/String;Z)Z

    move-result v2

    if-eqz v2, :cond_3

    goto :goto_1

    :cond_3
    move-object v4, v5

    .line 143
    :goto_1
    const-string v2, "forschool-allow-everyone-answer"

    invoke-interface {v0, v2, v4}, Lorg/w3c/dom/Element;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 148
    iget-object v2, p3, Lcom/metamoji/cv/xml/CvHayabusadocConvertContext;->options:Ljava/util/Map;

    if-eqz v2, :cond_5

    .line 149
    iget-object p3, p3, Lcom/metamoji/cv/xml/CvHayabusadocConvertContext;->options:Ljava/util/Map;

    const-string v2, "PoisonousMushroom"

    invoke-interface {p3, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p3

    if-eqz p3, :cond_5

    .line 150
    instance-of v2, p3, Ljava/util/Map;

    if-eqz v2, :cond_5

    .line 151
    check-cast p3, Ljava/util/Map;

    .line 152
    const-string v2, "pm"

    invoke-interface {p1, v1, v2}, Lorg/w3c/dom/Document;->createElementNS(Ljava/lang/String;Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v1

    .line 153
    invoke-interface {p3}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    .line 154
    move-object v4, v3

    check-cast v4, Ljava/lang/String;

    invoke-interface {p3, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-interface {v1, v4, v3}, Lorg/w3c/dom/Element;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    .line 156
    :cond_4
    invoke-interface {v0, v1}, Lorg/w3c/dom/Element;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    .line 161
    :cond_5
    invoke-static {v0, p2}, Lcom/metamoji/cv/xml/XmlUtils$Outgoing;->addAdditionals(Lorg/w3c/dom/Element;Lcom/metamoji/df/model/IModel;)V

    .line 164
    invoke-interface {p1, v0}, Lorg/w3c/dom/Document;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    return-void
.end method

.method private generateGroupListElement(Lorg/w3c/dom/Element;Lcom/metamoji/df/model/IModel;Lcom/metamoji/cv/xml/CvHayabusadocConvertContext;)V
    .locals 10

    .line 695
    invoke-interface {p1}, Lorg/w3c/dom/Element;->getOwnerDocument()Lorg/w3c/dom/Document;

    move-result-object p3

    .line 697
    const-string v0, "forSchoolGroupList"

    invoke-interface {p2, v0}, Lcom/metamoji/df/model/IModel;->getPropertyAsModel(Ljava/lang/String;)Lcom/metamoji/df/model/IModel;

    move-result-object p2

    if-nez p2, :cond_0

    goto :goto_0

    .line 702
    :cond_0
    invoke-interface {p2, v0}, Lcom/metamoji/df/model/IModel;->getPropertyAsList(Ljava/lang/String;)Ljava/util/List;

    move-result-object p2

    if-nez p2, :cond_1

    :goto_0
    return-void

    .line 707
    :cond_1
    const-string v0, "forschool-group-list"

    const-string v1, "http://xmlns.metamoji.com/noteanytime/freenotesheet/1.0"

    invoke-interface {p3, v1, v0}, Lorg/w3c/dom/Document;->createElementNS(Ljava/lang/String;Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v0

    .line 709
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_1
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_9

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    .line 710
    check-cast v2, Ljava/util/Map;

    .line 712
    const-string v3, "group"

    invoke-interface {p3, v1, v3}, Lorg/w3c/dom/Document;->createElementNS(Ljava/lang/String;Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v3

    .line 715
    const-string v4, "group-id"

    invoke-static {v2, v4}, Lcom/metamoji/ns/NsCollaboUtils;->GetValue(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    if-eqz v5, :cond_2

    .line 717
    invoke-interface {v3, v4, v5}, Lorg/w3c/dom/Element;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 721
    :cond_2
    const-string v4, "group-name"

    invoke-static {v2, v4}, Lcom/metamoji/ns/NsCollaboUtils;->GetValue(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    if-eqz v5, :cond_3

    .line 723
    invoke-interface {v3, v4, v5}, Lorg/w3c/dom/Element;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 727
    :cond_3
    const-string v4, "user-list"

    invoke-interface {p3, v1, v4}, Lorg/w3c/dom/Document;->createElementNS(Ljava/lang/String;Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v5

    .line 728
    invoke-static {v2, v4}, Lcom/metamoji/ns/NsCollaboUtils;->GetValue(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    .line 729
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_8

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    .line 730
    check-cast v4, Ljava/util/Map;

    .line 733
    const-string v6, "user"

    invoke-interface {p3, v1, v6}, Lorg/w3c/dom/Document;->createElementNS(Ljava/lang/String;Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v6

    .line 736
    const-string v7, "user-id"

    invoke-static {v4, v7}, Lcom/metamoji/ns/NsCollaboUtils;->GetValue(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    if-eqz v8, :cond_4

    .line 738
    invoke-interface {v6, v7, v8}, Lorg/w3c/dom/Element;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 742
    :cond_4
    const-string v7, "user-name"

    invoke-static {v4, v7}, Lcom/metamoji/ns/NsCollaboUtils;->GetValue(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    if-eqz v8, :cond_5

    .line 744
    invoke-interface {v6, v7, v8}, Lorg/w3c/dom/Element;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 748
    :cond_5
    const-string v7, "class-number"

    invoke-static {v4, v7}, Lcom/metamoji/ns/NsCollaboUtils;->GetValue(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    .line 749
    const-string v9, ""

    if-eqz v8, :cond_6

    .line 750
    invoke-interface {v6, v7, v8}, Lorg/w3c/dom/Element;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3

    .line 752
    :cond_6
    invoke-interface {v6, v7, v9}, Lorg/w3c/dom/Element;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 756
    :goto_3
    const-string v7, "login-name"

    invoke-static {v4, v7}, Lcom/metamoji/ns/NsCollaboUtils;->GetValue(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    if-eqz v4, :cond_7

    .line 759
    invoke-interface {v6, v7, v4}, Lorg/w3c/dom/Element;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_4

    .line 763
    :cond_7
    invoke-interface {v6, v7, v9}, Lorg/w3c/dom/Element;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 766
    :goto_4
    invoke-interface {v5, v6}, Lorg/w3c/dom/Element;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    goto :goto_2

    .line 768
    :cond_8
    invoke-interface {v3, v5}, Lorg/w3c/dom/Element;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    .line 770
    invoke-interface {v0, v3}, Lorg/w3c/dom/Element;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    goto/16 :goto_1

    .line 773
    :cond_9
    invoke-interface {p1, v0}, Lorg/w3c/dom/Element;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    return-void
.end method

.method private generatePageElement(Lorg/w3c/dom/Element;Lcom/metamoji/df/model/IModel;ILcom/metamoji/cv/xml/CvHayabusadocConvertContext;)V
    .locals 8

    .line 218
    invoke-interface {p1}, Lorg/w3c/dom/Element;->getOwnerDocument()Lorg/w3c/dom/Document;

    move-result-object v0

    .line 219
    const-string v1, "page"

    const-string v2, "http://xmlns.metamoji.com/noteanytime/freenotesheet/1.0"

    invoke-interface {v0, v2, v1}, Lorg/w3c/dom/Document;->createElementNS(Ljava/lang/String;Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v0

    .line 223
    const-string v1, "pageId"

    const-string v3, "page-id"

    invoke-static {v0, p2, v1, v3}, Lcom/metamoji/cv/xml/XmlUtils$Outgoing;->addAttribute(Lorg/w3c/dom/Element;Lcom/metamoji/df/model/IModel;Ljava/lang/String;Ljava/lang/String;)V

    .line 226
    const-string v1, "paperWidth"

    const-string v3, "paper-width"

    invoke-static {v0, p2, v1, v3}, Lcom/metamoji/cv/xml/XmlUtils$Outgoing;->addAttribute(Lorg/w3c/dom/Element;Lcom/metamoji/df/model/IModel;Ljava/lang/String;Ljava/lang/String;)V

    .line 228
    const-string v1, "paperHeight"

    const-string v3, "paper-height"

    invoke-static {v0, p2, v1, v3}, Lcom/metamoji/cv/xml/XmlUtils$Outgoing;->addAttribute(Lorg/w3c/dom/Element;Lcom/metamoji/df/model/IModel;Ljava/lang/String;Ljava/lang/String;)V

    .line 230
    const-string v1, "printWidth"

    const-string v3, "print-width"

    invoke-static {v0, p2, v1, v3}, Lcom/metamoji/cv/xml/XmlUtils$Outgoing;->addAttribute(Lorg/w3c/dom/Element;Lcom/metamoji/df/model/IModel;Ljava/lang/String;Ljava/lang/String;)V

    .line 232
    const-string v1, "printHeight"

    const-string v3, "print-height"

    invoke-static {v0, p2, v1, v3}, Lcom/metamoji/cv/xml/XmlUtils$Outgoing;->addAttribute(Lorg/w3c/dom/Element;Lcom/metamoji/df/model/IModel;Ljava/lang/String;Ljava/lang/String;)V

    .line 258
    new-instance v1, Lcom/metamoji/cv/xml/freenotesheet/CvFreeNoteOutgoingSubconverter$1;

    invoke-direct {v1, p0}, Lcom/metamoji/cv/xml/freenotesheet/CvFreeNoteOutgoingSubconverter$1;-><init>(Lcom/metamoji/cv/xml/freenotesheet/CvFreeNoteOutgoingSubconverter;)V

    const-string v3, "dw_lines"

    const-string v4, "dw-lines"

    invoke-static {v0, p2, v3, v4, v1}, Lcom/metamoji/cv/xml/XmlUtils$Outgoing;->addAttribute(Lorg/w3c/dom/Element;Lcom/metamoji/df/model/IModel;Ljava/lang/String;Ljava/lang/String;Lcom/metamoji/cv/xml/XmlUtils$Outgoing$IStringConverter;)V

    const/4 v1, 0x1

    .line 275
    const-string v3, "thumbnail"

    if-nez p3, :cond_0

    iget-object p3, p4, Lcom/metamoji/cv/xml/CvHayabusadocConvertContext;->firstPageThumbnailFileName:Ljava/lang/String;

    if-eqz p3, :cond_0

    .line 276
    iget-object p3, p4, Lcom/metamoji/cv/xml/CvHayabusadocConvertContext;->firstPageThumbnailFileName:Ljava/lang/String;

    invoke-interface {v0, v3, p3}, Lorg/w3c/dom/Element;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 278
    :cond_0
    invoke-static {p2}, Lcom/metamoji/cv/xml/freenotesheet/CvFreeNoteOutgoingSubconverter;->pageThumbnailFromPageModel(Lcom/metamoji/df/model/IModel;)Lcom/metamoji/cm/Blob;

    move-result-object p3

    if-eqz p3, :cond_1

    .line 280
    invoke-virtual {p3}, Lcom/metamoji/cm/Blob;->getMimeType()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/metamoji/cv/CvConverterUtils;->imageExtensionFromMimeType(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 281
    new-instance v5, Lcom/metamoji/cv/CvConvertItem;

    invoke-direct {v5}, Lcom/metamoji/cv/CvConvertItem;-><init>()V

    .line 282
    invoke-virtual {p4, v5, v3, v4}, Lcom/metamoji/cv/xml/CvHayabusadocConvertContext;->fillOutgoingItem(Lcom/metamoji/cv/CvConvertItem;Ljava/lang/String;Ljava/lang/String;)V

    .line 284
    iget-object v4, v5, Lcom/metamoji/cv/CvConvertItem;->externalRef:Ljava/lang/Object;

    invoke-virtual {p4, v4, v1}, Lcom/metamoji/cv/xml/CvHayabusadocConvertContext;->makeExternalFilePath(Ljava/lang/Object;Z)Ljava/io/File;

    move-result-object v4

    .line 285
    invoke-virtual {p3}, Lcom/metamoji/cm/Blob;->getData()[B

    move-result-object p3

    invoke-static {v4, p3}, Lcom/metamoji/cm/CmUtils;->saveBufferToFile(Ljava/io/File;[B)Z

    .line 286
    invoke-virtual {v4}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object p3

    invoke-interface {v0, v3, p3}, Lorg/w3c/dom/Element;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 288
    :cond_1
    invoke-static {p2}, Lcom/metamoji/cv/xml/freenotesheet/CvFreeNoteOutgoingSubconverter;->purgeThumbnailModelFromPageModel(Lcom/metamoji/df/model/IModel;)V

    .line 293
    :goto_0
    invoke-virtual {p0, v0, p2, p4}, Lcom/metamoji/cv/xml/freenotesheet/CvFreeNoteOutgoingSubconverter;->generateLayersElement(Lorg/w3c/dom/Element;Lcom/metamoji/df/model/IModel;Lcom/metamoji/cv/xml/CvHayabusadocConvertContext;)V

    .line 296
    invoke-static {v0, p2}, Lcom/metamoji/cv/xml/XmlUtils$Outgoing;->addAdditionals(Lorg/w3c/dom/Element;Lcom/metamoji/df/model/IModel;)V

    .line 299
    const-string p3, "textUnitSettings"

    invoke-interface {p2, p3}, Lcom/metamoji/df/model/IModel;->getPropertyAsModel(Ljava/lang/String;)Lcom/metamoji/df/model/IModel;

    move-result-object p3

    if-eqz p3, :cond_2

    .line 301
    invoke-static {v0, p3, p4, v2}, Lcom/metamoji/cv/xml/docsettings/CvDocSettingsOutgoingSubconverter;->generateDefaultTextUnitStyleElement(Lorg/w3c/dom/Element;Lcom/metamoji/df/model/IModel;Lcom/metamoji/cv/xml/CvDirectoryConvertContext;Ljava/lang/String;)V

    .line 307
    :cond_2
    const-string p3, "forschool-page-type"

    const-string v2, "forSchoolPageType"

    invoke-static {v0, p2, v2, p3}, Lcom/metamoji/cv/xml/XmlUtils$Outgoing;->addAttribute(Lorg/w3c/dom/Element;Lcom/metamoji/df/model/IModel;Ljava/lang/String;Ljava/lang/String;)V

    .line 311
    iget-object p3, p4, Lcom/metamoji/cv/xml/CvHayabusadocConvertContext;->options:Ljava/util/Map;

    const-string v3, "schoolLayerInfo"

    invoke-interface {p3, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/util/Map;

    if-eqz p3, :cond_8

    .line 318
    const-string v3, "visibleCommonLayer"

    invoke-interface {p3, v3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 319
    invoke-static {p3, v3}, Lcom/metamoji/ns/NsCollaboUtils;->GetValue(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    goto :goto_1

    :cond_3
    const/4 v3, 0x0

    .line 321
    :goto_1
    const-string v4, "visiblePersonalLayerIdSuffixDic"

    invoke-static {p3, v4}, Lcom/metamoji/ns/NsCollaboUtils;->GetValue(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map;

    .line 322
    const-string v5, "visibleTeacherPersonalLayerIdSuffixDic"

    invoke-static {p3, v5}, Lcom/metamoji/ns/NsCollaboUtils;->GetValue(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/util/Map;

    .line 324
    invoke-interface {p2}, Lcom/metamoji/df/model/IModel;->getChildModels()Ljava/util/List;

    move-result-object v5

    .line 325
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    const/4 v7, 0x0

    if-eqz v3, :cond_4

    .line 329
    const-string v3, "system:common"

    invoke-direct {p0, v5, v3, v7}, Lcom/metamoji/cv/xml/freenotesheet/CvFreeNoteOutgoingSubconverter;->getRootModel(Ljava/util/List;Ljava/lang/String;Ljava/lang/String;)Lcom/metamoji/df/model/IModel;

    move-result-object v3

    if-eqz v3, :cond_4

    .line 331
    invoke-interface {v6, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_4
    if-eqz v4, :cond_5

    .line 336
    invoke-interface {v4}, Ljava/util/Map;->size()I

    move-result v3

    if-lez v3, :cond_5

    .line 337
    invoke-interface {p2, v2, v1}, Lcom/metamoji/df/model/IModel;->getPropertyAsInt(Ljava/lang/String;I)I

    move-result p2

    .line 338
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-interface {v4, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    if-eqz p2, :cond_5

    .line 340
    const-string v1, "system:personal"

    invoke-direct {p0, v5, v1, p2}, Lcom/metamoji/cv/xml/freenotesheet/CvFreeNoteOutgoingSubconverter;->getRootModel(Ljava/util/List;Ljava/lang/String;Ljava/lang/String;)Lcom/metamoji/df/model/IModel;

    move-result-object p2

    if-eqz p2, :cond_5

    .line 342
    invoke-interface {v6, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_5
    if-eqz p3, :cond_6

    .line 348
    invoke-interface {p3}, Ljava/util/Map;->size()I

    move-result p2

    if-lez p2, :cond_6

    .line 349
    const-string p2, "visibleTeacherPersonalLayerId"

    invoke-interface {p3, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    if-eqz p2, :cond_6

    .line 351
    const-string p3, "system:teacher_personal"

    invoke-direct {p0, v5, p3, p2}, Lcom/metamoji/cv/xml/freenotesheet/CvFreeNoteOutgoingSubconverter;->getRootModel(Ljava/util/List;Ljava/lang/String;Ljava/lang/String;)Lcom/metamoji/df/model/IModel;

    move-result-object p2

    if-eqz p2, :cond_6

    .line 353
    invoke-interface {v6, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 359
    :cond_6
    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result p2

    if-lez p2, :cond_8

    .line 360
    const-string p2, "system:edit"

    invoke-direct {p0, v5, p2, v7}, Lcom/metamoji/cv/xml/freenotesheet/CvFreeNoteOutgoingSubconverter;->getRootModel(Ljava/util/List;Ljava/lang/String;Ljava/lang/String;)Lcom/metamoji/df/model/IModel;

    move-result-object p2

    if-eqz p2, :cond_8

    .line 364
    iget-object p3, p4, Lcom/metamoji/cv/xml/CvHayabusadocConvertContext;->mergeInfo:Lcom/metamoji/cv/xml/CvMergeInfo;

    if-nez p3, :cond_7

    .line 365
    new-instance p3, Lcom/metamoji/cv/xml/CvMergeInfo;

    invoke-direct {p3}, Lcom/metamoji/cv/xml/CvMergeInfo;-><init>()V

    iput-object p3, p4, Lcom/metamoji/cv/xml/CvHayabusadocConvertContext;->mergeInfo:Lcom/metamoji/cv/xml/CvMergeInfo;

    .line 369
    :cond_7
    iget-object p3, p4, Lcom/metamoji/cv/xml/CvHayabusadocConvertContext;->mergeInfo:Lcom/metamoji/cv/xml/CvMergeInfo;

    iget-object p3, p3, Lcom/metamoji/cv/xml/CvMergeInfo;->mergeTargetMap:Ljava/util/Map;

    invoke-interface {p2}, Lcom/metamoji/df/model/IModel;->getModelID()I

    move-result p2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-interface {p3, p2, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 376
    :cond_8
    invoke-interface {p1, v0}, Lorg/w3c/dom/Element;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    return-void
.end method

.method private generatePagesElement(Lorg/w3c/dom/Element;Lcom/metamoji/df/model/IModel;Lcom/metamoji/cv/xml/CvHayabusadocConvertContext;)V
    .locals 4

    .line 173
    invoke-interface {p1}, Lorg/w3c/dom/Element;->getOwnerDocument()Lorg/w3c/dom/Document;

    move-result-object v0

    .line 174
    const-string v1, "http://xmlns.metamoji.com/noteanytime/freenotesheet/1.0"

    const-string v2, "pages"

    invoke-interface {v0, v1, v2}, Lorg/w3c/dom/Document;->createElementNS(Ljava/lang/String;Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v0

    .line 178
    const-string v1, "currentPage"

    const-string v2, "current-page"

    invoke-static {v0, p2, v1, v2}, Lcom/metamoji/cv/xml/XmlUtils$Outgoing;->addAttribute(Lorg/w3c/dom/Element;Lcom/metamoji/df/model/IModel;Ljava/lang/String;Ljava/lang/String;)V

    .line 200
    invoke-interface {p2}, Lcom/metamoji/df/model/IModel;->getFirstChild()Lcom/metamoji/df/model/IModel;

    move-result-object p2

    const/4 v1, 0x0

    :goto_0
    if-eqz p2, :cond_1

    .line 202
    const-string v2, "$page"

    invoke-interface {p2}, Lcom/metamoji/df/model/IModel;->getModelType()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 203
    invoke-direct {p0, v0, p2, v1, p3}, Lcom/metamoji/cv/xml/freenotesheet/CvFreeNoteOutgoingSubconverter;->generatePageElement(Lorg/w3c/dom/Element;Lcom/metamoji/df/model/IModel;ILcom/metamoji/cv/xml/CvHayabusadocConvertContext;)V

    .line 205
    :cond_0
    invoke-interface {p2}, Lcom/metamoji/df/model/IModel;->getNextSibling()Lcom/metamoji/df/model/IModel;

    move-result-object p2

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 208
    :cond_1
    invoke-interface {p1, v0}, Lorg/w3c/dom/Element;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    return-void
.end method

.method private getRootModel(Ljava/util/List;Ljava/lang/String;Ljava/lang/String;)Lcom/metamoji/df/model/IModel;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/metamoji/df/model/IModel;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Lcom/metamoji/df/model/IModel;"
        }
    .end annotation

    const/4 v0, 0x0

    .line 784
    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_2

    .line 785
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/metamoji/df/model/IModel;

    .line 786
    const-string v2, "$layer"

    invoke-interface {v1}, Lcom/metamoji/df/model/IModel;->getModelType()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 787
    const-string v2, "layerType"

    invoke-interface {v1, v2}, Lcom/metamoji/df/model/IModel;->getPropertyAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 788
    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    if-eqz p3, :cond_0

    .line 791
    const-string v2, "layerId"

    invoke-interface {v1, v2}, Lcom/metamoji/df/model/IModel;->getPropertyAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 792
    invoke-virtual {v2, p3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    goto :goto_1

    .line 796
    :cond_0
    invoke-interface {v1}, Lcom/metamoji/df/model/IModel;->getFirstChild()Lcom/metamoji/df/model/IModel;

    move-result-object p1

    return-object p1

    :cond_1
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    const/4 p1, 0x0

    return-object p1
.end method

.method public static pageThumbnailFromPageModel(Lcom/metamoji/df/model/IModel;)Lcom/metamoji/cm/Blob;
    .locals 1

    .line 540
    const-string v0, "thumbModel"

    invoke-interface {p0, v0}, Lcom/metamoji/df/model/IModel;->getPropertyAsModel(Ljava/lang/String;)Lcom/metamoji/df/model/IModel;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 542
    const-string v0, "v"

    invoke-interface {p0, v0}, Lcom/metamoji/df/model/IModel;->getPropertyAsBlob(Ljava/lang/String;)Lcom/metamoji/cm/Blob;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method private static purgeThumbnailModelFromPageModel(Lcom/metamoji/df/model/IModel;)V
    .locals 1

    .line 548
    const-string v0, "thumbModel"

    invoke-interface {p0, v0}, Lcom/metamoji/df/model/IModel;->getPropertyAsModel(Ljava/lang/String;)Lcom/metamoji/df/model/IModel;

    move-result-object p0

    if-eqz p0, :cond_0

    const/4 v0, 0x0

    .line 550
    invoke-interface {p0, v0}, Lcom/metamoji/df/model/IModel;->purgeMemory(Z)V

    :cond_0
    return-void
.end method


# virtual methods
.method _generateLayerElement(Lorg/w3c/dom/Document;Lcom/metamoji/df/model/IModel;Lcom/metamoji/cv/xml/CvHayabusadocConvertContext;)Lorg/w3c/dom/Element;
    .locals 2

    .line 494
    const-string v0, "http://xmlns.metamoji.com/noteanytime/freenotesheet/1.0"

    const-string v1, "layer"

    invoke-interface {p1, v0, v1}, Lorg/w3c/dom/Document;->createElementNS(Ljava/lang/String;Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object p1

    .line 498
    const-string v0, "layerId"

    const-string v1, "layer-id"

    invoke-static {p1, p2, v0, v1}, Lcom/metamoji/cv/xml/XmlUtils$Outgoing;->addAttribute(Lorg/w3c/dom/Element;Lcom/metamoji/df/model/IModel;Ljava/lang/String;Ljava/lang/String;)V

    .line 501
    const-string v0, "layerType"

    const-string v1, "layer-type"

    invoke-static {p1, p2, v0, v1}, Lcom/metamoji/cv/xml/XmlUtils$Outgoing;->addAttribute(Lorg/w3c/dom/Element;Lcom/metamoji/df/model/IModel;Ljava/lang/String;Ljava/lang/String;)V

    .line 505
    invoke-interface {p2}, Lcom/metamoji/df/model/IModel;->getFirstChild()Lcom/metamoji/df/model/IModel;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 507
    invoke-virtual {p0, p1, v0, p3}, Lcom/metamoji/cv/xml/freenotesheet/CvFreeNoteOutgoingSubconverter;->generateLayerContentElement(Lorg/w3c/dom/Element;Lcom/metamoji/df/model/IModel;Lcom/metamoji/cv/xml/CvHayabusadocConvertContext;)V

    .line 511
    :cond_0
    invoke-static {p1, p2}, Lcom/metamoji/cv/xml/XmlUtils$Outgoing;->addAdditionals(Lorg/w3c/dom/Element;Lcom/metamoji/df/model/IModel;)V

    return-object p1
.end method

.method public accept(Lcom/metamoji/cv/CvConvertItem;)Z
    .locals 3

    .line 54
    iget-object v0, p1, Lcom/metamoji/cv/CvConvertItem;->context:Lcom/metamoji/cv/CvConvertContext;

    const-class v1, Lcom/metamoji/cv/xml/CvHayabusadocConvertContext;

    invoke-static {v0, v1}, Lcom/metamoji/cm/CmUtils;->as(Ljava/lang/Object;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/metamoji/cv/xml/CvHayabusadocConvertContext;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 60
    :cond_0
    iget-boolean v2, v0, Lcom/metamoji/cv/xml/CvHayabusadocConvertContext;->isManifestTreated:Z

    if-nez v2, :cond_1

    return v1

    .line 64
    :cond_1
    const-string v1, "freenotesheet"

    const-string v2, "xml"

    invoke-virtual {v0, p1, v1, v2}, Lcom/metamoji/cv/xml/CvHayabusadocConvertContext;->fillOutgoingItem(Lcom/metamoji/cv/CvConvertItem;Ljava/lang/String;Ljava/lang/String;)V

    const/4 p1, 0x1

    return p1
.end method

.method public convert(Lcom/metamoji/cv/CvConvertItem;)V
    .locals 3

    .line 81
    iget-object v0, p1, Lcom/metamoji/cv/CvConvertItem;->context:Lcom/metamoji/cv/CvConvertContext;

    check-cast v0, Lcom/metamoji/cv/xml/CvHayabusadocConvertContext;

    .line 84
    iget-object v1, p1, Lcom/metamoji/cv/CvConvertItem;->model:Lcom/metamoji/df/model/IModel;

    .line 85
    invoke-static {}, Lcom/metamoji/cv/xml/XmlUtils;->newDocument()Lorg/w3c/dom/Document;

    move-result-object v2

    .line 86
    invoke-direct {p0, v2, v1, v0}, Lcom/metamoji/cv/xml/freenotesheet/CvFreeNoteOutgoingSubconverter;->generateFreeNoteSheetElement(Lorg/w3c/dom/Document;Lcom/metamoji/df/model/IModel;Lcom/metamoji/cv/xml/CvHayabusadocConvertContext;)V

    .line 89
    iget-object p1, p1, Lcom/metamoji/cv/CvConvertItem;->externalRef:Ljava/lang/Object;

    const/4 v1, 0x1

    invoke-virtual {v0, p1, v1}, Lcom/metamoji/cv/xml/CvHayabusadocConvertContext;->makeExternalFilePath(Ljava/lang/Object;Z)Ljava/io/File;

    move-result-object p1

    .line 90
    invoke-static {v2, p1}, Lcom/metamoji/cv/xml/XmlUtils;->saveXMLFile(Lorg/w3c/dom/Document;Ljava/io/File;)Z

    return-void
.end method

.method generateJumpTargetsElement(Lorg/w3c/dom/Element;Lcom/metamoji/df/model/IModel;Lcom/metamoji/cv/xml/CvHayabusadocConvertContext;)V
    .locals 8

    .line 560
    invoke-interface {p1}, Lorg/w3c/dom/Element;->getOwnerDocument()Lorg/w3c/dom/Document;

    move-result-object v0

    .line 561
    const-string v1, "linkjumps"

    invoke-interface {p2, v1}, Lcom/metamoji/df/model/IModel;->getPropertyAsModel(Ljava/lang/String;)Lcom/metamoji/df/model/IModel;

    move-result-object p2

    if-nez p2, :cond_0

    goto :goto_0

    .line 566
    :cond_0
    invoke-interface {p2, v1}, Lcom/metamoji/df/model/IModel;->getPropertyAsList(Ljava/lang/String;)Ljava/util/List;

    move-result-object p2

    if-nez p2, :cond_1

    :goto_0
    return-void

    .line 571
    :cond_1
    const-string v1, "jump-targets"

    const-string v2, "http://xmlns.metamoji.com/noteanytime/freenotesheet/1.0"

    invoke-interface {v0, v2, v1}, Lorg/w3c/dom/Document;->createElementNS(Ljava/lang/String;Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v1

    .line 574
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_2
    :goto_1
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_7

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_2

    .line 575
    instance-of v4, v3, Ljava/util/Map;

    if-eqz v4, :cond_2

    .line 576
    check-cast v3, Ljava/util/Map;

    .line 577
    const-string v4, "jump-target"

    invoke-interface {v0, v2, v4}, Lorg/w3c/dom/Document;->createElementNS(Ljava/lang/String;Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v4

    .line 579
    const-string v5, "url"

    invoke-interface {v3, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    if-eqz v6, :cond_3

    .line 581
    invoke-virtual {v6}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v4, v5, v6}, Lorg/w3c/dom/Element;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 586
    :cond_3
    const-string v5, "thumbM"

    invoke-interface {v3, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    if-eqz v5, :cond_4

    .line 587
    instance-of v6, v5, Lcom/metamoji/df/model/IModel;

    if-eqz v6, :cond_4

    .line 588
    check-cast v5, Lcom/metamoji/df/model/IModel;

    .line 589
    const-string v3, "v"

    invoke-interface {v5, v3}, Lcom/metamoji/df/model/IModel;->getPropertyAsBlob(Ljava/lang/String;)Lcom/metamoji/cm/Blob;

    move-result-object v3

    goto :goto_2

    .line 591
    :cond_4
    const-string v5, "thumb"

    invoke-interface {v3, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_5

    .line 592
    instance-of v5, v3, Lcom/metamoji/cm/Blob;

    if-eqz v5, :cond_5

    check-cast v3, Lcom/metamoji/cm/Blob;

    goto :goto_2

    :cond_5
    const/4 v3, 0x0

    :goto_2
    if-eqz v3, :cond_6

    .line 596
    invoke-virtual {v3}, Lcom/metamoji/cm/Blob;->getMimeType()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/metamoji/cv/CvConverterUtils;->imageExtensionFromMimeType(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 597
    new-instance v6, Lcom/metamoji/cv/CvConvertItem;

    invoke-direct {v6}, Lcom/metamoji/cv/CvConvertItem;-><init>()V

    .line 598
    const-string v7, "jumpthumb"

    invoke-virtual {p3, v6, v7, v5}, Lcom/metamoji/cv/xml/CvHayabusadocConvertContext;->fillOutgoingItem(Lcom/metamoji/cv/CvConvertItem;Ljava/lang/String;Ljava/lang/String;)V

    .line 600
    iget-object v5, v6, Lcom/metamoji/cv/CvConvertItem;->externalRef:Ljava/lang/Object;

    const/4 v6, 0x1

    invoke-virtual {p3, v5, v6}, Lcom/metamoji/cv/xml/CvHayabusadocConvertContext;->makeExternalFilePath(Ljava/lang/Object;Z)Ljava/io/File;

    move-result-object v5

    .line 601
    invoke-virtual {v3}, Lcom/metamoji/cm/Blob;->getData()[B

    move-result-object v3

    invoke-static {v5, v3}, Lcom/metamoji/cm/CmUtils;->saveBufferToFile(Ljava/io/File;[B)Z

    .line 602
    const-string v3, "thumbnail"

    invoke-virtual {v5}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v3, v5}, Lorg/w3c/dom/Element;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 605
    :cond_6
    invoke-interface {v1, v4}, Lorg/w3c/dom/Element;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    goto :goto_1

    .line 609
    :cond_7
    invoke-interface {p1, v1}, Lorg/w3c/dom/Element;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    return-void
.end method

.method generateLayerContentElement(Lorg/w3c/dom/Element;Lcom/metamoji/df/model/IModel;Lcom/metamoji/cv/xml/CvHayabusadocConvertContext;)V
    .locals 3

    .line 522
    invoke-interface {p1}, Lorg/w3c/dom/Element;->getOwnerDocument()Lorg/w3c/dom/Document;

    move-result-object v0

    .line 523
    const-string v1, "http://xmlns.metamoji.com/noteanytime/freenotesheet/1.0"

    const-string v2, "layer-content"

    invoke-interface {v0, v1, v2}, Lorg/w3c/dom/Document;->createElementNS(Ljava/lang/String;Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v0

    .line 527
    const-string v1, "ref"

    invoke-static {v0, p2, p3, v1}, Lcom/metamoji/cv/xml/XmlUtils$Outgoing;->addRefAttribute(Lorg/w3c/dom/Element;Lcom/metamoji/df/model/IModel;Lcom/metamoji/cv/xml/CvDirectoryConvertContext;Ljava/lang/String;)V

    .line 529
    invoke-interface {p1, v0}, Lorg/w3c/dom/Element;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    return-void
.end method

.method generateLayersElement(Lorg/w3c/dom/Element;Lcom/metamoji/df/model/IModel;Lcom/metamoji/cv/xml/CvHayabusadocConvertContext;)V
    .locals 20

    move-object/from16 v0, p3

    .line 385
    invoke-interface/range {p1 .. p1}, Lorg/w3c/dom/Element;->getOwnerDocument()Lorg/w3c/dom/Document;

    move-result-object v1

    const/4 v2, 0x5

    .line 390
    new-array v3, v2, [Ljava/lang/String;

    const-string v4, "system:background"

    const/4 v5, 0x0

    aput-object v4, v3, v5

    const-string v4, "system:form"

    const/4 v6, 0x1

    aput-object v4, v3, v6

    const/4 v4, 0x2

    const-string v7, "system:bgdata"

    aput-object v7, v3, v4

    const/4 v4, 0x3

    const-string v7, "system:grid"

    aput-object v7, v3, v4

    const/4 v4, 0x4

    const-string v7, "system:edit"

    aput-object v7, v3, v4

    .line 400
    iget-object v4, v0, Lcom/metamoji/cv/xml/CvHayabusadocConvertContext;->options:Ljava/util/Map;

    const-string v8, "dropPrivateLayer"

    invoke-interface {v4, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    if-eqz v4, :cond_0

    .line 402
    invoke-static {v4}, Lcom/metamoji/cm/CmUtils;->toBool(Ljava/lang/Object;)Z

    move-result v4

    goto :goto_0

    :cond_0
    move v4, v5

    .line 408
    :goto_0
    instance-of v8, v0, Lcom/metamoji/cv/xml/CvAtCollaboConvertContext;

    .line 412
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    .line 413
    invoke-interface/range {p2 .. p2}, Lcom/metamoji/df/model/IModel;->getChildModels()Ljava/util/List;

    move-result-object v10

    .line 414
    const-string v11, "currentLayer"

    const/4 v12, -0x1

    move-object/from16 v13, p2

    invoke-interface {v13, v11, v12}, Lcom/metamoji/df/model/IModel;->getPropertyAsInt(Ljava/lang/String;I)I

    move-result v11

    move v13, v5

    move v14, v13

    move/from16 v16, v6

    move v6, v12

    move v15, v6

    .line 417
    :goto_1
    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v12

    const-string v2, "system:personal_template"

    move-object/from16 v17, v3

    const-string v3, "layerType"

    move/from16 v18, v4

    const-string v4, "$layer"

    if-ge v5, v12, :cond_9

    .line 418
    invoke-interface {v10, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/metamoji/df/model/IModel;

    move/from16 v19, v8

    .line 419
    invoke-interface {v12}, Lcom/metamoji/df/model/IModel;->getModelType()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v4, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_8

    .line 420
    invoke-interface {v12, v3}, Lcom/metamoji/df/model/IModel;->getPropertyAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 423
    invoke-virtual {v7, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    move v6, v5

    :cond_1
    if-nez v19, :cond_3

    .line 427
    const-string v4, "system:common"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_8

    .line 430
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-static {}, Lcom/metamoji/forSchool/ScSchoolManager;->sharedInstance()Lcom/metamoji/forSchool/ScSchoolManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/metamoji/forSchool/ScSchoolManager;->isTeacher()Z

    move-result v2

    if-eqz v2, :cond_8

    :cond_2
    const-string v2, "system:personal"

    .line 431
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_8

    const-string v2, "system:teacher_personal"

    .line 432
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    goto :goto_2

    :cond_3
    if-eqz v18, :cond_4

    .line 438
    const-string v2, "system:private"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_8

    :cond_4
    const/4 v8, 0x5

    if-nez v14, :cond_6

    if-ge v13, v8, :cond_5

    .line 440
    aget-object v2, v17, v13

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_6

    :cond_5
    move/from16 v14, v16

    :cond_6
    move-object/from16 v2, p0

    .line 444
    invoke-virtual {v2, v1, v12, v0}, Lcom/metamoji/cv/xml/freenotesheet/CvFreeNoteOutgoingSubconverter;->_generateLayerElement(Lorg/w3c/dom/Document;Lcom/metamoji/df/model/IModel;Lcom/metamoji/cv/xml/CvHayabusadocConvertContext;)Lorg/w3c/dom/Element;

    move-result-object v3

    invoke-interface {v9, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    if-ne v5, v11, :cond_7

    move v15, v13

    :cond_7
    add-int/lit8 v13, v13, 0x1

    goto :goto_3

    :cond_8
    :goto_2
    const/4 v8, 0x5

    move-object/from16 v2, p0

    :goto_3
    add-int/lit8 v5, v5, 0x1

    move v2, v8

    move-object/from16 v3, v17

    move/from16 v4, v18

    move/from16 v8, v19

    goto/16 :goto_1

    :cond_9
    const/4 v5, -0x1

    if-ne v5, v15, :cond_a

    add-int/lit8 v15, v13, -0x1

    .line 461
    :cond_a
    invoke-interface {v10, v15}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/metamoji/df/model/IModel;

    .line 462
    invoke-interface {v0}, Lcom/metamoji/df/model/IModel;->getModelType()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_b

    .line 463
    invoke-interface {v0, v3}, Lcom/metamoji/df/model/IModel;->getPropertyAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 464
    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    const/4 v5, -0x1

    if-eq v6, v5, :cond_b

    goto :goto_4

    :cond_b
    move v6, v15

    :goto_4
    if-eqz v14, :cond_c

    .line 470
    const-string v0, "layers2"

    goto :goto_5

    :cond_c
    const-string v0, "layers"

    .line 471
    :goto_5
    const-string v2, "http://xmlns.metamoji.com/noteanytime/freenotesheet/1.0"

    invoke-interface {v1, v2, v0}, Lorg/w3c/dom/Document;->createElementNS(Ljava/lang/String;Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v0

    .line 475
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v1}, Lcom/metamoji/cm/CmUtils;->toString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "current-layer"

    invoke-interface {v0, v2, v1}, Lorg/w3c/dom/Element;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 479
    invoke-interface {v9}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_6
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_d

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/w3c/dom/Element;

    .line 480
    invoke-interface {v0, v2}, Lorg/w3c/dom/Element;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    goto :goto_6

    :cond_d
    move-object/from16 v2, p1

    .line 483
    invoke-interface {v2, v0}, Lorg/w3c/dom/Element;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    return-void
.end method

.method public getKey()Ljava/lang/String;
    .locals 1

    .line 97
    const-string v0, "$freenote"

    return-object v0
.end method
