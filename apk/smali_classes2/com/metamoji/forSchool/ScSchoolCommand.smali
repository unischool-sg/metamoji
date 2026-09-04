.class public Lcom/metamoji/forSchool/ScSchoolCommand;
.super Ljava/lang/Object;
.source "ScSchoolCommand.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/metamoji/forSchool/ScSchoolCommand$IScSetScoreCompletionAction;
    }
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 92
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static addPageFromPersonalLayer(Lcom/metamoji/nt/NtNoteController;Lcom/metamoji/nt/NtPageController;Ljava/lang/String;)V
    .locals 10

    .line 580
    const-string v0, "paste"

    const-string v1, "state"

    invoke-static {v0, v1}, Lcom/metamoji/dm/fw/DmUtils;->createTempFileWithPrefix(Ljava/lang/String;Ljava/lang/String;)Ljava/io/File;

    move-result-object v1

    .line 584
    :try_start_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 585
    invoke-virtual {p1}, Lcom/metamoji/nt/NtPageController;->getModel()Lcom/metamoji/df/model/IModel;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 586
    invoke-virtual {p0}, Lcom/metamoji/nt/NtNoteController;->getModel()Lcom/metamoji/df/model/IModel;

    move-result-object p1

    invoke-virtual {p0}, Lcom/metamoji/nt/NtNoteController;->getModelManager()Lcom/metamoji/df/model/IModelManager;

    move-result-object v2

    invoke-virtual {p0, p1, v0, v2}, Lcom/metamoji/nt/NtNoteController;->makePasteboardExtras(Lcom/metamoji/df/model/IModel;Ljava/util/List;Lcom/metamoji/df/model/IModelManager;)Ljava/util/Map;

    move-result-object p1

    .line 587
    new-instance v2, Lcom/metamoji/forSchool/ScSchoolCommand$$ExternalSyntheticLambda17;

    invoke-direct {v2}, Lcom/metamoji/forSchool/ScSchoolCommand$$ExternalSyntheticLambda17;-><init>()V

    .line 592
    invoke-virtual {p0}, Lcom/metamoji/nt/NtNoteController;->getDocument()Lcom/metamoji/nt/NtDocument;

    move-result-object v3

    invoke-static {v0, v3, v2, p1}, Lcom/metamoji/nt/NtPasteDataUtil;->exportModelsAsFile(Ljava/util/List;Lcom/metamoji/nt/NtDocument;Lcom/metamoji/nt/NtPasteDataUtil$IRootModelCreator;Ljava/util/Map;)Ljava/io/File;

    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 597
    :try_start_1
    new-instance p1, Lcom/metamoji/forSchool/ScSchoolCommand$$ExternalSyntheticLambda18;

    invoke-direct {p1}, Lcom/metamoji/forSchool/ScSchoolCommand$$ExternalSyntheticLambda18;-><init>()V

    .line 599
    invoke-virtual {p0}, Lcom/metamoji/nt/NtNoteController;->getDocument()Lcom/metamoji/nt/NtDocument;

    move-result-object v0

    const/4 v2, 0x0

    invoke-static {v1, v0, p1, v2}, Lcom/metamoji/nt/NtPasteDataUtil;->importModelsFromFile(Ljava/io/File;Lcom/metamoji/nt/NtDocument;Lcom/metamoji/nt/NtPasteDataUtil$IPreChecker;Ljava/util/Map;)Ljava/util/List;

    move-result-object p1
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz p1, :cond_0

    .line 607
    :try_start_2
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    const/4 v3, 0x1

    if-ne v0, v3, :cond_0

    const/4 v0, 0x0

    .line 608
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/metamoji/df/model/IModel;

    invoke-static {p1, p2}, Lcom/metamoji/forSchool/ScSchoolCommand;->convertPageModelFromPersonalToNormal(Lcom/metamoji/df/model/IModel;Ljava/lang/String;)Lcom/metamoji/df/model/IModel;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 610
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 611
    invoke-interface {v2, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    move-object v3, v2

    if-eqz v3, :cond_1

    .line 616
    invoke-virtual {p0}, Lcom/metamoji/nt/NtNoteController;->getCurrentPageIndex()I

    move-result v4

    const/4 v8, 0x1

    const/4 v9, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x1

    const/4 v7, 0x1

    move-object v2, p0

    invoke-virtual/range {v2 .. v9}, Lcom/metamoji/nt/NtNoteController;->addPagesCore(Ljava/util/List;ILjava/lang/String;ZZZLjava/util/Map;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 620
    :cond_1
    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    return-void

    :catch_0
    move-exception v0

    move-object p0, v0

    .line 601
    :try_start_3
    const-string p1, "failed to retrieve page data in pasteboard, %s"

    invoke-virtual {p0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object p0

    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object p0

    invoke-static {p1, p0}, Lcom/metamoji/cm/CmLog;->error(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 620
    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    return-void

    :catchall_0
    move-exception v0

    move-object p0, v0

    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    .line 621
    throw p0
.end method

.method public static attentionUserInfoDic()Ljava/util/Map;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 1935
    invoke-static {}, Lcom/metamoji/nt/NtUserDefaults;->getInstance()Lcom/metamoji/nt/NtUserDefaults;

    move-result-object v0

    const-string v1, "forSchoolAttentionUserInfoDic"

    invoke-virtual {v0, v1}, Lcom/metamoji/nt/NtUserDefaults;->getMapValue(Ljava/lang/String;)Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public static attentionUserInfoDicForEditor()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 1938
    invoke-static {}, Lcom/metamoji/nt/NtEditorWindowController;->getInstance()Lcom/metamoji/nt/NtEditorWindowController;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1940
    invoke-virtual {v0}, Lcom/metamoji/nt/NtEditorWindowController;->getDocument()Lcom/metamoji/nt/NtDocument;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1942
    invoke-virtual {v0}, Lcom/metamoji/nt/NtDocument;->isCollabo()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1943
    invoke-static {}, Lcom/metamoji/forSchool/ScSchoolCommand;->attentionUserInfoDic()Ljava/util/Map;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public static changeSchoolPageType(ILjava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .line 228
    invoke-static {}, Lcom/metamoji/forSchool/ScSchoolCommand;->getNoteController()Lcom/metamoji/nt/NtNoteController;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 230
    invoke-virtual {v0, p0, p1}, Lcom/metamoji/nt/NtNoteController;->setSchoolPageType(ILjava/util/List;)V

    :cond_0
    return-void
.end method

.method private static convertPageModelFromPersonalToNormal(Lcom/metamoji/df/model/IModel;Ljava/lang/String;)Lcom/metamoji/df/model/IModel;
    .locals 10

    .line 634
    const-string v0, "$page"

    invoke-interface {p0}, Lcom/metamoji/df/model/IModel;->getModelType()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    .line 640
    :cond_0
    const-string v0, "_[layer-forUser]_"

    invoke-virtual {p1, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    if-gez v0, :cond_1

    .line 642
    const-string v0, "_[layer-forGroup]_"

    invoke-virtual {p1, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    :cond_1
    if-gez v0, :cond_2

    .line 645
    const-string v0, "_[layer-forClass]"

    invoke-virtual {p1, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    :cond_2
    if-gez v0, :cond_3

    .line 649
    const-string v0, "_[layer-forTeacherPersonal]_"

    invoke-virtual {p1, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    :cond_3
    if-ltz v0, :cond_4

    .line 653
    invoke-virtual {p1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_4
    move-object p1, v1

    :goto_0
    if-eqz p1, :cond_f

    .line 655
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_5

    goto/16 :goto_6

    .line 663
    :cond_5
    invoke-static {p0}, Lcom/metamoji/forSchool/ScSchoolUtils;->getSchoolPageType(Lcom/metamoji/df/model/IModel;)I

    move-result v0

    if-nez v0, :cond_6

    return-object v1

    .line 668
    :cond_6
    invoke-static {}, Lcom/metamoji/forSchool/ScSchoolManager;->sharedInstance()Lcom/metamoji/forSchool/ScSchoolManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/metamoji/forSchool/ScSchoolManager;->isTeacher()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 670
    invoke-static {}, Lcom/metamoji/nt/NtUserDefaults;->getInstance()Lcom/metamoji/nt/NtUserDefaults;

    move-result-object v0

    .line 671
    const-string v1, "forSchoolDefaultSchoolPageType"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/metamoji/nt/NtUserDefaults;->getIntValue(Ljava/lang/String;I)I

    move-result v0

    .line 672
    const-string v1, "forSchoolPageType"

    invoke-interface {p0, v1, v0}, Lcom/metamoji/df/model/IModel;->setProperty(Ljava/lang/String;I)V

    goto :goto_1

    :cond_7
    const/4 v0, 0x0

    .line 675
    invoke-static {v0, p0}, Lcom/metamoji/forSchool/ScSchoolUtils;->setSchoolPageType(ILcom/metamoji/df/model/IModel;)V

    .line 678
    :goto_1
    const-string v0, "pageId"

    invoke-interface {p0, v0}, Lcom/metamoji/df/model/IModel;->getPropertyAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 679
    const-string v1, "_[layer-common]"

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v0

    const-string v1, "%s%s"

    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 681
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 682
    invoke-interface {p0}, Lcom/metamoji/df/model/IModel;->getFirstChild()Lcom/metamoji/df/model/IModel;

    move-result-object v3

    :goto_2
    if-eqz v3, :cond_d

    .line 684
    invoke-interface {v3}, Lcom/metamoji/df/model/IModel;->getModelType()Ljava/lang/String;

    move-result-object v4

    const-string v5, "$layer"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_c

    .line 687
    const-string v4, "layerType"

    invoke-interface {v3, v4}, Lcom/metamoji/df/model/IModel;->getPropertyAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_c

    .line 689
    const-string v6, "layerId"

    invoke-interface {v3, v6}, Lcom/metamoji/df/model/IModel;->getPropertyAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 691
    const-string v8, "system:common"

    invoke-virtual {v5, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_8

    .line 695
    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_4

    .line 697
    :cond_8
    const-string v9, "system:personal"

    invoke-virtual {v5, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_9

    const-string v9, "system:teacher_personal"

    .line 698
    invoke-virtual {v5, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_c

    .line 701
    :cond_9
    invoke-virtual {v7, p1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_b

    .line 707
    invoke-interface {v3, v4, v8}, Lcom/metamoji/df/model/IModel;->setProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 709
    invoke-interface {v3, v6, v0}, Lcom/metamoji/df/model/IModel;->setProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 711
    invoke-interface {v3}, Lcom/metamoji/df/model/IModel;->getFirstChild()Lcom/metamoji/df/model/IModel;

    move-result-object v4

    :goto_3
    if-eqz v4, :cond_c

    .line 713
    invoke-interface {v4}, Lcom/metamoji/df/model/IModel;->getModelType()Ljava/lang/String;

    move-result-object v5

    const-string v6, "$draw"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_a

    .line 714
    const-string v5, "_[unit]_draw"

    filled-new-array {v0, v5}, [Ljava/lang/Object;

    move-result-object v5

    invoke-static {v1, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    .line 715
    const-string v6, "unitId"

    invoke-interface {v4, v6, v5}, Lcom/metamoji/df/model/IModel;->setProperty(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_4

    .line 719
    :cond_a
    invoke-interface {v4}, Lcom/metamoji/df/model/IModel;->getNextSibling()Lcom/metamoji/df/model/IModel;

    move-result-object v4

    goto :goto_3

    .line 726
    :cond_b
    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 734
    :cond_c
    :goto_4
    invoke-interface {v3}, Lcom/metamoji/df/model/IModel;->getNextSibling()Lcom/metamoji/df/model/IModel;

    move-result-object v3

    goto :goto_2

    .line 738
    :cond_d
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_5
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_e

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/metamoji/df/model/IModel;

    .line 739
    invoke-interface {p0, v0}, Lcom/metamoji/df/model/IModel;->remove(Lcom/metamoji/df/model/IModel;)V

    .line 740
    invoke-interface {v0}, Lcom/metamoji/df/model/IModel;->destroy()V

    goto :goto_5

    :cond_e
    return-object p0

    :cond_f
    :goto_6
    return-object v1
.end method

.method public static executeSetScore(Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;ZLcom/metamoji/forSchool/ScSchoolCommand$IScSetScoreCompletionAction;Z)V
    .locals 7

    .line 1756
    invoke-static {}, Lcom/metamoji/lb/LbInAppPurchaseUtils;->isNetworkAvailable()Z

    move-result v0

    if-nez v0, :cond_1

    .line 1757
    sget p0, Lcom/metamoji/noteanytime/R$string;->AnytimeNotify_Dialog_Msg_Offline:I

    sget p1, Lcom/metamoji/noteanytime/R$string;->MMJNT_LSTR_SCORESETTINGDLG_TITLE:I

    const/4 p2, 0x0

    invoke-static {p0, p1, p2}, Lcom/metamoji/cm/CmUtils;->confirmDialog(IILandroid/content/DialogInterface$OnClickListener;)V

    if-eqz p4, :cond_0

    const/4 p0, 0x0

    .line 1759
    invoke-interface {p4, p0, p2}, Lcom/metamoji/forSchool/ScSchoolCommand$IScSetScoreCompletionAction;->onComplete(ZLjava/util/Map;)V

    :cond_0
    return-void

    .line 1765
    :cond_1
    new-instance v4, Lcom/metamoji/forSchool/ui/ScNumInputBoxDialog;

    invoke-direct {v4}, Lcom/metamoji/forSchool/ui/ScNumInputBoxDialog;-><init>()V

    .line 1766
    sget v0, Lcom/metamoji/noteanytime/R$string;->MMJNT_LSTR_SCORESETTINGDLG_TITLE:I

    invoke-virtual {v4, v0}, Lcom/metamoji/forSchool/ui/ScNumInputBoxDialog;->setDialogTitleId(I)V

    .line 1767
    invoke-virtual {v4, p0}, Lcom/metamoji/forSchool/ui/ScNumInputBoxDialog;->setInitialValue(Ljava/lang/Integer;)V

    .line 1768
    new-instance v0, Lcom/metamoji/forSchool/ScSchoolCommand$12;

    move-object v5, p1

    move-object v2, p2

    move v1, p3

    move-object v3, p4

    move v6, p5

    invoke-direct/range {v0 .. v6}, Lcom/metamoji/forSchool/ScSchoolCommand$12;-><init>(ZLjava/lang/String;Lcom/metamoji/forSchool/ScSchoolCommand$IScSetScoreCompletionAction;Lcom/metamoji/forSchool/ui/ScNumInputBoxDialog;Ljava/lang/String;Z)V

    invoke-virtual {v4, v0}, Lcom/metamoji/forSchool/ui/ScNumInputBoxDialog;->setOnClosedListener(Lcom/metamoji/ui/dialog/UiDialog$OnClosedListener;)V

    const/4 p0, 0x1

    .line 1822
    invoke-virtual {v4, p0}, Lcom/metamoji/forSchool/ui/ScNumInputBoxDialog;->setCentering(Z)V

    .line 1823
    invoke-virtual {v4, v6}, Lcom/metamoji/forSchool/ui/ScNumInputBoxDialog;->setHideParentDialog(Z)V

    .line 1824
    const-string p0, "ScNumInputBoxDialog"

    invoke-virtual {v4, p0}, Lcom/metamoji/forSchool/ui/ScNumInputBoxDialog;->safeShow(Ljava/lang/String;)V

    return-void
.end method

.method public static getBelongGroupId(Ljava/lang/String;Ljava/util/List;)Ljava/lang/String;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/Object;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    if-eqz p1, :cond_2

    .line 1099
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    .line 1100
    check-cast v0, Ljava/util/Map;

    if-eqz v0, :cond_0

    .line 1102
    const-string v1, "user-list"

    invoke-static {v0, v1}, Lcom/metamoji/ns/NsCollaboUtils;->GetValue(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    if-eqz v1, :cond_0

    .line 1104
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map;

    .line 1105
    const-string v3, "user-id"

    invoke-static {v2, v3}, Lcom/metamoji/ns/NsCollaboUtils;->GetValue(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    if-eqz v2, :cond_1

    .line 1106
    invoke-virtual {v2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1107
    const-string p0, "group-id"

    invoke-static {v0, p0}, Lcom/metamoji/ns/NsCollaboUtils;->GetValue(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    return-object p0

    .line 1115
    :cond_2
    const-string p0, ""

    return-object p0
.end method

.method private static getNoteController()Lcom/metamoji/nt/NtNoteController;
    .locals 1

    .line 1194
    invoke-static {}, Lcom/metamoji/nt/NtEditorWindowController;->getInstance()Lcom/metamoji/nt/NtEditorWindowController;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 1198
    :cond_0
    invoke-virtual {v0}, Lcom/metamoji/nt/NtEditorWindowController;->getMainSheet()Lcom/metamoji/nt/NtNoteController;

    move-result-object v0

    return-object v0
.end method

.method public static getScoreTargetUserList()Ljava/util/List;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 1867
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1868
    invoke-static {}, Lcom/metamoji/nt/NtEditorWindowController;->getInstance()Lcom/metamoji/nt/NtEditorWindowController;

    move-result-object v1

    .line 1869
    invoke-virtual {v1}, Lcom/metamoji/nt/NtEditorWindowController;->getMainSheet()Lcom/metamoji/nt/NtNoteController;

    move-result-object v1

    .line 1870
    invoke-virtual {v1}, Lcom/metamoji/nt/NtNoteController;->getGroupList()Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_3

    .line 1872
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    .line 1873
    check-cast v2, Ljava/util/Map;

    .line 1875
    const-string v3, "group-id"

    invoke-static {v2, v3}, Lcom/metamoji/ns/NsCollaboUtils;->GetValue(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 1876
    const-string v4, "TEACHER"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    goto :goto_0

    .line 1879
    :cond_1
    const-string v3, "user-list"

    invoke-static {v2, v3}, Lcom/metamoji/ns/NsCollaboUtils;->GetValue(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    if-eqz v2, :cond_0

    .line 1881
    monitor-enter v2

    .line 1882
    :try_start_0
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map;

    .line 1883
    const-string v5, "user-id"

    invoke-static {v4, v5}, Lcom/metamoji/ns/NsCollaboUtils;->GetValue(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 1884
    const-string v6, "user-name"

    invoke-static {v4, v6}, Lcom/metamoji/ns/NsCollaboUtils;->GetValue(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 1885
    const-string v7, "class-number"

    invoke-static {v4, v7}, Lcom/metamoji/ns/NsCollaboUtils;->GetValue(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    .line 1886
    const-string v8, "login-name"

    invoke-static {v4, v8}, Lcom/metamoji/ns/NsCollaboUtils;->GetValue(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 1887
    new-instance v8, Lcom/metamoji/forSchool/ScSchoolCommand$13;

    invoke-direct {v8, v5, v6, v7, v4}, Lcom/metamoji/forSchool/ScSchoolCommand$13;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 1892
    :cond_2
    monitor-exit v2

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_3
    return-object v0
.end method

.method public static handleDeadlineLogList()V
    .locals 2

    .line 1566
    new-instance v0, Lcom/metamoji/forSchool/task/ScCollaboBgTaskForGetTestingLogList;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/metamoji/forSchool/task/ScCollaboBgTaskForGetTestingLogList;-><init>(Lcom/metamoji/ns/INsCollaboAction;)V

    .line 1567
    invoke-static {}, Lcom/metamoji/ns/NsCollaboManager;->getInstance()Lcom/metamoji/ns/NsCollaboManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/metamoji/ns/NsCollaboManager;->roomId()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/metamoji/forSchool/task/ScCollaboBgTaskForGetTestingLogList;->RoomId:Ljava/lang/String;

    .line 1568
    invoke-virtual {v0}, Lcom/metamoji/forSchool/task/ScCollaboBgTaskForGetTestingLogList;->doInBackground()V

    return-void
.end method

.method public static handleDeadlineSetting()V
    .locals 4

    .line 1553
    invoke-static {}, Lcom/metamoji/forSchool/ScSchoolManager;->sharedInstance()Lcom/metamoji/forSchool/ScSchoolManager;

    move-result-object v0

    .line 1554
    new-instance v1, Lcom/metamoji/forSchool/ui/ScDeadlineSettingDialog;

    invoke-direct {v1}, Lcom/metamoji/forSchool/ui/ScDeadlineSettingDialog;-><init>()V

    const/4 v2, 0x1

    .line 1555
    iput-boolean v2, v1, Lcom/metamoji/forSchool/ui/ScDeadlineSettingDialog;->m_changeMode:Z

    .line 1556
    invoke-virtual {v0}, Lcom/metamoji/forSchool/ScSchoolManager;->deadlinePrevStartMode()Lcom/metamoji/forSchool/ScSchoolManager$DeadlineMode;

    move-result-object v3

    iput-object v3, v1, Lcom/metamoji/forSchool/ui/ScDeadlineSettingDialog;->m_prevStartMode:Lcom/metamoji/forSchool/ScSchoolManager$DeadlineMode;

    .line 1557
    invoke-virtual {v0}, Lcom/metamoji/forSchool/ScSchoolManager;->deadlineEndMode()Lcom/metamoji/forSchool/ScSchoolManager$DeadlineMode;

    move-result-object v3

    iput-object v3, v1, Lcom/metamoji/forSchool/ui/ScDeadlineSettingDialog;->m_endMode:Lcom/metamoji/forSchool/ScSchoolManager$DeadlineMode;

    .line 1558
    invoke-virtual {v0}, Lcom/metamoji/forSchool/ScSchoolManager;->deadlineStartTime()Ljava/util/Date;

    move-result-object v3

    iput-object v3, v1, Lcom/metamoji/forSchool/ui/ScDeadlineSettingDialog;->m_startDate:Ljava/util/Date;

    .line 1559
    invoke-virtual {v0}, Lcom/metamoji/forSchool/ScSchoolManager;->deadlineEndTime()Ljava/util/Date;

    move-result-object v0

    iput-object v0, v1, Lcom/metamoji/forSchool/ui/ScDeadlineSettingDialog;->m_endDate:Ljava/util/Date;

    .line 1560
    invoke-virtual {v1, v2}, Lcom/metamoji/forSchool/ui/ScDeadlineSettingDialog;->setCentering(Z)V

    .line 1561
    const-string v0, "ScDeadlineSetting"

    invoke-virtual {v1, v0}, Lcom/metamoji/forSchool/ui/ScDeadlineSettingDialog;->safeShow(Ljava/lang/String;)V

    return-void
.end method

.method public static handleDistributeMultiNotesToMultiBoxes(Ljava/lang/String;Ljava/util/List;Z)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;Z)V"
        }
    .end annotation

    .line 2281
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x1

    if-ge v0, v1, :cond_0

    goto :goto_0

    .line 2283
    :cond_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    const/16 v1, 0xa

    if-le v0, v1, :cond_1

    .line 2285
    sget p0, Lcom/metamoji/noteanytime/R$string;->MMJNT_LSTR_DISTRIBYTE_MULTI_NOTES_MAX_COUNT_MSG:I

    invoke-static {p0}, Lcom/metamoji/ns/NsCollaboUtils;->showAlertMessage(I)V

    return-void

    .line 2290
    :cond_1
    invoke-static {}, Lcom/metamoji/cs/dc/user/CsDCUserInfoSettings;->getInstanceFromSystemSettings()Lcom/metamoji/cs/dc/user/CsDCUserInfoSettings;

    move-result-object v0

    .line 2291
    invoke-virtual {v0}, Lcom/metamoji/cs/dc/user/CsDCUserInfoSettings;->getUserInfo()Lcom/metamoji/cs/dc/user/CsDCUserInfo;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 2292
    iget v0, v0, Lcom/metamoji/cs/dc/user/CsDCUserInfo;->userType:I

    const/4 v1, 0x4

    if-eq v0, v1, :cond_2

    goto :goto_0

    .line 2300
    :cond_2
    new-instance v0, Lcom/metamoji/forSchool/task/ScCollaboBgTaskForPreCreateMultiRoom;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/metamoji/forSchool/task/ScCollaboBgTaskForPreCreateMultiRoom;-><init>(Lcom/metamoji/ns/INsCollaboAction;)V

    .line 2301
    iput-object p0, v0, Lcom/metamoji/forSchool/task/ScCollaboBgTaskForPreCreateMultiRoom;->currentDriveId:Ljava/lang/String;

    .line 2302
    iput-object p1, v0, Lcom/metamoji/forSchool/task/ScCollaboBgTaskForPreCreateMultiRoom;->docIds:Ljava/util/List;

    .line 2303
    iput-boolean p2, v0, Lcom/metamoji/forSchool/task/ScCollaboBgTaskForPreCreateMultiRoom;->isDragDrop:Z

    .line 2305
    invoke-virtual {v0}, Lcom/metamoji/forSchool/task/ScCollaboBgTaskForPreCreateMultiRoom;->doInBackground()V

    :cond_3
    :goto_0
    return-void
.end method

.method public static handleEnd()V
    .locals 5

    .line 1484
    new-instance v0, Lcom/metamoji/forSchool/ScSchoolCommand$$ExternalSyntheticLambda13;

    invoke-direct {v0}, Lcom/metamoji/forSchool/ScSchoolCommand$$ExternalSyntheticLambda13;-><init>()V

    .line 1488
    sget v1, Lcom/metamoji/noteanytime/R$string;->MMJNT_LSTR_DEADLINE_MSG_END:I

    .line 1489
    invoke-static {}, Lcom/metamoji/nt/NtEditorWindowController;->getCurrentActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v2

    .line 1490
    invoke-static {v2}, Lcom/metamoji/cm/CmUtils;->createAlertDialog(Landroidx/fragment/app/FragmentActivity;)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object v3

    .line 1491
    invoke-virtual {v3, v1}, Landroidx/appcompat/app/AlertDialog$Builder;->setMessage(I)Landroidx/appcompat/app/AlertDialog$Builder;

    .line 1492
    sget v1, Lcom/metamoji/noteanytime/R$string;->Msg_YES:I

    new-instance v4, Lcom/metamoji/forSchool/ScSchoolCommand$5;

    invoke-direct {v4, v0}, Lcom/metamoji/forSchool/ScSchoolCommand$5;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v3, v1, v4}, Landroidx/appcompat/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    .line 1498
    sget v0, Lcom/metamoji/noteanytime/R$string;->Msg_CANCEL:I

    const/4 v1, 0x0

    invoke-virtual {v3, v0, v1}, Landroidx/appcompat/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    const/4 v0, 0x0

    .line 1500
    invoke-virtual {v3, v0}, Landroidx/appcompat/app/AlertDialog$Builder;->setCancelable(Z)Landroidx/appcompat/app/AlertDialog$Builder;

    .line 1501
    new-instance v0, Lcom/metamoji/ui/dialog/UiAlertDialog;

    invoke-direct {v0, v3}, Lcom/metamoji/ui/dialog/UiAlertDialog;-><init>(Landroidx/appcompat/app/AlertDialog$Builder;)V

    .line 1502
    invoke-virtual {v2}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v1

    const-string v2, "handleEnd"

    invoke-virtual {v0, v1, v2}, Lcom/metamoji/ui/dialog/UiAlertDialog;->show(Landroidx/fragment/app/FragmentManager;Ljava/lang/String;)V

    return-void
.end method

.method public static handleGroupingStudentGroupMenuTapped(Lcom/metamoji/cm/CmContext;)V
    .locals 20

    .line 1005
    const-string v0, "GroupingData"

    move-object/from16 v1, p0

    invoke-virtual {v1, v0}, Lcom/metamoji/cm/CmContext;->getExtData(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    .line 1007
    const-string v1, "groupId"

    invoke-static {v0, v1}, Lcom/metamoji/ns/NsCollaboUtils;->GetValue(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 1008
    const-string v2, "userDic"

    invoke-static {v0, v2}, Lcom/metamoji/ns/NsCollaboUtils;->GetValue(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/metamoji/forSchool/ui/ScUserListItemData;

    .line 1009
    const-string v3, "oldGroupId"

    invoke-static {v0, v3}, Lcom/metamoji/ns/NsCollaboUtils;->GetValue(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    if-nez v2, :cond_0

    goto/16 :goto_5

    .line 1013
    :cond_0
    iget-object v3, v2, Lcom/metamoji/forSchool/ui/ScUserListItemData;->userName:Ljava/lang/String;

    .line 1014
    iget-object v4, v2, Lcom/metamoji/forSchool/ui/ScUserListItemData;->dcUserId:Ljava/lang/String;

    .line 1015
    iget-object v5, v2, Lcom/metamoji/forSchool/ui/ScUserListItemData;->classNumber:Ljava/lang/String;

    .line 1016
    iget-object v2, v2, Lcom/metamoji/forSchool/ui/ScUserListItemData;->loginName:Ljava/lang/String;

    if-eqz v3, :cond_c

    if-nez v4, :cond_1

    goto/16 :goto_5

    .line 1021
    :cond_1
    invoke-static {}, Lcom/metamoji/nt/NtEditorWindowController;->getInstance()Lcom/metamoji/nt/NtEditorWindowController;

    move-result-object v6

    .line 1024
    invoke-virtual {v6}, Lcom/metamoji/nt/NtEditorWindowController;->getMainSheet()Lcom/metamoji/nt/NtNoteController;

    move-result-object v6

    .line 1025
    invoke-virtual {v6}, Lcom/metamoji/nt/NtNoteController;->getGroupList()Ljava/util/List;

    move-result-object v7

    if-eqz v7, :cond_c

    .line 1027
    new-instance v7, Ljava/util/ArrayList;

    invoke-virtual {v6}, Lcom/metamoji/nt/NtNoteController;->getGroupList()Ljava/util/List;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 1033
    invoke-interface {v7}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    const/4 v10, 0x0

    :goto_0
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    const-string v13, "user-name"

    const-string v14, "user-id"

    const-string v15, "user-list"

    const-string v9, "TEACHER"

    const-string v12, "group-id"

    if-eqz v11, :cond_7

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    .line 1034
    check-cast v11, Ljava/util/Map;

    .line 1035
    invoke-static {v11, v12}, Lcom/metamoji/ns/NsCollaboUtils;->GetValue(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v16

    move-object/from16 v17, v3

    move-object/from16 v3, v16

    check-cast v3, Ljava/lang/String;

    .line 1037
    invoke-virtual {v3, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v16

    if-eqz v16, :cond_2

    move-object/from16 v3, v17

    goto :goto_0

    .line 1043
    :cond_2
    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 1044
    invoke-static {v11, v15}, Lcom/metamoji/ns/NsCollaboUtils;->GetValue(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    .line 1045
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v11

    :goto_1
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v16

    if-eqz v16, :cond_5

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v16

    move-object/from16 v18, v0

    move-object/from16 v0, v16

    check-cast v0, Ljava/util/Map;

    if-eqz v0, :cond_3

    .line 1047
    invoke-static {v0, v14}, Lcom/metamoji/ns/NsCollaboUtils;->GetValue(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v16

    move-object/from16 v19, v8

    move-object/from16 v8, v16

    check-cast v8, Ljava/lang/String;

    if-eqz v8, :cond_4

    .line 1048
    invoke-virtual {v8, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_4

    .line 1049
    invoke-static {v0, v13}, Lcom/metamoji/ns/NsCollaboUtils;->GetValue(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    .line 1050
    invoke-interface {v3, v0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    move-object v3, v8

    const/4 v10, 0x1

    goto :goto_2

    :cond_3
    move-object/from16 v19, v8

    :cond_4
    move-object/from16 v0, v18

    move-object/from16 v8, v19

    goto :goto_1

    :cond_5
    move-object/from16 v18, v0

    move-object/from16 v19, v8

    move-object/from16 v3, v17

    :goto_2
    if-eqz v10, :cond_6

    goto :goto_3

    :cond_6
    move-object/from16 v0, v18

    move-object/from16 v8, v19

    goto :goto_0

    :cond_7
    move-object/from16 v17, v3

    .line 1063
    :goto_3
    invoke-interface {v7}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v8, 0x0

    :cond_8
    :goto_4
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_b

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    .line 1064
    check-cast v10, Ljava/util/Map;

    .line 1065
    invoke-static {v10, v12}, Lcom/metamoji/ns/NsCollaboUtils;->GetValue(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/String;

    .line 1068
    invoke-virtual {v11, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v16

    if-eqz v16, :cond_9

    goto :goto_4

    .line 1073
    :cond_9
    invoke-virtual {v11, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_a

    .line 1074
    invoke-static {v10, v15}, Lcom/metamoji/ns/NsCollaboUtils;->GetValue(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/List;

    .line 1075
    new-instance v10, Ljava/util/HashMap;

    invoke-direct {v10}, Ljava/util/HashMap;-><init>()V

    .line 1076
    invoke-interface {v10, v14, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1077
    invoke-interface {v10, v13, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1078
    const-string v11, "class-number"

    invoke-interface {v10, v11, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1079
    const-string v11, "login-name"

    invoke-interface {v10, v11, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1080
    invoke-interface {v8, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const/4 v8, 0x1

    :cond_a
    if-eqz v8, :cond_8

    .line 1090
    :cond_b
    invoke-virtual {v6, v7}, Lcom/metamoji/nt/NtNoteController;->setGroupList(Ljava/util/List;)V

    :cond_c
    :goto_5
    return-void
.end method

.method public static handleHideStudentName()V
    .locals 2

    .line 1441
    invoke-static {}, Lcom/metamoji/forSchool/ScSchoolCommand;->getNoteController()Lcom/metamoji/nt/NtNoteController;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    .line 1443
    invoke-virtual {v0, v1}, Lcom/metamoji/nt/NtNoteController;->setHiddenStudentName(Z)V

    .line 1444
    invoke-static {}, Lcom/metamoji/forSchool/monitoring/ScMonitoringManager;->sharedInstance()Lcom/metamoji/forSchool/monitoring/ScMonitoringManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/metamoji/forSchool/monitoring/ScMonitoringManager;->resetMonitoringState()V

    :cond_0
    return-void
.end method

.method public static handleJoinInMyGroup()V
    .locals 4

    .line 2180
    invoke-static {}, Lcom/metamoji/forSchool/ScSchoolCommand;->getNoteController()Lcom/metamoji/nt/NtNoteController;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_1

    .line 2184
    :cond_0
    invoke-static {}, Lcom/metamoji/forSchool/ScSchoolUtils;->getUserId()Ljava/lang/String;

    move-result-object v1

    .line 2185
    invoke-virtual {v0, v1}, Lcom/metamoji/nt/NtNoteController;->getBelongGroupDic(Ljava/lang/String;)Ljava/util/Map;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 2188
    const-string v2, "group-id"

    invoke-static {v1, v2}, Lcom/metamoji/ns/NsCollaboUtils;->GetValue(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    .line 2191
    :goto_0
    invoke-static {}, Lcom/metamoji/nt/NtEditorWindowController;->getInstance()Lcom/metamoji/nt/NtEditorWindowController;

    move-result-object v2

    .line 2192
    invoke-virtual {v2}, Lcom/metamoji/nt/NtEditorWindowController;->getCollaboModeBar()Lcom/metamoji/ns/ui/NsCollaboModeViewBase;

    move-result-object v2

    invoke-virtual {v2}, Lcom/metamoji/ns/ui/NsCollaboModeViewBase;->getSelectedUserDic()Lcom/metamoji/forSchool/ui/ScUserListItemData;

    move-result-object v2

    if-eqz v2, :cond_2

    .line 2194
    iget-object v2, v2, Lcom/metamoji/forSchool/ui/ScUserListItemData;->dcUserId:Ljava/lang/String;

    .line 2197
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 2198
    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const/4 v2, 0x0

    .line 2199
    invoke-virtual {v0, v3, v1, v2}, Lcom/metamoji/nt/NtNoteController;->sendChangeGroupOfUserDirectionForUserIds(Ljava/util/List;Ljava/lang/String;Z)V

    :cond_2
    :goto_1
    return-void
.end method

.method public static handleJoinToThisGroup()V
    .locals 6

    .line 2080
    invoke-static {}, Lcom/metamoji/forSchool/ScSchoolCommand;->getNoteController()Lcom/metamoji/nt/NtNoteController;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_2

    .line 2084
    :cond_0
    invoke-static {}, Lcom/metamoji/forSchool/ScSchoolUtils;->getUserId()Ljava/lang/String;

    move-result-object v1

    .line 2091
    invoke-static {}, Lcom/metamoji/nt/NtEditorWindowController;->getInstance()Lcom/metamoji/nt/NtEditorWindowController;

    move-result-object v2

    .line 2092
    invoke-virtual {v2}, Lcom/metamoji/nt/NtEditorWindowController;->getCollaboModeBar()Lcom/metamoji/ns/ui/NsCollaboModeViewBase;

    move-result-object v3

    invoke-virtual {v3}, Lcom/metamoji/ns/ui/NsCollaboModeViewBase;->getSelectedUserDic()Lcom/metamoji/forSchool/ui/ScUserListItemData;

    move-result-object v3

    const/4 v4, 0x0

    .line 2093
    const-string v5, ""

    if-eqz v3, :cond_4

    .line 2094
    iget-object v2, v3, Lcom/metamoji/forSchool/ui/ScUserListItemData;->dcUserId:Ljava/lang/String;

    .line 2096
    invoke-virtual {v0, v2}, Lcom/metamoji/nt/NtNoteController;->getBelongGroupDic(Ljava/lang/String;)Ljava/util/Map;

    move-result-object v2

    if-nez v2, :cond_1

    goto :goto_2

    .line 2101
    :cond_1
    const-string v3, "group-id"

    invoke-static {v2, v3}, Lcom/metamoji/ns/NsCollaboUtils;->GetValue(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    if-eqz v2, :cond_3

    .line 2102
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    if-nez v3, :cond_2

    goto :goto_0

    :cond_2
    move-object v5, v2

    .line 2107
    :cond_3
    :goto_0
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 2108
    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2109
    invoke-virtual {v0, v2, v5, v4}, Lcom/metamoji/nt/NtNoteController;->sendChangeGroupOfUserDirectionForUserIds(Ljava/util/List;Ljava/lang/String;Z)V

    return-void

    .line 2112
    :cond_4
    invoke-virtual {v2}, Lcom/metamoji/nt/NtEditorWindowController;->getCollaboModeBar()Lcom/metamoji/ns/ui/NsCollaboModeViewBase;

    move-result-object v2

    invoke-virtual {v2}, Lcom/metamoji/ns/ui/NsCollaboModeViewBase;->getSelectedGroupDic()Lcom/metamoji/forSchool/ui/ScUserListSectionData;

    move-result-object v2

    if-eqz v2, :cond_7

    .line 2114
    iget-object v2, v2, Lcom/metamoji/forSchool/ui/ScUserListSectionData;->groupId:Ljava/lang/String;

    if-eqz v2, :cond_6

    .line 2115
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    if-nez v3, :cond_5

    goto :goto_1

    :cond_5
    move-object v5, v2

    .line 2120
    :cond_6
    :goto_1
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 2121
    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2122
    invoke-virtual {v0, v2, v5, v4}, Lcom/metamoji/nt/NtNoteController;->sendChangeGroupOfUserDirectionForUserIds(Ljava/util/List;Ljava/lang/String;Z)V

    :cond_7
    :goto_2
    return-void
.end method

.method public static handleLeaveFromThisGroup()V
    .locals 8

    .line 2131
    invoke-static {}, Lcom/metamoji/forSchool/ScSchoolCommand;->getNoteController()Lcom/metamoji/nt/NtNoteController;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_1

    .line 2135
    :cond_0
    invoke-static {}, Lcom/metamoji/forSchool/ScSchoolUtils;->getUserId()Ljava/lang/String;

    move-result-object v1

    .line 2136
    invoke-virtual {v0, v1}, Lcom/metamoji/nt/NtNoteController;->getBelongGroupDic(Ljava/lang/String;)Ljava/util/Map;

    move-result-object v2

    .line 2138
    const-string v3, "group-id"

    if-eqz v2, :cond_1

    .line 2139
    invoke-static {v2, v3}, Lcom/metamoji/ns/NsCollaboUtils;->GetValue(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    .line 2142
    :goto_0
    invoke-static {}, Lcom/metamoji/nt/NtEditorWindowController;->getInstance()Lcom/metamoji/nt/NtEditorWindowController;

    move-result-object v4

    .line 2143
    invoke-virtual {v4}, Lcom/metamoji/nt/NtEditorWindowController;->getCollaboModeBar()Lcom/metamoji/ns/ui/NsCollaboModeViewBase;

    move-result-object v5

    invoke-virtual {v5}, Lcom/metamoji/ns/ui/NsCollaboModeViewBase;->getSelectedUserDic()Lcom/metamoji/forSchool/ui/ScUserListItemData;

    move-result-object v5

    const/4 v6, 0x0

    .line 2144
    const-string v7, ""

    if-eqz v5, :cond_3

    .line 2145
    iget-object v4, v5, Lcom/metamoji/forSchool/ui/ScUserListItemData;->dcUserId:Ljava/lang/String;

    .line 2147
    invoke-virtual {v0, v4}, Lcom/metamoji/nt/NtNoteController;->getBelongGroupDic(Ljava/lang/String;)Ljava/util/Map;

    move-result-object v5

    if-nez v5, :cond_2

    goto :goto_1

    .line 2151
    :cond_2
    invoke-static {v5, v3}, Lcom/metamoji/ns/NsCollaboUtils;->GetValue(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 2154
    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 2155
    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 2156
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 2157
    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2158
    invoke-virtual {v0, v2, v7, v6}, Lcom/metamoji/nt/NtNoteController;->sendChangeGroupOfUserDirectionForUserIds(Ljava/util/List;Ljava/lang/String;Z)V

    return-void

    .line 2162
    :cond_3
    invoke-virtual {v4}, Lcom/metamoji/nt/NtEditorWindowController;->getCollaboModeBar()Lcom/metamoji/ns/ui/NsCollaboModeViewBase;

    move-result-object v3

    invoke-virtual {v3}, Lcom/metamoji/ns/ui/NsCollaboModeViewBase;->getSelectedGroupDic()Lcom/metamoji/forSchool/ui/ScUserListSectionData;

    move-result-object v3

    if-eqz v3, :cond_4

    .line 2164
    iget-object v3, v3, Lcom/metamoji/forSchool/ui/ScUserListSectionData;->groupId:Ljava/lang/String;

    .line 2167
    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 2168
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 2169
    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2170
    invoke-virtual {v0, v2, v7, v6}, Lcom/metamoji/nt/NtNoteController;->sendChangeGroupOfUserDirectionForUserIds(Ljava/util/List;Ljava/lang/String;Z)V

    :cond_4
    :goto_1
    return-void
.end method

.method public static handleMakeMyGroup()V
    .locals 6

    .line 2208
    invoke-static {}, Lcom/metamoji/forSchool/ScSchoolCommand;->getNoteController()Lcom/metamoji/nt/NtNoteController;

    move-result-object v0

    if-nez v0, :cond_0

    goto/16 :goto_1

    .line 2212
    :cond_0
    invoke-static {}, Lcom/metamoji/forSchool/ScSchoolUtils;->getUserId()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_1

    goto :goto_1

    .line 2216
    :cond_1
    invoke-virtual {v0, v1}, Lcom/metamoji/nt/NtNoteController;->getBelongGroupDic(Ljava/lang/String;)Ljava/util/Map;

    move-result-object v2

    if-eqz v2, :cond_2

    .line 2219
    const-string v3, "group-id"

    invoke-static {v2, v3}, Lcom/metamoji/ns/NsCollaboUtils;->GetValue(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    goto :goto_0

    :cond_2
    const/4 v2, 0x0

    :goto_0
    if-eqz v2, :cond_7

    .line 2223
    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    goto :goto_1

    .line 2227
    :cond_3
    invoke-static {}, Lcom/metamoji/nt/NtEditorWindowController;->getInstance()Lcom/metamoji/nt/NtEditorWindowController;

    move-result-object v2

    .line 2228
    invoke-virtual {v2}, Lcom/metamoji/nt/NtEditorWindowController;->getCollaboModeBar()Lcom/metamoji/ns/ui/NsCollaboModeViewBase;

    move-result-object v2

    invoke-virtual {v2}, Lcom/metamoji/ns/ui/NsCollaboModeViewBase;->getSelectedUserDic()Lcom/metamoji/forSchool/ui/ScUserListItemData;

    move-result-object v2

    if-eqz v2, :cond_7

    .line 2230
    iget-object v2, v2, Lcom/metamoji/forSchool/ui/ScUserListItemData;->dcUserId:Ljava/lang/String;

    .line 2233
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 2234
    invoke-interface {v3, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2235
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    .line 2236
    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2239
    :cond_4
    invoke-virtual {v0}, Lcom/metamoji/nt/NtNoteController;->getNoMemberGroupIdInGroupList()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    if-eqz v1, :cond_5

    .line 2241
    invoke-virtual {v0, v3, v1, v2}, Lcom/metamoji/nt/NtNoteController;->sendChangeGroupOfUserDirectionForUserIds(Ljava/util/List;Ljava/lang/String;Z)V

    return-void

    .line 2243
    :cond_5
    invoke-virtual {v0}, Lcom/metamoji/nt/NtNoteController;->getGroupList()Ljava/util/List;

    move-result-object v1

    invoke-static {v1}, Lcom/metamoji/forSchool/ScSchoolUtils;->generateNewGroupName(Ljava/util/List;)Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_6

    goto :goto_1

    .line 2247
    :cond_6
    invoke-static {}, Lcom/metamoji/cm/CmLocalIdManager;->getInstance()Lcom/metamoji/cm/CmLocalIdManager;

    move-result-object v4

    const-string v5, "group"

    invoke-virtual {v4, v5}, Lcom/metamoji/cm/CmLocalIdManager;->generateSubIdWithType(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 2248
    invoke-static {v4, v1}, Lcom/metamoji/forSchool/ScSchoolUtils;->createGroupDic(Ljava/lang/String;Ljava/lang/String;)Ljava/util/Map;

    move-result-object v1

    .line 2250
    invoke-virtual {v0, v1}, Lcom/metamoji/nt/NtNoteController;->sendMakeGroupDirection(Ljava/util/Map;)V

    .line 2252
    invoke-virtual {v0, v3, v4, v2}, Lcom/metamoji/nt/NtNoteController;->sendChangeGroupOfUserDirectionForUserIds(Ljava/util/List;Ljava/lang/String;Z)V

    :cond_7
    :goto_1
    return-void
.end method

.method public static handleMergeNotes(Ljava/lang/String;Ljava/util/ArrayList;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 2261
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x1

    if-gt v0, v1, :cond_0

    .line 2262
    sget p0, Lcom/metamoji/noteanytime/R$string;->MMJNT_LSTR_NOTE_IS_SELECTED_ONLY_ONE_MSG:I

    invoke-static {p0}, Lcom/metamoji/ns/NsCollaboUtils;->showAlertMessage(I)V

    return-void

    .line 2264
    :cond_0
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/16 v1, 0xa

    if-le v0, v1, :cond_1

    .line 2266
    sget p0, Lcom/metamoji/noteanytime/R$string;->MMJNT_LSTR_MERGE_NOTES_MAX_COUNT_MSG:I

    invoke-static {p0}, Lcom/metamoji/ns/NsCollaboUtils;->showAlertMessage(I)V

    return-void

    .line 2271
    :cond_1
    new-instance v0, Lcom/metamoji/ui/dialog/ScMergeNoteDialog;

    invoke-direct {v0}, Lcom/metamoji/ui/dialog/ScMergeNoteDialog;-><init>()V

    .line 2272
    iput-object p0, v0, Lcom/metamoji/ui/dialog/ScMergeNoteDialog;->m_driveId:Ljava/lang/String;

    .line 2273
    iput-object p1, v0, Lcom/metamoji/ui/dialog/ScMergeNoteDialog;->m_docIds:Ljava/util/ArrayList;

    .line 2274
    const-string p0, "ScMergeNoteDialog"

    invoke-virtual {v0, p0}, Lcom/metamoji/ui/dialog/ScMergeNoteDialog;->safeShow(Ljava/lang/String;)V

    return-void
.end method

.method public static handlePrevStart()V
    .locals 5

    .line 1530
    new-instance v0, Lcom/metamoji/forSchool/ScSchoolCommand$$ExternalSyntheticLambda23;

    invoke-direct {v0}, Lcom/metamoji/forSchool/ScSchoolCommand$$ExternalSyntheticLambda23;-><init>()V

    .line 1534
    sget v1, Lcom/metamoji/noteanytime/R$string;->MMJNT_LSTR_DEADLINE_MSG_PREVSTART:I

    .line 1535
    invoke-static {}, Lcom/metamoji/nt/NtEditorWindowController;->getCurrentActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v2

    .line 1536
    invoke-static {v2}, Lcom/metamoji/cm/CmUtils;->createAlertDialog(Landroidx/fragment/app/FragmentActivity;)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object v3

    .line 1537
    invoke-virtual {v3, v1}, Landroidx/appcompat/app/AlertDialog$Builder;->setMessage(I)Landroidx/appcompat/app/AlertDialog$Builder;

    .line 1538
    sget v1, Lcom/metamoji/noteanytime/R$string;->Msg_YES:I

    new-instance v4, Lcom/metamoji/forSchool/ScSchoolCommand$7;

    invoke-direct {v4, v0}, Lcom/metamoji/forSchool/ScSchoolCommand$7;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v3, v1, v4}, Landroidx/appcompat/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    .line 1544
    sget v0, Lcom/metamoji/noteanytime/R$string;->Msg_CANCEL:I

    const/4 v1, 0x0

    invoke-virtual {v3, v0, v1}, Landroidx/appcompat/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    const/4 v0, 0x0

    .line 1546
    invoke-virtual {v3, v0}, Landroidx/appcompat/app/AlertDialog$Builder;->setCancelable(Z)Landroidx/appcompat/app/AlertDialog$Builder;

    .line 1547
    new-instance v0, Lcom/metamoji/ui/dialog/UiAlertDialog;

    invoke-direct {v0, v3}, Lcom/metamoji/ui/dialog/UiAlertDialog;-><init>(Landroidx/appcompat/app/AlertDialog$Builder;)V

    .line 1548
    invoke-virtual {v2}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v1

    const-string v2, "handlePrevStart"

    invoke-virtual {v0, v1, v2}, Lcom/metamoji/ui/dialog/UiAlertDialog;->show(Landroidx/fragment/app/FragmentManager;Ljava/lang/String;)V

    return-void
.end method

.method public static handleReStart()V
    .locals 5

    .line 1507
    new-instance v0, Lcom/metamoji/forSchool/ScSchoolCommand$$ExternalSyntheticLambda0;

    invoke-direct {v0}, Lcom/metamoji/forSchool/ScSchoolCommand$$ExternalSyntheticLambda0;-><init>()V

    .line 1511
    sget v1, Lcom/metamoji/noteanytime/R$string;->MMJNT_LSTR_DEADLINE_MSG_RESTART:I

    .line 1512
    invoke-static {}, Lcom/metamoji/nt/NtEditorWindowController;->getCurrentActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v2

    .line 1513
    invoke-static {v2}, Lcom/metamoji/cm/CmUtils;->createAlertDialog(Landroidx/fragment/app/FragmentActivity;)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object v3

    .line 1514
    invoke-virtual {v3, v1}, Landroidx/appcompat/app/AlertDialog$Builder;->setMessage(I)Landroidx/appcompat/app/AlertDialog$Builder;

    .line 1515
    sget v1, Lcom/metamoji/noteanytime/R$string;->Msg_YES:I

    new-instance v4, Lcom/metamoji/forSchool/ScSchoolCommand$6;

    invoke-direct {v4, v0}, Lcom/metamoji/forSchool/ScSchoolCommand$6;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v3, v1, v4}, Landroidx/appcompat/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    .line 1521
    sget v0, Lcom/metamoji/noteanytime/R$string;->Msg_CANCEL:I

    const/4 v1, 0x0

    invoke-virtual {v3, v0, v1}, Landroidx/appcompat/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    const/4 v0, 0x0

    .line 1523
    invoke-virtual {v3, v0}, Landroidx/appcompat/app/AlertDialog$Builder;->setCancelable(Z)Landroidx/appcompat/app/AlertDialog$Builder;

    .line 1524
    new-instance v0, Lcom/metamoji/ui/dialog/UiAlertDialog;

    invoke-direct {v0, v3}, Lcom/metamoji/ui/dialog/UiAlertDialog;-><init>(Landroidx/appcompat/app/AlertDialog$Builder;)V

    .line 1525
    invoke-virtual {v2}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v1

    const-string v2, "handleReStart"

    invoke-virtual {v0, v1, v2}, Lcom/metamoji/ui/dialog/UiAlertDialog;->show(Landroidx/fragment/app/FragmentManager;Ljava/lang/String;)V

    return-void
.end method

.method public static handleReport()V
    .locals 5

    .line 1640
    invoke-static {}, Lcom/metamoji/forSchool/ScSchoolManager;->sharedInstance()Lcom/metamoji/forSchool/ScSchoolManager;

    move-result-object v0

    .line 1641
    invoke-virtual {v0}, Lcom/metamoji/forSchool/ScSchoolManager;->personalIdForPersonalModeInfoView()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_0

    return-void

    .line 1645
    :cond_0
    invoke-virtual {v0}, Lcom/metamoji/forSchool/ScSchoolManager;->personalNameForPersonalModeInfoView()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_1

    .line 1647
    const-string v0, ""

    .line 1650
    :cond_1
    new-instance v2, Lcom/metamoji/forSchool/ScSchoolCommand$$ExternalSyntheticLambda10;

    invoke-direct {v2, v1}, Lcom/metamoji/forSchool/ScSchoolCommand$$ExternalSyntheticLambda10;-><init>(Ljava/lang/String;)V

    .line 1658
    sget v1, Lcom/metamoji/noteanytime/R$string;->MMJNT_LSTR_SCORE_MSG_REPORT_BY_TEACHER:I

    invoke-static {v1}, Lcom/metamoji/cm/CmUtils;->loadString(I)Ljava/lang/String;

    move-result-object v1

    .line 1660
    const-string v3, "%@"

    const-string v4, "%s"

    invoke-virtual {v1, v3, v4}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    .line 1661
    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 1662
    invoke-static {}, Lcom/metamoji/nt/NtEditorWindowController;->getCurrentActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    .line 1663
    invoke-static {v1}, Lcom/metamoji/cm/CmUtils;->createAlertDialog(Landroidx/fragment/app/FragmentActivity;)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object v3

    .line 1664
    invoke-virtual {v3, v0}, Landroidx/appcompat/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroidx/appcompat/app/AlertDialog$Builder;

    .line 1665
    sget v0, Lcom/metamoji/noteanytime/R$string;->Msg_YES:I

    new-instance v4, Lcom/metamoji/forSchool/ScSchoolCommand$10;

    invoke-direct {v4, v2}, Lcom/metamoji/forSchool/ScSchoolCommand$10;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v3, v0, v4}, Landroidx/appcompat/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    .line 1671
    sget v0, Lcom/metamoji/noteanytime/R$string;->Msg_CANCEL:I

    const/4 v2, 0x0

    invoke-virtual {v3, v0, v2}, Landroidx/appcompat/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    const/4 v0, 0x0

    .line 1673
    invoke-virtual {v3, v0}, Landroidx/appcompat/app/AlertDialog$Builder;->setCancelable(Z)Landroidx/appcompat/app/AlertDialog$Builder;

    .line 1674
    new-instance v0, Lcom/metamoji/ui/dialog/UiAlertDialog;

    invoke-direct {v0, v3}, Lcom/metamoji/ui/dialog/UiAlertDialog;-><init>(Landroidx/appcompat/app/AlertDialog$Builder;)V

    .line 1675
    invoke-virtual {v1}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v1

    const-string v2, "handleReport"

    invoke-virtual {v0, v1, v2}, Lcom/metamoji/ui/dialog/UiAlertDialog;->show(Landroidx/fragment/app/FragmentManager;Ljava/lang/String;)V

    return-void
.end method

.method public static handleReportByStudent()V
    .locals 5

    .line 1573
    new-instance v0, Lcom/metamoji/forSchool/ScSchoolCommand$$ExternalSyntheticLambda25;

    invoke-direct {v0}, Lcom/metamoji/forSchool/ScSchoolCommand$$ExternalSyntheticLambda25;-><init>()V

    .line 1581
    sget v1, Lcom/metamoji/noteanytime/R$string;->MMJNT_LSTR_SCORE_MSG_REPORT:I

    .line 1582
    invoke-static {}, Lcom/metamoji/nt/NtEditorWindowController;->getCurrentActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v2

    .line 1583
    invoke-static {v2}, Lcom/metamoji/cm/CmUtils;->createAlertDialog(Landroidx/fragment/app/FragmentActivity;)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object v3

    .line 1584
    invoke-virtual {v3, v1}, Landroidx/appcompat/app/AlertDialog$Builder;->setMessage(I)Landroidx/appcompat/app/AlertDialog$Builder;

    .line 1585
    sget v1, Lcom/metamoji/noteanytime/R$string;->Msg_YES:I

    new-instance v4, Lcom/metamoji/forSchool/ScSchoolCommand$8;

    invoke-direct {v4, v0}, Lcom/metamoji/forSchool/ScSchoolCommand$8;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v3, v1, v4}, Landroidx/appcompat/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    .line 1591
    sget v0, Lcom/metamoji/noteanytime/R$string;->Msg_CANCEL:I

    const/4 v1, 0x0

    invoke-virtual {v3, v0, v1}, Landroidx/appcompat/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    const/4 v0, 0x0

    .line 1593
    invoke-virtual {v3, v0}, Landroidx/appcompat/app/AlertDialog$Builder;->setCancelable(Z)Landroidx/appcompat/app/AlertDialog$Builder;

    .line 1594
    new-instance v0, Lcom/metamoji/ui/dialog/UiAlertDialog;

    invoke-direct {v0, v3}, Lcom/metamoji/ui/dialog/UiAlertDialog;-><init>(Landroidx/appcompat/app/AlertDialog$Builder;)V

    .line 1595
    invoke-virtual {v2}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v1

    const-string v2, "handleReportByStudent"

    invoke-virtual {v0, v1, v2}, Lcom/metamoji/ui/dialog/UiAlertDialog;->show(Landroidx/fragment/app/FragmentManager;Ljava/lang/String;)V

    return-void
.end method

.method public static handleResetPersonalStatusMenuTapped()V
    .locals 3

    .line 1368
    invoke-static {}, Lcom/metamoji/nt/NtEditorWindowController;->getInstance()Lcom/metamoji/nt/NtEditorWindowController;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1370
    invoke-virtual {v0}, Lcom/metamoji/nt/NtEditorWindowController;->getCommandManager()Lcom/metamoji/nt/NtCommandManager;

    move-result-object v1

    sget-object v2, Lcom/metamoji/nt/NtCommand;->CMD_SCHOOL_RESET_PERSONAL_STATUS:Lcom/metamoji/nt/NtCommand;

    invoke-virtual {v1, v2}, Lcom/metamoji/nt/NtCommandManager;->isCommandSurelyEnabled(Lcom/metamoji/nt/NtCommand;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1371
    invoke-virtual {v0}, Lcom/metamoji/nt/NtEditorWindowController;->getCommandManager()Lcom/metamoji/nt/NtCommandManager;

    move-result-object v0

    sget-object v1, Lcom/metamoji/nt/NtCommand;->CMD_SCHOOL_RESET_PERSONAL_STATUS:Lcom/metamoji/nt/NtCommand;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/metamoji/nt/NtCommandManager;->execCommand(Lcom/metamoji/nt/NtCommand;Lcom/metamoji/cm/CmContext;)Z

    :cond_0
    return-void
.end method

.method public static handleSchoolAllowEveryoneAnswer()V
    .locals 3

    .line 1397
    invoke-static {}, Lcom/metamoji/forSchool/ScSchoolCommand;->getNoteController()Lcom/metamoji/nt/NtNoteController;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 1399
    invoke-virtual {v0}, Lcom/metamoji/nt/NtNoteController;->allowEveryoneAnswer()Z

    move-result v1

    if-nez v1, :cond_0

    .line 1401
    invoke-static {}, Lcom/metamoji/cm/CmTaskManager;->getInstance()Lcom/metamoji/cm/CmTaskManager;

    move-result-object v1

    new-instance v2, Lcom/metamoji/forSchool/ScSchoolCommand$3;

    invoke-direct {v2, v0}, Lcom/metamoji/forSchool/ScSchoolCommand$3;-><init>(Lcom/metamoji/nt/NtNoteController;)V

    invoke-virtual {v1, v2}, Lcom/metamoji/cm/CmTaskManager;->runOnBackground(Ljava/lang/Runnable;)V

    return-void

    :cond_0
    const/4 v1, 0x0

    const/4 v2, 0x1

    .line 1422
    invoke-virtual {v0, v1, v2}, Lcom/metamoji/nt/NtNoteController;->setAllowEveryoneAnswer(ZZ)V

    :cond_1
    return-void
.end method

.method public static handleSchoolAttentionEnd(Lcom/metamoji/ns/INsCollaboAction;)V
    .locals 2

    .line 2041
    invoke-static {}, Lcom/metamoji/nt/NtUserDefaults;->getInstance()Lcom/metamoji/nt/NtUserDefaults;

    move-result-object v0

    .line 2042
    const-string v1, "forSchoolAttentionUserInfoDic"

    invoke-virtual {v0, v1}, Lcom/metamoji/nt/NtUserDefaults;->removeValue(Ljava/lang/String;)V

    .line 2043
    const-string v1, "forSchoolAttentionSelectedGroupId"

    invoke-virtual {v0, v1}, Lcom/metamoji/nt/NtUserDefaults;->removeValue(Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 2045
    invoke-interface {p0, v0}, Lcom/metamoji/ns/INsCollaboAction;->action(Z)V

    return-void
.end method

.method public static handleSchoolAttentionStart(ZZLjava/lang/String;Lcom/metamoji/ns/INsCollaboAction;)V
    .locals 5

    if-eqz p1, :cond_0

    .line 1982
    sget-object v0, Lcom/metamoji/nt/NtCommand;->CMD_SCHOOL_ATTENTION_CHANGE:Lcom/metamoji/nt/NtCommand;

    goto :goto_0

    :cond_0
    sget-object v0, Lcom/metamoji/nt/NtCommand;->CMD_SCHOOL_ATTENTION_START:Lcom/metamoji/nt/NtCommand;

    :goto_0
    const/4 v1, 0x1

    const/4 v2, 0x0

    if-nez p0, :cond_2

    .line 1987
    invoke-static {}, Lcom/metamoji/nt/NtEditorWindowController;->getInstance()Lcom/metamoji/nt/NtEditorWindowController;

    move-result-object p0

    if-eqz p0, :cond_1

    .line 1988
    invoke-virtual {p0}, Lcom/metamoji/nt/NtEditorWindowController;->getCommandManager()Lcom/metamoji/nt/NtCommandManager;

    move-result-object v3

    invoke-virtual {v3, v0}, Lcom/metamoji/nt/NtCommandManager;->isCommandSurelyEnabled(Lcom/metamoji/nt/NtCommand;)Z

    move-result v3

    if-nez v3, :cond_3

    .line 1989
    :cond_1
    invoke-interface {p3, v1}, Lcom/metamoji/ns/INsCollaboAction;->action(Z)V

    return-void

    :cond_2
    move-object p0, v2

    .line 1995
    :cond_3
    new-instance v3, Lcom/metamoji/nt/cabinet/user/management/CabinetUserSelectDialog;

    invoke-direct {v3}, Lcom/metamoji/nt/cabinet/user/management/CabinetUserSelectDialog;-><init>()V

    .line 1996
    sget v4, Lcom/metamoji/noteanytime/R$string;->MMJNT_LSTR_ATTENTION_DLG_TITLE:I

    iput v4, v3, Lcom/metamoji/nt/cabinet/user/management/CabinetUserSelectDialog;->titleResId:I

    const/4 v4, 0x0

    .line 1997
    iput-boolean v4, v3, Lcom/metamoji/nt/cabinet/user/management/CabinetUserSelectDialog;->multiSelect:Z

    .line 1998
    iput-boolean v1, v3, Lcom/metamoji/nt/cabinet/user/management/CabinetUserSelectDialog;->studentOnly:Z

    .line 1999
    invoke-static {}, Lcom/metamoji/nt/NtUserDefaults;->getInstance()Lcom/metamoji/nt/NtUserDefaults;

    move-result-object v1

    if-eqz p1, :cond_4

    .line 2000
    const-string v4, "forSchoolAttentionSelectedGroupId"

    invoke-virtual {v1, v4}, Lcom/metamoji/nt/NtUserDefaults;->getStringValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    goto :goto_1

    :cond_4
    move-object v4, v2

    :goto_1
    iput-object v4, v3, Lcom/metamoji/nt/cabinet/user/management/CabinetUserSelectDialog;->selectGroupId:Ljava/lang/String;

    if-eqz p1, :cond_5

    move-object p2, v2

    .line 2001
    :cond_5
    iput-object p2, v3, Lcom/metamoji/nt/cabinet/user/management/CabinetUserSelectDialog;->selectDriveId:Ljava/lang/String;

    .line 2002
    new-instance p1, Lcom/metamoji/forSchool/ScSchoolCommand$15;

    invoke-direct {p1, p0, v0, v1, p3}, Lcom/metamoji/forSchool/ScSchoolCommand$15;-><init>(Lcom/metamoji/nt/NtEditorWindowController;Lcom/metamoji/nt/NtCommand;Lcom/metamoji/nt/NtUserDefaults;Lcom/metamoji/ns/INsCollaboAction;)V

    iput-object p1, v3, Lcom/metamoji/nt/cabinet/user/management/CabinetUserSelectDialog;->afterAction:Lcom/metamoji/nt/cabinet/user/management/ICabinetUserSelectDialogAfterAction;

    .line 2034
    const-string p0, "CabinetUserSelectDialog"

    invoke-virtual {v3, p0}, Lcom/metamoji/nt/cabinet/user/management/CabinetUserSelectDialog;->safeShow(Ljava/lang/String;)V

    return-void
.end method

.method public static handleSchoolEditLayerButtonTap(Landroid/view/View;)V
    .locals 4

    .line 1233
    invoke-static {}, Lcom/metamoji/nt/NtEditorWindowController;->getInstance()Lcom/metamoji/nt/NtEditorWindowController;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 1234
    invoke-virtual {v0}, Lcom/metamoji/nt/NtEditorWindowController;->getEditorDelegate()Lcom/metamoji/nt/INtEditor;

    move-result-object v1

    if-nez v1, :cond_0

    goto :goto_0

    .line 1237
    :cond_0
    invoke-virtual {v0}, Lcom/metamoji/nt/NtEditorWindowController;->getEditorDelegate()Lcom/metamoji/nt/INtEditor;

    move-result-object v0

    invoke-interface {v0}, Lcom/metamoji/nt/INtEditor;->getFxmanager()Lcom/metamoji/ui/flexible/FxManager;

    move-result-object v0

    sget-object v1, Lcom/metamoji/ui/flexible/FxManagerDef$FxId;->FXUIID_SCHOOL_BTNMENU_EDITLAYER:Lcom/metamoji/ui/flexible/FxManagerDef$FxId;

    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    sget-object v3, Lcom/metamoji/ui/flexible/FxManager$FxAnchorState;->TOP:Lcom/metamoji/ui/flexible/FxManager$FxAnchorState;

    invoke-virtual {v0, v1, p0, v2, v3}, Lcom/metamoji/ui/flexible/FxManager;->execFxUi(Lcom/metamoji/ui/flexible/FxManagerDef$FxId;Landroid/view/View;Landroid/graphics/Rect;Lcom/metamoji/ui/flexible/FxManager$FxAnchorState;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public static handleSchoolEditLayerCommon()V
    .locals 4

    .line 238
    invoke-static {}, Lcom/metamoji/forSchool/ScSchoolCommand;->getNoteController()Lcom/metamoji/nt/NtNoteController;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 240
    sget-object v1, Lcom/metamoji/nt/NtNoteController$TargetLayerType;->COMMON:Lcom/metamoji/nt/NtNoteController$TargetLayerType;

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-virtual {v0, v1, v2, v3}, Lcom/metamoji/nt/NtNoteController;->changeTargetLayer(Lcom/metamoji/nt/NtNoteController$TargetLayerType;Ljava/util/Map;Z)V

    :cond_0
    return-void
.end method

.method public static handleSchoolEditLayerEdit()V
    .locals 4

    .line 248
    invoke-static {}, Lcom/metamoji/forSchool/ScSchoolCommand;->getNoteController()Lcom/metamoji/nt/NtNoteController;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 250
    sget-object v1, Lcom/metamoji/nt/NtNoteController$TargetLayerType;->EDIT:Lcom/metamoji/nt/NtNoteController$TargetLayerType;

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-virtual {v0, v1, v2, v3}, Lcom/metamoji/nt/NtNoteController;->changeTargetLayer(Lcom/metamoji/nt/NtNoteController$TargetLayerType;Ljava/util/Map;Z)V

    :cond_0
    return-void
.end method

.method public static handleSchoolEditLayerPersonal()V
    .locals 4

    .line 258
    invoke-static {}, Lcom/metamoji/forSchool/ScSchoolCommand;->getNoteController()Lcom/metamoji/nt/NtNoteController;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 260
    sget-object v1, Lcom/metamoji/nt/NtNoteController$TargetLayerType;->COMMON:Lcom/metamoji/nt/NtNoteController$TargetLayerType;

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Lcom/metamoji/nt/NtNoteController;->changeTargetLayer(Lcom/metamoji/nt/NtNoteController$TargetLayerType;Ljava/util/Map;Z)V

    :cond_0
    return-void
.end method

.method public static handleSchoolEditLayerPersonalTemplate()V
    .locals 4

    .line 269
    invoke-static {}, Lcom/metamoji/forSchool/ScSchoolCommand;->getNoteController()Lcom/metamoji/nt/NtNoteController;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 271
    sget-object v1, Lcom/metamoji/nt/NtNoteController$TargetLayerType;->PERSONAL_TEMPLATE:Lcom/metamoji/nt/NtNoteController$TargetLayerType;

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-virtual {v0, v1, v2, v3}, Lcom/metamoji/nt/NtNoteController;->changeTargetLayer(Lcom/metamoji/nt/NtNoteController$TargetLayerType;Ljava/util/Map;Z)V

    :cond_0
    return-void
.end method

.method public static handleSchoolEditLayerTeacherPersonal()V
    .locals 4

    .line 280
    invoke-static {}, Lcom/metamoji/forSchool/ScSchoolCommand;->getNoteController()Lcom/metamoji/nt/NtNoteController;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 285
    :cond_0
    invoke-virtual {v0}, Lcom/metamoji/nt/NtNoteController;->getCurrentPage()Lcom/metamoji/nt/NtPageController;

    move-result-object v1

    if-nez v1, :cond_1

    goto :goto_0

    .line 291
    :cond_1
    invoke-virtual {v1}, Lcom/metamoji/nt/NtPageController;->getSchoolPageType()I

    move-result v1

    const/4 v2, 0x3

    if-ne v1, v2, :cond_2

    :goto_0
    return-void

    .line 295
    :cond_2
    sget-object v1, Lcom/metamoji/nt/NtNoteController$TargetLayerType;->TEACHER_PERSONAL:Lcom/metamoji/nt/NtNoteController$TargetLayerType;

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-virtual {v0, v1, v2, v3}, Lcom/metamoji/nt/NtNoteController;->changeTargetLayer(Lcom/metamoji/nt/NtNoteController$TargetLayerType;Ljava/util/Map;Z)V

    return-void
.end method

.method public static handleSchoolEveryoneAnswerButtonTap(Landroid/view/View;)V
    .locals 8

    .line 1295
    invoke-static {}, Lcom/metamoji/nt/NtEditorWindowController;->getInstance()Lcom/metamoji/nt/NtEditorWindowController;

    move-result-object v0

    .line 1296
    invoke-virtual {v0}, Lcom/metamoji/nt/NtEditorWindowController;->getCommandManager()Lcom/metamoji/nt/NtCommandManager;

    move-result-object v1

    invoke-static {v1}, Lcom/metamoji/forSchool/ScSchoolUtils;->isSchoolEveryoneAnswerCommandSurelyEnabled(Lcom/metamoji/nt/NtCommandManager;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1297
    invoke-virtual {v0}, Lcom/metamoji/nt/NtEditorWindowController;->getCommandManager()Lcom/metamoji/nt/NtCommandManager;

    move-result-object p0

    sget-object v0, Lcom/metamoji/nt/NtCommand;->CMD_SCHOOL_EVERYONE_ANSWER:Lcom/metamoji/nt/NtCommand;

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/metamoji/nt/NtCommandManager;->execCommand(Lcom/metamoji/nt/NtCommand;Lcom/metamoji/cm/CmContext;)Z

    return-void

    .line 1299
    :cond_0
    invoke-static {}, Lcom/metamoji/ns/NsCollaboManager;->getInstance()Lcom/metamoji/ns/NsCollaboManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/metamoji/ns/NsCollaboManager;->existPresenter()Z

    move-result v1

    if-eqz v1, :cond_1

    return-void

    .line 1303
    :cond_1
    invoke-virtual {v0}, Lcom/metamoji/nt/NtEditorWindowController;->getMainSheet()Lcom/metamoji/nt/NtNoteController;

    move-result-object v1

    .line 1304
    invoke-virtual {v1}, Lcom/metamoji/nt/NtNoteController;->getCurrentPage()Lcom/metamoji/nt/NtPageController;

    move-result-object v2

    .line 1305
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 1306
    new-instance v4, Lcom/metamoji/ui/UiMenuItem;

    invoke-direct {v4}, Lcom/metamoji/ui/UiMenuItem;-><init>()V

    .line 1307
    sget-object v5, Lcom/metamoji/ui/UiMenuItem$MenuKind;->NORMAL:Lcom/metamoji/ui/UiMenuItem$MenuKind;

    invoke-virtual {v4, v5}, Lcom/metamoji/ui/UiMenuItem;->set_kind(Lcom/metamoji/ui/UiMenuItem$MenuKind;)V

    .line 1310
    invoke-virtual {v2}, Lcom/metamoji/nt/NtPageController;->getSchoolPageType()I

    move-result v5

    const/4 v6, 0x2

    const/4 v7, 0x1

    if-eq v5, v6, :cond_3

    .line 1311
    invoke-virtual {v2}, Lcom/metamoji/nt/NtPageController;->getSchoolPageType()I

    move-result v2

    if-ne v2, v7, :cond_2

    goto :goto_0

    .line 1315
    :cond_2
    sget v1, Lcom/metamoji/noteanytime/R$string;->MMJNT_LSTR_CANNOT_EVERYONE_ANSWER_MSG2:I

    goto :goto_1

    .line 1312
    :cond_3
    :goto_0
    invoke-virtual {v1}, Lcom/metamoji/nt/NtNoteController;->personalModeType()I

    move-result v1

    if-nez v1, :cond_4

    .line 1313
    sget v1, Lcom/metamoji/noteanytime/R$string;->MMJNT_LSTR_FORBID_BROWSING_AMONG_STUDENTS:I

    goto :goto_1

    :cond_4
    sget v1, Lcom/metamoji/noteanytime/R$string;->MMJNT_LSTR_CANNOT_EVERYONE_ANSWER_MSG:I

    .line 1317
    :goto_1
    invoke-virtual {v4, v1}, Lcom/metamoji/ui/UiMenuItem;->set_captionid(I)V

    .line 1318
    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1320
    invoke-virtual {v0}, Lcom/metamoji/nt/NtEditorWindowController;->getEditorDelegate()Lcom/metamoji/nt/INtEditor;

    move-result-object v0

    .line 1321
    invoke-interface {v0}, Lcom/metamoji/nt/INtEditor;->getFxmanager()Lcom/metamoji/ui/flexible/FxManager;

    move-result-object v0

    .line 1322
    sget-object v1, Lcom/metamoji/ui/CustomMenuView$MenuDirection;->MENU_DOWN:Lcom/metamoji/ui/CustomMenuView$MenuDirection;

    invoke-virtual {v0, v3, p0, v1, v7}, Lcom/metamoji/ui/flexible/FxManager;->showActionMenu(Ljava/util/ArrayList;Landroid/view/View;Lcom/metamoji/ui/CustomMenuView$MenuDirection;Z)V

    const/high16 v0, 0x3f000000    # 0.5f

    .line 1323
    invoke-virtual {p0, v0}, Landroid/view/View;->setAlpha(F)V

    return-void
.end method

.method public static handleSchoolManageClassList()V
    .locals 2

    .line 751
    new-instance v0, Lcom/metamoji/forSchool/task/ScCollaboBgTaskForManageClassList;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/metamoji/forSchool/task/ScCollaboBgTaskForManageClassList;-><init>(Lcom/metamoji/ns/INsCollaboAction;)V

    .line 752
    invoke-virtual {v0}, Lcom/metamoji/forSchool/task/ScCollaboBgTaskForManageClassList;->doInBackground()V

    return-void
.end method

.method public static handleSchoolNewPageFromPersonalLayer()V
    .locals 7

    .line 522
    invoke-static {}, Lcom/metamoji/nt/NtEditorWindowController;->getInstance()Lcom/metamoji/nt/NtEditorWindowController;

    move-result-object v0

    if-nez v0, :cond_0

    goto/16 :goto_1

    .line 526
    :cond_0
    invoke-static {}, Lcom/metamoji/forSchool/ScSchoolCommand;->getNoteController()Lcom/metamoji/nt/NtNoteController;

    move-result-object v0

    if-nez v0, :cond_1

    goto/16 :goto_1

    .line 530
    :cond_1
    invoke-virtual {v0}, Lcom/metamoji/nt/NtNoteController;->getCurrentPage()Lcom/metamoji/nt/NtPageController;

    move-result-object v1

    if-nez v1, :cond_2

    goto :goto_1

    .line 536
    :cond_2
    invoke-virtual {v0}, Lcom/metamoji/nt/NtNoteController;->getTargetPersonalLayerInfo()Ljava/util/Map;

    move-result-object v2

    if-nez v2, :cond_6

    .line 539
    invoke-virtual {v1}, Lcom/metamoji/nt/NtPageController;->getCurrentLayer()Lcom/metamoji/nt/NtLayerController;

    move-result-object v2

    if-nez v2, :cond_3

    goto :goto_1

    .line 543
    :cond_3
    invoke-virtual {v2}, Lcom/metamoji/nt/NtLayerController;->getLayerType()Ljava/lang/String;

    move-result-object v2

    const-string v3, "system:teacher_personal"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4

    goto :goto_1

    .line 546
    :cond_4
    invoke-static {}, Lcom/metamoji/cs/dc/user/CsDCUserInfoSettings;->getInstanceFromSystemSettings()Lcom/metamoji/cs/dc/user/CsDCUserInfoSettings;

    move-result-object v2

    .line 548
    invoke-virtual {v2}, Lcom/metamoji/cs/dc/user/CsDCUserInfoSettings;->getUserInfo()Lcom/metamoji/cs/dc/user/CsDCUserInfo;

    move-result-object v2

    if-nez v2, :cond_5

    goto :goto_1

    .line 553
    :cond_5
    invoke-virtual {v1}, Lcom/metamoji/nt/NtPageController;->getPageId()Ljava/lang/String;

    move-result-object v3

    iget-object v4, v2, Lcom/metamoji/cs/dc/user/CsDCUserInfo;->userId:Ljava/lang/String;

    invoke-static {v3, v4}, Lcom/metamoji/nt/NtPageController;->getTeacherPersonalLayerId(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 554
    iget-object v2, v2, Lcom/metamoji/cs/dc/user/CsDCUserInfo;->nickname:Ljava/lang/String;

    goto :goto_0

    .line 556
    :cond_6
    const-string v3, "layerId"

    invoke-static {v2, v3}, Lcom/metamoji/ns/NsCollaboUtils;->GetValue(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 557
    const-string v4, "layerName"

    invoke-static {v2, v4}, Lcom/metamoji/ns/NsCollaboUtils;->GetValue(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    :goto_0
    if-eqz v3, :cond_8

    if-nez v2, :cond_7

    goto :goto_1

    .line 565
    :cond_7
    sget v4, Lcom/metamoji/noteanytime/R$string;->School_Msg_New_Page_From_Personal_Layer:I

    invoke-static {v4}, Lcom/metamoji/cm/CmUtils;->loadString(I)Ljava/lang/String;

    move-result-object v4

    .line 566
    const-string v5, "%@"

    const-string v6, "%s"

    invoke-virtual {v4, v5, v6}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v4

    .line 567
    filled-new-array {v2}, [Ljava/lang/Object;

    move-result-object v2

    invoke-static {v4, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 569
    :try_start_0
    new-instance v4, Lcom/metamoji/forSchool/ScSchoolCommand$$ExternalSyntheticLambda9;

    invoke-direct {v4, v0, v1, v3}, Lcom/metamoji/forSchool/ScSchoolCommand$$ExternalSyntheticLambda9;-><init>(Lcom/metamoji/nt/NtNoteController;Lcom/metamoji/nt/NtPageController;Ljava/lang/String;)V

    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-static {v2, v1, v4, v0}, Lcom/metamoji/cm/CmUtils;->yesNoDialog(Ljava/lang/String;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    .line 571
    invoke-static {v0}, Lcom/metamoji/cm/CmLog;->error(Ljava/lang/Throwable;)V

    :cond_8
    :goto_1
    return-void
.end method

.method public static handleSchoolPageTypeButtonTap(Landroid/view/View;)V
    .locals 4

    .line 1205
    invoke-static {}, Lcom/metamoji/nt/NtEditorWindowController;->getInstance()Lcom/metamoji/nt/NtEditorWindowController;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 1206
    invoke-virtual {v0}, Lcom/metamoji/nt/NtEditorWindowController;->getEditorDelegate()Lcom/metamoji/nt/INtEditor;

    move-result-object v1

    if-nez v1, :cond_0

    goto :goto_0

    .line 1209
    :cond_0
    invoke-static {}, Lcom/metamoji/ns/NsCollaboManager;->getInstance()Lcom/metamoji/ns/NsCollaboManager;

    move-result-object v1

    .line 1210
    invoke-virtual {v1}, Lcom/metamoji/ns/NsCollaboManager;->connectStatus()Lcom/metamoji/ns/NsCollaboManager$ConnectStatus;

    move-result-object v2

    .line 1211
    sget-object v3, Lcom/metamoji/ns/NsCollaboManager$ConnectStatus;->ONLINE:Lcom/metamoji/ns/NsCollaboManager$ConnectStatus;

    if-ne v2, v3, :cond_1

    .line 1214
    invoke-virtual {v0}, Lcom/metamoji/nt/NtEditorWindowController;->getEditorDelegate()Lcom/metamoji/nt/INtEditor;

    move-result-object v0

    invoke-interface {v0}, Lcom/metamoji/nt/INtEditor;->getFxmanager()Lcom/metamoji/ui/flexible/FxManager;

    move-result-object v0

    sget-object v1, Lcom/metamoji/ui/flexible/FxManagerDef$FxId;->FXUIID_SCHOOL_BTNMENU_PAGETYPE:Lcom/metamoji/ui/flexible/FxManagerDef$FxId;

    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    sget-object v3, Lcom/metamoji/ui/flexible/FxManager$FxAnchorState;->TOP:Lcom/metamoji/ui/flexible/FxManager$FxAnchorState;

    invoke-virtual {v0, v1, p0, v2, v3}, Lcom/metamoji/ui/flexible/FxManager;->execFxUi(Lcom/metamoji/ui/flexible/FxManagerDef$FxId;Landroid/view/View;Landroid/graphics/Rect;Lcom/metamoji/ui/flexible/FxManager$FxAnchorState;)V

    return-void

    .line 1215
    :cond_1
    sget-object v3, Lcom/metamoji/ns/NsCollaboManager$ConnectStatus;->OFFLINE:Lcom/metamoji/ns/NsCollaboManager$ConnectStatus;

    if-ne v2, v3, :cond_3

    .line 1217
    invoke-virtual {v1}, Lcom/metamoji/ns/NsCollaboManager;->isCollabo()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1219
    invoke-static {}, Lcom/metamoji/ns/NsCollaboCommand;->changeCollaboMode()V

    return-void

    .line 1222
    :cond_2
    invoke-virtual {v0}, Lcom/metamoji/nt/NtEditorWindowController;->getEditorDelegate()Lcom/metamoji/nt/INtEditor;

    move-result-object v0

    invoke-interface {v0}, Lcom/metamoji/nt/INtEditor;->getFxmanager()Lcom/metamoji/ui/flexible/FxManager;

    move-result-object v0

    sget-object v1, Lcom/metamoji/ui/flexible/FxManagerDef$FxId;->FXUIID_SCHOOL_BTNMENU_PAGETYPE:Lcom/metamoji/ui/flexible/FxManagerDef$FxId;

    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    sget-object v3, Lcom/metamoji/ui/flexible/FxManager$FxAnchorState;->TOP:Lcom/metamoji/ui/flexible/FxManager$FxAnchorState;

    invoke-virtual {v0, v1, p0, v2, v3}, Lcom/metamoji/ui/flexible/FxManager;->execFxUi(Lcom/metamoji/ui/flexible/FxManagerDef$FxId;Landroid/view/View;Landroid/graphics/Rect;Lcom/metamoji/ui/flexible/FxManager$FxAnchorState;)V

    :cond_3
    :goto_0
    return-void
.end method

.method public static handleSchoolPageTypeNormal()V
    .locals 5

    .line 103
    invoke-static {}, Lcom/metamoji/nt/NtEditorWindowController;->getInstance()Lcom/metamoji/nt/NtEditorWindowController;

    move-result-object v0

    .line 104
    invoke-virtual {v0}, Lcom/metamoji/nt/NtEditorWindowController;->getCommandManager()Lcom/metamoji/nt/NtCommandManager;

    move-result-object v1

    sget-object v2, Lcom/metamoji/nt/NtCommand;->CMD_SCHOOL_PAGETYPE_NORMAL:Lcom/metamoji/nt/NtCommand;

    invoke-virtual {v1, v2}, Lcom/metamoji/nt/NtCommandManager;->isCommandSurelyEnabled(Lcom/metamoji/nt/NtCommand;)Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0

    .line 109
    :cond_0
    invoke-virtual {v0}, Lcom/metamoji/nt/NtEditorWindowController;->getDocument()Lcom/metamoji/nt/NtDocument;

    move-result-object v1

    invoke-virtual {v1}, Lcom/metamoji/nt/NtDocument;->isCollabo()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    .line 110
    sget v1, Lcom/metamoji/noteanytime/R$string;->School_Msg_Change_PageType_Normal:I

    sget v3, Lcom/metamoji/noteanytime/R$string;->SchoolMenu_PageType:I

    new-instance v4, Lcom/metamoji/forSchool/ScSchoolCommand$$ExternalSyntheticLambda1;

    invoke-direct {v4, v0}, Lcom/metamoji/forSchool/ScSchoolCommand$$ExternalSyntheticLambda1;-><init>(Lcom/metamoji/nt/NtEditorWindowController;)V

    invoke-static {v1, v3, v4, v2}, Lcom/metamoji/cm/CmUtils;->yesNoDialog(IILandroid/content/DialogInterface$OnClickListener;Z)V

    return-void

    .line 122
    :cond_1
    invoke-virtual {v0}, Lcom/metamoji/nt/NtEditorWindowController;->getMainSheet()Lcom/metamoji/nt/NtNoteController;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 124
    invoke-virtual {v0, v2}, Lcom/metamoji/nt/NtNoteController;->setSchoolPageType(I)V

    :cond_2
    :goto_0
    return-void
.end method

.method public static handleSchoolPageTypePersonalClass()V
    .locals 4

    .line 196
    invoke-static {}, Lcom/metamoji/nt/NtEditorWindowController;->getInstance()Lcom/metamoji/nt/NtEditorWindowController;

    move-result-object v0

    .line 197
    invoke-virtual {v0}, Lcom/metamoji/nt/NtEditorWindowController;->getCommandManager()Lcom/metamoji/nt/NtCommandManager;

    move-result-object v1

    sget-object v2, Lcom/metamoji/nt/NtCommand;->CMD_SCHOOL_PAGETYPE_PERSONAL_CLASS:Lcom/metamoji/nt/NtCommand;

    invoke-virtual {v1, v2}, Lcom/metamoji/nt/NtCommandManager;->isCommandSurelyEnabled(Lcom/metamoji/nt/NtCommand;)Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0

    .line 202
    :cond_0
    invoke-virtual {v0}, Lcom/metamoji/nt/NtEditorWindowController;->getDocument()Lcom/metamoji/nt/NtDocument;

    move-result-object v1

    invoke-virtual {v1}, Lcom/metamoji/nt/NtDocument;->isCollabo()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 203
    sget v1, Lcom/metamoji/noteanytime/R$string;->School_Msg_Change_PageType_Personal_Class:I

    sget v2, Lcom/metamoji/noteanytime/R$string;->SchoolMenu_PageType:I

    new-instance v3, Lcom/metamoji/forSchool/ScSchoolCommand$$ExternalSyntheticLambda2;

    invoke-direct {v3, v0}, Lcom/metamoji/forSchool/ScSchoolCommand$$ExternalSyntheticLambda2;-><init>(Lcom/metamoji/nt/NtEditorWindowController;)V

    const/4 v0, 0x0

    invoke-static {v1, v2, v3, v0}, Lcom/metamoji/cm/CmUtils;->yesNoDialog(IILandroid/content/DialogInterface$OnClickListener;Z)V

    return-void

    .line 215
    :cond_1
    invoke-virtual {v0}, Lcom/metamoji/nt/NtEditorWindowController;->getMainSheet()Lcom/metamoji/nt/NtNoteController;

    move-result-object v0

    if-eqz v0, :cond_2

    const/4 v1, 0x3

    .line 217
    invoke-virtual {v0, v1}, Lcom/metamoji/nt/NtNoteController;->setSchoolPageType(I)V

    :cond_2
    :goto_0
    return-void
.end method

.method public static handleSchoolPageTypePersonalGroup()V
    .locals 4

    .line 165
    invoke-static {}, Lcom/metamoji/nt/NtEditorWindowController;->getInstance()Lcom/metamoji/nt/NtEditorWindowController;

    move-result-object v0

    .line 166
    invoke-virtual {v0}, Lcom/metamoji/nt/NtEditorWindowController;->getCommandManager()Lcom/metamoji/nt/NtCommandManager;

    move-result-object v1

    sget-object v2, Lcom/metamoji/nt/NtCommand;->CMD_SCHOOL_PAGETYPE_PERSONAL_GROUP:Lcom/metamoji/nt/NtCommand;

    invoke-virtual {v1, v2}, Lcom/metamoji/nt/NtCommandManager;->isCommandSurelyEnabled(Lcom/metamoji/nt/NtCommand;)Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0

    .line 171
    :cond_0
    invoke-virtual {v0}, Lcom/metamoji/nt/NtEditorWindowController;->getDocument()Lcom/metamoji/nt/NtDocument;

    move-result-object v1

    invoke-virtual {v1}, Lcom/metamoji/nt/NtDocument;->isCollabo()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 172
    sget v1, Lcom/metamoji/noteanytime/R$string;->School_Msg_Change_PageType_Personal_Group:I

    sget v2, Lcom/metamoji/noteanytime/R$string;->SchoolMenu_PageType:I

    new-instance v3, Lcom/metamoji/forSchool/ScSchoolCommand$$ExternalSyntheticLambda28;

    invoke-direct {v3, v0}, Lcom/metamoji/forSchool/ScSchoolCommand$$ExternalSyntheticLambda28;-><init>(Lcom/metamoji/nt/NtEditorWindowController;)V

    const/4 v0, 0x0

    invoke-static {v1, v2, v3, v0}, Lcom/metamoji/cm/CmUtils;->yesNoDialog(IILandroid/content/DialogInterface$OnClickListener;Z)V

    return-void

    .line 184
    :cond_1
    invoke-virtual {v0}, Lcom/metamoji/nt/NtEditorWindowController;->getMainSheet()Lcom/metamoji/nt/NtNoteController;

    move-result-object v0

    if-eqz v0, :cond_2

    const/4 v1, 0x2

    .line 186
    invoke-virtual {v0, v1}, Lcom/metamoji/nt/NtNoteController;->setSchoolPageType(I)V

    :cond_2
    :goto_0
    return-void
.end method

.method public static handleSchoolPageTypePersonalUser()V
    .locals 4

    .line 134
    invoke-static {}, Lcom/metamoji/nt/NtEditorWindowController;->getInstance()Lcom/metamoji/nt/NtEditorWindowController;

    move-result-object v0

    .line 135
    invoke-virtual {v0}, Lcom/metamoji/nt/NtEditorWindowController;->getCommandManager()Lcom/metamoji/nt/NtCommandManager;

    move-result-object v1

    sget-object v2, Lcom/metamoji/nt/NtCommand;->CMD_SCHOOL_PAGETYPE_PERSONAL_USER:Lcom/metamoji/nt/NtCommand;

    invoke-virtual {v1, v2}, Lcom/metamoji/nt/NtCommandManager;->isCommandSurelyEnabled(Lcom/metamoji/nt/NtCommand;)Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0

    .line 140
    :cond_0
    invoke-virtual {v0}, Lcom/metamoji/nt/NtEditorWindowController;->getDocument()Lcom/metamoji/nt/NtDocument;

    move-result-object v1

    invoke-virtual {v1}, Lcom/metamoji/nt/NtDocument;->isCollabo()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 141
    sget v1, Lcom/metamoji/noteanytime/R$string;->School_Msg_Change_PageType_Personal_User:I

    sget v2, Lcom/metamoji/noteanytime/R$string;->SchoolMenu_PageType:I

    new-instance v3, Lcom/metamoji/forSchool/ScSchoolCommand$$ExternalSyntheticLambda20;

    invoke-direct {v3, v0}, Lcom/metamoji/forSchool/ScSchoolCommand$$ExternalSyntheticLambda20;-><init>(Lcom/metamoji/nt/NtEditorWindowController;)V

    const/4 v0, 0x0

    invoke-static {v1, v2, v3, v0}, Lcom/metamoji/cm/CmUtils;->yesNoDialog(IILandroid/content/DialogInterface$OnClickListener;Z)V

    return-void

    .line 153
    :cond_1
    invoke-virtual {v0}, Lcom/metamoji/nt/NtEditorWindowController;->getMainSheet()Lcom/metamoji/nt/NtNoteController;

    move-result-object v0

    if-eqz v0, :cond_2

    const/4 v1, 0x1

    .line 155
    invoke-virtual {v0, v1}, Lcom/metamoji/nt/NtNoteController;->setSchoolPageType(I)V

    :cond_2
    :goto_0
    return-void
.end method

.method public static handleSchoolPersonalMode(I)V
    .locals 3

    .line 1381
    invoke-static {}, Lcom/metamoji/forSchool/ScSchoolCommand;->getNoteController()Lcom/metamoji/nt/NtNoteController;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 1384
    invoke-static {}, Lcom/metamoji/forSchool/ScSchoolManager;->sharedInstance()Lcom/metamoji/forSchool/ScSchoolManager;

    move-result-object v1

    const/4 v2, 0x1

    if-ne p0, v2, :cond_0

    .line 1386
    invoke-virtual {v1}, Lcom/metamoji/forSchool/ScSchoolManager;->scoreEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1388
    sget p0, Lcom/metamoji/noteanytime/R$string;->MMJNT_LSTR_MSG_ERR_STUDENT_TO_EACH_OTHER_VIEW:I

    invoke-static {p0}, Lcom/metamoji/ns/NsCollaboUtils;->showAlertMessage(I)V

    return-void

    .line 1392
    :cond_0
    invoke-virtual {v0, p0, v2}, Lcom/metamoji/nt/NtNoteController;->setPersonalModeType(IZ)V

    :cond_1
    return-void
.end method

.method public static handleSchoolPersonalModeTypeButtonTap(Landroid/view/View;)V
    .locals 4

    .line 1431
    invoke-static {}, Lcom/metamoji/nt/NtEditorWindowController;->getInstance()Lcom/metamoji/nt/NtEditorWindowController;

    move-result-object v0

    .line 1432
    invoke-virtual {v0}, Lcom/metamoji/nt/NtEditorWindowController;->getEditorDelegate()Lcom/metamoji/nt/INtEditor;

    move-result-object v0

    invoke-interface {v0}, Lcom/metamoji/nt/INtEditor;->getFxmanager()Lcom/metamoji/ui/flexible/FxManager;

    move-result-object v0

    sget-object v1, Lcom/metamoji/ui/flexible/FxManagerDef$FxId;->FXUIID_SCHOOL_PERSONAL_MODE:Lcom/metamoji/ui/flexible/FxManagerDef$FxId;

    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    sget-object v3, Lcom/metamoji/ui/flexible/FxManager$FxAnchorState;->TOP:Lcom/metamoji/ui/flexible/FxManager$FxAnchorState;

    invoke-virtual {v0, v1, p0, v2, v3}, Lcom/metamoji/ui/flexible/FxManager;->execFxUi(Lcom/metamoji/ui/flexible/FxManagerDef$FxId;Landroid/view/View;Landroid/graphics/Rect;Lcom/metamoji/ui/flexible/FxManager$FxAnchorState;)V

    return-void
.end method

.method public static handleSchoolResetPersonalStatus()V
    .locals 4

    .line 1123
    invoke-static {}, Lcom/metamoji/ns/NsCollaboManager;->getInstance()Lcom/metamoji/ns/NsCollaboManager;

    move-result-object v0

    const-string v1, "schoolPersonalStatus"

    const-string v2, "notyet"

    const/4 v3, 0x0

    invoke-virtual {v0, v3, v1, v2}, Lcom/metamoji/ns/NsCollaboManager;->changeMembersProperty(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static handleSchoolStatusDoItBtnTap(Landroid/view/View;)V
    .locals 1

    .line 1332
    invoke-static {}, Lcom/metamoji/forSchool/ScSchoolManager;->sharedInstance()Lcom/metamoji/forSchool/ScSchoolManager;

    move-result-object v0

    invoke-virtual {p0}, Landroid/view/View;->isSelected()Z

    move-result p0

    if-eqz p0, :cond_0

    const-string p0, "notyet"

    goto :goto_0

    :cond_0
    const-string p0, "doit"

    :goto_0
    invoke-virtual {v0, p0}, Lcom/metamoji/forSchool/ScSchoolManager;->changeUserPropertyForSchoolPersonalStatus(Ljava/lang/String;)V

    return-void
.end method

.method public static handleSchoolStatusHelpBtnTap(Landroid/view/View;)V
    .locals 1

    .line 1340
    invoke-static {}, Lcom/metamoji/forSchool/ScSchoolManager;->sharedInstance()Lcom/metamoji/forSchool/ScSchoolManager;

    move-result-object v0

    invoke-virtual {p0}, Landroid/view/View;->isSelected()Z

    move-result p0

    if-eqz p0, :cond_0

    const-string p0, "notyet"

    goto :goto_0

    :cond_0
    const-string p0, "help"

    :goto_0
    invoke-virtual {v0, p0}, Lcom/metamoji/forSchool/ScSchoolManager;->changeUserPropertyForSchoolPersonalStatus(Ljava/lang/String;)V

    return-void
.end method

.method public static handleSchoolTeacherModeButtonTap(Lcom/metamoji/nt/NtCommand;)V
    .locals 2

    .line 1248
    sget-object v0, Lcom/metamoji/nt/NtCommand;->CMD_SCHOOL_TEACHERMODE_LOCK:Lcom/metamoji/nt/NtCommand;

    if-ne p0, v0, :cond_1

    .line 1249
    invoke-static {}, Lcom/metamoji/forSchool/ScSchoolManager;->sharedInstance()Lcom/metamoji/forSchool/ScSchoolManager;

    move-result-object p0

    .line 1250
    invoke-virtual {p0}, Lcom/metamoji/forSchool/ScSchoolManager;->isScreenLock()Z

    move-result p0

    if-eqz p0, :cond_0

    .line 1251
    sget-object p0, Lcom/metamoji/nt/NtCommand;->CMD_SCHOOL_TEACHERMODE_FREE:Lcom/metamoji/nt/NtCommand;

    goto :goto_1

    .line 1253
    :cond_0
    sget-object p0, Lcom/metamoji/nt/NtCommand;->CMD_SCHOOL_TEACHERMODE_LOCK:Lcom/metamoji/nt/NtCommand;

    goto :goto_1

    .line 1258
    :cond_1
    sget-object v0, Lcom/metamoji/nt/NtCommand;->CMD_SCHOOL_TEACHERMODE_PRESENTER:Lcom/metamoji/nt/NtCommand;

    if-ne p0, v0, :cond_4

    .line 1259
    invoke-static {}, Lcom/metamoji/forSchool/ScSchoolManager;->sharedInstance()Lcom/metamoji/forSchool/ScSchoolManager;

    move-result-object p0

    .line 1260
    invoke-static {}, Lcom/metamoji/ns/NsCollaboManager;->getInstance()Lcom/metamoji/ns/NsCollaboManager;

    move-result-object v0

    .line 1261
    invoke-virtual {p0}, Lcom/metamoji/forSchool/ScSchoolManager;->isScreenLock()Z

    move-result p0

    if-nez p0, :cond_3

    invoke-virtual {v0}, Lcom/metamoji/ns/NsCollaboManager;->existPresenter()Z

    move-result p0

    if-nez p0, :cond_2

    goto :goto_0

    .line 1267
    :cond_2
    sget-object p0, Lcom/metamoji/nt/NtCommand;->CMD_SCHOOL_TEACHERMODE_FREE:Lcom/metamoji/nt/NtCommand;

    goto :goto_1

    .line 1262
    :cond_3
    :goto_0
    sget-object p0, Lcom/metamoji/nt/NtCommand;->CMD_SCHOOL_TEACHERMODE_PRESENTER:Lcom/metamoji/nt/NtCommand;

    goto :goto_1

    .line 1270
    :cond_4
    sget-object p0, Lcom/metamoji/nt/NtCommand;->CMD_SCHOOL_TEACHERMODE_FREE:Lcom/metamoji/nt/NtCommand;

    .line 1272
    :goto_1
    invoke-static {}, Lcom/metamoji/nt/NtEditorWindowController;->getInstance()Lcom/metamoji/nt/NtEditorWindowController;

    move-result-object v0

    .line 1273
    invoke-virtual {v0}, Lcom/metamoji/nt/NtEditorWindowController;->getCommandManager()Lcom/metamoji/nt/NtCommandManager;

    move-result-object v1

    invoke-virtual {v1, p0}, Lcom/metamoji/nt/NtCommandManager;->isCommandSurelyEnabled(Lcom/metamoji/nt/NtCommand;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 1274
    invoke-virtual {v0}, Lcom/metamoji/nt/NtEditorWindowController;->getCommandManager()Lcom/metamoji/nt/NtCommandManager;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1}, Lcom/metamoji/nt/NtCommandManager;->execCommand(Lcom/metamoji/nt/NtCommand;Lcom/metamoji/cm/CmContext;)Z

    return-void

    .line 1276
    :cond_5
    sget-object v0, Lcom/metamoji/nt/NtCommand;->CMD_SCHOOL_TEACHERMODE_FREE:Lcom/metamoji/nt/NtCommand;

    if-eq p0, v0, :cond_6

    .line 1277
    invoke-static {}, Lcom/metamoji/forSchool/ScSchoolCommand;->isAttentionMode()Z

    move-result p0

    if-eqz p0, :cond_6

    .line 1279
    sget p0, Lcom/metamoji/noteanytime/R$string;->MMJNT_LSTR_MSG_ERROR_ATTENTION:I

    invoke-static {p0}, Lcom/metamoji/ns/NsCollaboUtils;->showAlertMessage(I)V

    :cond_6
    return-void
.end method

.method public static handleSchoolTeacherModeFree()V
    .locals 3

    .line 302
    invoke-static {}, Lcom/metamoji/forSchool/ScSchoolManager;->sharedInstance()Lcom/metamoji/forSchool/ScSchoolManager;

    move-result-object v0

    .line 303
    invoke-virtual {v0}, Lcom/metamoji/forSchool/ScSchoolManager;->isFeaturedPersonalMode()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    .line 304
    invoke-virtual {v0, v1}, Lcom/metamoji/forSchool/ScSchoolManager;->endFeaturedPersonalMode(Z)V

    .line 308
    :cond_0
    invoke-static {}, Lcom/metamoji/nt/NtEditorWindowController;->getInstance()Lcom/metamoji/nt/NtEditorWindowController;

    move-result-object v0

    .line 309
    invoke-virtual {v0}, Lcom/metamoji/nt/NtEditorWindowController;->getCommandManager()Lcom/metamoji/nt/NtCommandManager;

    move-result-object v0

    sget-object v1, Lcom/metamoji/nt/NtCommand;->CMD_SCHOOL_RESIGN_PRESENTER_CHECK:Lcom/metamoji/nt/NtCommand;

    invoke-virtual {v0, v1}, Lcom/metamoji/nt/NtCommandManager;->isCommandSurelyEnabled(Lcom/metamoji/nt/NtCommand;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    .line 311
    invoke-static {}, Lcom/metamoji/forSchool/ScSchoolManager;->sharedInstance()Lcom/metamoji/forSchool/ScSchoolManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/metamoji/forSchool/ScSchoolManager;->screenLocked()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 315
    invoke-static {}, Lcom/metamoji/ns/NsCollaboManager;->getInstance()Lcom/metamoji/ns/NsCollaboManager;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/metamoji/ns/NsCollaboManager;->changePresenter(Z)V

    .line 316
    invoke-static {}, Lcom/metamoji/forSchool/ScSchoolManager;->sharedInstance()Lcom/metamoji/forSchool/ScSchoolManager;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/metamoji/forSchool/ScSchoolManager;->lockScreen(Z)V

    return-void

    .line 319
    :cond_1
    invoke-static {}, Lcom/metamoji/ns/NsCollaboManager;->getInstance()Lcom/metamoji/ns/NsCollaboManager;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/metamoji/ns/NsCollaboManager;->changePresenter(Z)V

    return-void

    .line 323
    :cond_2
    invoke-static {}, Lcom/metamoji/ns/NsCollaboManager;->getInstance()Lcom/metamoji/ns/NsCollaboManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/metamoji/ns/NsCollaboManager;->presenterUserInfo()Lcom/metamoji/ns/NsCollaboUserInfo;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 325
    invoke-static {}, Lcom/metamoji/ns/NsCollaboManager;->getInstance()Lcom/metamoji/ns/NsCollaboManager;

    move-result-object v2

    iget-object v0, v0, Lcom/metamoji/ns/NsCollaboUserInfo;->userId:Ljava/lang/String;

    invoke-virtual {v2, v1, v0}, Lcom/metamoji/ns/NsCollaboManager;->changePresenter(ZLjava/lang/String;)V

    :cond_3
    return-void
.end method

.method public static handleSchoolTeacherModeLock()V
    .locals 3

    .line 430
    new-instance v0, Lcom/metamoji/forSchool/ScSchoolCommand$$ExternalSyntheticLambda22;

    invoke-direct {v0}, Lcom/metamoji/forSchool/ScSchoolCommand$$ExternalSyntheticLambda22;-><init>()V

    .line 448
    invoke-static {}, Lcom/metamoji/forSchool/ScSchoolManager;->sharedInstance()Lcom/metamoji/forSchool/ScSchoolManager;

    move-result-object v1

    .line 449
    invoke-virtual {v1}, Lcom/metamoji/forSchool/ScSchoolManager;->isFeaturedPersonalMode()Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v2, 0x1

    .line 450
    invoke-virtual {v1, v2}, Lcom/metamoji/forSchool/ScSchoolManager;->endFeaturedPersonalMode(Z)V

    :cond_0
    const/4 v1, 0x0

    .line 454
    invoke-interface {v0, v1}, Lcom/metamoji/ns/INsCollaboAction;->action(Z)V

    return-void
.end method

.method public static handleSchoolTeacherModePresenter()V
    .locals 8

    .line 336
    invoke-static {}, Lcom/metamoji/forSchool/ScSchoolCommand;->getNoteController()Lcom/metamoji/nt/NtNoteController;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 338
    invoke-virtual {v0}, Lcom/metamoji/nt/NtNoteController;->getCurrentPage()Lcom/metamoji/nt/NtPageController;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 339
    invoke-virtual {v0}, Lcom/metamoji/nt/NtPageController;->isPurged()Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-nez v2, :cond_1

    .line 340
    invoke-virtual {v0}, Lcom/metamoji/nt/NtPageController;->getSchoolPageType()I

    move-result v2

    .line 341
    invoke-virtual {v0}, Lcom/metamoji/nt/NtPageController;->getCurrentLayer()Lcom/metamoji/nt/NtLayerController;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 343
    invoke-virtual {v0}, Lcom/metamoji/nt/NtLayerController;->getLayerId()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/metamoji/forSchool/ScSchoolUtils;->isTeacherPersonalLayerId(Ljava/lang/String;)Z

    move-result v0

    goto :goto_0

    :cond_0
    move v0, v1

    goto :goto_0

    :cond_1
    move v0, v1

    move v2, v0

    :goto_0
    if-eqz v0, :cond_2

    .line 350
    invoke-static {}, Lcom/metamoji/nt/NtEditorWindowController;->getInstance()Lcom/metamoji/nt/NtEditorWindowController;

    move-result-object v3

    .line 353
    invoke-static {}, Lcom/metamoji/cm/CmUtils;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    .line 354
    invoke-static {}, Lcom/metamoji/nt/NtEditorWindowController;->getCurrentActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v5

    .line 355
    new-instance v6, Landroidx/appcompat/app/AlertDialog$Builder;

    invoke-direct {v6, v5}, Landroidx/appcompat/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 356
    sget v5, Lcom/metamoji/noteanytime/R$string;->MMJNT_LSTR_TEACHER_PERSONAL_LAYER_MSG:I

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 357
    invoke-virtual {v6, v5}, Landroidx/appcompat/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroidx/appcompat/app/AlertDialog$Builder;

    .line 359
    sget v5, Lcom/metamoji/noteanytime/R$string;->MMJNT_LSTR_DISPLAY_SHARED_LAYER:I

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    new-instance v7, Lcom/metamoji/forSchool/ScSchoolCommand$$ExternalSyntheticLambda14;

    invoke-direct {v7, v3}, Lcom/metamoji/forSchool/ScSchoolCommand$$ExternalSyntheticLambda14;-><init>(Lcom/metamoji/nt/NtEditorWindowController;)V

    invoke-virtual {v6, v5, v7}, Landroidx/appcompat/app/AlertDialog$Builder;->setNeutralButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    .line 364
    sget v5, Lcom/metamoji/noteanytime/R$string;->Msg_OK:I

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    new-instance v7, Lcom/metamoji/forSchool/ScSchoolCommand$$ExternalSyntheticLambda15;

    invoke-direct {v7, v3, v2, v0}, Lcom/metamoji/forSchool/ScSchoolCommand$$ExternalSyntheticLambda15;-><init>(Lcom/metamoji/nt/NtEditorWindowController;IZ)V

    invoke-virtual {v6, v5, v7}, Landroidx/appcompat/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    .line 394
    sget v0, Lcom/metamoji/noteanytime/R$string;->Msg_CANCEL:I

    invoke-virtual {v4, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    new-instance v2, Lcom/metamoji/forSchool/ScSchoolCommand$$ExternalSyntheticLambda16;

    invoke-direct {v2, v3}, Lcom/metamoji/forSchool/ScSchoolCommand$$ExternalSyntheticLambda16;-><init>(Lcom/metamoji/nt/NtEditorWindowController;)V

    invoke-virtual {v6, v0, v2}, Landroidx/appcompat/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    .line 398
    invoke-virtual {v6, v1}, Landroidx/appcompat/app/AlertDialog$Builder;->setCancelable(Z)Landroidx/appcompat/app/AlertDialog$Builder;

    .line 399
    invoke-virtual {v6}, Landroidx/appcompat/app/AlertDialog$Builder;->create()Landroidx/appcompat/app/AlertDialog;

    move-result-object v0

    .line 401
    invoke-virtual {v3}, Lcom/metamoji/nt/NtEditorWindowController;->getCollaboModeBar()Lcom/metamoji/ns/ui/NsCollaboModeViewBase;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/metamoji/ns/ui/NsCollaboModeViewBase;->setAlertDialog(Landroidx/appcompat/app/AlertDialog;)V

    .line 403
    invoke-virtual {v0}, Landroidx/appcompat/app/AlertDialog;->show()V

    return-void

    .line 405
    :cond_2
    invoke-static {}, Lcom/metamoji/forSchool/ScSchoolCommand;->schoolTeacherModePresenter()V

    return-void
.end method

.method public static handleSchoolTeacherMonitoringButtonTap()V
    .locals 3

    .line 1288
    invoke-static {}, Lcom/metamoji/nt/NtEditorWindowController;->getInstance()Lcom/metamoji/nt/NtEditorWindowController;

    move-result-object v0

    .line 1289
    invoke-virtual {v0}, Lcom/metamoji/nt/NtEditorWindowController;->getCommandManager()Lcom/metamoji/nt/NtCommandManager;

    move-result-object v1

    sget-object v2, Lcom/metamoji/nt/NtCommand;->CMD_SCHOOL_TEACHERMODE_MONITORING:Lcom/metamoji/nt/NtCommand;

    invoke-virtual {v1, v2}, Lcom/metamoji/nt/NtCommandManager;->isCommandSurelyEnabled(Lcom/metamoji/nt/NtCommand;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1290
    invoke-virtual {v0}, Lcom/metamoji/nt/NtEditorWindowController;->getCommandManager()Lcom/metamoji/nt/NtCommandManager;

    move-result-object v0

    sget-object v1, Lcom/metamoji/nt/NtCommand;->CMD_SCHOOL_TEACHERMODE_MONITORING:Lcom/metamoji/nt/NtCommand;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/metamoji/nt/NtCommandManager;->execCommand(Lcom/metamoji/nt/NtCommand;Lcom/metamoji/cm/CmContext;)Z

    :cond_0
    return-void
.end method

.method public static handleSchoolUserListStartFeaturedPersonalModeByGroup()V
    .locals 11

    .line 924
    invoke-static {}, Lcom/metamoji/nt/NtEditorWindowController;->getInstance()Lcom/metamoji/nt/NtEditorWindowController;

    move-result-object v0

    .line 925
    invoke-virtual {v0}, Lcom/metamoji/nt/NtEditorWindowController;->getCommandManager()Lcom/metamoji/nt/NtCommandManager;

    move-result-object v1

    sget-object v2, Lcom/metamoji/nt/NtCommand;->CMD_SCHOOL_CONTEXTMENU_USERLIST_START_FEATURED_PERSONAL_MODE_BY_GROUP:Lcom/metamoji/nt/NtCommand;

    invoke-virtual {v1, v2}, Lcom/metamoji/nt/NtCommandManager;->isCommandSurelyEnabled(Lcom/metamoji/nt/NtCommand;)Z

    move-result v1

    if-nez v1, :cond_0

    goto/16 :goto_3

    .line 930
    :cond_0
    invoke-virtual {v0}, Lcom/metamoji/nt/NtEditorWindowController;->getCollaboModeBar()Lcom/metamoji/ns/ui/NsCollaboModeViewBase;

    move-result-object v1

    invoke-virtual {v1}, Lcom/metamoji/ns/ui/NsCollaboModeViewBase;->getSelectedGroupDic()Lcom/metamoji/forSchool/ui/ScUserListSectionData;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    if-eqz v1, :cond_2

    .line 936
    iget-object v4, v1, Lcom/metamoji/forSchool/ui/ScUserListSectionData;->groupName:Ljava/lang/String;

    if-eqz v4, :cond_2

    iget-object v4, v1, Lcom/metamoji/forSchool/ui/ScUserListSectionData;->groupId:Ljava/lang/String;

    if-nez v4, :cond_1

    goto :goto_1

    .line 950
    :cond_1
    iget-object v4, v1, Lcom/metamoji/forSchool/ui/ScUserListSectionData;->groupName:Ljava/lang/String;

    .line 951
    iget-object v1, v1, Lcom/metamoji/forSchool/ui/ScUserListSectionData;->groupId:Ljava/lang/String;

    move-object v9, v1

    move-object v7, v3

    move-object v8, v7

    move-object v10, v4

    :goto_0
    move v6, v2

    goto :goto_2

    .line 937
    :cond_2
    :goto_1
    invoke-virtual {v0}, Lcom/metamoji/nt/NtEditorWindowController;->getCollaboModeBar()Lcom/metamoji/ns/ui/NsCollaboModeViewBase;

    move-result-object v1

    invoke-virtual {v1}, Lcom/metamoji/ns/ui/NsCollaboModeViewBase;->getSelectedUserDic()Lcom/metamoji/forSchool/ui/ScUserListItemData;

    move-result-object v1

    if-eqz v1, :cond_8

    .line 938
    iget-object v4, v1, Lcom/metamoji/forSchool/ui/ScUserListItemData;->userName:Ljava/lang/String;

    if-eqz v4, :cond_8

    iget-object v4, v1, Lcom/metamoji/forSchool/ui/ScUserListItemData;->dcUserId:Ljava/lang/String;

    if-nez v4, :cond_3

    goto :goto_3

    .line 941
    :cond_3
    iget-object v4, v1, Lcom/metamoji/forSchool/ui/ScUserListItemData;->userName:Ljava/lang/String;

    .line 942
    iget-object v1, v1, Lcom/metamoji/forSchool/ui/ScUserListItemData;->dcUserId:Ljava/lang/String;

    .line 945
    invoke-static {}, Lcom/metamoji/forSchool/ScSchoolManager;->sharedInstance()Lcom/metamoji/forSchool/ScSchoolManager;

    move-result-object v5

    invoke-virtual {v5}, Lcom/metamoji/forSchool/ScSchoolManager;->isTeacher()Z

    move-result v5

    if-eqz v5, :cond_4

    invoke-static {}, Lcom/metamoji/forSchool/ScSchoolUtils;->getUserId()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4

    const/4 v2, 0x1

    :cond_4
    if-nez v2, :cond_5

    goto :goto_3

    :cond_5
    move-object v7, v1

    move-object v9, v3

    move-object v10, v9

    move-object v8, v4

    goto :goto_0

    .line 956
    :goto_2
    invoke-static {}, Lcom/metamoji/ns/NsCollaboManager;->getInstance()Lcom/metamoji/ns/NsCollaboManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/metamoji/ns/NsCollaboManager;->presenterUserInfo()Lcom/metamoji/ns/NsCollaboUserInfo;

    move-result-object v1

    if-eqz v1, :cond_6

    .line 957
    iget-boolean v1, v1, Lcom/metamoji/ns/NsCollaboUserInfo;->isMyself:Z

    if-nez v1, :cond_7

    .line 959
    :cond_6
    invoke-static {}, Lcom/metamoji/forSchool/ScSchoolCommand;->schoolTeacherModePresenter()V

    .line 963
    :cond_7
    new-instance v5, Lcom/metamoji/forSchool/ScSchoolCommand$$ExternalSyntheticLambda3;

    invoke-direct/range {v5 .. v10}, Lcom/metamoji/forSchool/ScSchoolCommand$$ExternalSyntheticLambda3;-><init>(ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v5}, Lcom/metamoji/forSchool/ScSchoolCommand;->waitTillPresenter(Ljava/lang/Runnable;)V

    .line 979
    invoke-static {}, Lcom/metamoji/nt/NtEditorWindowController;->getCurrentActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    invoke-static {v1}, Lcom/metamoji/cm/CmUtils;->isTabletSize(Landroidx/fragment/app/FragmentActivity;)Z

    move-result v1

    if-nez v1, :cond_8

    .line 980
    invoke-virtual {v0}, Lcom/metamoji/nt/NtEditorWindowController;->getCollaboModeBar()Lcom/metamoji/ns/ui/NsCollaboModeViewBase;

    move-result-object v0

    check-cast v0, Lcom/metamoji/ns/ui/NsCollaboModeDialog;

    .line 981
    invoke-virtual {v0}, Lcom/metamoji/ns/ui/NsCollaboModeDialog;->closeView()V

    :cond_8
    :goto_3
    return-void
.end method

.method public static handleSchoolUserListStartFeaturedPersonalModeByUser()V
    .locals 5

    .line 859
    invoke-static {}, Lcom/metamoji/nt/NtEditorWindowController;->getInstance()Lcom/metamoji/nt/NtEditorWindowController;

    move-result-object v0

    .line 860
    invoke-virtual {v0}, Lcom/metamoji/nt/NtEditorWindowController;->getCommandManager()Lcom/metamoji/nt/NtCommandManager;

    move-result-object v1

    sget-object v2, Lcom/metamoji/nt/NtCommand;->CMD_SCHOOL_CONTEXTMENU_USERLIST_START_FEATURED_PERSONAL_MODE_BY_USER:Lcom/metamoji/nt/NtCommand;

    invoke-virtual {v1, v2}, Lcom/metamoji/nt/NtCommandManager;->isCommandSurelyEnabled(Lcom/metamoji/nt/NtCommand;)Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0

    .line 864
    :cond_0
    invoke-virtual {v0}, Lcom/metamoji/nt/NtEditorWindowController;->getCollaboModeBar()Lcom/metamoji/ns/ui/NsCollaboModeViewBase;

    move-result-object v1

    invoke-virtual {v1}, Lcom/metamoji/ns/ui/NsCollaboModeViewBase;->getSelectedUserDic()Lcom/metamoji/forSchool/ui/ScUserListItemData;

    move-result-object v1

    if-nez v1, :cond_1

    goto :goto_0

    .line 868
    :cond_1
    iget-object v2, v1, Lcom/metamoji/forSchool/ui/ScUserListItemData;->userName:Ljava/lang/String;

    .line 869
    iget-object v1, v1, Lcom/metamoji/forSchool/ui/ScUserListItemData;->dcUserId:Ljava/lang/String;

    if-eqz v2, :cond_5

    if-nez v1, :cond_2

    goto :goto_0

    .line 874
    :cond_2
    invoke-static {}, Lcom/metamoji/ns/NsCollaboManager;->getInstance()Lcom/metamoji/ns/NsCollaboManager;

    move-result-object v3

    invoke-virtual {v3}, Lcom/metamoji/ns/NsCollaboManager;->presenterUserInfo()Lcom/metamoji/ns/NsCollaboUserInfo;

    move-result-object v3

    if-eqz v3, :cond_3

    .line 875
    iget-boolean v3, v3, Lcom/metamoji/ns/NsCollaboUserInfo;->isMyself:Z

    if-nez v3, :cond_4

    .line 877
    :cond_3
    invoke-static {}, Lcom/metamoji/forSchool/ScSchoolCommand;->schoolTeacherModePresenter()V

    .line 880
    :cond_4
    new-instance v3, Lcom/metamoji/nt/cabinet/cabinetWaitView;

    invoke-direct {v3}, Lcom/metamoji/nt/cabinet/cabinetWaitView;-><init>()V

    .line 881
    invoke-virtual {v3}, Lcom/metamoji/nt/cabinet/cabinetWaitView;->show()V

    .line 882
    new-instance v4, Lcom/metamoji/forSchool/ScSchoolCommand$$ExternalSyntheticLambda7;

    invoke-direct {v4, v0, v1, v3, v2}, Lcom/metamoji/forSchool/ScSchoolCommand$$ExternalSyntheticLambda7;-><init>(Lcom/metamoji/nt/NtEditorWindowController;Ljava/lang/String;Lcom/metamoji/nt/cabinet/cabinetWaitView;Ljava/lang/String;)V

    invoke-static {v4}, Lcom/metamoji/forSchool/ScSchoolCommand;->waitTillPresenter(Ljava/lang/Runnable;)V

    .line 909
    invoke-static {}, Lcom/metamoji/nt/NtEditorWindowController;->getCurrentActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/metamoji/cm/CmUtils;->isTabletSize(Landroidx/fragment/app/FragmentActivity;)Z

    move-result v0

    if-nez v0, :cond_5

    .line 910
    invoke-static {}, Lcom/metamoji/nt/NtEditorWindowController;->getInstance()Lcom/metamoji/nt/NtEditorWindowController;

    move-result-object v0

    if-eqz v0, :cond_5

    .line 912
    invoke-virtual {v0}, Lcom/metamoji/nt/NtEditorWindowController;->getCollaboModeBar()Lcom/metamoji/ns/ui/NsCollaboModeViewBase;

    move-result-object v0

    check-cast v0, Lcom/metamoji/ns/ui/NsCollaboModeDialog;

    .line 913
    invoke-virtual {v0}, Lcom/metamoji/ns/ui/NsCollaboModeDialog;->closeView()V

    :cond_5
    :goto_0
    return-void
.end method

.method public static handleSchoolUserListStartFeaturedPersonalModeByUserWithContext(Lcom/metamoji/cm/CmContext;)V
    .locals 4

    .line 849
    const-string v0, "userName"

    invoke-virtual {p0, v0}, Lcom/metamoji/cm/CmContext;->getExtData(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 850
    const-string v1, "dcUserId"

    invoke-virtual {p0, v1}, Lcom/metamoji/cm/CmContext;->getExtData(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 851
    const-string v2, "isTeacherPersonalLayer"

    invoke-virtual {p0, v2}, Lcom/metamoji/cm/CmContext;->getExtData(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    .line 853
    invoke-static {}, Lcom/metamoji/cm/CmTaskManager;->getInstance()Lcom/metamoji/cm/CmTaskManager;

    move-result-object v2

    new-instance v3, Lcom/metamoji/forSchool/ScSchoolCommand$$ExternalSyntheticLambda26;

    invoke-direct {v3, v1, v0, p0}, Lcom/metamoji/forSchool/ScSchoolCommand$$ExternalSyntheticLambda26;-><init>(Ljava/lang/String;Ljava/lang/String;Z)V

    invoke-virtual {v2, v3}, Lcom/metamoji/cm/CmTaskManager;->safeRunOnUIThread(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public static handleSchoolUserListStartPersonalModeByGroup()V
    .locals 4

    .line 816
    invoke-static {}, Lcom/metamoji/nt/NtEditorWindowController;->getInstance()Lcom/metamoji/nt/NtEditorWindowController;

    move-result-object v0

    .line 817
    invoke-virtual {v0}, Lcom/metamoji/nt/NtEditorWindowController;->getCommandManager()Lcom/metamoji/nt/NtCommandManager;

    move-result-object v1

    sget-object v2, Lcom/metamoji/nt/NtCommand;->CMD_SCHOOL_CONTEXTMENU_USERLIST_START_PERSONAL_MODE_BY_GROUP:Lcom/metamoji/nt/NtCommand;

    invoke-virtual {v1, v2}, Lcom/metamoji/nt/NtCommandManager;->isCommandSurelyEnabled(Lcom/metamoji/nt/NtCommand;)Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0

    .line 821
    :cond_0
    invoke-virtual {v0}, Lcom/metamoji/nt/NtEditorWindowController;->getCollaboModeBar()Lcom/metamoji/ns/ui/NsCollaboModeViewBase;

    move-result-object v0

    invoke-virtual {v0}, Lcom/metamoji/ns/ui/NsCollaboModeViewBase;->getSelectedGroupDic()Lcom/metamoji/forSchool/ui/ScUserListSectionData;

    move-result-object v0

    if-nez v0, :cond_1

    goto :goto_0

    .line 825
    :cond_1
    iget-object v1, v0, Lcom/metamoji/forSchool/ui/ScUserListSectionData;->groupName:Ljava/lang/String;

    .line 826
    iget-object v0, v0, Lcom/metamoji/forSchool/ui/ScUserListSectionData;->groupId:Ljava/lang/String;

    if-eqz v1, :cond_3

    if-nez v0, :cond_2

    goto :goto_0

    .line 832
    :cond_2
    invoke-static {}, Lcom/metamoji/forSchool/ScSchoolManager;->sharedInstance()Lcom/metamoji/forSchool/ScSchoolManager;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v2, v3, v0, v1}, Lcom/metamoji/forSchool/ScSchoolManager;->startPersonalMode(ZLjava/lang/String;Ljava/lang/String;)V

    .line 835
    invoke-static {}, Lcom/metamoji/nt/NtEditorWindowController;->getCurrentActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/metamoji/cm/CmUtils;->isTabletSize(Landroidx/fragment/app/FragmentActivity;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 836
    invoke-static {}, Lcom/metamoji/nt/NtEditorWindowController;->getInstance()Lcom/metamoji/nt/NtEditorWindowController;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 838
    invoke-virtual {v0}, Lcom/metamoji/nt/NtEditorWindowController;->getCollaboModeBar()Lcom/metamoji/ns/ui/NsCollaboModeViewBase;

    move-result-object v0

    check-cast v0, Lcom/metamoji/ns/ui/NsCollaboModeDialog;

    .line 839
    invoke-virtual {v0}, Lcom/metamoji/ns/ui/NsCollaboModeDialog;->closeView()V

    :cond_3
    :goto_0
    return-void
.end method

.method public static handleSchoolUserListStartPersonalModeByUser()V
    .locals 3

    .line 761
    invoke-static {}, Lcom/metamoji/nt/NtEditorWindowController;->getInstance()Lcom/metamoji/nt/NtEditorWindowController;

    move-result-object v0

    .line 762
    invoke-virtual {v0}, Lcom/metamoji/nt/NtEditorWindowController;->getCommandManager()Lcom/metamoji/nt/NtCommandManager;

    move-result-object v1

    sget-object v2, Lcom/metamoji/nt/NtCommand;->CMD_SCHOOL_CONTEXTMENU_USERLIST_START_PERSONAL_MODE_BY_USER:Lcom/metamoji/nt/NtCommand;

    invoke-virtual {v1, v2}, Lcom/metamoji/nt/NtCommandManager;->isCommandSurelyEnabled(Lcom/metamoji/nt/NtCommand;)Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0

    .line 766
    :cond_0
    invoke-virtual {v0}, Lcom/metamoji/nt/NtEditorWindowController;->getCollaboModeBar()Lcom/metamoji/ns/ui/NsCollaboModeViewBase;

    move-result-object v0

    invoke-virtual {v0}, Lcom/metamoji/ns/ui/NsCollaboModeViewBase;->getSelectedUserDic()Lcom/metamoji/forSchool/ui/ScUserListItemData;

    move-result-object v0

    if-nez v0, :cond_1

    goto :goto_0

    .line 770
    :cond_1
    iget-object v1, v0, Lcom/metamoji/forSchool/ui/ScUserListItemData;->userName:Ljava/lang/String;

    .line 771
    iget-object v0, v0, Lcom/metamoji/forSchool/ui/ScUserListItemData;->dcUserId:Ljava/lang/String;

    if-eqz v1, :cond_3

    if-nez v0, :cond_2

    goto :goto_0

    .line 776
    :cond_2
    invoke-static {v0, v1}, Lcom/metamoji/forSchool/ScSchoolCommand;->startPersonalMode(Ljava/lang/String;Ljava/lang/String;)Z

    :cond_3
    :goto_0
    return-void
.end method

.method public static handleScore()V
    .locals 7

    .line 1734
    invoke-static {}, Lcom/metamoji/forSchool/ScSchoolManager;->sharedInstance()Lcom/metamoji/forSchool/ScSchoolManager;

    move-result-object v0

    .line 1735
    invoke-virtual {v0}, Lcom/metamoji/forSchool/ScSchoolManager;->personalIdForPersonalModeInfoView()Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_0

    goto :goto_0

    .line 1741
    :cond_0
    invoke-static {}, Lcom/metamoji/ns/NsCollaboManager;->getInstance()Lcom/metamoji/ns/NsCollaboManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/metamoji/ns/NsCollaboManager;->roomId()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_1

    :goto_0
    return-void

    .line 1747
    :cond_1
    invoke-virtual {v0}, Lcom/metamoji/forSchool/ScSchoolManager;->scoreStatusInfoDic()Ljava/util/Map;

    move-result-object v0

    .line 1748
    const-string v1, "score"

    invoke-static {v0, v1}, Lcom/metamoji/ns/NsCollaboManager;->GetValue(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Ljava/lang/Integer;

    const/4 v5, 0x0

    const/4 v6, 0x1

    const/4 v4, 0x1

    .line 1751
    invoke-static/range {v1 .. v6}, Lcom/metamoji/forSchool/ScSchoolCommand;->executeSetScore(Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;ZLcom/metamoji/forSchool/ScSchoolCommand$IScSetScoreCompletionAction;Z)V

    return-void
.end method

.method public static handleScoreList()V
    .locals 4

    .line 1851
    invoke-static {}, Lcom/metamoji/forSchool/ScSchoolCommand;->getScoreTargetUserList()Ljava/util/List;

    move-result-object v0

    .line 1853
    invoke-static {}, Lcom/metamoji/forSchool/ScSchoolManager;->sharedInstance()Lcom/metamoji/forSchool/ScSchoolManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/metamoji/forSchool/ScSchoolManager;->scoreList()Ljava/util/List;

    move-result-object v1

    .line 1856
    new-instance v2, Lcom/metamoji/forSchool/ui/ScScoreListDialog;

    invoke-direct {v2}, Lcom/metamoji/forSchool/ui/ScScoreListDialog;-><init>()V

    const/4 v3, 0x1

    .line 1857
    iput-boolean v3, v2, Lcom/metamoji/forSchool/ui/ScScoreListDialog;->EditorMode:Z

    .line 1858
    invoke-virtual {v2, v1, v0}, Lcom/metamoji/forSchool/ui/ScScoreListDialog;->parseScoreList(Ljava/util/List;Ljava/util/List;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 1863
    :cond_0
    const-string v0, "ScScoreListDialog"

    invoke-virtual {v2, v0}, Lcom/metamoji/forSchool/ui/ScScoreListDialog;->safeShow(Ljava/lang/String;)V

    return-void
.end method

.method public static handleScoreList(Ljava/lang/String;Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    if-eqz p0, :cond_2

    if-eqz p1, :cond_2

    .line 1901
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 1906
    :cond_0
    invoke-static {}, Lcom/metamoji/lb/LbInAppPurchaseUtils;->isNetworkAvailable()Z

    move-result v0

    if-nez v0, :cond_1

    .line 1907
    sget p0, Lcom/metamoji/noteanytime/R$string;->AnytimeNotify_Dialog_Msg_Offline:I

    sget p1, Lcom/metamoji/noteanytime/R$string;->MMJNT_LSTR_SCOREINFOVIEW_MENU_SCORELIST:I

    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lcom/metamoji/cm/CmUtils;->confirmDialog(IILandroid/content/DialogInterface$OnClickListener;)V

    return-void

    .line 1912
    :cond_1
    new-instance v0, Lcom/metamoji/forSchool/ScSchoolCommand$14;

    invoke-direct {v0, p0, p1}, Lcom/metamoji/forSchool/ScSchoolCommand$14;-><init>(Ljava/lang/String;Ljava/util/List;)V

    .line 1925
    invoke-static {v0}, Lcom/metamoji/ns/NsCollaboCommand;->checkCollaboInfoWithAfterAction(Lcom/metamoji/ns/INsCollaboAction;)V

    :cond_2
    :goto_0
    return-void
.end method

.method public static handleScoreLogList()V
    .locals 4

    .line 1830
    invoke-static {}, Lcom/metamoji/forSchool/ScSchoolManager;->sharedInstance()Lcom/metamoji/forSchool/ScSchoolManager;

    move-result-object v0

    .line 1831
    invoke-virtual {v0}, Lcom/metamoji/forSchool/ScSchoolManager;->personalIdForPersonalModeInfoView()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 1837
    :cond_0
    invoke-static {}, Lcom/metamoji/ns/NsCollaboManager;->getInstance()Lcom/metamoji/ns/NsCollaboManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/metamoji/ns/NsCollaboManager;->roomId()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_1

    :goto_0
    return-void

    .line 1842
    :cond_1
    new-instance v2, Lcom/metamoji/forSchool/task/ScCollaboBgTaskForGetScoreLogList;

    const/4 v3, 0x0

    invoke-direct {v2, v3}, Lcom/metamoji/forSchool/task/ScCollaboBgTaskForGetScoreLogList;-><init>(Lcom/metamoji/ns/INsCollaboAction;)V

    .line 1843
    iput-object v1, v2, Lcom/metamoji/forSchool/task/ScCollaboBgTaskForGetScoreLogList;->RoomId:Ljava/lang/String;

    .line 1844
    iput-object v0, v2, Lcom/metamoji/forSchool/task/ScCollaboBgTaskForGetScoreLogList;->TargetUserId:Ljava/lang/String;

    .line 1845
    invoke-virtual {v2}, Lcom/metamoji/forSchool/task/ScCollaboBgTaskForGetScoreLogList;->doInBackground()V

    return-void
.end method

.method public static handleShowStudentName()V
    .locals 2

    .line 1451
    invoke-static {}, Lcom/metamoji/forSchool/ScSchoolCommand;->getNoteController()Lcom/metamoji/nt/NtNoteController;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 1453
    invoke-virtual {v0, v1}, Lcom/metamoji/nt/NtNoteController;->setHiddenStudentName(Z)V

    .line 1454
    invoke-static {}, Lcom/metamoji/forSchool/monitoring/ScMonitoringManager;->sharedInstance()Lcom/metamoji/forSchool/monitoring/ScMonitoringManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/metamoji/forSchool/monitoring/ScMonitoringManager;->resetMonitoringState()V

    :cond_0
    return-void
.end method

.method public static handleStart()V
    .locals 5

    .line 1461
    new-instance v0, Lcom/metamoji/forSchool/ScSchoolCommand$$ExternalSyntheticLambda24;

    invoke-direct {v0}, Lcom/metamoji/forSchool/ScSchoolCommand$$ExternalSyntheticLambda24;-><init>()V

    .line 1465
    sget v1, Lcom/metamoji/noteanytime/R$string;->MMJNT_LSTR_DEADLINE_MSG_START:I

    .line 1466
    invoke-static {}, Lcom/metamoji/nt/NtEditorWindowController;->getCurrentActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v2

    .line 1467
    invoke-static {v2}, Lcom/metamoji/cm/CmUtils;->createAlertDialog(Landroidx/fragment/app/FragmentActivity;)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object v3

    .line 1468
    invoke-virtual {v3, v1}, Landroidx/appcompat/app/AlertDialog$Builder;->setMessage(I)Landroidx/appcompat/app/AlertDialog$Builder;

    .line 1469
    sget v1, Lcom/metamoji/noteanytime/R$string;->Msg_YES:I

    new-instance v4, Lcom/metamoji/forSchool/ScSchoolCommand$4;

    invoke-direct {v4, v0}, Lcom/metamoji/forSchool/ScSchoolCommand$4;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v3, v1, v4}, Landroidx/appcompat/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    .line 1475
    sget v0, Lcom/metamoji/noteanytime/R$string;->Msg_CANCEL:I

    const/4 v1, 0x0

    invoke-virtual {v3, v0, v1}, Landroidx/appcompat/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    const/4 v0, 0x0

    .line 1477
    invoke-virtual {v3, v0}, Landroidx/appcompat/app/AlertDialog$Builder;->setCancelable(Z)Landroidx/appcompat/app/AlertDialog$Builder;

    .line 1478
    new-instance v0, Lcom/metamoji/ui/dialog/UiAlertDialog;

    invoke-direct {v0, v3}, Lcom/metamoji/ui/dialog/UiAlertDialog;-><init>(Landroidx/appcompat/app/AlertDialog$Builder;)V

    .line 1479
    invoke-virtual {v2}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v1

    const-string v2, "handleStart"

    invoke-virtual {v0, v1, v2}, Lcom/metamoji/ui/dialog/UiAlertDialog;->show(Landroidx/fragment/app/FragmentManager;Ljava/lang/String;)V

    return-void
.end method

.method public static handleUnReport()V
    .locals 5

    .line 1681
    invoke-static {}, Lcom/metamoji/forSchool/ScSchoolManager;->sharedInstance()Lcom/metamoji/forSchool/ScSchoolManager;

    move-result-object v0

    .line 1682
    invoke-virtual {v0}, Lcom/metamoji/forSchool/ScSchoolManager;->personalIdForPersonalModeInfoView()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_0

    return-void

    .line 1686
    :cond_0
    invoke-virtual {v0}, Lcom/metamoji/forSchool/ScSchoolManager;->personalNameForPersonalModeInfoView()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_1

    .line 1688
    const-string v0, ""

    .line 1691
    :cond_1
    new-instance v2, Lcom/metamoji/forSchool/ScSchoolCommand$$ExternalSyntheticLambda21;

    invoke-direct {v2, v1}, Lcom/metamoji/forSchool/ScSchoolCommand$$ExternalSyntheticLambda21;-><init>(Ljava/lang/String;)V

    .line 1711
    sget v1, Lcom/metamoji/noteanytime/R$string;->MMJNT_LSTR_SCORE_MSG_CANCELREPORT_BY_TEACHER:I

    invoke-static {v1}, Lcom/metamoji/cm/CmUtils;->loadString(I)Ljava/lang/String;

    move-result-object v1

    .line 1713
    const-string v3, "%@"

    const-string v4, "%s"

    invoke-virtual {v1, v3, v4}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    .line 1714
    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 1715
    invoke-static {}, Lcom/metamoji/nt/NtEditorWindowController;->getCurrentActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    .line 1716
    invoke-static {v1}, Lcom/metamoji/cm/CmUtils;->createAlertDialog(Landroidx/fragment/app/FragmentActivity;)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object v3

    .line 1717
    invoke-virtual {v3, v0}, Landroidx/appcompat/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroidx/appcompat/app/AlertDialog$Builder;

    .line 1718
    sget v0, Lcom/metamoji/noteanytime/R$string;->Msg_YES:I

    new-instance v4, Lcom/metamoji/forSchool/ScSchoolCommand$11;

    invoke-direct {v4, v2}, Lcom/metamoji/forSchool/ScSchoolCommand$11;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v3, v0, v4}, Landroidx/appcompat/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    .line 1724
    sget v0, Lcom/metamoji/noteanytime/R$string;->Msg_CANCEL:I

    const/4 v2, 0x0

    invoke-virtual {v3, v0, v2}, Landroidx/appcompat/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    const/4 v0, 0x0

    .line 1726
    invoke-virtual {v3, v0}, Landroidx/appcompat/app/AlertDialog$Builder;->setCancelable(Z)Landroidx/appcompat/app/AlertDialog$Builder;

    .line 1727
    new-instance v0, Lcom/metamoji/ui/dialog/UiAlertDialog;

    invoke-direct {v0, v3}, Lcom/metamoji/ui/dialog/UiAlertDialog;-><init>(Landroidx/appcompat/app/AlertDialog$Builder;)V

    .line 1728
    invoke-virtual {v1}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v1

    const-string v2, "handleUnReport"

    invoke-virtual {v0, v1, v2}, Lcom/metamoji/ui/dialog/UiAlertDialog;->show(Landroidx/fragment/app/FragmentManager;Ljava/lang/String;)V

    return-void
.end method

.method public static handleUnReportByStudent()V
    .locals 5

    .line 1600
    new-instance v0, Lcom/metamoji/forSchool/ScSchoolCommand$$ExternalSyntheticLambda29;

    invoke-direct {v0}, Lcom/metamoji/forSchool/ScSchoolCommand$$ExternalSyntheticLambda29;-><init>()V

    .line 1620
    sget v1, Lcom/metamoji/noteanytime/R$string;->MMJNT_LSTR_SCORE_MSG_CANCELREPORT:I

    .line 1621
    invoke-static {}, Lcom/metamoji/nt/NtEditorWindowController;->getCurrentActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v2

    .line 1622
    invoke-static {v2}, Lcom/metamoji/cm/CmUtils;->createAlertDialog(Landroidx/fragment/app/FragmentActivity;)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object v3

    .line 1623
    invoke-virtual {v3, v1}, Landroidx/appcompat/app/AlertDialog$Builder;->setMessage(I)Landroidx/appcompat/app/AlertDialog$Builder;

    .line 1624
    sget v1, Lcom/metamoji/noteanytime/R$string;->Msg_YES:I

    new-instance v4, Lcom/metamoji/forSchool/ScSchoolCommand$9;

    invoke-direct {v4, v0}, Lcom/metamoji/forSchool/ScSchoolCommand$9;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v3, v1, v4}, Landroidx/appcompat/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    .line 1630
    sget v0, Lcom/metamoji/noteanytime/R$string;->Msg_CANCEL:I

    const/4 v1, 0x0

    invoke-virtual {v3, v0, v1}, Landroidx/appcompat/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    const/4 v0, 0x0

    .line 1632
    invoke-virtual {v3, v0}, Landroidx/appcompat/app/AlertDialog$Builder;->setCancelable(Z)Landroidx/appcompat/app/AlertDialog$Builder;

    .line 1633
    new-instance v0, Lcom/metamoji/ui/dialog/UiAlertDialog;

    invoke-direct {v0, v3}, Lcom/metamoji/ui/dialog/UiAlertDialog;-><init>(Landroidx/appcompat/app/AlertDialog$Builder;)V

    .line 1634
    invoke-virtual {v2}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v1

    const-string v2, "handleUnReportByStudent"

    invoke-virtual {v0, v1, v2}, Lcom/metamoji/ui/dialog/UiAlertDialog;->show(Landroidx/fragment/app/FragmentManager;Ljava/lang/String;)V

    return-void
.end method

.method public static isAttentionMode()Z
    .locals 1

    .line 1932
    invoke-static {}, Lcom/metamoji/forSchool/ScSchoolCommand;->attentionUserInfoDic()Ljava/util/Map;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method static synthetic lambda$addPageFromPersonalLayer$11(Lcom/metamoji/df/model/IModelManager;)Lcom/metamoji/df/model/IModel;
    .locals 2

    .line 588
    const-string v0, "pbpage"

    invoke-interface {p0, v0}, Lcom/metamoji/df/model/IModelManager;->newModel(Ljava/lang/String;)Lcom/metamoji/df/model/IModel;

    move-result-object p0

    .line 589
    const-string v0, "!version"

    const/4 v1, 0x1

    invoke-interface {p0, v0, v1}, Lcom/metamoji/df/model/IModel;->setProperty(Ljava/lang/String;I)V

    return-object p0
.end method

.method static synthetic lambda$addPageFromPersonalLayer$12(Lcom/metamoji/df/model/IModel;)V
    .locals 0

    return-void
.end method

.method static synthetic lambda$handleEnd$22()V
    .locals 1

    .line 1485
    invoke-static {}, Lcom/metamoji/ns/NsCollaboManager;->getInstance()Lcom/metamoji/ns/NsCollaboManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/metamoji/ns/NsCollaboManager;->changeMode2End()V

    return-void
.end method

.method static synthetic lambda$handlePrevStart$24()V
    .locals 2

    .line 1531
    invoke-static {}, Lcom/metamoji/ns/NsCollaboManager;->getInstance()Lcom/metamoji/ns/NsCollaboManager;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/metamoji/ns/NsCollaboManager;->changeMode2Start(Z)V

    return-void
.end method

.method static synthetic lambda$handleReStart$23()V
    .locals 2

    .line 1508
    invoke-static {}, Lcom/metamoji/ns/NsCollaboManager;->getInstance()Lcom/metamoji/ns/NsCollaboManager;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/metamoji/ns/NsCollaboManager;->changeMode2Start(Z)V

    return-void
.end method

.method static synthetic lambda$handleReport$27(Ljava/lang/String;)V
    .locals 2

    .line 1651
    new-instance v0, Lcom/metamoji/forSchool/task/ScCollaboBgTaskForSetReport;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/metamoji/forSchool/task/ScCollaboBgTaskForSetReport;-><init>(Lcom/metamoji/ns/INsCollaboAction;)V

    .line 1652
    invoke-static {}, Lcom/metamoji/ns/NsCollaboManager;->getInstance()Lcom/metamoji/ns/NsCollaboManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/metamoji/ns/NsCollaboManager;->roomId()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/metamoji/forSchool/task/ScCollaboBgTaskForSetReport;->RoomId:Ljava/lang/String;

    .line 1653
    iput-object p0, v0, Lcom/metamoji/forSchool/task/ScCollaboBgTaskForSetReport;->UserId:Ljava/lang/String;

    const/4 p0, 0x1

    .line 1654
    iput p0, v0, Lcom/metamoji/forSchool/task/ScCollaboBgTaskForSetReport;->Report:I

    .line 1655
    invoke-virtual {v0}, Lcom/metamoji/forSchool/task/ScCollaboBgTaskForSetReport;->doInBackground()V

    return-void
.end method

.method static synthetic lambda$handleReportByStudent$25()V
    .locals 2

    .line 1574
    new-instance v0, Lcom/metamoji/forSchool/task/ScCollaboBgTaskForSetReport;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/metamoji/forSchool/task/ScCollaboBgTaskForSetReport;-><init>(Lcom/metamoji/ns/INsCollaboAction;)V

    .line 1575
    invoke-static {}, Lcom/metamoji/ns/NsCollaboManager;->getInstance()Lcom/metamoji/ns/NsCollaboManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/metamoji/ns/NsCollaboManager;->roomId()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/metamoji/forSchool/task/ScCollaboBgTaskForSetReport;->RoomId:Ljava/lang/String;

    .line 1576
    invoke-static {}, Lcom/metamoji/forSchool/ScSchoolUtils;->getUserId()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/metamoji/forSchool/task/ScCollaboBgTaskForSetReport;->UserId:Ljava/lang/String;

    const/4 v1, 0x1

    .line 1577
    iput v1, v0, Lcom/metamoji/forSchool/task/ScCollaboBgTaskForSetReport;->Report:I

    .line 1578
    invoke-virtual {v0}, Lcom/metamoji/forSchool/task/ScCollaboBgTaskForSetReport;->doInBackground()V

    return-void
.end method

.method static synthetic lambda$handleSchoolNewPageFromPersonalLayer$10(Lcom/metamoji/nt/NtNoteController;Lcom/metamoji/nt/NtPageController;Ljava/lang/String;Landroid/content/DialogInterface;I)V
    .locals 0

    .line 569
    invoke-static {p0, p1, p2}, Lcom/metamoji/forSchool/ScSchoolCommand;->addPageFromPersonalLayer(Lcom/metamoji/nt/NtNoteController;Lcom/metamoji/nt/NtPageController;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic lambda$handleSchoolPageTypeNormal$0(Lcom/metamoji/nt/NtEditorWindowController;Landroid/content/DialogInterface;I)V
    .locals 0

    .line 112
    invoke-virtual {p0}, Lcom/metamoji/nt/NtEditorWindowController;->getCommandManager()Lcom/metamoji/nt/NtCommandManager;

    move-result-object p1

    sget-object p2, Lcom/metamoji/nt/NtCommand;->CMD_SCHOOL_PAGETYPE_NORMAL:Lcom/metamoji/nt/NtCommand;

    invoke-virtual {p1, p2}, Lcom/metamoji/nt/NtCommandManager;->isCommandSurelyEnabled(Lcom/metamoji/nt/NtCommand;)Z

    move-result p1

    if-nez p1, :cond_0

    goto :goto_0

    .line 116
    :cond_0
    invoke-virtual {p0}, Lcom/metamoji/nt/NtEditorWindowController;->getMainSheet()Lcom/metamoji/nt/NtNoteController;

    move-result-object p0

    if-eqz p0, :cond_1

    const/4 p1, 0x0

    .line 118
    invoke-virtual {p0, p1}, Lcom/metamoji/nt/NtNoteController;->setSchoolPageType(I)V

    :cond_1
    :goto_0
    return-void
.end method

.method static synthetic lambda$handleSchoolPageTypePersonalClass$3(Lcom/metamoji/nt/NtEditorWindowController;Landroid/content/DialogInterface;I)V
    .locals 0

    .line 205
    invoke-virtual {p0}, Lcom/metamoji/nt/NtEditorWindowController;->getCommandManager()Lcom/metamoji/nt/NtCommandManager;

    move-result-object p1

    sget-object p2, Lcom/metamoji/nt/NtCommand;->CMD_SCHOOL_PAGETYPE_PERSONAL_CLASS:Lcom/metamoji/nt/NtCommand;

    invoke-virtual {p1, p2}, Lcom/metamoji/nt/NtCommandManager;->isCommandSurelyEnabled(Lcom/metamoji/nt/NtCommand;)Z

    move-result p1

    if-nez p1, :cond_0

    goto :goto_0

    .line 209
    :cond_0
    invoke-virtual {p0}, Lcom/metamoji/nt/NtEditorWindowController;->getMainSheet()Lcom/metamoji/nt/NtNoteController;

    move-result-object p0

    if-eqz p0, :cond_1

    const/4 p1, 0x3

    .line 211
    invoke-virtual {p0, p1}, Lcom/metamoji/nt/NtNoteController;->setSchoolPageType(I)V

    :cond_1
    :goto_0
    return-void
.end method

.method static synthetic lambda$handleSchoolPageTypePersonalGroup$2(Lcom/metamoji/nt/NtEditorWindowController;Landroid/content/DialogInterface;I)V
    .locals 0

    .line 174
    invoke-virtual {p0}, Lcom/metamoji/nt/NtEditorWindowController;->getCommandManager()Lcom/metamoji/nt/NtCommandManager;

    move-result-object p1

    sget-object p2, Lcom/metamoji/nt/NtCommand;->CMD_SCHOOL_PAGETYPE_PERSONAL_GROUP:Lcom/metamoji/nt/NtCommand;

    invoke-virtual {p1, p2}, Lcom/metamoji/nt/NtCommandManager;->isCommandSurelyEnabled(Lcom/metamoji/nt/NtCommand;)Z

    move-result p1

    if-nez p1, :cond_0

    goto :goto_0

    .line 178
    :cond_0
    invoke-virtual {p0}, Lcom/metamoji/nt/NtEditorWindowController;->getMainSheet()Lcom/metamoji/nt/NtNoteController;

    move-result-object p0

    if-eqz p0, :cond_1

    const/4 p1, 0x2

    .line 180
    invoke-virtual {p0, p1}, Lcom/metamoji/nt/NtNoteController;->setSchoolPageType(I)V

    :cond_1
    :goto_0
    return-void
.end method

.method static synthetic lambda$handleSchoolPageTypePersonalUser$1(Lcom/metamoji/nt/NtEditorWindowController;Landroid/content/DialogInterface;I)V
    .locals 0

    .line 143
    invoke-virtual {p0}, Lcom/metamoji/nt/NtEditorWindowController;->getCommandManager()Lcom/metamoji/nt/NtCommandManager;

    move-result-object p1

    sget-object p2, Lcom/metamoji/nt/NtCommand;->CMD_SCHOOL_PAGETYPE_PERSONAL_USER:Lcom/metamoji/nt/NtCommand;

    invoke-virtual {p1, p2}, Lcom/metamoji/nt/NtCommandManager;->isCommandSurelyEnabled(Lcom/metamoji/nt/NtCommand;)Z

    move-result p1

    if-nez p1, :cond_0

    goto :goto_0

    .line 147
    :cond_0
    invoke-virtual {p0}, Lcom/metamoji/nt/NtEditorWindowController;->getMainSheet()Lcom/metamoji/nt/NtNoteController;

    move-result-object p0

    if-eqz p0, :cond_1

    const/4 p1, 0x1

    .line 149
    invoke-virtual {p0, p1}, Lcom/metamoji/nt/NtNoteController;->setSchoolPageType(I)V

    :cond_1
    :goto_0
    return-void
.end method

.method static synthetic lambda$handleSchoolTeacherModeLock$9(Z)V
    .locals 2

    .line 432
    invoke-static {}, Lcom/metamoji/nt/NtEditorWindowController;->getInstance()Lcom/metamoji/nt/NtEditorWindowController;

    move-result-object p0

    .line 433
    invoke-virtual {p0}, Lcom/metamoji/nt/NtEditorWindowController;->getCommandManager()Lcom/metamoji/nt/NtCommandManager;

    move-result-object v0

    sget-object v1, Lcom/metamoji/nt/NtCommand;->CMD_SCHOOL_TEACHERMODE_LOCK:Lcom/metamoji/nt/NtCommand;

    invoke-virtual {v0, v1}, Lcom/metamoji/nt/NtCommandManager;->isCommandSurelyEnabled(Lcom/metamoji/nt/NtCommand;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 438
    :cond_0
    invoke-virtual {p0}, Lcom/metamoji/nt/NtEditorWindowController;->getCommandManager()Lcom/metamoji/nt/NtCommandManager;

    move-result-object p0

    sget-object v0, Lcom/metamoji/nt/NtCommand;->CMD_SCHOOL_BECOME_PRESENTER_CHECK:Lcom/metamoji/nt/NtCommand;

    invoke-virtual {p0, v0}, Lcom/metamoji/nt/NtCommandManager;->isCommandSurelyEnabled(Lcom/metamoji/nt/NtCommand;)Z

    move-result p0

    const/4 v0, 0x1

    if-eqz p0, :cond_1

    .line 439
    invoke-static {v0}, Lcom/metamoji/ns/NsCollaboCommand;->handleCollaboBecomePresenter(Z)V

    .line 443
    :cond_1
    invoke-static {}, Lcom/metamoji/forSchool/ScSchoolManager;->sharedInstance()Lcom/metamoji/forSchool/ScSchoolManager;

    move-result-object p0

    invoke-virtual {p0, v0}, Lcom/metamoji/forSchool/ScSchoolManager;->lockScreen(Z)V

    return-void
.end method

.method static synthetic lambda$handleSchoolTeacherModePresenter$4(Lcom/metamoji/nt/NtEditorWindowController;Landroid/content/DialogInterface;I)V
    .locals 0

    .line 360
    invoke-virtual {p0}, Lcom/metamoji/nt/NtEditorWindowController;->getCollaboModeBar()Lcom/metamoji/ns/ui/NsCollaboModeViewBase;

    move-result-object p0

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lcom/metamoji/ns/ui/NsCollaboModeViewBase;->setAlertDialog(Landroidx/appcompat/app/AlertDialog;)V

    .line 361
    invoke-static {}, Lcom/metamoji/forSchool/ScSchoolCommand;->schoolTeacherModePresenter()V

    return-void
.end method

.method static synthetic lambda$handleSchoolTeacherModePresenter$5(Lcom/metamoji/cs/dc/user/CsDCUserInfo;ZLcom/metamoji/nt/NtEditorWindowController;)V
    .locals 3

    .line 383
    new-instance v0, Lcom/metamoji/cm/CmContext;

    invoke-direct {v0}, Lcom/metamoji/cm/CmContext;-><init>()V

    .line 384
    const-string v1, "userName"

    iget-object v2, p0, Lcom/metamoji/cs/dc/user/CsDCUserInfo;->nickname:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/metamoji/cm/CmContext;->setExtData(Ljava/lang/String;Ljava/lang/Object;)V

    .line 385
    const-string v1, "dcUserId"

    iget-object p0, p0, Lcom/metamoji/cs/dc/user/CsDCUserInfo;->userId:Ljava/lang/String;

    invoke-virtual {v0, v1, p0}, Lcom/metamoji/cm/CmContext;->setExtData(Ljava/lang/String;Ljava/lang/Object;)V

    .line 386
    const-string p0, "isTeacherPersonalLayer"

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-virtual {v0, p0, p1}, Lcom/metamoji/cm/CmContext;->setExtData(Ljava/lang/String;Ljava/lang/Object;)V

    .line 387
    invoke-virtual {p2}, Lcom/metamoji/nt/NtEditorWindowController;->getCommandManager()Lcom/metamoji/nt/NtCommandManager;

    move-result-object p0

    sget-object p1, Lcom/metamoji/nt/NtCommand;->CMD_SCHOOL_CONTEXTMENU_USERLIST_START_FEATURED_PERSONAL_MODE_BY_USER_INNR:Lcom/metamoji/nt/NtCommand;

    invoke-virtual {p0, p1, v0}, Lcom/metamoji/nt/NtCommandManager;->execCommand(Lcom/metamoji/nt/NtCommand;Lcom/metamoji/cm/CmContext;)Z

    return-void
.end method

.method static synthetic lambda$handleSchoolTeacherModePresenter$6(Lcom/metamoji/cs/dc/user/CsDCUserInfo;ZLcom/metamoji/nt/NtEditorWindowController;)V
    .locals 2

    .line 382
    invoke-static {}, Lcom/metamoji/cm/CmTaskManager;->getInstance()Lcom/metamoji/cm/CmTaskManager;

    move-result-object v0

    new-instance v1, Lcom/metamoji/forSchool/ScSchoolCommand$$ExternalSyntheticLambda8;

    invoke-direct {v1, p0, p1, p2}, Lcom/metamoji/forSchool/ScSchoolCommand$$ExternalSyntheticLambda8;-><init>(Lcom/metamoji/cs/dc/user/CsDCUserInfo;ZLcom/metamoji/nt/NtEditorWindowController;)V

    invoke-virtual {v0, v1}, Lcom/metamoji/cm/CmTaskManager;->runOnUIThreadAsync(Ljava/lang/Runnable;)V

    return-void
.end method

.method static synthetic lambda$handleSchoolTeacherModePresenter$7(Lcom/metamoji/nt/NtEditorWindowController;IZLandroid/content/DialogInterface;I)V
    .locals 2

    .line 365
    invoke-virtual {p0}, Lcom/metamoji/nt/NtEditorWindowController;->getCollaboModeBar()Lcom/metamoji/ns/ui/NsCollaboModeViewBase;

    move-result-object p3

    const/4 p4, 0x0

    invoke-virtual {p3, p4}, Lcom/metamoji/ns/ui/NsCollaboModeViewBase;->setAlertDialog(Landroidx/appcompat/app/AlertDialog;)V

    .line 366
    invoke-static {}, Lcom/metamoji/forSchool/ScSchoolCommand;->schoolTeacherModePresenter()V

    const/4 p3, 0x1

    if-eq p1, p3, :cond_0

    const/4 p3, 0x2

    if-eq p1, p3, :cond_0

    if-nez p1, :cond_2

    .line 371
    :cond_0
    invoke-static {}, Lcom/metamoji/cs/dc/user/CsDCUserInfoSettings;->getInstanceFromSystemSettings()Lcom/metamoji/cs/dc/user/CsDCUserInfoSettings;

    move-result-object p1

    .line 373
    invoke-virtual {p1}, Lcom/metamoji/cs/dc/user/CsDCUserInfoSettings;->getUserInfo()Lcom/metamoji/cs/dc/user/CsDCUserInfo;

    move-result-object p1

    if-eqz p1, :cond_2

    :goto_0
    const-wide/16 p3, 0x1f4

    .line 377
    :try_start_0
    invoke-static {}, Lcom/metamoji/ns/NsCollaboManager;->getInstance()Lcom/metamoji/ns/NsCollaboManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/metamoji/ns/NsCollaboManager;->isPresenter()Z

    move-result v0

    if-nez v0, :cond_1

    .line 378
    invoke-static {p3, p4}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 382
    :catch_0
    :cond_1
    invoke-static {}, Lcom/metamoji/cm/CmTaskManager;->getInstance()Lcom/metamoji/cm/CmTaskManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/metamoji/cm/CmTaskManager;->getHandler()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/metamoji/forSchool/ScSchoolCommand$$ExternalSyntheticLambda6;

    invoke-direct {v1, p1, p2, p0}, Lcom/metamoji/forSchool/ScSchoolCommand$$ExternalSyntheticLambda6;-><init>(Lcom/metamoji/cs/dc/user/CsDCUserInfo;ZLcom/metamoji/nt/NtEditorWindowController;)V

    invoke-virtual {v0, v1, p3, p4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_2
    return-void
.end method

.method static synthetic lambda$handleSchoolTeacherModePresenter$8(Lcom/metamoji/nt/NtEditorWindowController;Landroid/content/DialogInterface;I)V
    .locals 0

    .line 395
    invoke-virtual {p0}, Lcom/metamoji/nt/NtEditorWindowController;->getCollaboModeBar()Lcom/metamoji/ns/ui/NsCollaboModeViewBase;

    move-result-object p0

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lcom/metamoji/ns/ui/NsCollaboModeViewBase;->setAlertDialog(Landroidx/appcompat/app/AlertDialog;)V

    .line 396
    invoke-static {}, Lcom/metamoji/ns/NsCollaboManager;->getInstance()Lcom/metamoji/ns/NsCollaboManager;

    move-result-object p0

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lcom/metamoji/ns/NsCollaboManager;->changePresenter(Z)V

    return-void
.end method

.method static synthetic lambda$handleSchoolUserListStartFeaturedPersonalModeByGroup$15(ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 7

    .line 964
    invoke-static {}, Lcom/metamoji/cm/CmTaskManager;->getInstance()Lcom/metamoji/cm/CmTaskManager;

    move-result-object v0

    new-instance v1, Lcom/metamoji/forSchool/ScSchoolCommand$2;

    move v2, p0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    move-object v6, p4

    invoke-direct/range {v1 .. v6}, Lcom/metamoji/forSchool/ScSchoolCommand$2;-><init>(ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-wide/16 p0, 0x3e8

    invoke-virtual {v0, v1, p0, p1}, Lcom/metamoji/cm/CmTaskManager;->safeRunOnUIThreadAsync(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method static synthetic lambda$handleSchoolUserListStartFeaturedPersonalModeByUser$14(Lcom/metamoji/nt/NtEditorWindowController;Ljava/lang/String;Lcom/metamoji/nt/cabinet/cabinetWaitView;Ljava/lang/String;)V
    .locals 7

    .line 885
    invoke-virtual {p0}, Lcom/metamoji/nt/NtEditorWindowController;->getMainSheet()Lcom/metamoji/nt/NtNoteController;

    move-result-object v3

    .line 886
    invoke-virtual {v3}, Lcom/metamoji/nt/NtNoteController;->getCurrentPage()Lcom/metamoji/nt/NtPageController;

    move-result-object v2

    .line 887
    invoke-static {}, Lcom/metamoji/forSchool/ScSchoolManager;->sharedInstance()Lcom/metamoji/forSchool/ScSchoolManager;

    move-result-object p0

    invoke-virtual {p0}, Lcom/metamoji/forSchool/ScSchoolManager;->isTeacher()Z

    move-result p0

    if-eqz p0, :cond_0

    invoke-static {}, Lcom/metamoji/forSchool/ScSchoolUtils;->getUserId()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    move v5, p0

    .line 889
    invoke-static {}, Lcom/metamoji/cm/CmTaskManager;->getInstance()Lcom/metamoji/cm/CmTaskManager;

    move-result-object p0

    new-instance v0, Lcom/metamoji/forSchool/ScSchoolCommand$1;

    move-object v4, p1

    move-object v1, p2

    move-object v6, p3

    invoke-direct/range {v0 .. v6}, Lcom/metamoji/forSchool/ScSchoolCommand$1;-><init>(Lcom/metamoji/nt/cabinet/cabinetWaitView;Lcom/metamoji/nt/NtPageController;Lcom/metamoji/nt/NtNoteController;Ljava/lang/String;ZLjava/lang/String;)V

    const-wide/16 p1, 0x3e8

    invoke-virtual {p0, v0, p1, p2}, Lcom/metamoji/cm/CmTaskManager;->safeRunOnUIThreadAsync(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method static synthetic lambda$handleSchoolUserListStartFeaturedPersonalModeByUserWithContext$13(Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 2

    .line 853
    invoke-static {}, Lcom/metamoji/forSchool/ScSchoolManager;->sharedInstance()Lcom/metamoji/forSchool/ScSchoolManager;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1, p0, p1, p2}, Lcom/metamoji/forSchool/ScSchoolManager;->startFeaturedPersonalMode(ZLjava/lang/String;Ljava/lang/String;Z)V

    return-void
.end method

.method static synthetic lambda$handleStart$21()V
    .locals 2

    .line 1462
    invoke-static {}, Lcom/metamoji/ns/NsCollaboManager;->getInstance()Lcom/metamoji/ns/NsCollaboManager;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/metamoji/ns/NsCollaboManager;->changeMode2Start(Z)V

    return-void
.end method

.method static synthetic lambda$handleUnReport$28(Ljava/lang/String;)V
    .locals 3

    .line 1694
    invoke-static {}, Lcom/metamoji/nt/NtEditorWindowController;->getInstance()Lcom/metamoji/nt/NtEditorWindowController;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 1696
    invoke-virtual {v0}, Lcom/metamoji/nt/NtEditorWindowController;->getCommandManager()Lcom/metamoji/nt/NtCommandManager;

    move-result-object v0

    goto :goto_0

    :cond_0
    move-object v0, v1

    :goto_0
    if-eqz v0, :cond_2

    .line 1698
    sget-object v2, Lcom/metamoji/nt/NtCommand;->CMD_SCHOOL_SCOREMENU_UNREPORT:Lcom/metamoji/nt/NtCommand;

    invoke-virtual {v0, v2}, Lcom/metamoji/nt/NtCommandManager;->isCommandSurelyEnabled(Lcom/metamoji/nt/NtCommand;)Z

    move-result v0

    if-nez v0, :cond_1

    goto :goto_1

    .line 1704
    :cond_1
    new-instance v0, Lcom/metamoji/forSchool/task/ScCollaboBgTaskForSetReport;

    invoke-direct {v0, v1}, Lcom/metamoji/forSchool/task/ScCollaboBgTaskForSetReport;-><init>(Lcom/metamoji/ns/INsCollaboAction;)V

    .line 1705
    invoke-static {}, Lcom/metamoji/ns/NsCollaboManager;->getInstance()Lcom/metamoji/ns/NsCollaboManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/metamoji/ns/NsCollaboManager;->roomId()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/metamoji/forSchool/task/ScCollaboBgTaskForSetReport;->RoomId:Ljava/lang/String;

    .line 1706
    iput-object p0, v0, Lcom/metamoji/forSchool/task/ScCollaboBgTaskForSetReport;->UserId:Ljava/lang/String;

    const/4 p0, 0x3

    .line 1707
    iput p0, v0, Lcom/metamoji/forSchool/task/ScCollaboBgTaskForSetReport;->Report:I

    .line 1708
    invoke-virtual {v0}, Lcom/metamoji/forSchool/task/ScCollaboBgTaskForSetReport;->doInBackground()V

    return-void

    .line 1700
    :cond_2
    :goto_1
    sget p0, Lcom/metamoji/noteanytime/R$string;->Msg_OperationCouldntBeCompleted:I

    invoke-static {p0}, Lcom/metamoji/ns/NsCollaboUtils;->showAlertMessage(I)V

    return-void
.end method

.method static synthetic lambda$handleUnReportByStudent$26()V
    .locals 3

    .line 1603
    invoke-static {}, Lcom/metamoji/nt/NtEditorWindowController;->getInstance()Lcom/metamoji/nt/NtEditorWindowController;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 1605
    invoke-virtual {v0}, Lcom/metamoji/nt/NtEditorWindowController;->getCommandManager()Lcom/metamoji/nt/NtCommandManager;

    move-result-object v0

    goto :goto_0

    :cond_0
    move-object v0, v1

    :goto_0
    if-eqz v0, :cond_2

    .line 1607
    sget-object v2, Lcom/metamoji/nt/NtCommand;->CMD_SCHOOL_SCOREMENU_UNREPORT_BY_STUDENT:Lcom/metamoji/nt/NtCommand;

    invoke-virtual {v0, v2}, Lcom/metamoji/nt/NtCommandManager;->isCommandSurelyEnabled(Lcom/metamoji/nt/NtCommand;)Z

    move-result v0

    if-nez v0, :cond_1

    goto :goto_1

    .line 1613
    :cond_1
    new-instance v0, Lcom/metamoji/forSchool/task/ScCollaboBgTaskForSetReport;

    invoke-direct {v0, v1}, Lcom/metamoji/forSchool/task/ScCollaboBgTaskForSetReport;-><init>(Lcom/metamoji/ns/INsCollaboAction;)V

    .line 1614
    invoke-static {}, Lcom/metamoji/ns/NsCollaboManager;->getInstance()Lcom/metamoji/ns/NsCollaboManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/metamoji/ns/NsCollaboManager;->roomId()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/metamoji/forSchool/task/ScCollaboBgTaskForSetReport;->RoomId:Ljava/lang/String;

    .line 1615
    invoke-static {}, Lcom/metamoji/forSchool/ScSchoolUtils;->getUserId()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/metamoji/forSchool/task/ScCollaboBgTaskForSetReport;->UserId:Ljava/lang/String;

    const/4 v1, 0x2

    .line 1616
    iput v1, v0, Lcom/metamoji/forSchool/task/ScCollaboBgTaskForSetReport;->Report:I

    .line 1617
    invoke-virtual {v0}, Lcom/metamoji/forSchool/task/ScCollaboBgTaskForSetReport;->doInBackground()V

    return-void

    .line 1609
    :cond_2
    :goto_1
    sget v0, Lcom/metamoji/noteanytime/R$string;->Msg_OperationCouldntBeCompleted:I

    invoke-static {v0}, Lcom/metamoji/ns/NsCollaboUtils;->showAlertMessage(I)V

    return-void
.end method

.method static synthetic lambda$onCollaboDocumentOpened$17()V
    .locals 2

    .line 1155
    invoke-static {}, Lcom/metamoji/cm/CmTaskManager;->getInstance()Lcom/metamoji/cm/CmTaskManager;

    move-result-object v0

    new-instance v1, Lcom/metamoji/forSchool/ScSchoolCommand$$ExternalSyntheticLambda5;

    invoke-direct {v1}, Lcom/metamoji/forSchool/ScSchoolCommand$$ExternalSyntheticLambda5;-><init>()V

    invoke-virtual {v0, v1}, Lcom/metamoji/cm/CmTaskManager;->safeRunOnUIThread(Ljava/lang/Runnable;)Z

    return-void
.end method

.method static synthetic lambda$onCollaboDocumentOpened$18()V
    .locals 3

    .line 1143
    invoke-static {}, Lcom/metamoji/nt/NtEditorWindowController;->getInstance()Lcom/metamoji/nt/NtEditorWindowController;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 1145
    invoke-static {}, Lcom/metamoji/forSchool/ScSchoolManager;->sharedInstance()Lcom/metamoji/forSchool/ScSchoolManager;

    move-result-object v1

    invoke-virtual {v0}, Lcom/metamoji/nt/NtEditorWindowController;->getDocument()Lcom/metamoji/nt/NtDocument;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/metamoji/forSchool/ScSchoolManager;->initMode2Info(Lcom/metamoji/nt/NtDocument;)V

    .line 1148
    invoke-virtual {v0}, Lcom/metamoji/nt/NtEditorWindowController;->getEditorDelegate()Lcom/metamoji/nt/INtEditor;

    move-result-object v0

    check-cast v0, Lcom/metamoji/noteanytime/EditorActivity;

    if-eqz v0, :cond_0

    .line 1150
    invoke-virtual {v0}, Lcom/metamoji/noteanytime/EditorActivity;->updateAttentionArea()V

    .line 1155
    :cond_0
    invoke-static {}, Lcom/metamoji/cm/CmTaskManager;->getInstance()Lcom/metamoji/cm/CmTaskManager;

    move-result-object v0

    new-instance v1, Lcom/metamoji/forSchool/ScSchoolCommand$$ExternalSyntheticLambda12;

    invoke-direct {v1}, Lcom/metamoji/forSchool/ScSchoolCommand$$ExternalSyntheticLambda12;-><init>()V

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2, v2}, Lcom/metamoji/cm/CmTaskManager;->ensureRunOnBackground(Ljava/lang/Runnable;Lcom/metamoji/cm/CmTaskManager$ICancellable;Lcom/metamoji/cm/CmTaskManager$IOnCompleted;)V

    :cond_1
    return-void
.end method

.method static synthetic lambda$onNormalDocumentOpening$19(Lcom/metamoji/nt/NtEditorWindowController;)V
    .locals 1

    .line 1181
    invoke-virtual {p0}, Lcom/metamoji/nt/NtEditorWindowController;->getEditorDelegate()Lcom/metamoji/nt/INtEditor;

    move-result-object v0

    check-cast v0, Lcom/metamoji/noteanytime/EditorActivity;

    if-eqz v0, :cond_0

    .line 1183
    invoke-virtual {v0}, Lcom/metamoji/noteanytime/EditorActivity;->hideAttentionArea()V

    .line 1187
    :cond_0
    invoke-static {}, Lcom/metamoji/forSchool/ScSchoolManager;->sharedInstance()Lcom/metamoji/forSchool/ScSchoolManager;

    move-result-object v0

    invoke-virtual {p0}, Lcom/metamoji/nt/NtEditorWindowController;->getDocument()Lcom/metamoji/nt/NtDocument;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/metamoji/forSchool/ScSchoolManager;->initMode2Info(Lcom/metamoji/nt/NtDocument;)V

    return-void
.end method

.method static synthetic lambda$showSchoolResetPersonalStatusMenu$20(Ljava/lang/Object;)V
    .locals 0

    .line 1364
    invoke-static {}, Lcom/metamoji/forSchool/ScSchoolCommand;->handleResetPersonalStatusMenuTapped()V

    return-void
.end method

.method static synthetic lambda$waitTillPresenter$16(Lcom/metamoji/ns/direction/NsDirectionManager;Ljava/lang/Runnable;)V
    .locals 2

    .line 993
    invoke-static {}, Lcom/metamoji/ns/NsCollaboManager;->getInstance()Lcom/metamoji/ns/NsCollaboManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/metamoji/ns/NsCollaboManager;->presenterUserInfo()Lcom/metamoji/ns/NsCollaboUserInfo;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 994
    iget-boolean v0, v0, Lcom/metamoji/ns/NsCollaboUserInfo;->isMyself:Z

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/metamoji/ns/direction/NsDirectionManager;->receiveInvoker()Lcom/metamoji/ns/direction/NsRecvInvoker;

    move-result-object p0

    invoke-virtual {p0}, Lcom/metamoji/ns/direction/NsRecvInvoker;->hasNext()Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    .line 997
    :cond_0
    invoke-static {}, Lcom/metamoji/cm/CmTaskManager;->getInstance()Lcom/metamoji/cm/CmTaskManager;

    move-result-object p0

    const-wide/16 v0, 0x3e8

    invoke-virtual {p0, p1, v0, v1}, Lcom/metamoji/cm/CmTaskManager;->safeRunOnUIThreadAsync(Ljava/lang/Runnable;J)Z

    return-void

    .line 995
    :cond_1
    :goto_0
    invoke-static {p1}, Lcom/metamoji/forSchool/ScSchoolCommand;->waitTillPresenter(Ljava/lang/Runnable;)V

    return-void
.end method

.method public static onCollaboDocumentClosed()V
    .locals 2

    .line 1164
    invoke-static {}, Lcom/metamoji/forSchool/ScSchoolManager;->sharedInstance()Lcom/metamoji/forSchool/ScSchoolManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/metamoji/forSchool/ScSchoolManager;->terminateOnCloseCollaboDocument()V

    .line 1166
    invoke-static {}, Lcom/metamoji/forSchool/ScSchoolManager;->sharedInstance()Lcom/metamoji/forSchool/ScSchoolManager;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/metamoji/forSchool/ScSchoolManager;->initMode2Info(Lcom/metamoji/nt/NtDocument;)V

    return-void
.end method

.method public static onCollaboDocumentOpened()V
    .locals 2

    .line 1141
    invoke-static {}, Lcom/metamoji/cm/CmTaskManager;->getInstance()Lcom/metamoji/cm/CmTaskManager;

    move-result-object v0

    new-instance v1, Lcom/metamoji/forSchool/ScSchoolCommand$$ExternalSyntheticLambda27;

    invoke-direct {v1}, Lcom/metamoji/forSchool/ScSchoolCommand$$ExternalSyntheticLambda27;-><init>()V

    invoke-virtual {v0, v1}, Lcom/metamoji/cm/CmTaskManager;->safeRunOnUIThread(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public static onCollaboDocumentOpening(Lcom/metamoji/nt/doceditor/NtDocumentEditor;)V
    .locals 0

    .line 1134
    invoke-static {}, Lcom/metamoji/forSchool/ScSchoolManager;->sharedInstance()Lcom/metamoji/forSchool/ScSchoolManager;

    move-result-object p0

    invoke-virtual {p0}, Lcom/metamoji/forSchool/ScSchoolManager;->initializeOnOpenningCollaboDocument()V

    return-void
.end method

.method public static onNormalDocumentOpening(Lcom/metamoji/nt/doceditor/NtDocumentEditor;)V
    .locals 2

    .line 1177
    invoke-static {}, Lcom/metamoji/nt/NtEditorWindowController;->getInstance()Lcom/metamoji/nt/NtEditorWindowController;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 1179
    invoke-static {}, Lcom/metamoji/cm/CmTaskManager;->getInstance()Lcom/metamoji/cm/CmTaskManager;

    move-result-object v0

    new-instance v1, Lcom/metamoji/forSchool/ScSchoolCommand$$ExternalSyntheticLambda4;

    invoke-direct {v1, p0}, Lcom/metamoji/forSchool/ScSchoolCommand$$ExternalSyntheticLambda4;-><init>(Lcom/metamoji/nt/NtEditorWindowController;)V

    invoke-virtual {v0, v1}, Lcom/metamoji/cm/CmTaskManager;->safeRunOnUIThread(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method

.method public static schoolTeacherModePresenter()V
    .locals 2

    .line 410
    invoke-static {}, Lcom/metamoji/forSchool/ScSchoolManager;->sharedInstance()Lcom/metamoji/forSchool/ScSchoolManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/metamoji/forSchool/ScSchoolManager;->screenLocked()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 411
    invoke-static {}, Lcom/metamoji/forSchool/ScSchoolManager;->sharedInstance()Lcom/metamoji/forSchool/ScSchoolManager;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/metamoji/forSchool/ScSchoolManager;->lockScreen(Z)V

    .line 415
    :cond_0
    invoke-static {}, Lcom/metamoji/forSchool/ScSchoolManager;->sharedInstance()Lcom/metamoji/forSchool/ScSchoolManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/metamoji/forSchool/ScSchoolManager;->isPersonalMode()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 416
    invoke-static {}, Lcom/metamoji/forSchool/ScSchoolManager;->sharedInstance()Lcom/metamoji/forSchool/ScSchoolManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/metamoji/forSchool/ScSchoolManager;->endPersonalMode()V

    .line 420
    :cond_1
    invoke-static {}, Lcom/metamoji/nt/NtEditorWindowController;->getInstance()Lcom/metamoji/nt/NtEditorWindowController;

    move-result-object v0

    .line 421
    invoke-virtual {v0}, Lcom/metamoji/nt/NtEditorWindowController;->getCommandManager()Lcom/metamoji/nt/NtCommandManager;

    move-result-object v0

    sget-object v1, Lcom/metamoji/nt/NtCommand;->CMD_SCHOOL_BECOME_PRESENTER_CHECK:Lcom/metamoji/nt/NtCommand;

    invoke-virtual {v0, v1}, Lcom/metamoji/nt/NtCommandManager;->isCommandSurelyEnabled(Lcom/metamoji/nt/NtCommand;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 422
    invoke-static {}, Lcom/metamoji/ns/NsCollaboCommand;->handleCollaboBecomePresenter()V

    :cond_2
    return-void
.end method

.method public static showSchoolResetPersonalStatusMenu(Landroid/view/View;)V
    .locals 6

    .line 1345
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 1348
    new-instance v0, Lcom/metamoji/ui/UiMenuItem;

    invoke-direct {v0}, Lcom/metamoji/ui/UiMenuItem;-><init>()V

    .line 1349
    sget v2, Lcom/metamoji/noteanytime/R$string;->SchoolMenu_Reset_Personal_Status:I

    invoke-virtual {v0, v2}, Lcom/metamoji/ui/UiMenuItem;->set_captionid(I)V

    .line 1350
    sget-object v2, Lcom/metamoji/ui/UiMenuItem$MenuKind;->NORMAL:Lcom/metamoji/ui/UiMenuItem$MenuKind;

    invoke-virtual {v0, v2}, Lcom/metamoji/ui/UiMenuItem;->set_kind(Lcom/metamoji/ui/UiMenuItem$MenuKind;)V

    .line 1351
    invoke-static {}, Lcom/metamoji/nt/NtLocaleUtils;->getCurrentLocale()Lcom/metamoji/nt/NtLocale;

    move-result-object v2

    sget-object v3, Lcom/metamoji/nt/NtLocale;->ja:Lcom/metamoji/nt/NtLocale;

    if-ne v2, v3, :cond_0

    .line 1352
    sget v2, Lcom/metamoji/noteanytime/R$drawable;->mnu_icon_school_reset_personal_status_jp:I

    invoke-virtual {v0, v2}, Lcom/metamoji/ui/UiMenuItem;->set_NormalIcon_resid(I)V

    goto :goto_0

    .line 1354
    :cond_0
    sget v2, Lcom/metamoji/noteanytime/R$drawable;->mnu_icon_school_reset_personal_status:I

    invoke-virtual {v0, v2}, Lcom/metamoji/ui/UiMenuItem;->set_NormalIcon_resid(I)V

    .line 1356
    :goto_0
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1359
    invoke-static {}, Lcom/metamoji/nt/NtEditorWindowController;->getCurrentActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Lcom/metamoji/noteanytime/EditorActivity;

    if-nez v0, :cond_1

    return-void

    .line 1364
    :cond_1
    sget-object v3, Lcom/metamoji/ui/CustomMenuView$MenuDirection;->MENU_DOWN:Lcom/metamoji/ui/CustomMenuView$MenuDirection;

    new-instance v5, Lcom/metamoji/forSchool/ScSchoolCommand$$ExternalSyntheticLambda11;

    invoke-direct {v5}, Lcom/metamoji/forSchool/ScSchoolCommand$$ExternalSyntheticLambda11;-><init>()V

    const/4 v4, 0x1

    move-object v2, p0

    invoke-virtual/range {v0 .. v5}, Lcom/metamoji/noteanytime/EditorActivity;->showActionMenu(Ljava/util/ArrayList;Landroid/view/View;Lcom/metamoji/ui/CustomMenuView$MenuDirection;ZLcom/metamoji/noteanytime/EditorActivity$Completion;)V

    return-void
.end method

.method public static startPersonalMode(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 6

    .line 780
    invoke-static {}, Lcom/metamoji/nt/NtEditorWindowController;->getInstance()Lcom/metamoji/nt/NtEditorWindowController;

    move-result-object v0

    .line 781
    invoke-virtual {v0}, Lcom/metamoji/nt/NtEditorWindowController;->getMainSheet()Lcom/metamoji/nt/NtNoteController;

    move-result-object v0

    .line 782
    invoke-virtual {v0, p0}, Lcom/metamoji/nt/NtNoteController;->getBelongGroupDic(Ljava/lang/String;)Ljava/util/Map;

    move-result-object v1

    const/4 v2, 0x0

    if-nez v1, :cond_0

    return v2

    .line 789
    :cond_0
    invoke-virtual {v0}, Lcom/metamoji/nt/NtNoteController;->getCurrentPage()Lcom/metamoji/nt/NtPageController;

    move-result-object v0

    .line 790
    invoke-virtual {v0}, Lcom/metamoji/nt/NtPageController;->getSchoolPageType()I

    move-result v3

    const/4 v4, 0x2

    const/4 v5, 0x1

    if-ne v3, v4, :cond_1

    .line 791
    const-string p0, "group-id"

    invoke-static {v1, p0}, Lcom/metamoji/ns/NsCollaboUtils;->GetValue(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    .line 792
    const-string p1, "group-name"

    invoke-static {v1, p1}, Lcom/metamoji/ns/NsCollaboUtils;->GetValue(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    .line 794
    invoke-static {}, Lcom/metamoji/forSchool/ScSchoolManager;->sharedInstance()Lcom/metamoji/forSchool/ScSchoolManager;

    move-result-object v0

    invoke-virtual {v0, v5, p0, p1}, Lcom/metamoji/forSchool/ScSchoolManager;->startPersonalMode(ZLjava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 795
    :cond_1
    invoke-virtual {v0}, Lcom/metamoji/nt/NtPageController;->getSchoolPageType()I

    move-result v0

    if-ne v0, v5, :cond_2

    .line 797
    invoke-static {}, Lcom/metamoji/forSchool/ScSchoolManager;->sharedInstance()Lcom/metamoji/forSchool/ScSchoolManager;

    move-result-object v0

    invoke-virtual {v0, v2, p0, p1}, Lcom/metamoji/forSchool/ScSchoolManager;->startPersonalMode(ZLjava/lang/String;Ljava/lang/String;)V

    .line 801
    :cond_2
    :goto_0
    invoke-static {}, Lcom/metamoji/nt/NtEditorWindowController;->getCurrentActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p0

    invoke-static {p0}, Lcom/metamoji/cm/CmUtils;->isTabletSize(Landroidx/fragment/app/FragmentActivity;)Z

    move-result p0

    if-nez p0, :cond_3

    .line 802
    invoke-static {}, Lcom/metamoji/nt/NtEditorWindowController;->getInstance()Lcom/metamoji/nt/NtEditorWindowController;

    move-result-object p0

    if-eqz p0, :cond_3

    .line 804
    invoke-virtual {p0}, Lcom/metamoji/nt/NtEditorWindowController;->getCollaboModeBar()Lcom/metamoji/ns/ui/NsCollaboModeViewBase;

    move-result-object p0

    check-cast p0, Lcom/metamoji/ns/ui/NsCollaboModeDialog;

    .line 805
    invoke-virtual {p0}, Lcom/metamoji/ns/ui/NsCollaboModeDialog;->closeView()V

    :cond_3
    return v5
.end method

.method public static startPersonalModeByAttentionUser()V
    .locals 3

    .line 1955
    invoke-static {}, Lcom/metamoji/nt/NtEditorWindowController;->getInstance()Lcom/metamoji/nt/NtEditorWindowController;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 1956
    invoke-virtual {v0}, Lcom/metamoji/nt/NtEditorWindowController;->getCommandManager()Lcom/metamoji/nt/NtCommandManager;

    move-result-object v0

    sget-object v1, Lcom/metamoji/nt/NtCommand;->CMD_SCHOOL_ATTENTION_START_INNER_EXEC:Lcom/metamoji/nt/NtCommand;

    invoke-virtual {v0, v1}, Lcom/metamoji/nt/NtCommandManager;->isCommandSurelyEnabled(Lcom/metamoji/nt/NtCommand;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 1960
    :cond_0
    invoke-static {}, Lcom/metamoji/forSchool/ScSchoolCommand;->attentionUserInfoDicForEditor()Ljava/util/Map;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 1962
    const-string v1, "dcUserId"

    invoke-static {v0, v1}, Lcom/metamoji/ns/NsCollaboUtils;->GetValue(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1}, Lcom/metamoji/cm/CmUtils;->toString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 1963
    const-string v2, "userName"

    invoke-static {v0, v2}, Lcom/metamoji/ns/NsCollaboUtils;->GetValue(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lcom/metamoji/cm/CmUtils;->toString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 1964
    invoke-static {v1, v0}, Lcom/metamoji/forSchool/ScSchoolCommand;->startPersonalMode(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 1968
    invoke-static {}, Lcom/metamoji/forSchool/ScSchoolManager;->sharedInstance()Lcom/metamoji/forSchool/ScSchoolManager;

    move-result-object v0

    .line 1969
    invoke-virtual {v0}, Lcom/metamoji/forSchool/ScSchoolManager;->isPersonalMode()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1970
    invoke-virtual {v0}, Lcom/metamoji/forSchool/ScSchoolManager;->endPersonalMode()V

    return-void

    .line 1971
    :cond_1
    invoke-virtual {v0}, Lcom/metamoji/forSchool/ScSchoolManager;->isFeaturedPersonalMode()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1972
    invoke-static {}, Lcom/metamoji/forSchool/ScSchoolCommand;->handleSchoolTeacherModeFree()V

    :cond_2
    :goto_0
    return-void
.end method

.method public static startPersonalModeBySubmitUser()V
    .locals 3

    .line 2054
    invoke-static {}, Lcom/metamoji/nt/NtEditorWindowController;->getInstance()Lcom/metamoji/nt/NtEditorWindowController;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2056
    invoke-virtual {v0}, Lcom/metamoji/nt/NtEditorWindowController;->getCommandManager()Lcom/metamoji/nt/NtCommandManager;

    move-result-object v1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    if-eqz v1, :cond_2

    .line 2058
    sget-object v2, Lcom/metamoji/nt/NtCommand;->CMD_SCHOOL_SUBMITTER_START_INNER_EXEC:Lcom/metamoji/nt/NtCommand;

    invoke-virtual {v1, v2}, Lcom/metamoji/nt/NtCommandManager;->isCommandSurelyEnabled(Lcom/metamoji/nt/NtCommand;)Z

    move-result v1

    if-nez v1, :cond_1

    goto :goto_1

    .line 2063
    :cond_1
    invoke-virtual {v0}, Lcom/metamoji/nt/NtEditorWindowController;->getDocument()Lcom/metamoji/nt/NtDocument;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 2065
    const-string v1, "MMJNsShareSettings"

    invoke-virtual {v0, v1}, Lcom/metamoji/nt/NtDocument;->getDocumentSettingsForType(Ljava/lang/String;)Lcom/metamoji/df/controller/ISettings;

    move-result-object v0

    check-cast v0, Lcom/metamoji/ns/NsCollaboSettings;

    if-eqz v0, :cond_2

    .line 2067
    invoke-virtual {v0}, Lcom/metamoji/ns/NsCollaboSettings;->getSubmitterDcUserId()Ljava/lang/String;

    move-result-object v1

    .line 2068
    invoke-virtual {v0}, Lcom/metamoji/ns/NsCollaboSettings;->getSubmitterNickName()Ljava/lang/String;

    move-result-object v0

    .line 2069
    invoke-static {v1, v0}, Lcom/metamoji/forSchool/ScSchoolCommand;->startPersonalMode(Ljava/lang/String;Ljava/lang/String;)Z

    :cond_2
    :goto_1
    return-void
.end method

.method public static waitTillPresenter(Ljava/lang/Runnable;)V
    .locals 5

    .line 986
    invoke-static {}, Lcom/metamoji/nt/NtEditorWindowController;->getInstance()Lcom/metamoji/nt/NtEditorWindowController;

    move-result-object v0

    .line 987
    invoke-virtual {v0}, Lcom/metamoji/nt/NtEditorWindowController;->getDocument()Lcom/metamoji/nt/NtDocument;

    move-result-object v0

    invoke-virtual {v0}, Lcom/metamoji/nt/NtDocument;->getDirectionManager()Lcom/metamoji/ns/direction/NsDirectionManager;

    move-result-object v0

    if-nez v0, :cond_0

    .line 989
    invoke-interface {p0}, Ljava/lang/Runnable;->run()V

    .line 992
    :cond_0
    invoke-static {}, Lcom/metamoji/cm/CmTaskManager;->getInstance()Lcom/metamoji/cm/CmTaskManager;

    move-result-object v1

    new-instance v2, Lcom/metamoji/forSchool/ScSchoolCommand$$ExternalSyntheticLambda19;

    invoke-direct {v2, v0, p0}, Lcom/metamoji/forSchool/ScSchoolCommand$$ExternalSyntheticLambda19;-><init>(Lcom/metamoji/ns/direction/NsDirectionManager;Ljava/lang/Runnable;)V

    const-wide/16 v3, 0x3e8

    const/4 p0, 0x0

    invoke-virtual {v1, v2, v3, v4, p0}, Lcom/metamoji/cm/CmTaskManager;->requestRunOnBackground(Ljava/lang/Runnable;JLcom/metamoji/cm/CmTaskManager$IOnCompleted;)Ljava/util/concurrent/ScheduledFuture;

    return-void
.end method
