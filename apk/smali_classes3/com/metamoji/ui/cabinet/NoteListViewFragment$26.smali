.class Lcom/metamoji/ui/cabinet/NoteListViewFragment$26;
.super Landroid/widget/ArrayAdapter;
.source "NoteListViewFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/metamoji/ui/cabinet/NoteListViewFragment;->prepareNormalView()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/widget/ArrayAdapter<",
        "Lcom/metamoji/ui/cabinet/NoteListViewFragment$Item;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/metamoji/ui/cabinet/NoteListViewFragment;

.field final synthetic val$nicknameTaskMap:Ljava/util/concurrent/ConcurrentHashMap;

.field final synthetic val$thumbTaskMap:Ljava/util/concurrent/ConcurrentHashMap;


# direct methods
.method constructor <init>(Lcom/metamoji/ui/cabinet/NoteListViewFragment;Landroid/content/Context;ILjava/util/List;Ljava/util/concurrent/ConcurrentHashMap;Ljava/util/concurrent/ConcurrentHashMap;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x0,
            0x0,
            0x0,
            0x1010,
            0x1010
        }
        names = {
            null,
            null,
            null,
            null,
            null,
            null
        }
    .end annotation

    .line 2064
    iput-object p1, p0, Lcom/metamoji/ui/cabinet/NoteListViewFragment$26;->this$0:Lcom/metamoji/ui/cabinet/NoteListViewFragment;

    iput-object p5, p0, Lcom/metamoji/ui/cabinet/NoteListViewFragment$26;->val$thumbTaskMap:Ljava/util/concurrent/ConcurrentHashMap;

    iput-object p6, p0, Lcom/metamoji/ui/cabinet/NoteListViewFragment$26;->val$nicknameTaskMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {p0, p2, p3, p4}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    return-void
.end method


# virtual methods
.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 19

    move-object/from16 v0, p0

    move/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    const/4 v4, 0x0

    if-eqz v2, :cond_1

    .line 2068
    iget-object v5, v0, Lcom/metamoji/ui/cabinet/NoteListViewFragment$26;->val$thumbTaskMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v5, v2}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/concurrent/Future;

    if-eqz v5, :cond_0

    .line 2070
    invoke-interface {v5, v4}, Ljava/util/concurrent/Future;->cancel(Z)Z

    .line 2072
    :cond_0
    iget-object v5, v0, Lcom/metamoji/ui/cabinet/NoteListViewFragment$26;->val$nicknameTaskMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v5, v2}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/concurrent/Future;

    if-eqz v5, :cond_1

    .line 2074
    invoke-interface {v5, v4}, Ljava/util/concurrent/Future;->cancel(Z)Z

    :cond_1
    if-ltz v1, :cond_24

    .line 2077
    iget-object v5, v0, Lcom/metamoji/ui/cabinet/NoteListViewFragment$26;->this$0:Lcom/metamoji/ui/cabinet/NoteListViewFragment;

    invoke-static {v5}, Lcom/metamoji/ui/cabinet/NoteListViewFragment;->-$$Nest$fget_itemList(Lcom/metamoji/ui/cabinet/NoteListViewFragment;)Ljava/util/ArrayList;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-le v5, v1, :cond_24

    iget-object v5, v0, Lcom/metamoji/ui/cabinet/NoteListViewFragment$26;->this$0:Lcom/metamoji/ui/cabinet/NoteListViewFragment;

    invoke-static {v5}, Lcom/metamoji/ui/cabinet/NoteListViewFragment;->-$$Nest$fget_NoteListMode(Lcom/metamoji/ui/cabinet/NoteListViewFragment;)Lcom/metamoji/ui/cabinet/NoteListViewFragment$NoteListModeType;

    move-result-object v5

    sget-object v6, Lcom/metamoji/ui/cabinet/NoteListViewFragment$NoteListModeType;->NoteListModeType_Normal:Lcom/metamoji/ui/cabinet/NoteListViewFragment$NoteListModeType;

    if-eq v5, v6, :cond_2

    goto/16 :goto_11

    .line 2081
    :cond_2
    invoke-virtual/range {p0 .. p1}, Lcom/metamoji/ui/cabinet/NoteListViewFragment$26;->getItem(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/metamoji/ui/cabinet/NoteListViewFragment$Item;

    const/4 v6, 0x0

    if-eqz v2, :cond_3

    .line 2084
    invoke-virtual {v2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/metamoji/ui/cabinet/NoteListViewFragment$NormalViewHolder;

    goto :goto_0

    :cond_3
    move-object v7, v6

    :goto_0
    const/16 v8, 0xe

    const/4 v9, 0x7

    const/4 v10, 0x2

    const/4 v11, 0x1

    if-eqz v2, :cond_5

    if-eqz v7, :cond_4

    .line 2086
    invoke-virtual {v7}, Lcom/metamoji/ui/cabinet/NoteListViewFragment$NormalViewHolder;->getType()I

    move-result v12

    invoke-static {v5}, Lcom/metamoji/ui/cabinet/NoteListViewFragment$Item;->-$$Nest$fget_type(Lcom/metamoji/ui/cabinet/NoteListViewFragment$Item;)I

    move-result v13

    if-eq v12, v13, :cond_4

    goto :goto_1

    .line 2235
    :cond_4
    invoke-virtual {v2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/metamoji/ui/cabinet/NoteListViewFragment$NormalViewHolder;

    goto/16 :goto_4

    .line 2088
    :cond_5
    :goto_1
    invoke-static {v5}, Lcom/metamoji/ui/cabinet/NoteListViewFragment$Item;->-$$Nest$fget_type(Lcom/metamoji/ui/cabinet/NoteListViewFragment$Item;)I

    move-result v2

    if-eqz v2, :cond_e

    if-eq v2, v11, :cond_b

    if-eq v2, v10, :cond_7

    const/4 v12, 0x4

    if-eq v2, v12, :cond_6

    move-object v2, v6

    goto/16 :goto_3

    .line 2105
    :cond_6
    iget-object v2, v0, Lcom/metamoji/ui/cabinet/NoteListViewFragment$26;->this$0:Lcom/metamoji/ui/cabinet/NoteListViewFragment;

    invoke-virtual {v2}, Lcom/metamoji/ui/cabinet/NoteListViewFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v2

    invoke-virtual {v2}, Landroidx/fragment/app/FragmentActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v2

    sget v7, Lcom/metamoji/noteanytime/R$layout;->item_cabinet_normal_doc:I

    invoke-virtual {v2, v7, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v2

    .line 2106
    new-instance v7, Lcom/metamoji/ui/cabinet/NoteListViewFragment$NormalNewDriveViewHolder;

    invoke-direct {v7, v6}, Lcom/metamoji/ui/cabinet/NoteListViewFragment$NormalNewDriveViewHolder;-><init>(Lcom/metamoji/ui/cabinet/NoteListViewFragment-IA;)V

    .line 2107
    sget v3, Lcom/metamoji/noteanytime/R$id;->thumbnail:I

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    iput-object v3, v7, Lcom/metamoji/ui/cabinet/NoteListViewFragment$NormalNewDriveViewHolder;->_thumbnail:Landroid/widget/ImageView;

    .line 2108
    sget v3, Lcom/metamoji/noteanytime/R$id;->mainText:I

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, v7, Lcom/metamoji/ui/cabinet/NoteListViewFragment$NormalNewDriveViewHolder;->_mainText:Landroid/widget/TextView;

    .line 2110
    invoke-virtual {v2, v6}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 2111
    iget-object v3, v7, Lcom/metamoji/ui/cabinet/NoteListViewFragment$NormalNewDriveViewHolder;->_thumbnail:Landroid/widget/ImageView;

    sget v12, Lcom/metamoji/noteanytime/R$drawable;->cabinet_new_drive_button:I

    invoke-virtual {v3, v12}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 2112
    iget-object v3, v0, Lcom/metamoji/ui/cabinet/NoteListViewFragment$26;->this$0:Lcom/metamoji/ui/cabinet/NoteListViewFragment;

    invoke-static {v3}, Lcom/metamoji/ui/cabinet/NoteListViewFragment;->-$$Nest$fget_normalNewDriveOnClickListener(Lcom/metamoji/ui/cabinet/NoteListViewFragment;)Landroid/view/View$OnClickListener;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 2113
    iget-object v3, v0, Lcom/metamoji/ui/cabinet/NoteListViewFragment$26;->this$0:Lcom/metamoji/ui/cabinet/NoteListViewFragment;

    invoke-static {v3}, Lcom/metamoji/ui/cabinet/NoteListViewFragment;->-$$Nest$fget_normalNewButtonOnTouchListener(Lcom/metamoji/ui/cabinet/NoteListViewFragment;)Landroid/view/View$OnTouchListener;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    goto/16 :goto_3

    .line 2119
    :cond_7
    iget-object v2, v0, Lcom/metamoji/ui/cabinet/NoteListViewFragment$26;->this$0:Lcom/metamoji/ui/cabinet/NoteListViewFragment;

    invoke-virtual {v2}, Lcom/metamoji/ui/cabinet/NoteListViewFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v2

    invoke-virtual {v2}, Landroidx/fragment/app/FragmentActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v2

    sget v7, Lcom/metamoji/noteanytime/R$layout;->item_cabinet_normal_folder:I

    invoke-virtual {v2, v7, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v2

    .line 2120
    new-instance v7, Lcom/metamoji/ui/cabinet/NoteListViewFragment$NormalFolderViewHolder;

    invoke-direct {v7, v6}, Lcom/metamoji/ui/cabinet/NoteListViewFragment$NormalFolderViewHolder;-><init>(Lcom/metamoji/ui/cabinet/NoteListViewFragment-IA;)V

    .line 2121
    sget v3, Lcom/metamoji/noteanytime/R$id;->thumbnail:I

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    iput-object v3, v7, Lcom/metamoji/ui/cabinet/NoteListViewFragment$NormalFolderViewHolder;->_thumbnail:Landroid/widget/ImageView;

    .line 2122
    sget v3, Lcom/metamoji/noteanytime/R$id;->mainText:I

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, v7, Lcom/metamoji/ui/cabinet/NoteListViewFragment$NormalFolderViewHolder;->_mainText:Landroid/widget/TextView;

    .line 2123
    sget v3, Lcom/metamoji/noteanytime/R$id;->subText:I

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, v7, Lcom/metamoji/ui/cabinet/NoteListViewFragment$NormalFolderViewHolder;->_subText:Landroid/widget/TextView;

    .line 2125
    invoke-static {v5}, Lcom/metamoji/ui/cabinet/NoteListViewFragment$Item;->-$$Nest$fget_content(Lcom/metamoji/ui/cabinet/NoteListViewFragment$Item;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/metamoji/ui/cabinet/CabinetTreeItem;

    invoke-virtual {v3}, Lcom/metamoji/ui/cabinet/CabinetTreeItem;->getType()Lcom/metamoji/ui/cabinet/CabinetTreeItem$Type;

    move-result-object v3

    .line 2126
    sget-object v12, Lcom/metamoji/ui/cabinet/NoteListViewFragment$65;->$SwitchMap$com$metamoji$ui$cabinet$CabinetTreeItem$Type:[I

    invoke-virtual {v3}, Lcom/metamoji/ui/cabinet/CabinetTreeItem$Type;->ordinal()I

    move-result v3

    aget v3, v12, v3

    if-eq v3, v9, :cond_f

    const/16 v12, 0x8

    if-eq v3, v12, :cond_a

    const/16 v12, 0x9

    if-eq v3, v12, :cond_9

    if-eq v3, v8, :cond_8

    .line 2139
    iget-object v3, v7, Lcom/metamoji/ui/cabinet/NoteListViewFragment$NormalFolderViewHolder;->_thumbnail:Landroid/widget/ImageView;

    sget v12, Lcom/metamoji/noteanytime/R$drawable;->cabinet_thumb_folder:I

    invoke-virtual {v3, v12}, Landroid/widget/ImageView;->setImageResource(I)V

    goto/16 :goto_3

    .line 2136
    :cond_8
    iget-object v3, v7, Lcom/metamoji/ui/cabinet/NoteListViewFragment$NormalFolderViewHolder;->_thumbnail:Landroid/widget/ImageView;

    sget v12, Lcom/metamoji/noteanytime/R$drawable;->design1_thumb_driveall:I

    invoke-virtual {v3, v12}, Landroid/widget/ImageView;->setImageResource(I)V

    goto/16 :goto_3

    .line 2133
    :cond_9
    iget-object v3, v7, Lcom/metamoji/ui/cabinet/NoteListViewFragment$NormalFolderViewHolder;->_thumbnail:Landroid/widget/ImageView;

    sget v12, Lcom/metamoji/noteanytime/R$drawable;->design1_thumb_mydrive:I

    invoke-virtual {v3, v12}, Landroid/widget/ImageView;->setImageResource(I)V

    goto/16 :goto_3

    .line 2130
    :cond_a
    iget-object v3, v7, Lcom/metamoji/ui/cabinet/NoteListViewFragment$NormalFolderViewHolder;->_thumbnail:Landroid/widget/ImageView;

    sget v12, Lcom/metamoji/noteanytime/R$drawable;->design1_thumb_drive:I

    invoke-virtual {v3, v12}, Landroid/widget/ImageView;->setImageResource(I)V

    goto/16 :goto_3

    .line 2171
    :cond_b
    iget-object v2, v0, Lcom/metamoji/ui/cabinet/NoteListViewFragment$26;->this$0:Lcom/metamoji/ui/cabinet/NoteListViewFragment;

    invoke-virtual {v2}, Lcom/metamoji/ui/cabinet/NoteListViewFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v2

    invoke-virtual {v2}, Landroidx/fragment/app/FragmentActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v2

    sget v7, Lcom/metamoji/noteanytime/R$layout;->item_cabinet_normal_doc:I

    invoke-virtual {v2, v7, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v2

    .line 2172
    new-instance v7, Lcom/metamoji/ui/cabinet/NoteListViewFragment$NormalDocumentViewHolder;

    invoke-direct {v7, v6}, Lcom/metamoji/ui/cabinet/NoteListViewFragment$NormalDocumentViewHolder;-><init>(Lcom/metamoji/ui/cabinet/NoteListViewFragment-IA;)V

    .line 2173
    sget v3, Lcom/metamoji/noteanytime/R$id;->thumbnail:I

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    iput-object v3, v7, Lcom/metamoji/ui/cabinet/NoteListViewFragment$NormalDocumentViewHolder;->_thumbnail:Landroid/widget/ImageView;

    .line 2175
    sget v3, Lcom/metamoji/noteanytime/R$id;->cabinetSync_Waiting:I

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    iput-object v3, v7, Lcom/metamoji/ui/cabinet/NoteListViewFragment$NormalDocumentViewHolder;->_cabinetSync_Waiting:Landroid/widget/ImageView;

    .line 2176
    sget v3, Lcom/metamoji/noteanytime/R$id;->cabinetSync_Syncing:I

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    iput-object v3, v7, Lcom/metamoji/ui/cabinet/NoteListViewFragment$NormalDocumentViewHolder;->_cabinetSync_Syncing:Landroid/widget/ImageView;

    .line 2177
    sget v3, Lcom/metamoji/noteanytime/R$id;->cabinetSyncWait:I

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    iput-object v3, v7, Lcom/metamoji/ui/cabinet/NoteListViewFragment$NormalDocumentViewHolder;->_cabinetSyncWait:Landroid/widget/ImageView;

    .line 2178
    sget v3, Lcom/metamoji/noteanytime/R$id;->cabinetMultiSelectCheck:I

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    iput-object v3, v7, Lcom/metamoji/ui/cabinet/NoteListViewFragment$NormalDocumentViewHolder;->_multiselectCheck:Landroid/widget/ImageView;

    .line 2179
    sget v3, Lcom/metamoji/noteanytime/R$id;->cabinetnotetemplateicon:I

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    iput-object v3, v7, Lcom/metamoji/ui/cabinet/NoteListViewFragment$NormalDocumentViewHolder;->_templateIcon:Landroid/widget/ImageView;

    .line 2180
    sget v3, Lcom/metamoji/noteanytime/R$id;->cabinetshareicon:I

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    iput-object v3, v7, Lcom/metamoji/ui/cabinet/NoteListViewFragment$NormalDocumentViewHolder;->_shareIcon:Landroid/widget/ImageView;

    .line 2182
    sget v3, Lcom/metamoji/noteanytime/R$id;->mainText:I

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, v7, Lcom/metamoji/ui/cabinet/NoteListViewFragment$NormalDocumentViewHolder;->_mainText:Landroid/widget/TextView;

    .line 2183
    sget v3, Lcom/metamoji/noteanytime/R$id;->subText:I

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, v7, Lcom/metamoji/ui/cabinet/NoteListViewFragment$NormalDocumentViewHolder;->_subText:Landroid/widget/TextView;

    .line 2184
    invoke-static {}, Lcom/metamoji/nt/NtFeatureManager;->getInstance()Lcom/metamoji/nt/NtFeatureManager;

    move-result-object v3

    sget-object v12, Lcom/metamoji/nt/NtFeature;->Star:Lcom/metamoji/nt/NtFeature;

    invoke-virtual {v3, v12}, Lcom/metamoji/nt/NtFeatureManager;->isAvailable(Lcom/metamoji/nt/NtFeature;)Z

    move-result v3

    if-eqz v3, :cond_c

    .line 2185
    sget v3, Lcom/metamoji/noteanytime/R$id;->cabinetstaricon:I

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    iput-object v3, v7, Lcom/metamoji/ui/cabinet/NoteListViewFragment$NormalDocumentViewHolder;->_starIcon:Landroid/widget/ImageView;

    .line 2187
    :cond_c
    sget v3, Lcom/metamoji/noteanytime/R$id;->cabinetLocalCache:I

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    iput-object v3, v7, Lcom/metamoji/ui/cabinet/NoteListViewFragment$NormalDocumentViewHolder;->_localCache:Landroid/widget/ImageView;

    .line 2188
    sget v3, Lcom/metamoji/noteanytime/R$id;->userText:I

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, v7, Lcom/metamoji/ui/cabinet/NoteListViewFragment$NormalDocumentViewHolder;->_userText:Landroid/widget/TextView;

    .line 2190
    sget v3, Lcom/metamoji/noteanytime/R$id;->smallTag1:I

    sget v12, Lcom/metamoji/noteanytime/R$id;->smallTag2:I

    sget v13, Lcom/metamoji/noteanytime/R$id;->smallTag3:I

    sget v14, Lcom/metamoji/noteanytime/R$id;->smallTag4:I

    sget v15, Lcom/metamoji/noteanytime/R$id;->smallTag5:I

    filled-new-array {v3, v12, v13, v14, v15}, [I

    move-result-object v3

    const/4 v12, 0x5

    .line 2191
    new-array v13, v12, [Landroid/widget/ImageView;

    iput-object v13, v7, Lcom/metamoji/ui/cabinet/NoteListViewFragment$NormalDocumentViewHolder;->_tagViews:[Landroid/widget/ImageView;

    move v13, v4

    :goto_2
    if-ge v13, v12, :cond_d

    .line 2193
    iget-object v14, v7, Lcom/metamoji/ui/cabinet/NoteListViewFragment$NormalDocumentViewHolder;->_tagViews:[Landroid/widget/ImageView;

    aget v15, v3, v13

    invoke-virtual {v2, v15}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v15

    check-cast v15, Landroid/widget/ImageView;

    aput-object v15, v14, v13

    add-int/lit8 v13, v13, 0x1

    goto :goto_2

    .line 2194
    :cond_d
    sget v3, Lcom/metamoji/noteanytime/R$id;->detailSmallTagOverflow:I

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    iput-object v3, v7, Lcom/metamoji/ui/cabinet/NoteListViewFragment$NormalDocumentViewHolder;->_tagOverflow:Landroid/widget/ImageView;

    .line 2216
    iget-object v3, v0, Lcom/metamoji/ui/cabinet/NoteListViewFragment$26;->this$0:Lcom/metamoji/ui/cabinet/NoteListViewFragment;

    sget v12, Lcom/metamoji/noteanytime/R$id;->cabinetItemLinearLayout:I

    invoke-virtual {v2, v12}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v12

    check-cast v12, Landroid/widget/LinearLayout;

    invoke-static {v3, v12}, Lcom/metamoji/ui/cabinet/NoteListViewFragment;->-$$Nest$fput_itemLinearLayout(Lcom/metamoji/ui/cabinet/NoteListViewFragment;Landroid/widget/LinearLayout;)V

    .line 2217
    iget-object v3, v0, Lcom/metamoji/ui/cabinet/NoteListViewFragment$26;->this$0:Lcom/metamoji/ui/cabinet/NoteListViewFragment;

    invoke-static {v3}, Lcom/metamoji/ui/cabinet/NoteListViewFragment;->-$$Nest$fget_itemLinearLayout(Lcom/metamoji/ui/cabinet/NoteListViewFragment;)Landroid/widget/LinearLayout;

    move-result-object v3

    if-eqz v3, :cond_f

    iget-object v3, v0, Lcom/metamoji/ui/cabinet/NoteListViewFragment$26;->this$0:Lcom/metamoji/ui/cabinet/NoteListViewFragment;

    invoke-static {v3}, Lcom/metamoji/ui/cabinet/NoteListViewFragment;->-$$Nest$fget_multiSelectMode(Lcom/metamoji/ui/cabinet/NoteListViewFragment;)Z

    move-result v3

    if-eqz v3, :cond_f

    .line 2218
    iget-object v3, v0, Lcom/metamoji/ui/cabinet/NoteListViewFragment$26;->this$0:Lcom/metamoji/ui/cabinet/NoteListViewFragment;

    invoke-static {v3}, Lcom/metamoji/ui/cabinet/NoteListViewFragment;->-$$Nest$fget_itemLinearLayout(Lcom/metamoji/ui/cabinet/NoteListViewFragment;)Landroid/widget/LinearLayout;

    move-result-object v3

    invoke-virtual {v3, v6}, Landroid/widget/LinearLayout;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_3

    .line 2090
    :cond_e
    iget-object v2, v0, Lcom/metamoji/ui/cabinet/NoteListViewFragment$26;->this$0:Lcom/metamoji/ui/cabinet/NoteListViewFragment;

    invoke-virtual {v2}, Lcom/metamoji/ui/cabinet/NoteListViewFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v2

    invoke-virtual {v2}, Landroidx/fragment/app/FragmentActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v2

    sget v7, Lcom/metamoji/noteanytime/R$layout;->item_cabinet_normal_doc:I

    invoke-virtual {v2, v7, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v2

    .line 2091
    new-instance v7, Lcom/metamoji/ui/cabinet/NoteListViewFragment$NormalNewButtonViewHolder;

    invoke-direct {v7, v6}, Lcom/metamoji/ui/cabinet/NoteListViewFragment$NormalNewButtonViewHolder;-><init>(Lcom/metamoji/ui/cabinet/NoteListViewFragment-IA;)V

    .line 2092
    sget v3, Lcom/metamoji/noteanytime/R$id;->thumbnail:I

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    iput-object v3, v7, Lcom/metamoji/ui/cabinet/NoteListViewFragment$NormalNewButtonViewHolder;->_thumbnail:Landroid/widget/ImageView;

    .line 2093
    sget v3, Lcom/metamoji/noteanytime/R$id;->mainText:I

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, v7, Lcom/metamoji/ui/cabinet/NoteListViewFragment$NormalNewButtonViewHolder;->_mainText:Landroid/widget/TextView;

    .line 2095
    invoke-virtual {v2, v6}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 2096
    iget-object v3, v7, Lcom/metamoji/ui/cabinet/NoteListViewFragment$NormalNewButtonViewHolder;->_thumbnail:Landroid/widget/ImageView;

    sget v12, Lcom/metamoji/noteanytime/R$drawable;->cabinet_new_note_button:I

    invoke-virtual {v3, v12}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 2097
    iget-object v3, v0, Lcom/metamoji/ui/cabinet/NoteListViewFragment$26;->this$0:Lcom/metamoji/ui/cabinet/NoteListViewFragment;

    invoke-static {v3}, Lcom/metamoji/ui/cabinet/NoteListViewFragment;->-$$Nest$fget_normalNewButtonOnClickListener(Lcom/metamoji/ui/cabinet/NoteListViewFragment;)Landroid/view/View$OnClickListener;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 2098
    iget-object v3, v0, Lcom/metamoji/ui/cabinet/NoteListViewFragment$26;->this$0:Lcom/metamoji/ui/cabinet/NoteListViewFragment;

    invoke-static {v3}, Lcom/metamoji/ui/cabinet/NoteListViewFragment;->-$$Nest$fget_normalNewButtonOnTouchListener(Lcom/metamoji/ui/cabinet/NoteListViewFragment;)Landroid/view/View$OnTouchListener;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 2228
    :cond_f
    :goto_3
    invoke-static {v5}, Lcom/metamoji/ui/cabinet/NoteListViewFragment$Item;->-$$Nest$fget_type(Lcom/metamoji/ui/cabinet/NoteListViewFragment$Item;)I

    move-result v3

    if-eq v3, v10, :cond_10

    invoke-static {v5}, Lcom/metamoji/ui/cabinet/NoteListViewFragment$Item;->-$$Nest$fget_type(Lcom/metamoji/ui/cabinet/NoteListViewFragment$Item;)I

    .line 2231
    :cond_10
    invoke-virtual {v2, v7}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    move-object v3, v7

    :goto_4
    if-eqz v3, :cond_23

    .line 2240
    iget-object v7, v3, Lcom/metamoji/ui/cabinet/NoteListViewFragment$NormalViewHolder;->_thumbnail:Landroid/widget/ImageView;

    invoke-virtual {v7, v5}, Landroid/widget/ImageView;->setTag(Ljava/lang/Object;)V

    .line 2243
    iget-object v7, v0, Lcom/metamoji/ui/cabinet/NoteListViewFragment$26;->this$0:Lcom/metamoji/ui/cabinet/NoteListViewFragment;

    invoke-static {v7}, Lcom/metamoji/ui/cabinet/NoteListViewFragment;->-$$Nest$fget_normalView(Lcom/metamoji/ui/cabinet/NoteListViewFragment;)Lcom/metamoji/ui/cabinet/NoteListGridView;

    move-result-object v7

    iget v7, v7, Lcom/metamoji/ui/cabinet/NoteListGridView;->_selectedPosition:I

    if-ne v1, v7, :cond_11

    move v1, v11

    goto :goto_5

    :cond_11
    move v1, v4

    :goto_5
    invoke-virtual {v2, v1}, Landroid/view/View;->setActivated(Z)V

    .line 2246
    invoke-static {v5}, Lcom/metamoji/ui/cabinet/NoteListViewFragment;->-$$Nest$smgetTitleString(Lcom/metamoji/ui/cabinet/NoteListViewFragment$Item;)Ljava/lang/String;

    move-result-object v1

    .line 2247
    iget-object v7, v3, Lcom/metamoji/ui/cabinet/NoteListViewFragment$NormalViewHolder;->_mainText:Landroid/widget/TextView;

    invoke-virtual {v7, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2249
    invoke-virtual {v3}, Lcom/metamoji/ui/cabinet/NoteListViewFragment$NormalViewHolder;->getType()I

    move-result v1

    if-eq v1, v11, :cond_16

    if-eq v1, v10, :cond_12

    goto/16 :goto_10

    .line 2251
    :cond_12
    check-cast v3, Lcom/metamoji/ui/cabinet/NoteListViewFragment$NormalFolderViewHolder;

    .line 2252
    invoke-static {v5}, Lcom/metamoji/ui/cabinet/NoteListViewFragment$Item;->-$$Nest$fget_content(Lcom/metamoji/ui/cabinet/NoteListViewFragment$Item;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/metamoji/ui/cabinet/CabinetTreeItem;

    invoke-virtual {v1}, Lcom/metamoji/ui/cabinet/CabinetTreeItem;->getType()Lcom/metamoji/ui/cabinet/CabinetTreeItem$Type;

    move-result-object v1

    .line 2253
    sget-object v4, Lcom/metamoji/ui/cabinet/NoteListViewFragment$65;->$SwitchMap$com$metamoji$ui$cabinet$CabinetTreeItem$Type:[I

    invoke-virtual {v1}, Lcom/metamoji/ui/cabinet/CabinetTreeItem$Type;->ordinal()I

    move-result v1

    aget v1, v4, v1

    if-eq v1, v9, :cond_13

    if-eq v1, v8, :cond_23

    .line 2280
    iget-object v1, v3, Lcom/metamoji/ui/cabinet/NoteListViewFragment$NormalFolderViewHolder;->_subText:Landroid/widget/TextView;

    iget-object v3, v0, Lcom/metamoji/ui/cabinet/NoteListViewFragment$26;->this$0:Lcom/metamoji/ui/cabinet/NoteListViewFragment;

    invoke-static {v5}, Lcom/metamoji/ui/cabinet/NoteListViewFragment$Item;->-$$Nest$fget_noteCount(Lcom/metamoji/ui/cabinet/NoteListViewFragment$Item;)I

    move-result v4

    invoke-static {v3, v4}, Lcom/metamoji/ui/cabinet/NoteListViewFragment;->-$$Nest$mgetNoteCountString(Lcom/metamoji/ui/cabinet/NoteListViewFragment;I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-object v2

    .line 2258
    :cond_13
    invoke-static {}, Lcom/metamoji/nt/NtFeatureManager;->getInstance()Lcom/metamoji/nt/NtFeatureManager;

    move-result-object v1

    sget-object v4, Lcom/metamoji/nt/NtFeature;->EditClassBoxMember:Lcom/metamoji/nt/NtFeature;

    invoke-virtual {v1, v4}, Lcom/metamoji/nt/NtFeatureManager;->isAvailable(Lcom/metamoji/nt/NtFeature;)Z

    move-result v1

    if-nez v1, :cond_14

    .line 2259
    sget v1, Lcom/metamoji/noteanytime/R$drawable;->design1_thumb_drive:I

    goto :goto_6

    .line 2261
    :cond_14
    invoke-static {}, Lcom/metamoji/dvm/DvmDriveManager;->getInstance()Lcom/metamoji/dvm/DvmDriveManager;

    move-result-object v1

    invoke-virtual {v5}, Lcom/metamoji/ui/cabinet/NoteListViewFragment$Item;->getDriveId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Lcom/metamoji/dvm/DvmDriveManager;->getDriveById(Ljava/lang/String;)Lcom/metamoji/dvm/fw/bean/DvmDriveBean;

    move-result-object v1

    .line 2262
    invoke-virtual {v1}, Lcom/metamoji/dvm/fw/bean/DvmDriveBean;->isAdmin()Z

    move-result v1

    if-eqz v1, :cond_15

    .line 2263
    sget v1, Lcom/metamoji/noteanytime/R$drawable;->design1_thumb_mydrive:I

    goto :goto_6

    .line 2265
    :cond_15
    sget v1, Lcom/metamoji/noteanytime/R$drawable;->design1_thumb_drive:I

    .line 2268
    :goto_6
    invoke-static {}, Lcom/metamoji/cm/CmTaskManager;->getInstance()Lcom/metamoji/cm/CmTaskManager;

    move-result-object v4

    new-instance v5, Lcom/metamoji/ui/cabinet/NoteListViewFragment$26$1;

    invoke-direct {v5, v0, v3, v1}, Lcom/metamoji/ui/cabinet/NoteListViewFragment$26$1;-><init>(Lcom/metamoji/ui/cabinet/NoteListViewFragment$26;Lcom/metamoji/ui/cabinet/NoteListViewFragment$NormalFolderViewHolder;I)V

    invoke-virtual {v4, v5}, Lcom/metamoji/cm/CmTaskManager;->safeRunOnUIThread(Ljava/lang/Runnable;)Z

    return-object v2

    .line 2287
    :cond_16
    move-object v1, v3

    check-cast v1, Lcom/metamoji/ui/cabinet/NoteListViewFragment$NormalDocumentViewHolder;

    .line 2289
    iget-object v7, v0, Lcom/metamoji/ui/cabinet/NoteListViewFragment$26;->this$0:Lcom/metamoji/ui/cabinet/NoteListViewFragment;

    iget-object v3, v3, Lcom/metamoji/ui/cabinet/NoteListViewFragment$NormalViewHolder;->_thumbnail:Landroid/widget/ImageView;

    invoke-static {v7, v5, v3, v2}, Lcom/metamoji/ui/cabinet/NoteListViewFragment;->-$$Nest$msetThumbnailImage(Lcom/metamoji/ui/cabinet/NoteListViewFragment;Lcom/metamoji/ui/cabinet/NoteListViewFragment$Item;Landroid/widget/ImageView;Landroid/view/View;)V

    .line 2291
    iget-object v3, v1, Lcom/metamoji/ui/cabinet/NoteListViewFragment$NormalDocumentViewHolder;->_subText:Landroid/widget/TextView;

    iget-object v7, v0, Lcom/metamoji/ui/cabinet/NoteListViewFragment$26;->this$0:Lcom/metamoji/ui/cabinet/NoteListViewFragment;

    invoke-static {v5}, Lcom/metamoji/ui/cabinet/NoteListViewFragment$Item;->-$$Nest$fget_metadata(Lcom/metamoji/ui/cabinet/NoteListViewFragment$Item;)Ljava/lang/Object;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/metamoji/ui/cabinet/NoteListViewFragment;->-$$Nest$mgetDateString(Lcom/metamoji/ui/cabinet/NoteListViewFragment;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2293
    iget-object v3, v1, Lcom/metamoji/ui/cabinet/NoteListViewFragment$NormalDocumentViewHolder;->_userText:Landroid/widget/TextView;

    const-string v7, ""

    invoke-virtual {v3, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2295
    iget-object v3, v0, Lcom/metamoji/ui/cabinet/NoteListViewFragment$26;->this$0:Lcom/metamoji/ui/cabinet/NoteListViewFragment;

    invoke-virtual {v3}, Lcom/metamoji/ui/cabinet/NoteListViewFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v8

    invoke-virtual {v3, v1, v5, v8}, Lcom/metamoji/ui/cabinet/NoteListViewFragment;->updateIconVisibilityForNormal(Lcom/metamoji/ui/cabinet/NoteListViewFragment$NormalDocumentViewHolder;Lcom/metamoji/ui/cabinet/NoteListViewFragment$Item;Landroidx/fragment/app/FragmentActivity;)V

    .line 2297
    invoke-virtual {v5}, Lcom/metamoji/ui/cabinet/NoteListViewFragment$Item;->getDriveId()Ljava/lang/String;

    move-result-object v13

    .line 2299
    invoke-virtual {v5}, Lcom/metamoji/ui/cabinet/NoteListViewFragment$Item;->getDocId()Ljava/lang/String;

    move-result-object v3

    invoke-static {v13, v3}, Lcom/metamoji/dvm/DvmUtil;->hasCache(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v3

    const/16 v8, 0xff

    const/16 v9, 0x50

    if-eqz v13, :cond_20

    .line 2301
    invoke-static {}, Lcom/metamoji/dvm/DvmDriveManager;->getInstance()Lcom/metamoji/dvm/DvmDriveManager;

    move-result-object v10

    invoke-virtual {v10, v13}, Lcom/metamoji/dvm/DvmDriveManager;->getDvmDocumentManager(Ljava/lang/String;)Lcom/metamoji/dvm/fw/DvmDocumentManager;

    move-result-object v10

    if-eqz v10, :cond_20

    .line 2304
    invoke-virtual {v10}, Lcom/metamoji/dvm/fw/DvmDocumentManager;->normalizedMemberNameMapCache()Ljava/util/Map;

    move-result-object v12

    .line 2305
    invoke-virtual {v10}, Lcom/metamoji/dvm/fw/DvmDocumentManager;->nonMemberNameMapCache()Ljava/util/Map;

    move-result-object v10

    .line 2306
    invoke-static {v5}, Lcom/metamoji/ui/cabinet/NoteListViewFragment$Item;->-$$Nest$fget_createUserId(Lcom/metamoji/ui/cabinet/NoteListViewFragment$Item;)Ljava/lang/String;

    move-result-object v14

    .line 2307
    invoke-static {v5}, Lcom/metamoji/ui/cabinet/NoteListViewFragment$Item;->-$$Nest$fget_updateUserId(Lcom/metamoji/ui/cabinet/NoteListViewFragment$Item;)Ljava/lang/String;

    move-result-object v15

    .line 2310
    invoke-static {}, Lcom/metamoji/noteanytime/MainActivity;->getNoteListSortKey()Ljava/lang/String;

    move-result-object v4

    const-string v6, "create"

    if-ne v4, v6, :cond_17

    move v4, v11

    goto :goto_7

    :cond_17
    const/4 v4, 0x0

    .line 2312
    :goto_7
    invoke-static {v12, v14}, Lcom/metamoji/ui/cabinet/CabinetUtils;->canResolveNickNameFrom(Ljava/util/Map;Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_18

    .line 2313
    invoke-static {v12, v14}, Lcom/metamoji/ui/cabinet/CabinetUtils;->nickNameFrom(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    :goto_8
    const/16 v17, 0x0

    goto :goto_9

    .line 2314
    :cond_18
    invoke-static {v10, v14}, Lcom/metamoji/ui/cabinet/CabinetUtils;->canResolveNickNameFrom(Ljava/util/Map;Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_19

    .line 2315
    invoke-static {v10, v14}, Lcom/metamoji/ui/cabinet/CabinetUtils;->nickNameFrom(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    goto :goto_8

    :cond_19
    move-object v6, v7

    move/from16 v17, v11

    .line 2320
    :goto_9
    invoke-static {v12, v15}, Lcom/metamoji/ui/cabinet/CabinetUtils;->canResolveNickNameFrom(Ljava/util/Map;Ljava/lang/String;)Z

    move-result v18

    if-eqz v18, :cond_1a

    .line 2321
    invoke-static {v12, v15}, Lcom/metamoji/ui/cabinet/CabinetUtils;->nickNameFrom(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    goto :goto_a

    .line 2322
    :cond_1a
    invoke-static {v10, v15}, Lcom/metamoji/ui/cabinet/CabinetUtils;->canResolveNickNameFrom(Ljava/util/Map;Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_1b

    .line 2323
    invoke-static {v10, v15}, Lcom/metamoji/ui/cabinet/CabinetUtils;->nickNameFrom(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    goto :goto_a

    :cond_1b
    move/from16 v17, v11

    :goto_a
    if-eqz v17, :cond_1e

    .line 2329
    iget-object v6, v0, Lcom/metamoji/ui/cabinet/NoteListViewFragment$26;->val$nicknameTaskMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {}, Lcom/metamoji/sd/SdNicknameLoader;->getInstance()Lcom/metamoji/sd/SdNicknameLoader;

    move-result-object v12

    if-eqz v4, :cond_1c

    iget-object v7, v1, Lcom/metamoji/ui/cabinet/NoteListViewFragment$NormalDocumentViewHolder;->_userText:Landroid/widget/TextView;

    goto :goto_b

    :cond_1c
    const/4 v7, 0x0

    :goto_b
    if-eqz v4, :cond_1d

    const/16 v17, 0x0

    goto :goto_c

    :cond_1d
    iget-object v4, v1, Lcom/metamoji/ui/cabinet/NoteListViewFragment$NormalDocumentViewHolder;->_userText:Landroid/widget/TextView;

    move-object/from16 v17, v4

    :goto_c
    move-object/from16 v16, v7

    invoke-virtual/range {v12 .. v17}, Lcom/metamoji/sd/SdNicknameLoader;->addTask(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/widget/TextView;Landroid/widget/TextView;)Ljava/util/concurrent/Future;

    move-result-object v4

    invoke-virtual {v6, v2, v4}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_e

    .line 2331
    :cond_1e
    iget-object v10, v1, Lcom/metamoji/ui/cabinet/NoteListViewFragment$NormalDocumentViewHolder;->_userText:Landroid/widget/TextView;

    if-eqz v4, :cond_1f

    goto :goto_d

    :cond_1f
    move-object v6, v7

    :goto_d
    invoke-virtual {v10, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    if-nez v3, :cond_20

    .line 2333
    iget-object v4, v1, Lcom/metamoji/ui/cabinet/NoteListViewFragment$NormalDocumentViewHolder;->_userText:Landroid/widget/TextView;

    invoke-static {v8, v9, v9, v9}, Landroid/graphics/Color;->argb(IIII)I

    move-result v6

    invoke-virtual {v4, v6}, Landroid/widget/TextView;->setTextColor(I)V

    .line 2340
    :cond_20
    :goto_e
    iget-object v4, v0, Lcom/metamoji/ui/cabinet/NoteListViewFragment$26;->this$0:Lcom/metamoji/ui/cabinet/NoteListViewFragment;

    invoke-static {v4, v1, v5}, Lcom/metamoji/ui/cabinet/NoteListViewFragment;->-$$Nest$mprepareTagView(Lcom/metamoji/ui/cabinet/NoteListViewFragment;Lcom/metamoji/ui/cabinet/NoteListViewFragment$NormalDocumentViewHolder;Lcom/metamoji/ui/cabinet/NoteListViewFragment$Item;)V

    .line 2344
    iget-object v4, v0, Lcom/metamoji/ui/cabinet/NoteListViewFragment$26;->this$0:Lcom/metamoji/ui/cabinet/NoteListViewFragment;

    iget-object v6, v1, Lcom/metamoji/ui/cabinet/NoteListViewFragment$NormalDocumentViewHolder;->_cabinetSync_Waiting:Landroid/widget/ImageView;

    iget-object v7, v1, Lcom/metamoji/ui/cabinet/NoteListViewFragment$NormalDocumentViewHolder;->_cabinetSync_Syncing:Landroid/widget/ImageView;

    invoke-virtual {v5}, Lcom/metamoji/ui/cabinet/NoteListViewFragment$Item;->getDocId()Ljava/lang/String;

    move-result-object v10

    invoke-static {v4, v6, v7, v10}, Lcom/metamoji/ui/cabinet/NoteListViewFragment;->-$$Nest$msetSyncImageVisibility(Lcom/metamoji/ui/cabinet/NoteListViewFragment;Landroid/widget/ImageView;Landroid/widget/ImageView;Ljava/lang/String;)V

    .line 2345
    iget-object v4, v0, Lcom/metamoji/ui/cabinet/NoteListViewFragment$26;->this$0:Lcom/metamoji/ui/cabinet/NoteListViewFragment;

    iget-object v6, v1, Lcom/metamoji/ui/cabinet/NoteListViewFragment$NormalDocumentViewHolder;->_cabinetSyncWait:Landroid/widget/ImageView;

    invoke-static {v4, v6, v5}, Lcom/metamoji/ui/cabinet/NoteListViewFragment;->-$$Nest$msetSyncWaitVisibility(Lcom/metamoji/ui/cabinet/NoteListViewFragment;Landroid/widget/ImageView;Lcom/metamoji/ui/cabinet/NoteListViewFragment$Item;)V

    .line 2348
    iget-object v4, v0, Lcom/metamoji/ui/cabinet/NoteListViewFragment$26;->this$0:Lcom/metamoji/ui/cabinet/NoteListViewFragment;

    iget-object v6, v1, Lcom/metamoji/ui/cabinet/NoteListViewFragment$NormalDocumentViewHolder;->_multiselectCheck:Landroid/widget/ImageView;

    invoke-static {v4, v6, v5}, Lcom/metamoji/ui/cabinet/NoteListViewFragment;->-$$Nest$msetMultiselectCheckVisibility(Lcom/metamoji/ui/cabinet/NoteListViewFragment;Landroid/widget/ImageView;Lcom/metamoji/ui/cabinet/NoteListViewFragment$Item;)V

    .line 2351
    iget-object v4, v0, Lcom/metamoji/ui/cabinet/NoteListViewFragment$26;->this$0:Lcom/metamoji/ui/cabinet/NoteListViewFragment;

    iget-object v6, v1, Lcom/metamoji/ui/cabinet/NoteListViewFragment$NormalDocumentViewHolder;->_templateIcon:Landroid/widget/ImageView;

    iget-object v7, v0, Lcom/metamoji/ui/cabinet/NoteListViewFragment$26;->this$0:Lcom/metamoji/ui/cabinet/NoteListViewFragment;

    invoke-static {v5}, Lcom/metamoji/ui/cabinet/NoteListViewFragment$Item;->-$$Nest$fget_metadata(Lcom/metamoji/ui/cabinet/NoteListViewFragment$Item;)Ljava/lang/Object;

    move-result-object v10

    invoke-static {v7, v10}, Lcom/metamoji/ui/cabinet/NoteListViewFragment;->-$$Nest$misTemplate(Lcom/metamoji/ui/cabinet/NoteListViewFragment;Ljava/lang/Object;)Z

    move-result v7

    invoke-static {v4, v6, v7}, Lcom/metamoji/ui/cabinet/NoteListViewFragment;->-$$Nest$msetTemplateIconVisibility(Lcom/metamoji/ui/cabinet/NoteListViewFragment;Landroid/widget/ImageView;Z)V

    .line 2354
    iget-object v4, v0, Lcom/metamoji/ui/cabinet/NoteListViewFragment$26;->this$0:Lcom/metamoji/ui/cabinet/NoteListViewFragment;

    iget-object v6, v1, Lcom/metamoji/ui/cabinet/NoteListViewFragment$NormalDocumentViewHolder;->_shareIcon:Landroid/widget/ImageView;

    invoke-static {v5}, Lcom/metamoji/ui/cabinet/NoteListViewFragment$Item;->-$$Nest$fget_metadata(Lcom/metamoji/ui/cabinet/NoteListViewFragment$Item;)Ljava/lang/Object;

    move-result-object v7

    invoke-static {v7}, Lcom/metamoji/ui/cabinet/NoteListViewFragment;->-$$Nest$smisShareNote(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_22

    iget-object v7, v0, Lcom/metamoji/ui/cabinet/NoteListViewFragment$26;->this$0:Lcom/metamoji/ui/cabinet/NoteListViewFragment;

    invoke-static {v5}, Lcom/metamoji/ui/cabinet/NoteListViewFragment$Item;->-$$Nest$fget_metadata(Lcom/metamoji/ui/cabinet/NoteListViewFragment$Item;)Ljava/lang/Object;

    move-result-object v5

    invoke-static {v7, v5}, Lcom/metamoji/ui/cabinet/NoteListViewFragment;->-$$Nest$misShareTemplate(Lcom/metamoji/ui/cabinet/NoteListViewFragment;Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_21

    goto :goto_f

    :cond_21
    const/4 v11, 0x0

    :cond_22
    :goto_f
    invoke-static {v4, v6, v11}, Lcom/metamoji/ui/cabinet/NoteListViewFragment;->-$$Nest$msetShareIconVisibility(Lcom/metamoji/ui/cabinet/NoteListViewFragment;Landroid/widget/ImageView;Z)V

    if-nez v3, :cond_23

    .line 2357
    iget-object v1, v1, Lcom/metamoji/ui/cabinet/NoteListViewFragment$NormalDocumentViewHolder;->_subText:Landroid/widget/TextView;

    invoke-static {v8, v9, v9, v9}, Landroid/graphics/Color;->argb(IIII)I

    move-result v3

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setTextColor(I)V

    :cond_23
    :goto_10
    return-object v2

    .line 2078
    :cond_24
    :goto_11
    new-instance v1, Landroid/view/View;

    iget-object v2, v0, Lcom/metamoji/ui/cabinet/NoteListViewFragment$26;->this$0:Lcom/metamoji/ui/cabinet/NoteListViewFragment;

    invoke-static {v2}, Lcom/metamoji/ui/cabinet/NoteListViewFragment;->-$$Nest$fget_activity(Lcom/metamoji/ui/cabinet/NoteListViewFragment;)Landroidx/fragment/app/FragmentActivity;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    return-object v1
.end method
