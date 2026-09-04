.class Lcom/metamoji/ui/cabinet/FolderTreeViewFragment$4;
.super Lcom/metamoji/ui/cabinet/TreeAdapter;
.source "FolderTreeViewFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/metamoji/ui/cabinet/FolderTreeViewFragment;->initAdapter()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/metamoji/ui/cabinet/TreeAdapter<",
        "Lcom/metamoji/ui/cabinet/CabinetTreeItem;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/metamoji/ui/cabinet/FolderTreeViewFragment;

.field final synthetic val$context:Landroid/content/Context;


# direct methods
.method constructor <init>(Lcom/metamoji/ui/cabinet/FolderTreeViewFragment;Landroid/content/Context;ILjava/util/List;Landroid/content/Context;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x0,
            0x0,
            0x0,
            0x1010
        }
        names = {
            null,
            null,
            null,
            null,
            null
        }
    .end annotation

    .line 340
    iput-object p1, p0, Lcom/metamoji/ui/cabinet/FolderTreeViewFragment$4;->this$0:Lcom/metamoji/ui/cabinet/FolderTreeViewFragment;

    iput-object p5, p0, Lcom/metamoji/ui/cabinet/FolderTreeViewFragment$4;->val$context:Landroid/content/Context;

    invoke-direct {p0, p2, p3, p4}, Lcom/metamoji/ui/cabinet/TreeAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    return-void
.end method


# virtual methods
.method public getChildObjects(Lcom/metamoji/ui/cabinet/CabinetTreeItem;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/metamoji/ui/cabinet/CabinetTreeItem;",
            ")",
            "Ljava/util/List<",
            "Lcom/metamoji/ui/cabinet/CabinetTreeItem;",
            ">;"
        }
    .end annotation

    .line 569
    :try_start_0
    invoke-virtual {p1}, Lcom/metamoji/ui/cabinet/CabinetTreeItem;->getChildren()Ljava/util/List;

    move-result-object p1
    :try_end_0
    .catch Lcom/metamoji/cm/CmException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    .line 571
    const-string v0, "[FolderTreeViewFragment] :: ERROR getChildObjects:"

    invoke-static {p1, v0}, Lcom/metamoji/cm/CmLog;->error(Ljava/lang/Throwable;Ljava/lang/String;)V

    .line 572
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    return-object p1
.end method

.method public bridge synthetic getChildObjects(Ljava/lang/Object;)Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            null
        }
    .end annotation

    .line 340
    check-cast p1, Lcom/metamoji/ui/cabinet/CabinetTreeItem;

    invoke-virtual {p0, p1}, Lcom/metamoji/ui/cabinet/FolderTreeViewFragment$4;->getChildObjects(Lcom/metamoji/ui/cabinet/CabinetTreeItem;)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method public getTreeItemView(Lcom/metamoji/ui/cabinet/CabinetTreeItem;ZI)Landroid/view/View;
    .locals 16

    move-object/from16 v1, p0

    move-object/from16 v3, p1

    .line 345
    new-instance v6, Landroid/widget/LinearLayout;

    iget-object v0, v1, Lcom/metamoji/ui/cabinet/FolderTreeViewFragment$4;->val$context:Landroid/content/Context;

    invoke-direct {v6, v0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 346
    new-instance v0, Landroid/view/ViewGroup$LayoutParams;

    const/4 v7, -0x2

    invoke-direct {v0, v7, v7}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v6, v0}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const/4 v8, 0x0

    .line 348
    invoke-virtual {v6, v8}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 350
    invoke-virtual/range {p0 .. p1}, Lcom/metamoji/ui/cabinet/FolderTreeViewFragment$4;->getChildObjects(Lcom/metamoji/ui/cabinet/CabinetTreeItem;)Ljava/util/List;

    move-result-object v0

    .line 351
    new-instance v2, Landroid/widget/ImageView;

    iget-object v4, v1, Lcom/metamoji/ui/cabinet/FolderTreeViewFragment$4;->val$context:Landroid/content/Context;

    invoke-direct {v2, v4}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 359
    new-instance v4, Landroid/widget/LinearLayout$LayoutParams;

    sget v5, Lcom/metamoji/ui/cabinet/CabinetDef;->FOLDER_TREE_INDENT_WIDTH:I

    const/4 v9, -0x1

    invoke-direct {v4, v5, v9}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    const/16 v5, 0x14

    .line 361
    invoke-virtual {v4, v5, v8, v8, v8}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    if-eqz v0, :cond_1

    .line 362
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_1

    .line 363
    invoke-virtual {v2, v4}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    if-eqz p2, :cond_0

    .line 365
    sget v0, Lcom/metamoji/noteanytime/R$drawable;->cabinet_tree_arrow_bottom:I

    invoke-virtual {v2, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    .line 367
    :cond_0
    sget v0, Lcom/metamoji/noteanytime/R$drawable;->cabinet_tree_arrow_right:I

    invoke-virtual {v2, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    .line 371
    :cond_1
    invoke-virtual {v2, v4}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :goto_0
    const/4 v9, 0x1

    .line 373
    invoke-virtual {v2, v9}, Landroid/widget/ImageView;->setAdjustViewBounds(Z)V

    .line 374
    sget-object v0, Landroid/widget/ImageView$ScaleType;->CENTER:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v2, v0}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 375
    new-instance v0, Lcom/metamoji/ui/cabinet/FolderTreeViewFragment$4$1;

    invoke-direct {v0, v1, v3}, Lcom/metamoji/ui/cabinet/FolderTreeViewFragment$4$1;-><init>(Lcom/metamoji/ui/cabinet/FolderTreeViewFragment$4;Lcom/metamoji/ui/cabinet/CabinetTreeItem;)V

    invoke-virtual {v2, v0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 383
    new-instance v4, Lcom/metamoji/ui/cabinet/TreeIconView;

    iget-object v0, v1, Lcom/metamoji/ui/cabinet/FolderTreeViewFragment$4;->val$context:Landroid/content/Context;

    invoke-direct {v4, v0}, Lcom/metamoji/ui/cabinet/TreeIconView;-><init>(Landroid/content/Context;)V

    .line 384
    const-string v0, "FolderTreeViewFragment.iconImage"

    invoke-virtual {v4, v0}, Lcom/metamoji/ui/cabinet/TreeIconView;->setTag(Ljava/lang/Object;)V

    .line 385
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    sget v5, Lcom/metamoji/ui/cabinet/CabinetDef;->FOLDER_TREE_ICON_SIZE:I

    sget v10, Lcom/metamoji/ui/cabinet/CabinetDef;->FOLDER_TREE_ICON_SIZE:I

    invoke-direct {v0, v5, v10}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 387
    invoke-virtual {v4, v0}, Lcom/metamoji/ui/cabinet/TreeIconView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 388
    invoke-virtual {v4, v9}, Lcom/metamoji/ui/cabinet/TreeIconView;->setAdjustViewBounds(Z)V

    .line 391
    new-instance v5, Landroid/widget/ImageView;

    iget-object v0, v1, Lcom/metamoji/ui/cabinet/FolderTreeViewFragment$4;->val$context:Landroid/content/Context;

    invoke-direct {v5, v0}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 392
    const-string v0, "FolderTreeViewFragment.selectedIconImage"

    invoke-virtual {v5, v0}, Landroid/widget/ImageView;->setTag(Ljava/lang/Object;)V

    .line 393
    new-instance v0, Landroid/view/ViewGroup$LayoutParams;

    sget v10, Lcom/metamoji/ui/cabinet/CabinetDef;->FOLDER_TREE_ICON_SIZE:I

    sget v11, Lcom/metamoji/ui/cabinet/CabinetDef;->FOLDER_TREE_ICON_SIZE:I

    invoke-direct {v0, v10, v11}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v5, v0}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 395
    invoke-virtual {v5, v9}, Landroid/widget/ImageView;->setAdjustViewBounds(Z)V

    .line 397
    invoke-virtual {v3}, Lcom/metamoji/ui/cabinet/CabinetTreeItem;->getType()Lcom/metamoji/ui/cabinet/CabinetTreeItem$Type;

    move-result-object v0

    .line 398
    sget-object v10, Lcom/metamoji/ui/cabinet/CabinetTreeItem$Type;->RECYCLE_BIN:Lcom/metamoji/ui/cabinet/CabinetTreeItem$Type;

    if-ne v0, v10, :cond_2

    .line 399
    invoke-static {}, Lcom/metamoji/ui/cabinet/FolderTreeViewFragment;->-$$Nest$sfget_deletedNoteCount()I

    move-result v10

    invoke-virtual {v4, v10}, Lcom/metamoji/ui/cabinet/TreeIconView;->setNoteCount(I)V

    .line 402
    :cond_2
    invoke-virtual {v6, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 405
    new-instance v10, Ljava/lang/Thread;

    move-object v2, v0

    new-instance v0, Lcom/metamoji/ui/cabinet/FolderTreeViewFragment$4$2;

    invoke-direct/range {v0 .. v5}, Lcom/metamoji/ui/cabinet/FolderTreeViewFragment$4$2;-><init>(Lcom/metamoji/ui/cabinet/FolderTreeViewFragment$4;Lcom/metamoji/ui/cabinet/CabinetTreeItem$Type;Lcom/metamoji/ui/cabinet/CabinetTreeItem;Lcom/metamoji/ui/cabinet/TreeIconView;Landroid/widget/ImageView;)V

    move-object v11, v4

    move-object v12, v5

    invoke-direct {v10, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 422
    invoke-virtual {v10}, Ljava/lang/Thread;->start()V

    .line 424
    invoke-static {}, Lcom/metamoji/ui/cabinet/FolderTreeViewFragment;->getCurrentFolder()Lcom/metamoji/ui/cabinet/CabinetTreeItem;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/metamoji/ui/cabinet/CabinetTreeItem;->equals(Ljava/lang/Object;)Z

    move-result v10

    const/4 v13, 0x4

    if-eqz v10, :cond_3

    .line 426
    invoke-virtual {v11, v13}, Lcom/metamoji/ui/cabinet/TreeIconView;->setVisibility(I)V

    .line 427
    invoke-virtual {v12, v8}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_1

    .line 429
    :cond_3
    invoke-virtual {v11, v8}, Lcom/metamoji/ui/cabinet/TreeIconView;->setVisibility(I)V

    .line 430
    invoke-virtual {v12, v13}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 435
    :goto_1
    invoke-virtual {v3}, Lcom/metamoji/ui/cabinet/CabinetTreeItem;->getType()Lcom/metamoji/ui/cabinet/CabinetTreeItem$Type;

    move-result-object v0

    sget-object v4, Lcom/metamoji/ui/cabinet/CabinetTreeItem$Type;->SHARED_DRIVE_PARENT:Lcom/metamoji/ui/cabinet/CabinetTreeItem$Type;

    if-ne v0, v4, :cond_4

    invoke-static {}, Lcom/metamoji/forSchool/ScSchoolManager;->sharedInstance()Lcom/metamoji/forSchool/ScSchoolManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/metamoji/forSchool/ScSchoolManager;->isTeacher()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 436
    invoke-static {}, Lcom/metamoji/dvm/DvmDriveManager;->getInstance()Lcom/metamoji/dvm/DvmDriveManager;

    move-result-object v0

    const/4 v4, 0x0

    .line 437
    invoke-virtual {v0, v4, v9, v9}, Lcom/metamoji/dvm/DvmDriveManager;->getDrivesByGroupId(Ljava/lang/String;ZZ)Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_6

    .line 438
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_5

    goto :goto_2

    .line 442
    :cond_4
    invoke-virtual {v3}, Lcom/metamoji/ui/cabinet/CabinetTreeItem;->getType()Lcom/metamoji/ui/cabinet/CabinetTreeItem$Type;

    move-result-object v0

    sget-object v4, Lcom/metamoji/ui/cabinet/CabinetTreeItem$Type;->CRBOX_OLD:Lcom/metamoji/ui/cabinet/CabinetTreeItem$Type;

    if-ne v0, v4, :cond_5

    goto :goto_2

    :cond_5
    move v8, v9

    .line 448
    :cond_6
    :goto_2
    new-instance v0, Lcom/metamoji/ui/cabinet/FolderTreeViewFragment$4$3;

    move-object v3, v2

    iget-object v2, v1, Lcom/metamoji/ui/cabinet/FolderTreeViewFragment$4;->val$context:Landroid/content/Context;

    move-object/from16 v4, p1

    move/from16 v5, p3

    invoke-direct/range {v0 .. v5}, Lcom/metamoji/ui/cabinet/FolderTreeViewFragment$4$3;-><init>(Lcom/metamoji/ui/cabinet/FolderTreeViewFragment$4;Landroid/content/Context;Lcom/metamoji/ui/cabinet/CabinetTreeItem$Type;Lcom/metamoji/ui/cabinet/CabinetTreeItem;I)V

    move-object v3, v4

    .line 486
    new-instance v2, Landroid/widget/LinearLayout;

    iget-object v4, v1, Lcom/metamoji/ui/cabinet/FolderTreeViewFragment$4;->val$context:Landroid/content/Context;

    invoke-direct {v2, v4}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 487
    new-instance v4, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v4, v7, v7}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v2, v4}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 489
    invoke-virtual {v2, v9}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 491
    new-instance v4, Landroid/view/View;

    iget-object v5, v1, Lcom/metamoji/ui/cabinet/FolderTreeViewFragment$4;->val$context:Landroid/content/Context;

    invoke-direct {v4, v5}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 492
    new-instance v5, Landroid/view/ViewGroup$LayoutParams;

    sget v14, Lcom/metamoji/ui/cabinet/CabinetDef;->FOLDER_TREE_ICON_SIZE:I

    sget v15, Lcom/metamoji/ui/cabinet/CabinetDef;->FOLDER_TREE_DUMY_VIEW_SIZE:I

    invoke-direct {v5, v14, v15}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v4, v5}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 494
    invoke-virtual {v2, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 496
    new-instance v4, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v4, v7, v7}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 498
    invoke-virtual {v0, v4}, Landroid/widget/FrameLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 500
    invoke-virtual {v0, v11}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 501
    invoke-virtual {v0, v12}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 503
    invoke-virtual {v2, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 504
    invoke-virtual {v6, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 507
    new-instance v0, Landroid/view/View;

    iget-object v2, v1, Lcom/metamoji/ui/cabinet/FolderTreeViewFragment$4;->val$context:Landroid/content/Context;

    invoke-direct {v0, v2}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 508
    new-instance v2, Landroid/view/ViewGroup$LayoutParams;

    sget v4, Lcom/metamoji/ui/cabinet/CabinetDef;->FOLDER_TREE_DUMY_VIEW_SIZE:I

    sget v5, Lcom/metamoji/ui/cabinet/CabinetDef;->FOLDER_TREE_VIEW_HEIGHT:I

    invoke-direct {v2, v4, v5}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 510
    invoke-virtual {v6, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 512
    iget-object v0, v1, Lcom/metamoji/ui/cabinet/FolderTreeViewFragment$4;->val$context:Landroid/content/Context;

    invoke-virtual {v3}, Lcom/metamoji/ui/cabinet/CabinetTreeItem;->getLabelName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2, v10, v8}, Lcom/metamoji/ui/cabinet/FolderTreeViewFragment;->-$$Nest$smcreateTextView(Landroid/content/Context;Ljava/lang/String;ZZ)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v6, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 514
    new-instance v0, Lcom/metamoji/ui/cabinet/FolderTreeViewFragment$4$4;

    invoke-direct {v0, v1, v3}, Lcom/metamoji/ui/cabinet/FolderTreeViewFragment$4$4;-><init>(Lcom/metamoji/ui/cabinet/FolderTreeViewFragment$4;Lcom/metamoji/ui/cabinet/CabinetTreeItem;)V

    invoke-virtual {v6, v0}, Landroid/widget/LinearLayout;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 526
    new-instance v0, Lcom/metamoji/ui/cabinet/FolderTreeViewFragment$4$5;

    invoke-direct {v0, v1, v3}, Lcom/metamoji/ui/cabinet/FolderTreeViewFragment$4$5;-><init>(Lcom/metamoji/ui/cabinet/FolderTreeViewFragment$4;Lcom/metamoji/ui/cabinet/CabinetTreeItem;)V

    invoke-virtual {v6, v0}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 536
    new-instance v0, Landroid/widget/FrameLayout;

    iget-object v2, v1, Lcom/metamoji/ui/cabinet/FolderTreeViewFragment$4;->val$context:Landroid/content/Context;

    invoke-direct {v0, v2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 537
    new-instance v2, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v2, v7, v7}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v2}, Landroid/widget/FrameLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 540
    invoke-virtual {v0, v6}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 542
    new-instance v2, Landroid/widget/ImageView;

    iget-object v3, v1, Lcom/metamoji/ui/cabinet/FolderTreeViewFragment$4;->val$context:Landroid/content/Context;

    invoke-direct {v2, v3}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 543
    const-string v3, "FolderTreeViewFragment.upperLine"

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setTag(Ljava/lang/Object;)V

    .line 544
    invoke-virtual {v2, v13}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 545
    new-instance v3, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v3, v7, v7}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 547
    sget v3, Lcom/metamoji/ui/cabinet/CabinetDef;->FOLDER_TREE_ICON_SIZE:I

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setMaxHeight(I)V

    .line 548
    invoke-virtual {v2, v9}, Landroid/widget/ImageView;->setAdjustViewBounds(Z)V

    .line 549
    sget v3, Lcom/metamoji/noteanytime/R$drawable;->cabinet_tree_upper_line:I

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 551
    new-instance v3, Landroid/widget/ImageView;

    iget-object v4, v1, Lcom/metamoji/ui/cabinet/FolderTreeViewFragment$4;->val$context:Landroid/content/Context;

    invoke-direct {v3, v4}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 552
    const-string v4, "FolderTreeViewFragment.underLine"

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setTag(Ljava/lang/Object;)V

    .line 553
    invoke-virtual {v3, v13}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 554
    new-instance v4, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v4, v7, v7}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 556
    sget v4, Lcom/metamoji/ui/cabinet/CabinetDef;->FOLDER_TREE_ICON_SIZE:I

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setMaxHeight(I)V

    .line 557
    invoke-virtual {v3, v9}, Landroid/widget/ImageView;->setAdjustViewBounds(Z)V

    .line 558
    sget v4, Lcom/metamoji/noteanytime/R$drawable;->cabinet_tree_under_line:I

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 560
    invoke-virtual {v0, v2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 561
    invoke-virtual {v0, v3}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    return-object v0
.end method

.method public bridge synthetic getTreeItemView(Ljava/lang/Object;ZI)Landroid/view/View;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x1010,
            0x1010
        }
        names = {
            null,
            null,
            null
        }
    .end annotation

    .line 340
    check-cast p1, Lcom/metamoji/ui/cabinet/CabinetTreeItem;

    invoke-virtual {p0, p1, p2, p3}, Lcom/metamoji/ui/cabinet/FolderTreeViewFragment$4;->getTreeItemView(Lcom/metamoji/ui/cabinet/CabinetTreeItem;ZI)Landroid/view/View;

    move-result-object p1

    return-object p1
.end method
