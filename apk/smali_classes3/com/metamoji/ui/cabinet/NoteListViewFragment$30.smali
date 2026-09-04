.class Lcom/metamoji/ui/cabinet/NoteListViewFragment$30;
.super Landroid/widget/ArrayAdapter;
.source "NoteListViewFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/metamoji/ui/cabinet/NoteListViewFragment;->prepareSimpleView()V
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

    .line 3214
    iput-object p1, p0, Lcom/metamoji/ui/cabinet/NoteListViewFragment$30;->this$0:Lcom/metamoji/ui/cabinet/NoteListViewFragment;

    iput-object p5, p0, Lcom/metamoji/ui/cabinet/NoteListViewFragment$30;->val$thumbTaskMap:Ljava/util/concurrent/ConcurrentHashMap;

    iput-object p6, p0, Lcom/metamoji/ui/cabinet/NoteListViewFragment$30;->val$nicknameTaskMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {p0, p2, p3, p4}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    return-void
.end method


# virtual methods
.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 18

    move-object/from16 v0, p0

    move/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    const/4 v4, 0x0

    if-eqz v2, :cond_1

    .line 3218
    iget-object v5, v0, Lcom/metamoji/ui/cabinet/NoteListViewFragment$30;->val$thumbTaskMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v5, v2}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/concurrent/Future;

    if-eqz v5, :cond_0

    .line 3220
    invoke-interface {v5, v4}, Ljava/util/concurrent/Future;->cancel(Z)Z

    .line 3222
    :cond_0
    iget-object v5, v0, Lcom/metamoji/ui/cabinet/NoteListViewFragment$30;->val$nicknameTaskMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v5, v2}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/concurrent/Future;

    if-eqz v5, :cond_1

    .line 3224
    invoke-interface {v5, v4}, Ljava/util/concurrent/Future;->cancel(Z)Z

    :cond_1
    if-ltz v1, :cond_2e

    .line 3227
    iget-object v5, v0, Lcom/metamoji/ui/cabinet/NoteListViewFragment$30;->this$0:Lcom/metamoji/ui/cabinet/NoteListViewFragment;

    invoke-static {v5}, Lcom/metamoji/ui/cabinet/NoteListViewFragment;->-$$Nest$fget_itemList(Lcom/metamoji/ui/cabinet/NoteListViewFragment;)Ljava/util/ArrayList;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-le v5, v1, :cond_2e

    iget-object v5, v0, Lcom/metamoji/ui/cabinet/NoteListViewFragment$30;->this$0:Lcom/metamoji/ui/cabinet/NoteListViewFragment;

    invoke-static {v5}, Lcom/metamoji/ui/cabinet/NoteListViewFragment;->-$$Nest$fget_NoteListMode(Lcom/metamoji/ui/cabinet/NoteListViewFragment;)Lcom/metamoji/ui/cabinet/NoteListViewFragment$NoteListModeType;

    move-result-object v5

    sget-object v6, Lcom/metamoji/ui/cabinet/NoteListViewFragment$NoteListModeType;->NoteListModeType_Simple:Lcom/metamoji/ui/cabinet/NoteListViewFragment$NoteListModeType;

    if-eq v5, v6, :cond_2

    goto/16 :goto_11

    .line 3230
    :cond_2
    invoke-virtual/range {p0 .. p1}, Lcom/metamoji/ui/cabinet/NoteListViewFragment$30;->getItem(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/metamoji/ui/cabinet/NoteListViewFragment$Item;

    const/4 v6, 0x0

    if-eqz v2, :cond_3

    .line 3233
    invoke-virtual {v2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/metamoji/ui/cabinet/NoteListViewFragment$SimpleViewHolder;

    goto :goto_0

    :cond_3
    move-object v7, v6

    :goto_0
    const/4 v8, 0x4

    const/4 v9, 0x3

    const/4 v10, 0x2

    const/4 v11, 0x1

    const/16 v12, 0x8

    if-eqz v2, :cond_5

    if-eqz v7, :cond_4

    .line 3235
    invoke-virtual {v7}, Lcom/metamoji/ui/cabinet/NoteListViewFragment$SimpleViewHolder;->getType()I

    move-result v13

    invoke-static {v5}, Lcom/metamoji/ui/cabinet/NoteListViewFragment$Item;->-$$Nest$fget_type(Lcom/metamoji/ui/cabinet/NoteListViewFragment$Item;)I

    move-result v14

    if-eq v13, v14, :cond_4

    goto :goto_1

    .line 3341
    :cond_4
    invoke-virtual {v2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/metamoji/ui/cabinet/NoteListViewFragment$SimpleViewHolder;

    goto/16 :goto_5

    .line 3236
    :cond_5
    :goto_1
    iget-object v2, v0, Lcom/metamoji/ui/cabinet/NoteListViewFragment$30;->this$0:Lcom/metamoji/ui/cabinet/NoteListViewFragment;

    invoke-virtual {v2}, Lcom/metamoji/ui/cabinet/NoteListViewFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v2

    invoke-virtual {v2}, Landroidx/fragment/app/FragmentActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v2

    sget v13, Lcom/metamoji/noteanytime/R$layout;->item_cabinet_simple_base:I

    invoke-virtual {v2, v13, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup;

    .line 3238
    invoke-static {v5}, Lcom/metamoji/ui/cabinet/NoteListViewFragment$Item;->-$$Nest$fget_type(Lcom/metamoji/ui/cabinet/NoteListViewFragment$Item;)I

    move-result v13

    if-eqz v13, :cond_11

    if-eq v13, v11, :cond_f

    if-eq v13, v10, :cond_8

    if-eq v13, v9, :cond_7

    if-eq v13, v8, :cond_6

    move-object v13, v7

    move-object v7, v6

    goto/16 :goto_4

    .line 3318
    :cond_6
    iget-object v2, v0, Lcom/metamoji/ui/cabinet/NoteListViewFragment$30;->this$0:Lcom/metamoji/ui/cabinet/NoteListViewFragment;

    invoke-virtual {v2}, Lcom/metamoji/ui/cabinet/NoteListViewFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v2

    invoke-virtual {v2}, Landroidx/fragment/app/FragmentActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v2

    sget v7, Lcom/metamoji/noteanytime/R$layout;->item_cabinet_simple_header_base:I

    invoke-virtual {v2, v7, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup;

    .line 3319
    iget-object v7, v0, Lcom/metamoji/ui/cabinet/NoteListViewFragment$30;->this$0:Lcom/metamoji/ui/cabinet/NoteListViewFragment;

    invoke-virtual {v7}, Lcom/metamoji/ui/cabinet/NoteListViewFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v7

    invoke-virtual {v7}, Landroidx/fragment/app/FragmentActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v7

    sget v13, Lcom/metamoji/noteanytime/R$layout;->item_cabinet_simple_new_drive_button:I

    invoke-virtual {v7, v13, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v7

    .line 3320
    new-instance v13, Lcom/metamoji/ui/cabinet/NoteListViewFragment$SimpleNewDriveViewHolder;

    invoke-direct {v13, v6}, Lcom/metamoji/ui/cabinet/NoteListViewFragment$SimpleNewDriveViewHolder;-><init>(Lcom/metamoji/ui/cabinet/NoteListViewFragment-IA;)V

    .line 3321
    sget v14, Lcom/metamoji/noteanytime/R$id;->title:I

    invoke-virtual {v7, v14}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v14

    check-cast v14, Landroid/widget/TextView;

    iput-object v14, v13, Lcom/metamoji/ui/cabinet/NoteListViewFragment$SimpleNewDriveViewHolder;->_title:Landroid/widget/TextView;

    goto/16 :goto_4

    .line 3327
    :cond_7
    iget-object v7, v0, Lcom/metamoji/ui/cabinet/NoteListViewFragment$30;->this$0:Lcom/metamoji/ui/cabinet/NoteListViewFragment;

    invoke-virtual {v7}, Lcom/metamoji/ui/cabinet/NoteListViewFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v7

    invoke-virtual {v7}, Landroidx/fragment/app/FragmentActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v7

    sget v13, Lcom/metamoji/noteanytime/R$layout;->item_cabinet_simple_header:I

    invoke-virtual {v7, v13, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v7

    .line 3328
    new-instance v13, Lcom/metamoji/ui/cabinet/NoteListViewFragment$SimpleHeaderViewHolder;

    invoke-direct {v13, v6}, Lcom/metamoji/ui/cabinet/NoteListViewFragment$SimpleHeaderViewHolder;-><init>(Lcom/metamoji/ui/cabinet/NoteListViewFragment-IA;)V

    .line 3329
    sget v14, Lcom/metamoji/noteanytime/R$id;->title:I

    invoke-virtual {v7, v14}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v14

    check-cast v14, Landroid/widget/TextView;

    iput-object v14, v13, Lcom/metamoji/ui/cabinet/NoteListViewFragment$SimpleHeaderViewHolder;->_title:Landroid/widget/TextView;

    .line 3330
    sget v14, Lcom/metamoji/noteanytime/R$id;->updateDate:I

    invoke-virtual {v7, v14}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v14

    check-cast v14, Landroid/widget/TextView;

    iput-object v14, v13, Lcom/metamoji/ui/cabinet/NoteListViewFragment$SimpleHeaderViewHolder;->_updateDate:Landroid/widget/TextView;

    goto/16 :goto_4

    .line 3271
    :cond_8
    iget-object v7, v0, Lcom/metamoji/ui/cabinet/NoteListViewFragment$30;->this$0:Lcom/metamoji/ui/cabinet/NoteListViewFragment;

    invoke-virtual {v7}, Lcom/metamoji/ui/cabinet/NoteListViewFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v7

    invoke-virtual {v7}, Landroidx/fragment/app/FragmentActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v7

    sget v13, Lcom/metamoji/noteanytime/R$layout;->item_cabinet_simple_folder:I

    invoke-virtual {v7, v13, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v7

    .line 3272
    new-instance v13, Lcom/metamoji/ui/cabinet/NoteListViewFragment$SimpleFolderViewHolder;

    invoke-direct {v13, v6}, Lcom/metamoji/ui/cabinet/NoteListViewFragment$SimpleFolderViewHolder;-><init>(Lcom/metamoji/ui/cabinet/NoteListViewFragment-IA;)V

    .line 3273
    sget v14, Lcom/metamoji/noteanytime/R$id;->folderName:I

    invoke-virtual {v7, v14}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v14

    check-cast v14, Landroid/widget/TextView;

    iput-object v14, v13, Lcom/metamoji/ui/cabinet/NoteListViewFragment$SimpleFolderViewHolder;->_folderName:Landroid/widget/TextView;

    .line 3274
    sget v14, Lcom/metamoji/noteanytime/R$id;->cabinet_thumb_folder:I

    invoke-virtual {v7, v14}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v14

    check-cast v14, Landroid/widget/ImageView;

    .line 3275
    sget-object v15, Lcom/metamoji/ui/cabinet/NoteListViewFragment$65;->$SwitchMap$com$metamoji$ui$cabinet$CabinetTreeItem$Type:[I

    invoke-static {v5}, Lcom/metamoji/ui/cabinet/NoteListViewFragment$Item;->-$$Nest$fget_content(Lcom/metamoji/ui/cabinet/NoteListViewFragment$Item;)Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Lcom/metamoji/ui/cabinet/CabinetTreeItem;

    invoke-virtual/range {v16 .. v16}, Lcom/metamoji/ui/cabinet/CabinetTreeItem;->getType()Lcom/metamoji/ui/cabinet/CabinetTreeItem$Type;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Lcom/metamoji/ui/cabinet/CabinetTreeItem$Type;->ordinal()I

    move-result v16

    aget v15, v15, v16

    const/4 v8, 0x7

    if-eq v15, v8, :cond_c

    if-eq v15, v12, :cond_b

    const/16 v8, 0x9

    if-eq v15, v8, :cond_a

    const/16 v8, 0xe

    if-eq v15, v8, :cond_9

    goto/16 :goto_4

    .line 3298
    :cond_9
    sget v8, Lcom/metamoji/noteanytime/R$drawable;->design1_thumb_driveall:I

    invoke-virtual {v14, v8}, Landroid/widget/ImageView;->setImageResource(I)V

    goto/16 :goto_4

    .line 3295
    :cond_a
    sget v8, Lcom/metamoji/noteanytime/R$drawable;->design1_thumb_mydrive:I

    invoke-virtual {v14, v8}, Landroid/widget/ImageView;->setImageResource(I)V

    goto/16 :goto_4

    .line 3292
    :cond_b
    sget v8, Lcom/metamoji/noteanytime/R$drawable;->design1_thumb_drive:I

    invoke-virtual {v14, v8}, Landroid/widget/ImageView;->setImageResource(I)V

    goto/16 :goto_4

    .line 3278
    :cond_c
    invoke-static {}, Lcom/metamoji/nt/NtFeatureManager;->getInstance()Lcom/metamoji/nt/NtFeatureManager;

    move-result-object v8

    sget-object v15, Lcom/metamoji/nt/NtFeature;->EditClassBoxMember:Lcom/metamoji/nt/NtFeature;

    invoke-virtual {v8, v15}, Lcom/metamoji/nt/NtFeatureManager;->isAvailable(Lcom/metamoji/nt/NtFeature;)Z

    move-result v8

    if-nez v8, :cond_d

    .line 3279
    sget v8, Lcom/metamoji/noteanytime/R$drawable;->design1_thumb_drive:I

    goto :goto_2

    .line 3281
    :cond_d
    invoke-static {}, Lcom/metamoji/dvm/DvmDriveManager;->getInstance()Lcom/metamoji/dvm/DvmDriveManager;

    move-result-object v8

    invoke-virtual {v5}, Lcom/metamoji/ui/cabinet/NoteListViewFragment$Item;->getDriveId()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v8, v15}, Lcom/metamoji/dvm/DvmDriveManager;->getDriveById(Ljava/lang/String;)Lcom/metamoji/dvm/fw/bean/DvmDriveBean;

    move-result-object v8

    .line 3282
    invoke-virtual {v8}, Lcom/metamoji/dvm/fw/bean/DvmDriveBean;->isAdmin()Z

    move-result v8

    if-eqz v8, :cond_e

    .line 3283
    sget v8, Lcom/metamoji/noteanytime/R$drawable;->design1_thumb_mydrive:I

    goto :goto_2

    .line 3285
    :cond_e
    sget v8, Lcom/metamoji/noteanytime/R$drawable;->design1_thumb_drive:I

    .line 3288
    :goto_2
    invoke-virtual {v14, v8}, Landroid/widget/ImageView;->setImageResource(I)V

    goto/16 :goto_4

    .line 3240
    :cond_f
    iget-object v7, v0, Lcom/metamoji/ui/cabinet/NoteListViewFragment$30;->this$0:Lcom/metamoji/ui/cabinet/NoteListViewFragment;

    invoke-virtual {v7}, Lcom/metamoji/ui/cabinet/NoteListViewFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v7

    invoke-virtual {v7}, Landroidx/fragment/app/FragmentActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v7

    sget v8, Lcom/metamoji/noteanytime/R$layout;->item_cabinet_simple_doc:I

    invoke-virtual {v7, v8, v2, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v7

    .line 3241
    new-instance v8, Lcom/metamoji/ui/cabinet/NoteListViewFragment$SimpleDocumentViewHolder;

    invoke-direct {v8, v6}, Lcom/metamoji/ui/cabinet/NoteListViewFragment$SimpleDocumentViewHolder;-><init>(Lcom/metamoji/ui/cabinet/NoteListViewFragment-IA;)V

    .line 3244
    sget v13, Lcom/metamoji/noteanytime/R$id;->cabinetSync_Waiting:I

    invoke-virtual {v7, v13}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v13

    check-cast v13, Landroid/widget/ImageView;

    iput-object v13, v8, Lcom/metamoji/ui/cabinet/NoteListViewFragment$SimpleDocumentViewHolder;->_cabinetSync_Waiting:Landroid/widget/ImageView;

    .line 3245
    sget v13, Lcom/metamoji/noteanytime/R$id;->cabinetSync_Syncing:I

    invoke-virtual {v7, v13}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v13

    check-cast v13, Landroid/widget/ImageView;

    iput-object v13, v8, Lcom/metamoji/ui/cabinet/NoteListViewFragment$SimpleDocumentViewHolder;->_cabinetSync_Syncing:Landroid/widget/ImageView;

    .line 3246
    sget v13, Lcom/metamoji/noteanytime/R$id;->cabinetSyncWait:I

    invoke-virtual {v7, v13}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v13

    check-cast v13, Landroid/widget/ImageView;

    iput-object v13, v8, Lcom/metamoji/ui/cabinet/NoteListViewFragment$SimpleDocumentViewHolder;->_cabinetSyncWait:Landroid/widget/ImageView;

    .line 3247
    sget v13, Lcom/metamoji/noteanytime/R$id;->cabinetMultiSelectCheck:I

    invoke-virtual {v7, v13}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v13

    check-cast v13, Landroid/widget/ImageView;

    iput-object v13, v8, Lcom/metamoji/ui/cabinet/NoteListViewFragment$SimpleDocumentViewHolder;->_multiselectCheck:Landroid/widget/ImageView;

    .line 3248
    sget v13, Lcom/metamoji/noteanytime/R$id;->cabinetnotetemplateicon:I

    invoke-virtual {v7, v13}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v13

    check-cast v13, Landroid/widget/ImageView;

    iput-object v13, v8, Lcom/metamoji/ui/cabinet/NoteListViewFragment$SimpleDocumentViewHolder;->_templateIcon:Landroid/widget/ImageView;

    .line 3249
    sget v13, Lcom/metamoji/noteanytime/R$id;->cabinetshareicon:I

    invoke-virtual {v7, v13}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v13

    check-cast v13, Landroid/widget/ImageView;

    iput-object v13, v8, Lcom/metamoji/ui/cabinet/NoteListViewFragment$SimpleDocumentViewHolder;->_shareIcon:Landroid/widget/ImageView;

    .line 3250
    sget v13, Lcom/metamoji/noteanytime/R$id;->cabinetnoteicon:I

    invoke-virtual {v7, v13}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v13

    check-cast v13, Landroid/widget/ImageView;

    iput-object v13, v8, Lcom/metamoji/ui/cabinet/NoteListViewFragment$SimpleDocumentViewHolder;->_noteIcon:Landroid/widget/ImageView;

    .line 3251
    sget v13, Lcom/metamoji/noteanytime/R$id;->cabinettempshareicon:I

    invoke-virtual {v7, v13}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v13

    check-cast v13, Landroid/widget/ImageView;

    iput-object v13, v8, Lcom/metamoji/ui/cabinet/NoteListViewFragment$SimpleDocumentViewHolder;->_tempShareIcon:Landroid/widget/ImageView;

    .line 3252
    sget v13, Lcom/metamoji/noteanytime/R$id;->title:I

    invoke-virtual {v7, v13}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v13

    check-cast v13, Landroid/widget/TextView;

    iput-object v13, v8, Lcom/metamoji/ui/cabinet/NoteListViewFragment$SimpleDocumentViewHolder;->_title:Landroid/widget/TextView;

    .line 3253
    sget v13, Lcom/metamoji/noteanytime/R$id;->updateDate:I

    invoke-virtual {v7, v13}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v13

    check-cast v13, Landroid/widget/TextView;

    iput-object v13, v8, Lcom/metamoji/ui/cabinet/NoteListViewFragment$SimpleDocumentViewHolder;->_updateDate:Landroid/widget/TextView;

    .line 3254
    sget v13, Lcom/metamoji/noteanytime/R$id;->userText:I

    invoke-virtual {v7, v13}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v13

    check-cast v13, Landroid/widget/TextView;

    iput-object v13, v8, Lcom/metamoji/ui/cabinet/NoteListViewFragment$SimpleDocumentViewHolder;->_userText:Landroid/widget/TextView;

    .line 3255
    invoke-static {}, Lcom/metamoji/nt/NtFeatureManager;->getInstance()Lcom/metamoji/nt/NtFeatureManager;

    move-result-object v13

    sget-object v14, Lcom/metamoji/nt/NtFeature;->Star:Lcom/metamoji/nt/NtFeature;

    invoke-virtual {v13, v14}, Lcom/metamoji/nt/NtFeatureManager;->isAvailable(Lcom/metamoji/nt/NtFeature;)Z

    move-result v13

    if-eqz v13, :cond_10

    .line 3256
    sget v13, Lcom/metamoji/noteanytime/R$id;->cabinetstaricon:I

    invoke-virtual {v7, v13}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v13

    check-cast v13, Landroid/widget/ImageView;

    iput-object v13, v8, Lcom/metamoji/ui/cabinet/NoteListViewFragment$SimpleDocumentViewHolder;->_starIcon:Landroid/widget/ImageView;

    .line 3258
    :cond_10
    sget v13, Lcom/metamoji/noteanytime/R$id;->cabinetLocalCache:I

    invoke-virtual {v7, v13}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v13

    check-cast v13, Landroid/widget/ImageView;

    iput-object v13, v8, Lcom/metamoji/ui/cabinet/NoteListViewFragment$SimpleDocumentViewHolder;->_localCache:Landroid/widget/ImageView;

    .line 3262
    iget-object v13, v0, Lcom/metamoji/ui/cabinet/NoteListViewFragment$30;->this$0:Lcom/metamoji/ui/cabinet/NoteListViewFragment;

    sget v14, Lcom/metamoji/noteanytime/R$id;->cabinetItemLinearLayout:I

    invoke-virtual {v7, v14}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v14

    check-cast v14, Landroid/widget/LinearLayout;

    invoke-static {v13, v14}, Lcom/metamoji/ui/cabinet/NoteListViewFragment;->-$$Nest$fput_itemLinearLayout(Lcom/metamoji/ui/cabinet/NoteListViewFragment;Landroid/widget/LinearLayout;)V

    .line 3263
    iget-object v13, v0, Lcom/metamoji/ui/cabinet/NoteListViewFragment$30;->this$0:Lcom/metamoji/ui/cabinet/NoteListViewFragment;

    invoke-static {v13}, Lcom/metamoji/ui/cabinet/NoteListViewFragment;->-$$Nest$fget_itemLinearLayout(Lcom/metamoji/ui/cabinet/NoteListViewFragment;)Landroid/widget/LinearLayout;

    move-result-object v13

    if-eqz v13, :cond_12

    iget-object v13, v0, Lcom/metamoji/ui/cabinet/NoteListViewFragment$30;->this$0:Lcom/metamoji/ui/cabinet/NoteListViewFragment;

    invoke-static {v13}, Lcom/metamoji/ui/cabinet/NoteListViewFragment;->-$$Nest$fget_multiSelectMode(Lcom/metamoji/ui/cabinet/NoteListViewFragment;)Z

    move-result v13

    if-eqz v13, :cond_12

    .line 3264
    iget-object v13, v0, Lcom/metamoji/ui/cabinet/NoteListViewFragment$30;->this$0:Lcom/metamoji/ui/cabinet/NoteListViewFragment;

    invoke-static {v13}, Lcom/metamoji/ui/cabinet/NoteListViewFragment;->-$$Nest$fget_itemLinearLayout(Lcom/metamoji/ui/cabinet/NoteListViewFragment;)Landroid/widget/LinearLayout;

    move-result-object v13

    invoke-virtual {v13, v6}, Landroid/widget/LinearLayout;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_3

    .line 3308
    :cond_11
    iget-object v2, v0, Lcom/metamoji/ui/cabinet/NoteListViewFragment$30;->this$0:Lcom/metamoji/ui/cabinet/NoteListViewFragment;

    invoke-virtual {v2}, Lcom/metamoji/ui/cabinet/NoteListViewFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v2

    invoke-virtual {v2}, Landroidx/fragment/app/FragmentActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v2

    sget v7, Lcom/metamoji/noteanytime/R$layout;->item_cabinet_simple_header_base:I

    invoke-virtual {v2, v7, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup;

    .line 3309
    iget-object v7, v0, Lcom/metamoji/ui/cabinet/NoteListViewFragment$30;->this$0:Lcom/metamoji/ui/cabinet/NoteListViewFragment;

    invoke-virtual {v7}, Lcom/metamoji/ui/cabinet/NoteListViewFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v7

    invoke-virtual {v7}, Landroidx/fragment/app/FragmentActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v7

    sget v8, Lcom/metamoji/noteanytime/R$layout;->item_cabinet_simple_new_button:I

    invoke-virtual {v7, v8, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v7

    .line 3310
    new-instance v8, Lcom/metamoji/ui/cabinet/NoteListViewFragment$SimpleNewButtonViewHolder;

    invoke-direct {v8, v6}, Lcom/metamoji/ui/cabinet/NoteListViewFragment$SimpleNewButtonViewHolder;-><init>(Lcom/metamoji/ui/cabinet/NoteListViewFragment-IA;)V

    .line 3311
    sget v13, Lcom/metamoji/noteanytime/R$id;->title:I

    invoke-virtual {v7, v13}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v13

    check-cast v13, Landroid/widget/TextView;

    iput-object v13, v8, Lcom/metamoji/ui/cabinet/NoteListViewFragment$SimpleNewButtonViewHolder;->_title:Landroid/widget/TextView;

    .line 3312
    sget v13, Lcom/metamoji/noteanytime/R$id;->thumbnailImage:I

    invoke-virtual {v7, v13}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v13

    check-cast v13, Landroid/widget/ImageView;

    iput-object v13, v8, Lcom/metamoji/ui/cabinet/NoteListViewFragment$SimpleNewButtonViewHolder;->_thumbnail:Landroid/widget/ImageView;

    :cond_12
    :goto_3
    move-object v13, v8

    .line 3336
    :goto_4
    invoke-virtual {v2, v7, v4}, Landroid/view/ViewGroup;->addView(Landroid/view/View;I)V

    .line 3338
    invoke-virtual {v2, v13}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    move-object v7, v13

    :goto_5
    if-eqz v7, :cond_2d

    .line 3345
    iput v1, v7, Lcom/metamoji/ui/cabinet/NoteListViewFragment$SimpleViewHolder;->_position:I

    .line 3348
    invoke-static {v5}, Lcom/metamoji/ui/cabinet/NoteListViewFragment$Item;->-$$Nest$fget_type(Lcom/metamoji/ui/cabinet/NoteListViewFragment$Item;)I

    move-result v8

    if-eqz v8, :cond_2a

    const-string v13, "create"

    if-eq v8, v11, :cond_1b

    if-eq v8, v10, :cond_1a

    if-eq v8, v9, :cond_14

    const/4 v3, 0x4

    if-eq v8, v3, :cond_13

    goto/16 :goto_10

    .line 3464
    :cond_13
    check-cast v7, Lcom/metamoji/ui/cabinet/NoteListViewFragment$SimpleNewDriveViewHolder;

    .line 3466
    invoke-static {v5}, Lcom/metamoji/ui/cabinet/NoteListViewFragment;->-$$Nest$smgetTitleString(Lcom/metamoji/ui/cabinet/NoteListViewFragment$Item;)Ljava/lang/String;

    move-result-object v3

    .line 3467
    iget-object v5, v7, Lcom/metamoji/ui/cabinet/NoteListViewFragment$SimpleNewDriveViewHolder;->_title:Landroid/widget/TextView;

    invoke-virtual {v5, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_10

    .line 3471
    :cond_14
    check-cast v7, Lcom/metamoji/ui/cabinet/NoteListViewFragment$SimpleHeaderViewHolder;

    .line 3473
    iget-object v3, v0, Lcom/metamoji/ui/cabinet/NoteListViewFragment$30;->this$0:Lcom/metamoji/ui/cabinet/NoteListViewFragment;

    invoke-virtual {v3}, Lcom/metamoji/ui/cabinet/NoteListViewFragment;->getFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v3

    sget v5, Lcom/metamoji/noteanytime/R$id;->folder_tree_view_fragmnet:I

    invoke-virtual {v3, v5}, Landroidx/fragment/app/FragmentManager;->findFragmentById(I)Landroidx/fragment/app/Fragment;

    move-result-object v3

    check-cast v3, Lcom/metamoji/ui/cabinet/FolderTreeViewFragment;

    if-eqz v3, :cond_18

    .line 3475
    iget-object v5, v0, Lcom/metamoji/ui/cabinet/NoteListViewFragment$30;->this$0:Lcom/metamoji/ui/cabinet/NoteListViewFragment;

    invoke-virtual {v5}, Lcom/metamoji/ui/cabinet/NoteListViewFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v5

    .line 3476
    iget-boolean v3, v3, Lcom/metamoji/ui/cabinet/FolderTreeViewFragment;->isOpen:Z

    if-eqz v3, :cond_16

    .line 3477
    iget v3, v5, Landroid/content/res/Configuration;->orientation:I

    if-ne v3, v11, :cond_15

    .line 3478
    iget-object v3, v7, Lcom/metamoji/ui/cabinet/NoteListViewFragment$SimpleHeaderViewHolder;->_title:Landroid/widget/TextView;

    sget v5, Lcom/metamoji/ui/cabinet/CabinetDef;->SIMPLE_MODE_TITLE_WIDTH_PORTRAIT:I

    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setWidth(I)V

    goto :goto_6

    .line 3480
    :cond_15
    iget-object v3, v7, Lcom/metamoji/ui/cabinet/NoteListViewFragment$SimpleHeaderViewHolder;->_title:Landroid/widget/TextView;

    sget v5, Lcom/metamoji/ui/cabinet/CabinetDef;->SIMPLE_MODE_TITLE_WIDTH_LANDSCAPE:I

    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setWidth(I)V

    goto :goto_6

    .line 3483
    :cond_16
    iget v3, v5, Landroid/content/res/Configuration;->orientation:I

    if-ne v3, v11, :cond_17

    .line 3484
    iget-object v3, v7, Lcom/metamoji/ui/cabinet/NoteListViewFragment$SimpleHeaderViewHolder;->_title:Landroid/widget/TextView;

    sget v5, Lcom/metamoji/ui/cabinet/CabinetDef;->SIMPLE_MODE_TITLE_WIDTH_FULL_PORTRAIT:I

    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setWidth(I)V

    goto :goto_6

    .line 3486
    :cond_17
    iget-object v3, v7, Lcom/metamoji/ui/cabinet/NoteListViewFragment$SimpleHeaderViewHolder;->_title:Landroid/widget/TextView;

    sget v5, Lcom/metamoji/ui/cabinet/CabinetDef;->SIMPLE_MODE_TITLE_WIDTH_FULL_LANDSCAPE:I

    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setWidth(I)V

    goto :goto_6

    .line 3490
    :cond_18
    iget-object v3, v7, Lcom/metamoji/ui/cabinet/NoteListViewFragment$SimpleHeaderViewHolder;->_title:Landroid/widget/TextView;

    sget v5, Lcom/metamoji/ui/cabinet/CabinetDef;->SIMPLE_MODE_TITLE_WIDTH:I

    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setWidth(I)V

    .line 3494
    :goto_6
    invoke-static {}, Lcom/metamoji/noteanytime/MainActivity;->getNoteListSortKey()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_19

    .line 3495
    iget-object v3, v7, Lcom/metamoji/ui/cabinet/NoteListViewFragment$SimpleHeaderViewHolder;->_updateDate:Landroid/widget/TextView;

    sget v5, Lcom/metamoji/noteanytime/R$string;->Cabinet_CreateDate:I

    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setText(I)V

    goto/16 :goto_10

    .line 3497
    :cond_19
    iget-object v3, v7, Lcom/metamoji/ui/cabinet/NoteListViewFragment$SimpleHeaderViewHolder;->_updateDate:Landroid/widget/TextView;

    sget v5, Lcom/metamoji/noteanytime/R$string;->Cabinet_RenewDate:I

    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setText(I)V

    goto/16 :goto_10

    .line 3450
    :cond_1a
    check-cast v7, Lcom/metamoji/ui/cabinet/NoteListViewFragment$SimpleFolderViewHolder;

    .line 3452
    invoke-static {v5}, Lcom/metamoji/ui/cabinet/NoteListViewFragment;->-$$Nest$smgetTitleString(Lcom/metamoji/ui/cabinet/NoteListViewFragment$Item;)Ljava/lang/String;

    move-result-object v3

    .line 3453
    iget-object v5, v7, Lcom/metamoji/ui/cabinet/NoteListViewFragment$SimpleFolderViewHolder;->_folderName:Landroid/widget/TextView;

    invoke-virtual {v5, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_10

    .line 3350
    :cond_1b
    invoke-virtual {v5}, Lcom/metamoji/ui/cabinet/NoteListViewFragment$Item;->getDriveId()Ljava/lang/String;

    move-result-object v8

    .line 3351
    invoke-virtual {v5}, Lcom/metamoji/ui/cabinet/NoteListViewFragment$Item;->getDocId()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/metamoji/dvm/DvmUtil;->hasCache(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v9

    .line 3352
    check-cast v7, Lcom/metamoji/ui/cabinet/NoteListViewFragment$SimpleDocumentViewHolder;

    .line 3355
    iget-object v10, v0, Lcom/metamoji/ui/cabinet/NoteListViewFragment$30;->this$0:Lcom/metamoji/ui/cabinet/NoteListViewFragment;

    iget-object v14, v7, Lcom/metamoji/ui/cabinet/NoteListViewFragment$SimpleDocumentViewHolder;->_multiselectCheck:Landroid/widget/ImageView;

    invoke-static {v10, v14, v5}, Lcom/metamoji/ui/cabinet/NoteListViewFragment;->-$$Nest$msetMultiselectCheckVisibility(Lcom/metamoji/ui/cabinet/NoteListViewFragment;Landroid/widget/ImageView;Lcom/metamoji/ui/cabinet/NoteListViewFragment$Item;)V

    .line 3357
    iget-object v10, v0, Lcom/metamoji/ui/cabinet/NoteListViewFragment$30;->this$0:Lcom/metamoji/ui/cabinet/NoteListViewFragment;

    iget-object v14, v7, Lcom/metamoji/ui/cabinet/NoteListViewFragment$SimpleDocumentViewHolder;->_cabinetSyncWait:Landroid/widget/ImageView;

    invoke-static {v10, v14, v5}, Lcom/metamoji/ui/cabinet/NoteListViewFragment;->-$$Nest$msetSimpleSyncWaitVisibility(Lcom/metamoji/ui/cabinet/NoteListViewFragment;Landroid/widget/ImageView;Lcom/metamoji/ui/cabinet/NoteListViewFragment$Item;)V

    .line 3360
    iget-object v10, v7, Lcom/metamoji/ui/cabinet/NoteListViewFragment$SimpleDocumentViewHolder;->_starIcon:Landroid/widget/ImageView;

    .line 3363
    iget-object v10, v0, Lcom/metamoji/ui/cabinet/NoteListViewFragment$30;->this$0:Lcom/metamoji/ui/cabinet/NoteListViewFragment;

    invoke-virtual {v10, v7, v5}, Lcom/metamoji/ui/cabinet/NoteListViewFragment;->updateIconVisibilityForSimple(Lcom/metamoji/ui/cabinet/NoteListViewFragment$SimpleDocumentViewHolder;Lcom/metamoji/ui/cabinet/NoteListViewFragment$Item;)V

    .line 3365
    invoke-static {v5}, Lcom/metamoji/ui/cabinet/NoteListViewFragment$Item;->-$$Nest$fget_metadata(Lcom/metamoji/ui/cabinet/NoteListViewFragment$Item;)Ljava/lang/Object;

    move-result-object v10

    invoke-static {v10}, Lcom/metamoji/ui/cabinet/NoteListViewFragment;->-$$Nest$smisShareNote(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_1d

    .line 3366
    iget-object v10, v7, Lcom/metamoji/ui/cabinet/NoteListViewFragment$SimpleDocumentViewHolder;->_noteIcon:Landroid/widget/ImageView;

    invoke-virtual {v10, v12}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 3367
    iget-object v10, v7, Lcom/metamoji/ui/cabinet/NoteListViewFragment$SimpleDocumentViewHolder;->_templateIcon:Landroid/widget/ImageView;

    invoke-virtual {v10, v12}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 3369
    iget-object v10, v0, Lcom/metamoji/ui/cabinet/NoteListViewFragment$30;->this$0:Lcom/metamoji/ui/cabinet/NoteListViewFragment;

    invoke-static {v5}, Lcom/metamoji/ui/cabinet/NoteListViewFragment$Item;->-$$Nest$fget_metadata(Lcom/metamoji/ui/cabinet/NoteListViewFragment$Item;)Ljava/lang/Object;

    move-result-object v14

    invoke-static {v10, v14}, Lcom/metamoji/ui/cabinet/NoteListViewFragment;->-$$Nest$misShareTemplate(Lcom/metamoji/ui/cabinet/NoteListViewFragment;Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_1c

    .line 3370
    iget-object v10, v7, Lcom/metamoji/ui/cabinet/NoteListViewFragment$SimpleDocumentViewHolder;->_tempShareIcon:Landroid/widget/ImageView;

    invoke-virtual {v10, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 3371
    iget-object v10, v7, Lcom/metamoji/ui/cabinet/NoteListViewFragment$SimpleDocumentViewHolder;->_shareIcon:Landroid/widget/ImageView;

    invoke-virtual {v10, v12}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_7

    .line 3374
    :cond_1c
    iget-object v10, v7, Lcom/metamoji/ui/cabinet/NoteListViewFragment$SimpleDocumentViewHolder;->_tempShareIcon:Landroid/widget/ImageView;

    invoke-virtual {v10, v12}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 3375
    iget-object v10, v7, Lcom/metamoji/ui/cabinet/NoteListViewFragment$SimpleDocumentViewHolder;->_shareIcon:Landroid/widget/ImageView;

    invoke-virtual {v10, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_7

    .line 3378
    :cond_1d
    iget-object v10, v7, Lcom/metamoji/ui/cabinet/NoteListViewFragment$SimpleDocumentViewHolder;->_shareIcon:Landroid/widget/ImageView;

    invoke-virtual {v10, v12}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 3379
    iget-object v10, v7, Lcom/metamoji/ui/cabinet/NoteListViewFragment$SimpleDocumentViewHolder;->_tempShareIcon:Landroid/widget/ImageView;

    invoke-virtual {v10, v12}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 3381
    iget-object v10, v0, Lcom/metamoji/ui/cabinet/NoteListViewFragment$30;->this$0:Lcom/metamoji/ui/cabinet/NoteListViewFragment;

    invoke-static {v5}, Lcom/metamoji/ui/cabinet/NoteListViewFragment$Item;->-$$Nest$fget_metadata(Lcom/metamoji/ui/cabinet/NoteListViewFragment$Item;)Ljava/lang/Object;

    move-result-object v14

    invoke-static {v10, v14}, Lcom/metamoji/ui/cabinet/NoteListViewFragment;->-$$Nest$misTemplate(Lcom/metamoji/ui/cabinet/NoteListViewFragment;Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_1e

    .line 3382
    iget-object v10, v7, Lcom/metamoji/ui/cabinet/NoteListViewFragment$SimpleDocumentViewHolder;->_templateIcon:Landroid/widget/ImageView;

    invoke-virtual {v10, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 3383
    iget-object v10, v7, Lcom/metamoji/ui/cabinet/NoteListViewFragment$SimpleDocumentViewHolder;->_noteIcon:Landroid/widget/ImageView;

    invoke-virtual {v10, v12}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_7

    .line 3386
    :cond_1e
    iget-object v10, v7, Lcom/metamoji/ui/cabinet/NoteListViewFragment$SimpleDocumentViewHolder;->_templateIcon:Landroid/widget/ImageView;

    invoke-virtual {v10, v12}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 3387
    iget-object v10, v7, Lcom/metamoji/ui/cabinet/NoteListViewFragment$SimpleDocumentViewHolder;->_noteIcon:Landroid/widget/ImageView;

    invoke-virtual {v10, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 3391
    :goto_7
    invoke-static {v5}, Lcom/metamoji/ui/cabinet/NoteListViewFragment;->-$$Nest$smgetTitleString(Lcom/metamoji/ui/cabinet/NoteListViewFragment$Item;)Ljava/lang/String;

    move-result-object v10

    .line 3392
    iget-object v12, v7, Lcom/metamoji/ui/cabinet/NoteListViewFragment$SimpleDocumentViewHolder;->_title:Landroid/widget/TextView;

    invoke-virtual {v12, v10}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 3396
    iget-object v10, v7, Lcom/metamoji/ui/cabinet/NoteListViewFragment$SimpleDocumentViewHolder;->_updateDate:Landroid/widget/TextView;

    iget-object v12, v0, Lcom/metamoji/ui/cabinet/NoteListViewFragment$30;->this$0:Lcom/metamoji/ui/cabinet/NoteListViewFragment;

    invoke-static {v5}, Lcom/metamoji/ui/cabinet/NoteListViewFragment$Item;->-$$Nest$fget_metadata(Lcom/metamoji/ui/cabinet/NoteListViewFragment$Item;)Ljava/lang/Object;

    move-result-object v14

    invoke-static {v12, v14}, Lcom/metamoji/ui/cabinet/NoteListViewFragment;->-$$Nest$mgetDateString(Lcom/metamoji/ui/cabinet/NoteListViewFragment;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v10, v12}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    if-nez v9, :cond_1f

    .line 3398
    iget-object v9, v7, Lcom/metamoji/ui/cabinet/NoteListViewFragment$SimpleDocumentViewHolder;->_userText:Landroid/widget/TextView;

    const/16 v10, 0xff

    const/16 v12, 0x50

    invoke-static {v10, v12, v12, v12}, Landroid/graphics/Color;->argb(IIII)I

    move-result v14

    invoke-virtual {v9, v14}, Landroid/widget/TextView;->setTextColor(I)V

    .line 3399
    iget-object v9, v7, Lcom/metamoji/ui/cabinet/NoteListViewFragment$SimpleDocumentViewHolder;->_updateDate:Landroid/widget/TextView;

    invoke-static {v10, v12, v12, v12}, Landroid/graphics/Color;->argb(IIII)I

    move-result v10

    invoke-virtual {v9, v10}, Landroid/widget/TextView;->setTextColor(I)V

    .line 3403
    :cond_1f
    iget-object v9, v0, Lcom/metamoji/ui/cabinet/NoteListViewFragment$30;->this$0:Lcom/metamoji/ui/cabinet/NoteListViewFragment;

    invoke-virtual {v9}, Lcom/metamoji/ui/cabinet/NoteListViewFragment;->getFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v9

    sget v10, Lcom/metamoji/noteanytime/R$id;->folder_tree_view_fragmnet:I

    invoke-virtual {v9, v10}, Landroidx/fragment/app/FragmentManager;->findFragmentById(I)Landroidx/fragment/app/Fragment;

    move-result-object v9

    check-cast v9, Lcom/metamoji/ui/cabinet/FolderTreeViewFragment;

    if-eqz v9, :cond_20

    .line 3405
    invoke-virtual {v3}, Landroid/view/ViewGroup;->getWidth()I

    move-result v3

    int-to-float v3, v3

    const/high16 v9, 0x437c0000    # 252.0f

    .line 3406
    invoke-static {v9}, Lcom/metamoji/cm/CmUtils;->dipToPx(F)F

    move-result v9

    sub-float/2addr v3, v9

    float-to-int v3, v3

    .line 3407
    iget-object v9, v7, Lcom/metamoji/ui/cabinet/NoteListViewFragment$SimpleDocumentViewHolder;->_title:Landroid/widget/TextView;

    invoke-virtual {v9, v3}, Landroid/widget/TextView;->setWidth(I)V

    goto :goto_8

    .line 3409
    :cond_20
    iget-object v3, v7, Lcom/metamoji/ui/cabinet/NoteListViewFragment$SimpleDocumentViewHolder;->_title:Landroid/widget/TextView;

    sget v9, Lcom/metamoji/ui/cabinet/CabinetDef;->SIMPLE_MODE_TITLE_WIDTH:I

    invoke-virtual {v3, v9}, Landroid/widget/TextView;->setWidth(I)V

    :goto_8
    if-eqz v8, :cond_2b

    .line 3413
    invoke-static {}, Lcom/metamoji/dvm/DvmDriveManager;->getInstance()Lcom/metamoji/dvm/DvmDriveManager;

    move-result-object v3

    invoke-virtual {v3, v8}, Lcom/metamoji/dvm/DvmDriveManager;->getDvmDocumentManager(Ljava/lang/String;)Lcom/metamoji/dvm/fw/DvmDocumentManager;

    move-result-object v3

    if-eqz v3, :cond_2b

    .line 3416
    invoke-virtual {v3}, Lcom/metamoji/dvm/fw/DvmDocumentManager;->normalizedMemberNameMapCache()Ljava/util/Map;

    move-result-object v9

    .line 3417
    invoke-virtual {v3}, Lcom/metamoji/dvm/fw/DvmDocumentManager;->nonMemberNameMapCache()Ljava/util/Map;

    move-result-object v3

    .line 3418
    invoke-static {v5}, Lcom/metamoji/ui/cabinet/NoteListViewFragment$Item;->-$$Nest$fget_createUserId(Lcom/metamoji/ui/cabinet/NoteListViewFragment$Item;)Ljava/lang/String;

    move-result-object v14

    .line 3419
    invoke-static {v5}, Lcom/metamoji/ui/cabinet/NoteListViewFragment$Item;->-$$Nest$fget_updateUserId(Lcom/metamoji/ui/cabinet/NoteListViewFragment$Item;)Ljava/lang/String;

    move-result-object v15

    .line 3422
    invoke-static {}, Lcom/metamoji/noteanytime/MainActivity;->getNoteListSortKey()Ljava/lang/String;

    move-result-object v5

    if-ne v5, v13, :cond_21

    move v5, v11

    goto :goto_9

    :cond_21
    move v5, v4

    .line 3424
    :goto_9
    invoke-static {v9, v14}, Lcom/metamoji/ui/cabinet/CabinetUtils;->canResolveNickNameFrom(Ljava/util/Map;Ljava/lang/String;)Z

    move-result v10

    const-string v12, ""

    if-eqz v10, :cond_22

    .line 3425
    invoke-static {v9, v14}, Lcom/metamoji/ui/cabinet/CabinetUtils;->nickNameFrom(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    :goto_a
    move v13, v4

    goto :goto_b

    .line 3426
    :cond_22
    invoke-static {v3, v14}, Lcom/metamoji/ui/cabinet/CabinetUtils;->canResolveNickNameFrom(Ljava/util/Map;Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_23

    .line 3427
    invoke-static {v3, v14}, Lcom/metamoji/ui/cabinet/CabinetUtils;->nickNameFrom(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    goto :goto_a

    :cond_23
    move v13, v11

    move-object v10, v12

    .line 3432
    :goto_b
    invoke-static {v9, v15}, Lcom/metamoji/ui/cabinet/CabinetUtils;->canResolveNickNameFrom(Ljava/util/Map;Ljava/lang/String;)Z

    move-result v16

    if-eqz v16, :cond_24

    .line 3433
    invoke-static {v9, v15}, Lcom/metamoji/ui/cabinet/CabinetUtils;->nickNameFrom(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    goto :goto_c

    .line 3434
    :cond_24
    invoke-static {v3, v15}, Lcom/metamoji/ui/cabinet/CabinetUtils;->canResolveNickNameFrom(Ljava/util/Map;Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_25

    .line 3435
    invoke-static {v3, v15}, Lcom/metamoji/ui/cabinet/CabinetUtils;->nickNameFrom(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    goto :goto_c

    :cond_25
    move v13, v11

    :goto_c
    if-eqz v13, :cond_28

    .line 3441
    iget-object v3, v0, Lcom/metamoji/ui/cabinet/NoteListViewFragment$30;->val$nicknameTaskMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {}, Lcom/metamoji/sd/SdNicknameLoader;->getInstance()Lcom/metamoji/sd/SdNicknameLoader;

    move-result-object v12

    if-eqz v5, :cond_26

    iget-object v9, v7, Lcom/metamoji/ui/cabinet/NoteListViewFragment$SimpleDocumentViewHolder;->_userText:Landroid/widget/TextView;

    move-object/from16 v16, v9

    goto :goto_d

    :cond_26
    move-object/from16 v16, v6

    :goto_d
    if-eqz v5, :cond_27

    goto :goto_e

    :cond_27
    iget-object v6, v7, Lcom/metamoji/ui/cabinet/NoteListViewFragment$SimpleDocumentViewHolder;->_userText:Landroid/widget/TextView;

    :goto_e
    move-object/from16 v17, v6

    move-object v13, v8

    invoke-virtual/range {v12 .. v17}, Lcom/metamoji/sd/SdNicknameLoader;->addTask(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/widget/TextView;Landroid/widget/TextView;)Ljava/util/concurrent/Future;

    move-result-object v5

    invoke-virtual {v3, v2, v5}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_10

    .line 3443
    :cond_28
    iget-object v3, v7, Lcom/metamoji/ui/cabinet/NoteListViewFragment$SimpleDocumentViewHolder;->_userText:Landroid/widget/TextView;

    if-eqz v5, :cond_29

    goto :goto_f

    :cond_29
    move-object v10, v12

    :goto_f
    invoke-virtual {v3, v10}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_10

    .line 3457
    :cond_2a
    check-cast v7, Lcom/metamoji/ui/cabinet/NoteListViewFragment$SimpleNewButtonViewHolder;

    .line 3459
    invoke-static {v5}, Lcom/metamoji/ui/cabinet/NoteListViewFragment;->-$$Nest$smgetTitleString(Lcom/metamoji/ui/cabinet/NoteListViewFragment$Item;)Ljava/lang/String;

    move-result-object v3

    .line 3460
    iget-object v5, v7, Lcom/metamoji/ui/cabinet/NoteListViewFragment$SimpleNewButtonViewHolder;->_title:Landroid/widget/TextView;

    invoke-virtual {v5, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 3503
    :cond_2b
    :goto_10
    iget-object v3, v0, Lcom/metamoji/ui/cabinet/NoteListViewFragment$30;->this$0:Lcom/metamoji/ui/cabinet/NoteListViewFragment;

    invoke-static {v3}, Lcom/metamoji/ui/cabinet/NoteListViewFragment;->-$$Nest$fget_simpleView(Lcom/metamoji/ui/cabinet/NoteListViewFragment;)Lcom/metamoji/ui/cabinet/SimpleGridView;

    move-result-object v3

    iget v3, v3, Lcom/metamoji/ui/cabinet/SimpleGridView;->_selectedPosition:I

    if-ne v1, v3, :cond_2c

    move v4, v11

    :cond_2c
    invoke-virtual {v2, v4}, Landroid/view/View;->setActivated(Z)V

    :cond_2d
    return-object v2

    .line 3228
    :cond_2e
    :goto_11
    new-instance v1, Landroid/view/View;

    iget-object v2, v0, Lcom/metamoji/ui/cabinet/NoteListViewFragment$30;->this$0:Lcom/metamoji/ui/cabinet/NoteListViewFragment;

    invoke-static {v2}, Lcom/metamoji/ui/cabinet/NoteListViewFragment;->-$$Nest$fget_activity(Lcom/metamoji/ui/cabinet/NoteListViewFragment;)Landroidx/fragment/app/FragmentActivity;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    return-object v1
.end method
