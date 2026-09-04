.class Lcom/metamoji/forSchool/ui/ScScoreListDialog$15;
.super Ljava/lang/Object;
.source "ScScoreListDialog.java"

# interfaces
.implements Lcom/metamoji/forSchool/ui/UiHeaderListView$IHeaderListViewCellTapAction;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/metamoji/forSchool/ui/ScScoreListDialog;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/metamoji/forSchool/ui/ScScoreListDialog;

.field final synthetic val$dlg:Landroid/view/View;


# direct methods
.method constructor <init>(Lcom/metamoji/forSchool/ui/ScScoreListDialog;Landroid/view/View;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010
        }
        names = {
            null,
            null
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 518
    iput-object p1, p0, Lcom/metamoji/forSchool/ui/ScScoreListDialog$15;->this$0:Lcom/metamoji/forSchool/ui/ScScoreListDialog;

    iput-object p2, p0, Lcom/metamoji/forSchool/ui/ScScoreListDialog$15;->val$dlg:Landroid/view/View;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public cellTap(IILandroid/graphics/Rect;Z)V
    .locals 14

    if-nez p4, :cond_0

    goto/16 :goto_4

    .line 531
    :cond_0
    iget-object v0, p0, Lcom/metamoji/forSchool/ui/ScScoreListDialog$15;->this$0:Lcom/metamoji/forSchool/ui/ScScoreListDialog;

    iget-object v0, v0, Lcom/metamoji/forSchool/ui/ScScoreListDialog;->m_coupledColumnArray:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v2, 0x0

    move v3, v2

    move v4, v3

    move v5, v4

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    const/4 v7, 0x0

    const/4 v8, 0x1

    if-eqz v6, :cond_6

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/Map;

    if-nez v6, :cond_1

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 535
    :cond_1
    const-string v9, "span"

    invoke-interface {v6, v9}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_2

    add-int/lit8 v3, v3, 0x1

    .line 538
    :try_start_0
    invoke-interface {v6, v9}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Integer;

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v9
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    add-int/2addr v3, v9

    :catch_0
    :cond_2
    :goto_1
    move/from16 v9, p2

    if-ge v9, v3, :cond_5

    .line 544
    const-string v0, "roomId"

    const-string v3, "title"

    if-nez v6, :cond_4

    .line 545
    iget-object v6, p0, Lcom/metamoji/forSchool/ui/ScScoreListDialog$15;->this$0:Lcom/metamoji/forSchool/ui/ScScoreListDialog;

    iget-object v6, v6, Lcom/metamoji/forSchool/ui/ScScoreListDialog;->m_coupledColumnArray:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    const/4 v9, 0x2

    if-ne v6, v9, :cond_6

    .line 547
    iget-object v6, p0, Lcom/metamoji/forSchool/ui/ScScoreListDialog$15;->this$0:Lcom/metamoji/forSchool/ui/ScScoreListDialog;

    iget-object v6, v6, Lcom/metamoji/forSchool/ui/ScScoreListDialog;->m_coupledColumnArray:Ljava/util/List;

    invoke-interface {v6, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/Map;

    .line 548
    invoke-interface {v6, v3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 550
    :try_start_1
    invoke-interface {v6, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move v4, v8

    move v5, v4

    goto :goto_2

    :catch_1
    :cond_3
    move-object v0, v7

    :goto_2
    move v3, v4

    move-object v4, v0

    goto :goto_3

    .line 558
    :cond_4
    invoke-interface {v6, v3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 560
    :try_start_2
    invoke-interface {v6, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_2

    :cond_5
    add-int/lit8 v4, v4, 0x1

    move v5, v3

    goto :goto_0

    :catch_2
    :cond_6
    move v3, v4

    move-object v4, v7

    :goto_3
    if-eqz v4, :cond_d

    .line 570
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_7

    goto/16 :goto_4

    .line 574
    :cond_7
    iget-object v0, p0, Lcom/metamoji/forSchool/ui/ScScoreListDialog$15;->this$0:Lcom/metamoji/forSchool/ui/ScScoreListDialog;

    iget-object v0, v0, Lcom/metamoji/forSchool/ui/ScScoreListDialog;->m_originalDataArray:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lt p1, v0, :cond_8

    goto/16 :goto_4

    .line 577
    :cond_8
    iget-object v0, p0, Lcom/metamoji/forSchool/ui/ScScoreListDialog$15;->this$0:Lcom/metamoji/forSchool/ui/ScScoreListDialog;

    iget-object v0, v0, Lcom/metamoji/forSchool/ui/ScScoreListDialog;->m_originalDataArray:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object v6, v0

    check-cast v6, Ljava/util/List;

    .line 578
    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_9

    goto/16 :goto_4

    .line 581
    :cond_9
    invoke-interface {v6, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    .line 582
    const-string v9, "userId"

    invoke-interface {v0, v9}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    .line 583
    const-string v10, "userName"

    invoke-interface {v0, v10}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 585
    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    add-int/lit8 v11, v5, 0x1

    .line 588
    invoke-interface {v6, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    if-eqz v11, :cond_a

    .line 591
    new-instance v11, Lcom/metamoji/ui/UiMenuItem;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    sget v13, Lcom/metamoji/noteanytime/R$string;->MMJNT_LSTR_SCOREINFOVIEW_MENU_SCORE:I

    invoke-direct {v11, v12, v7, v13}, Lcom/metamoji/ui/UiMenuItem;-><init>(Ljava/lang/Object;Ljava/lang/Object;I)V

    invoke-virtual {v10, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 595
    :cond_a
    iget-object v11, p0, Lcom/metamoji/forSchool/ui/ScScoreListDialog$15;->this$0:Lcom/metamoji/forSchool/ui/ScScoreListDialog;

    iget-boolean v11, v11, Lcom/metamoji/forSchool/ui/ScScoreListDialog;->EditorMode:Z

    if-eqz v11, :cond_b

    .line 597
    invoke-static {v9}, Lcom/metamoji/forSchool/ScSchoolUtils;->isBelongClassStudentWithUserId(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_b

    .line 598
    invoke-static {}, Lcom/metamoji/ns/NsCollaboManager;->getInstance()Lcom/metamoji/ns/NsCollaboManager;

    move-result-object v11

    invoke-virtual {v11}, Lcom/metamoji/ns/NsCollaboManager;->existPresenter()Z

    move-result v11

    if-nez v11, :cond_b

    invoke-static {}, Lcom/metamoji/forSchool/ScSchoolManager;->sharedInstance()Lcom/metamoji/forSchool/ScSchoolManager;

    move-result-object v11

    invoke-virtual {v11}, Lcom/metamoji/forSchool/ScSchoolManager;->isScreenLock()Z

    move-result v11

    if-nez v11, :cond_b

    .line 599
    invoke-static {}, Lcom/metamoji/forSchool/ScSchoolCommand;->isAttentionMode()Z

    move-result v11

    if-nez v11, :cond_b

    .line 600
    invoke-static {}, Lcom/metamoji/nt/NtEditorWindowController;->getInstance()Lcom/metamoji/nt/NtEditorWindowController;

    move-result-object v11

    if-eqz v11, :cond_b

    .line 602
    invoke-virtual {v11}, Lcom/metamoji/nt/NtEditorWindowController;->getMainSheet()Lcom/metamoji/nt/NtNoteController;

    move-result-object v11

    if-eqz v11, :cond_b

    .line 604
    invoke-virtual {v11}, Lcom/metamoji/nt/NtNoteController;->getCurrentPage()Lcom/metamoji/nt/NtPageController;

    move-result-object v11

    if-eqz v11, :cond_b

    .line 606
    invoke-virtual {v11}, Lcom/metamoji/nt/NtPageController;->getSchoolPageType()I

    move-result v11

    if-ne v11, v8, :cond_b

    .line 609
    new-instance v2, Lcom/metamoji/ui/UiMenuItem;

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    sget v12, Lcom/metamoji/noteanytime/R$string;->SCHOOL_DISPLAY_ANSWER:I

    invoke-direct {v2, v11, v7, v12}, Lcom/metamoji/ui/UiMenuItem;-><init>(Ljava/lang/Object;Ljava/lang/Object;I)V

    invoke-virtual {v10, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move v2, v8

    .line 618
    :cond_b
    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-lez v7, :cond_d

    if-eqz v2, :cond_c

    .line 624
    iget-object v2, p0, Lcom/metamoji/forSchool/ui/ScScoreListDialog$15;->val$dlg:Landroid/view/View;

    sget v7, Lcom/metamoji/noteanytime/R$id;->CustomMenuView:I

    invoke-virtual {v2, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    move-object v11, v2

    check-cast v11, Lcom/metamoji/ui/CustomMenuView;

    move-object v8, v0

    .line 625
    new-instance v0, Lcom/metamoji/forSchool/ui/ScScoreListDialog$15$1;

    move-object v1, v4

    move v4, v3

    move v3, v5

    move-object v5, v1

    move-object v1, p0

    move v2, p1

    move-object v7, v6

    move-object v6, v9

    invoke-direct/range {v0 .. v8}, Lcom/metamoji/forSchool/ui/ScScoreListDialog$15$1;-><init>(Lcom/metamoji/forSchool/ui/ScScoreListDialog$15;IIILjava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/lang/String;)V

    move-object v1, v0

    move-object/from16 v0, p3

    invoke-virtual {v11, v10, v1, v0}, Lcom/metamoji/ui/CustomMenuView;->ShowContextMenu(Ljava/util/ArrayList;Lcom/metamoji/ui/MenuEventListener;Landroid/graphics/Rect;)V

    goto :goto_4

    :cond_c
    move v2, v5

    move-object v5, v9

    .line 643
    iget-object v0, p0, Lcom/metamoji/forSchool/ui/ScScoreListDialog$15;->this$0:Lcom/metamoji/forSchool/ui/ScScoreListDialog;

    move v1, p1

    invoke-static/range {v0 .. v6}, Lcom/metamoji/forSchool/ui/ScScoreListDialog;->-$$Nest$mhandleContextMenuSetScore(Lcom/metamoji/forSchool/ui/ScScoreListDialog;IIILjava/lang/String;Ljava/lang/String;Ljava/util/List;)V

    :cond_d
    :goto_4
    return-void
.end method
