.class public Lcom/metamoji/ui/cabinet/FolderPathManager;
.super Ljava/lang/Object;
.source "FolderPathManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/metamoji/ui/cabinet/FolderPathManager$TagLabel;
    }
.end annotation


# instance fields
.field private _CRBoxOldInequalityText:Landroid/widget/TextView;

.field private _CRBoxOldText:Landroid/widget/TextView;

.field private _context:Landroid/content/Context;

.field private _currentFolder:Lcom/metamoji/ui/cabinet/CabinetTreeItem;

.field private _driveParentInequalityText:Landroid/widget/TextView;

.field private _driveParentText:Landroid/widget/TextView;

.field private _folderChangeEventListener:Lcom/metamoji/ui/cabinet/FolderTreeChangeEventListener;

.field private _folderClickListener:Lcom/metamoji/ui/cabinet/FolderTreeViewFragment$OnFolderClickListener;

.field private _folderEndText:Landroid/widget/TextView;

.field private _folderPathIcon:Landroid/widget/ImageView;

.field private _folderPathInequalityText:Landroid/widget/TextView;

.field private _folderPathText:Landroid/widget/TextView;

.field private _tagList:Landroid/widget/LinearLayout;

.field private _view:Landroid/view/View;


# direct methods
.method static bridge synthetic -$$Nest$fget_folderChangeEventListener(Lcom/metamoji/ui/cabinet/FolderPathManager;)Lcom/metamoji/ui/cabinet/FolderTreeChangeEventListener;
    .locals 0

    iget-object p0, p0, Lcom/metamoji/ui/cabinet/FolderPathManager;->_folderChangeEventListener:Lcom/metamoji/ui/cabinet/FolderTreeChangeEventListener;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fget_folderClickListener(Lcom/metamoji/ui/cabinet/FolderPathManager;)Lcom/metamoji/ui/cabinet/FolderTreeViewFragment$OnFolderClickListener;
    .locals 0

    iget-object p0, p0, Lcom/metamoji/ui/cabinet/FolderPathManager;->_folderClickListener:Lcom/metamoji/ui/cabinet/FolderTreeViewFragment$OnFolderClickListener;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fget_folderPathIcon(Lcom/metamoji/ui/cabinet/FolderPathManager;)Landroid/widget/ImageView;
    .locals 0

    iget-object p0, p0, Lcom/metamoji/ui/cabinet/FolderPathManager;->_folderPathIcon:Landroid/widget/ImageView;

    return-object p0
.end method

.method public constructor <init>(Landroid/widget/HorizontalScrollView;Landroid/content/Context;Lcom/metamoji/ui/cabinet/FolderTreeViewFragment$OnFolderClickListener;Lcom/metamoji/ui/cabinet/FolderTreeChangeEventListener;)V
    .locals 6

    .line 110
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 111
    iput-object p2, p0, Lcom/metamoji/ui/cabinet/FolderPathManager;->_context:Landroid/content/Context;

    .line 112
    iput-object p3, p0, Lcom/metamoji/ui/cabinet/FolderPathManager;->_folderClickListener:Lcom/metamoji/ui/cabinet/FolderTreeViewFragment$OnFolderClickListener;

    .line 113
    iput-object p4, p0, Lcom/metamoji/ui/cabinet/FolderPathManager;->_folderChangeEventListener:Lcom/metamoji/ui/cabinet/FolderTreeChangeEventListener;

    .line 114
    new-instance p2, Landroid/widget/LinearLayout;

    iget-object p3, p0, Lcom/metamoji/ui/cabinet/FolderPathManager;->_context:Landroid/content/Context;

    invoke-direct {p2, p3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 115
    new-instance p3, Landroid/view/ViewGroup$LayoutParams;

    const/4 p4, -0x2

    invoke-direct {p3, p4, p4}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {p2, p3}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 117
    new-instance p3, Landroid/widget/ImageView;

    iget-object v0, p0, Lcom/metamoji/ui/cabinet/FolderPathManager;->_context:Landroid/content/Context;

    invoke-direct {p3, v0}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object p3, p0, Lcom/metamoji/ui/cabinet/FolderPathManager;->_folderPathIcon:Landroid/widget/ImageView;

    .line 118
    new-instance v0, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v0, p4, p4}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {p3, v0}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 119
    iget-object p3, p0, Lcom/metamoji/ui/cabinet/FolderPathManager;->_folderPathIcon:Landroid/widget/ImageView;

    sget v0, Lcom/metamoji/ui/cabinet/CabinetDef;->FOLDER_PATH_PADDING_SIZE:I

    const/4 v1, 0x0

    invoke-virtual {p3, v1, v1, v0, v1}, Landroid/widget/ImageView;->setPadding(IIII)V

    .line 120
    iget-object p3, p0, Lcom/metamoji/ui/cabinet/FolderPathManager;->_folderPathIcon:Landroid/widget/ImageView;

    sget v0, Lcom/metamoji/ui/cabinet/CabinetDef;->FOLDER_PATH_ICON_SIZE:I

    invoke-virtual {p3, v0}, Landroid/widget/ImageView;->setMaxWidth(I)V

    .line 121
    iget-object p3, p0, Lcom/metamoji/ui/cabinet/FolderPathManager;->_folderPathIcon:Landroid/widget/ImageView;

    sget v0, Lcom/metamoji/ui/cabinet/CabinetDef;->FOLDER_PATH_ICON_SIZE:I

    invoke-virtual {p3, v0}, Landroid/widget/ImageView;->setMaxHeight(I)V

    .line 122
    iget-object p3, p0, Lcom/metamoji/ui/cabinet/FolderPathManager;->_folderPathIcon:Landroid/widget/ImageView;

    const/4 v0, 0x1

    invoke-virtual {p3, v0}, Landroid/widget/ImageView;->setAdjustViewBounds(Z)V

    .line 123
    iget-object p3, p0, Lcom/metamoji/ui/cabinet/FolderPathManager;->_folderPathIcon:Landroid/widget/ImageView;

    invoke-virtual {p2, p3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 125
    new-instance p3, Landroid/widget/TextView;

    iget-object v0, p0, Lcom/metamoji/ui/cabinet/FolderPathManager;->_context:Landroid/content/Context;

    invoke-direct {p3, v0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object p3, p0, Lcom/metamoji/ui/cabinet/FolderPathManager;->_CRBoxOldText:Landroid/widget/TextView;

    .line 126
    new-instance v0, Landroid/view/ViewGroup$LayoutParams;

    const/4 v2, -0x1

    invoke-direct {v0, p4, v2}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {p3, v0}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 127
    iget-object p3, p0, Lcom/metamoji/ui/cabinet/FolderPathManager;->_CRBoxOldText:Landroid/widget/TextView;

    invoke-virtual {p3, v1, v1, v1, v1}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 128
    iget-object p3, p0, Lcom/metamoji/ui/cabinet/FolderPathManager;->_CRBoxOldText:Landroid/widget/TextView;

    const/16 v0, 0x13

    invoke-virtual {p3, v0}, Landroid/widget/TextView;->setGravity(I)V

    .line 129
    iget-object p3, p0, Lcom/metamoji/ui/cabinet/FolderPathManager;->_CRBoxOldText:Landroid/widget/TextView;

    const v3, -0xbbbbbc

    invoke-virtual {p3, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 130
    iget-object p3, p0, Lcom/metamoji/ui/cabinet/FolderPathManager;->_CRBoxOldText:Landroid/widget/TextView;

    new-instance v4, Lcom/metamoji/ui/cabinet/FolderPathManager$1;

    invoke-direct {v4, p0}, Lcom/metamoji/ui/cabinet/FolderPathManager$1;-><init>(Lcom/metamoji/ui/cabinet/FolderPathManager;)V

    invoke-virtual {p3, v4}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 140
    iget-object p3, p0, Lcom/metamoji/ui/cabinet/FolderPathManager;->_CRBoxOldText:Landroid/widget/TextView;

    invoke-virtual {p2, p3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 142
    new-instance p3, Landroid/widget/TextView;

    iget-object v4, p0, Lcom/metamoji/ui/cabinet/FolderPathManager;->_context:Landroid/content/Context;

    invoke-direct {p3, v4}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object p3, p0, Lcom/metamoji/ui/cabinet/FolderPathManager;->_CRBoxOldInequalityText:Landroid/widget/TextView;

    .line 143
    new-instance v4, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v4, p4, v2}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {p3, v4}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 144
    iget-object p3, p0, Lcom/metamoji/ui/cabinet/FolderPathManager;->_CRBoxOldInequalityText:Landroid/widget/TextView;

    invoke-virtual {p3, v1, v1, v1, v1}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 145
    iget-object p3, p0, Lcom/metamoji/ui/cabinet/FolderPathManager;->_CRBoxOldInequalityText:Landroid/widget/TextView;

    invoke-virtual {p3, v0}, Landroid/widget/TextView;->setGravity(I)V

    .line 146
    iget-object p3, p0, Lcom/metamoji/ui/cabinet/FolderPathManager;->_CRBoxOldInequalityText:Landroid/widget/TextView;

    const v4, -0x333334

    invoke-virtual {p3, v4}, Landroid/widget/TextView;->setTextColor(I)V

    .line 147
    iget-object p3, p0, Lcom/metamoji/ui/cabinet/FolderPathManager;->_CRBoxOldInequalityText:Landroid/widget/TextView;

    invoke-virtual {p2, p3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 149
    new-instance p3, Landroid/widget/TextView;

    iget-object v5, p0, Lcom/metamoji/ui/cabinet/FolderPathManager;->_context:Landroid/content/Context;

    invoke-direct {p3, v5}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object p3, p0, Lcom/metamoji/ui/cabinet/FolderPathManager;->_driveParentText:Landroid/widget/TextView;

    .line 150
    new-instance v5, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v5, p4, v2}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {p3, v5}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 151
    iget-object p3, p0, Lcom/metamoji/ui/cabinet/FolderPathManager;->_driveParentText:Landroid/widget/TextView;

    invoke-virtual {p3, v1, v1, v1, v1}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 152
    iget-object p3, p0, Lcom/metamoji/ui/cabinet/FolderPathManager;->_driveParentText:Landroid/widget/TextView;

    invoke-virtual {p3, v0}, Landroid/widget/TextView;->setGravity(I)V

    .line 153
    iget-object p3, p0, Lcom/metamoji/ui/cabinet/FolderPathManager;->_driveParentText:Landroid/widget/TextView;

    invoke-virtual {p3, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 154
    iget-object p3, p0, Lcom/metamoji/ui/cabinet/FolderPathManager;->_driveParentText:Landroid/widget/TextView;

    new-instance v5, Lcom/metamoji/ui/cabinet/FolderPathManager$2;

    invoke-direct {v5, p0}, Lcom/metamoji/ui/cabinet/FolderPathManager$2;-><init>(Lcom/metamoji/ui/cabinet/FolderPathManager;)V

    invoke-virtual {p3, v5}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 166
    iget-object p3, p0, Lcom/metamoji/ui/cabinet/FolderPathManager;->_driveParentText:Landroid/widget/TextView;

    invoke-virtual {p2, p3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 168
    new-instance p3, Landroid/widget/TextView;

    iget-object v5, p0, Lcom/metamoji/ui/cabinet/FolderPathManager;->_context:Landroid/content/Context;

    invoke-direct {p3, v5}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object p3, p0, Lcom/metamoji/ui/cabinet/FolderPathManager;->_driveParentInequalityText:Landroid/widget/TextView;

    .line 169
    new-instance v5, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v5, p4, v2}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {p3, v5}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 170
    iget-object p3, p0, Lcom/metamoji/ui/cabinet/FolderPathManager;->_driveParentInequalityText:Landroid/widget/TextView;

    invoke-virtual {p3, v1, v1, v1, v1}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 171
    iget-object p3, p0, Lcom/metamoji/ui/cabinet/FolderPathManager;->_driveParentInequalityText:Landroid/widget/TextView;

    invoke-virtual {p3, v0}, Landroid/widget/TextView;->setGravity(I)V

    .line 172
    iget-object p3, p0, Lcom/metamoji/ui/cabinet/FolderPathManager;->_driveParentInequalityText:Landroid/widget/TextView;

    invoke-virtual {p3, v4}, Landroid/widget/TextView;->setTextColor(I)V

    .line 173
    iget-object p3, p0, Lcom/metamoji/ui/cabinet/FolderPathManager;->_driveParentInequalityText:Landroid/widget/TextView;

    invoke-virtual {p2, p3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 175
    new-instance p3, Landroid/widget/TextView;

    iget-object v5, p0, Lcom/metamoji/ui/cabinet/FolderPathManager;->_context:Landroid/content/Context;

    invoke-direct {p3, v5}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object p3, p0, Lcom/metamoji/ui/cabinet/FolderPathManager;->_folderPathText:Landroid/widget/TextView;

    .line 176
    new-instance v5, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v5, p4, v2}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {p3, v5}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 177
    iget-object p3, p0, Lcom/metamoji/ui/cabinet/FolderPathManager;->_folderPathText:Landroid/widget/TextView;

    invoke-virtual {p3, v1, v1, v1, v1}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 178
    iget-object p3, p0, Lcom/metamoji/ui/cabinet/FolderPathManager;->_folderPathText:Landroid/widget/TextView;

    invoke-virtual {p3, v0}, Landroid/widget/TextView;->setGravity(I)V

    .line 179
    iget-object p3, p0, Lcom/metamoji/ui/cabinet/FolderPathManager;->_folderPathText:Landroid/widget/TextView;

    invoke-virtual {p3, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 180
    iget-object p3, p0, Lcom/metamoji/ui/cabinet/FolderPathManager;->_folderPathText:Landroid/widget/TextView;

    new-instance v5, Lcom/metamoji/ui/cabinet/FolderPathManager$3;

    invoke-direct {v5, p0}, Lcom/metamoji/ui/cabinet/FolderPathManager$3;-><init>(Lcom/metamoji/ui/cabinet/FolderPathManager;)V

    invoke-virtual {p3, v5}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 196
    iget-object p3, p0, Lcom/metamoji/ui/cabinet/FolderPathManager;->_folderPathText:Landroid/widget/TextView;

    invoke-virtual {p2, p3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 198
    new-instance p3, Landroid/widget/TextView;

    iget-object v5, p0, Lcom/metamoji/ui/cabinet/FolderPathManager;->_context:Landroid/content/Context;

    invoke-direct {p3, v5}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object p3, p0, Lcom/metamoji/ui/cabinet/FolderPathManager;->_folderPathInequalityText:Landroid/widget/TextView;

    .line 199
    new-instance v5, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v5, p4, v2}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {p3, v5}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 200
    iget-object p3, p0, Lcom/metamoji/ui/cabinet/FolderPathManager;->_folderPathInequalityText:Landroid/widget/TextView;

    invoke-virtual {p3, v1, v1, v1, v1}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 201
    iget-object p3, p0, Lcom/metamoji/ui/cabinet/FolderPathManager;->_folderPathInequalityText:Landroid/widget/TextView;

    invoke-virtual {p3, v0}, Landroid/widget/TextView;->setGravity(I)V

    .line 202
    iget-object p3, p0, Lcom/metamoji/ui/cabinet/FolderPathManager;->_folderPathInequalityText:Landroid/widget/TextView;

    invoke-virtual {p3, v4}, Landroid/widget/TextView;->setTextColor(I)V

    .line 203
    iget-object p3, p0, Lcom/metamoji/ui/cabinet/FolderPathManager;->_folderPathInequalityText:Landroid/widget/TextView;

    invoke-virtual {p2, p3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 205
    new-instance p3, Landroid/widget/TextView;

    iget-object v4, p0, Lcom/metamoji/ui/cabinet/FolderPathManager;->_context:Landroid/content/Context;

    invoke-direct {p3, v4}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object p3, p0, Lcom/metamoji/ui/cabinet/FolderPathManager;->_folderEndText:Landroid/widget/TextView;

    .line 206
    new-instance v4, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v4, p4, v2}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {p3, v4}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 207
    iget-object p3, p0, Lcom/metamoji/ui/cabinet/FolderPathManager;->_folderEndText:Landroid/widget/TextView;

    invoke-virtual {p3, v1, v1, v1, v1}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 208
    iget-object p3, p0, Lcom/metamoji/ui/cabinet/FolderPathManager;->_folderEndText:Landroid/widget/TextView;

    invoke-virtual {p3, v0}, Landroid/widget/TextView;->setGravity(I)V

    .line 209
    iget-object p3, p0, Lcom/metamoji/ui/cabinet/FolderPathManager;->_folderEndText:Landroid/widget/TextView;

    invoke-virtual {p3, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 210
    iget-object p3, p0, Lcom/metamoji/ui/cabinet/FolderPathManager;->_folderEndText:Landroid/widget/TextView;

    invoke-virtual {p2, p3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 212
    new-instance p3, Landroid/widget/LinearLayout;

    iget-object v0, p0, Lcom/metamoji/ui/cabinet/FolderPathManager;->_context:Landroid/content/Context;

    invoke-direct {p3, v0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    iput-object p3, p0, Lcom/metamoji/ui/cabinet/FolderPathManager;->_tagList:Landroid/widget/LinearLayout;

    .line 213
    new-instance v0, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v0, p4, v2}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {p3, v0}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 215
    iget-object p3, p0, Lcom/metamoji/ui/cabinet/FolderPathManager;->_tagList:Landroid/widget/LinearLayout;

    invoke-virtual {p2, p3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 217
    invoke-virtual {p1, p2}, Landroid/widget/HorizontalScrollView;->addView(Landroid/view/View;)V

    .line 218
    iput-object p2, p0, Lcom/metamoji/ui/cabinet/FolderPathManager;->_view:Landroid/view/View;

    return-void
.end method


# virtual methods
.method public setVisibilty(I)V
    .locals 1

    .line 628
    iget-object v0, p0, Lcom/metamoji/ui/cabinet/FolderPathManager;->_view:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method public updateView(Lcom/metamoji/ui/cabinet/CabinetTreeItem;)V
    .locals 12

    .line 225
    :try_start_0
    iput-object p1, p0, Lcom/metamoji/ui/cabinet/FolderPathManager;->_currentFolder:Lcom/metamoji/ui/cabinet/CabinetTreeItem;

    .line 226
    iget-object v0, p0, Lcom/metamoji/ui/cabinet/FolderPathManager;->_tagList:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 228
    invoke-virtual {p1}, Lcom/metamoji/ui/cabinet/CabinetTreeItem;->getType()Lcom/metamoji/ui/cabinet/CabinetTreeItem$Type;

    move-result-object v0

    .line 229
    sget-object v2, Lcom/metamoji/ui/cabinet/FolderPathManager$5;->$SwitchMap$com$metamoji$ui$cabinet$CabinetTreeItem$Type:[I

    invoke-virtual {v0}, Lcom/metamoji/ui/cabinet/CabinetTreeItem$Type;->ordinal()I

    move-result v0

    aget v0, v2, v0
    :try_end_0
    .catch Lcom/metamoji/cm/CmException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v6, 0x1

    const-string v2, " > "

    const/4 v7, 0x0

    const/16 v3, 0x8

    packed-switch v0, :pswitch_data_0

    goto/16 :goto_c

    .line 593
    :pswitch_0
    :try_start_1
    iget-object v0, p0, Lcom/metamoji/ui/cabinet/FolderPathManager;->_CRBoxOldText:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 594
    iget-object v0, p0, Lcom/metamoji/ui/cabinet/FolderPathManager;->_CRBoxOldInequalityText:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 595
    iget-object v0, p0, Lcom/metamoji/ui/cabinet/FolderPathManager;->_driveParentText:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 596
    iget-object v0, p0, Lcom/metamoji/ui/cabinet/FolderPathManager;->_driveParentInequalityText:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 597
    iget-object v0, p0, Lcom/metamoji/ui/cabinet/FolderPathManager;->_folderPathText:Landroid/widget/TextView;

    invoke-virtual {v0, v7}, Landroid/widget/TextView;->setVisibility(I)V

    .line 598
    iget-object v0, p0, Lcom/metamoji/ui/cabinet/FolderPathManager;->_folderPathInequalityText:Landroid/widget/TextView;

    invoke-virtual {v0, v7}, Landroid/widget/TextView;->setVisibility(I)V

    .line 599
    iget-object v0, p0, Lcom/metamoji/ui/cabinet/FolderPathManager;->_folderEndText:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 600
    iget-object v0, p0, Lcom/metamoji/ui/cabinet/FolderPathManager;->_folderPathIcon:Landroid/widget/ImageView;

    sget v3, Lcom/metamoji/noteanytime/R$drawable;->cabinet_tree_thumb_folder:I

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 601
    iget-object v0, p0, Lcom/metamoji/ui/cabinet/FolderPathManager;->_folderPathText:Landroid/widget/TextView;

    sget-object v3, Lcom/metamoji/ui/cabinet/FolderTreeViewFragment;->CABINET_ROOT_FOLDER_INFO:Lcom/metamoji/ui/cabinet/CabinetTreeItem;

    invoke-virtual {v3}, Lcom/metamoji/ui/cabinet/CabinetTreeItem;->getTagId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 602
    iget-object v0, p0, Lcom/metamoji/ui/cabinet/FolderPathManager;->_folderPathText:Landroid/widget/TextView;

    sget-object v3, Lcom/metamoji/ui/cabinet/FolderTreeViewFragment;->CABINET_ROOT_FOLDER_INFO:Lcom/metamoji/ui/cabinet/CabinetTreeItem;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setTag(Ljava/lang/Object;)V

    .line 603
    iget-object v0, p0, Lcom/metamoji/ui/cabinet/FolderPathManager;->_folderPathInequalityText:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 605
    invoke-static {}, Lcom/metamoji/dvm/DvmDriveManager;->getInstance()Lcom/metamoji/dvm/DvmDriveManager;

    move-result-object v0

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lcom/metamoji/dvm/DvmDriveManager;->getDvmDocumentManager(Ljava/lang/String;)Lcom/metamoji/dvm/fw/DvmDocumentManager;

    move-result-object v8

    .line 606
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    .line 607
    invoke-virtual {p1}, Lcom/metamoji/ui/cabinet/CabinetTreeItem;->getTags()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :goto_0
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_f

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 608
    invoke-virtual {v8, v0}, Lcom/metamoji/dvm/fw/DvmDocumentManager;->getTag(Ljava/lang/String;)Lcom/metamoji/dvm/fw/bean/DvmTagBean;

    move-result-object v2

    .line 609
    invoke-virtual {v9, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 611
    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v0

    invoke-virtual {p1}, Lcom/metamoji/ui/cabinet/CabinetTreeItem;->getTags()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ne v0, v3, :cond_0

    move v5, v6

    goto :goto_1

    :cond_0
    move v5, v7

    .line 614
    :goto_1
    new-instance v0, Lcom/metamoji/ui/cabinet/FolderPathManager$TagLabel;

    move-object v3, v2

    iget-object v2, p0, Lcom/metamoji/ui/cabinet/FolderPathManager;->_context:Landroid/content/Context;

    move-object v4, v3

    .line 615
    invoke-static {v9}, Lcom/metamoji/ui/cabinet/CabinetTreeItem;->createFromTags(Ljava/util/List;)Lcom/metamoji/ui/cabinet/CabinetTreeItem;

    move-result-object v3

    invoke-virtual {v4}, Lcom/metamoji/dvm/fw/bean/DvmTagBean;->getColor()Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/metamoji/ui/cabinet/FolderPathManager$TagLabel;-><init>(Lcom/metamoji/ui/cabinet/FolderPathManager;Landroid/content/Context;Lcom/metamoji/ui/cabinet/CabinetTreeItem;IZ)V

    .line 616
    iget-object v2, p0, Lcom/metamoji/ui/cabinet/FolderPathManager;->_tagList:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    goto :goto_0

    .line 582
    :pswitch_1
    iget-object v0, p0, Lcom/metamoji/ui/cabinet/FolderPathManager;->_CRBoxOldText:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 583
    iget-object v0, p0, Lcom/metamoji/ui/cabinet/FolderPathManager;->_CRBoxOldInequalityText:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 584
    iget-object v0, p0, Lcom/metamoji/ui/cabinet/FolderPathManager;->_driveParentText:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 585
    iget-object v0, p0, Lcom/metamoji/ui/cabinet/FolderPathManager;->_driveParentInequalityText:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 586
    iget-object v0, p0, Lcom/metamoji/ui/cabinet/FolderPathManager;->_folderPathText:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 587
    iget-object v0, p0, Lcom/metamoji/ui/cabinet/FolderPathManager;->_folderPathInequalityText:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 588
    iget-object v0, p0, Lcom/metamoji/ui/cabinet/FolderPathManager;->_folderEndText:Landroid/widget/TextView;

    invoke-virtual {v0, v7}, Landroid/widget/TextView;->setVisibility(I)V

    .line 589
    iget-object v0, p0, Lcom/metamoji/ui/cabinet/FolderPathManager;->_folderPathIcon:Landroid/widget/ImageView;

    sget v2, Lcom/metamoji/noteanytime/R$drawable;->design1_tree_thumb_mydrive:I

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 590
    iget-object v0, p0, Lcom/metamoji/ui/cabinet/FolderPathManager;->_folderEndText:Landroid/widget/TextView;

    sget-object v2, Lcom/metamoji/ui/cabinet/FolderTreeViewFragment;->CABINET_ROOT_FOLDER_INFO:Lcom/metamoji/ui/cabinet/CabinetTreeItem;

    invoke-virtual {v2}, Lcom/metamoji/ui/cabinet/CabinetTreeItem;->getTagId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void

    .line 571
    :pswitch_2
    iget-object v0, p0, Lcom/metamoji/ui/cabinet/FolderPathManager;->_CRBoxOldText:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 572
    iget-object v0, p0, Lcom/metamoji/ui/cabinet/FolderPathManager;->_CRBoxOldInequalityText:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 573
    iget-object v0, p0, Lcom/metamoji/ui/cabinet/FolderPathManager;->_driveParentText:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 574
    iget-object v0, p0, Lcom/metamoji/ui/cabinet/FolderPathManager;->_driveParentInequalityText:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 575
    iget-object v0, p0, Lcom/metamoji/ui/cabinet/FolderPathManager;->_folderPathText:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 576
    iget-object v0, p0, Lcom/metamoji/ui/cabinet/FolderPathManager;->_folderPathInequalityText:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 577
    iget-object v0, p0, Lcom/metamoji/ui/cabinet/FolderPathManager;->_folderEndText:Landroid/widget/TextView;

    invoke-virtual {v0, v7}, Landroid/widget/TextView;->setVisibility(I)V

    .line 578
    iget-object v0, p0, Lcom/metamoji/ui/cabinet/FolderPathManager;->_folderPathIcon:Landroid/widget/ImageView;

    sget v2, Lcom/metamoji/noteanytime/R$drawable;->tree_calendar:I

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 579
    iget-object v0, p0, Lcom/metamoji/ui/cabinet/FolderPathManager;->_folderEndText:Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/metamoji/ui/cabinet/CabinetTreeItem;->getTagId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void

    .line 515
    :pswitch_3
    iget-object v0, p0, Lcom/metamoji/ui/cabinet/FolderPathManager;->_driveParentText:Landroid/widget/TextView;

    invoke-virtual {v0, v7}, Landroid/widget/TextView;->setVisibility(I)V

    .line 516
    iget-object v0, p0, Lcom/metamoji/ui/cabinet/FolderPathManager;->_driveParentInequalityText:Landroid/widget/TextView;

    invoke-virtual {v0, v7}, Landroid/widget/TextView;->setVisibility(I)V

    .line 517
    iget-object v0, p0, Lcom/metamoji/ui/cabinet/FolderPathManager;->_folderPathText:Landroid/widget/TextView;

    invoke-virtual {v0, v7}, Landroid/widget/TextView;->setVisibility(I)V

    .line 518
    iget-object v0, p0, Lcom/metamoji/ui/cabinet/FolderPathManager;->_folderPathInequalityText:Landroid/widget/TextView;

    invoke-virtual {v0, v7}, Landroid/widget/TextView;->setVisibility(I)V

    .line 519
    iget-object v0, p0, Lcom/metamoji/ui/cabinet/FolderPathManager;->_folderEndText:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 520
    iget-object v0, p0, Lcom/metamoji/ui/cabinet/FolderPathManager;->_folderPathIcon:Landroid/widget/ImageView;

    sget v4, Lcom/metamoji/noteanytime/R$drawable;->cabinet_tree_thumb_folder:I

    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 521
    invoke-virtual {p1}, Lcom/metamoji/ui/cabinet/CabinetTreeItem;->getDriveId()Ljava/lang/String;

    move-result-object v8

    .line 522
    invoke-virtual {p1}, Lcom/metamoji/ui/cabinet/CabinetTreeItem;->getDriveRoot()Lcom/metamoji/ui/cabinet/CabinetTreeItem;

    move-result-object v0

    .line 523
    invoke-static {}, Lcom/metamoji/dvm/DvmDriveManager;->getInstance()Lcom/metamoji/dvm/DvmDriveManager;

    move-result-object v4

    invoke-virtual {v4, v8}, Lcom/metamoji/dvm/DvmDriveManager;->getGroupIdFromDriveId(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_2

    .line 525
    invoke-static {}, Lcom/metamoji/ui/cabinet/CabinetUtils;->getActiveGroupId()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4
    :try_end_1
    .catch Lcom/metamoji/cm/CmException; {:try_start_1 .. :try_end_1} :catch_0

    .line 533
    iget-object v5, p0, Lcom/metamoji/ui/cabinet/FolderPathManager;->_CRBoxOldText:Landroid/widget/TextView;

    if-eqz v4, :cond_1

    .line 526
    :try_start_2
    invoke-virtual {v5, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 527
    iget-object v4, p0, Lcom/metamoji/ui/cabinet/FolderPathManager;->_CRBoxOldInequalityText:Landroid/widget/TextView;

    invoke-virtual {v4, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 528
    sget-object v3, Lcom/metamoji/ui/cabinet/FolderTreeViewFragment;->CRBOX_FOLDER_INFO:Lcom/metamoji/ui/cabinet/CabinetTreeItem;

    .line 529
    iget-object v4, p0, Lcom/metamoji/ui/cabinet/FolderPathManager;->_driveParentText:Landroid/widget/TextView;

    invoke-virtual {v3}, Lcom/metamoji/ui/cabinet/CabinetTreeItem;->getTagId()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 530
    iget-object v4, p0, Lcom/metamoji/ui/cabinet/FolderPathManager;->_driveParentText:Landroid/widget/TextView;

    invoke-virtual {v4, v3}, Landroid/widget/TextView;->setTag(Ljava/lang/Object;)V

    .line 531
    iget-object v3, p0, Lcom/metamoji/ui/cabinet/FolderPathManager;->_driveParentInequalityText:Landroid/widget/TextView;

    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_2

    .line 533
    :cond_1
    invoke-virtual {v5, v7}, Landroid/widget/TextView;->setVisibility(I)V

    .line 534
    iget-object v3, p0, Lcom/metamoji/ui/cabinet/FolderPathManager;->_CRBoxOldInequalityText:Landroid/widget/TextView;

    invoke-virtual {v3, v7}, Landroid/widget/TextView;->setVisibility(I)V

    .line 535
    sget-object v3, Lcom/metamoji/ui/cabinet/FolderTreeViewFragment;->CRBOXOLD_FOLDER_INFO:Lcom/metamoji/ui/cabinet/CabinetTreeItem;

    .line 536
    iget-object v4, p0, Lcom/metamoji/ui/cabinet/FolderPathManager;->_CRBoxOldText:Landroid/widget/TextView;

    invoke-virtual {v3}, Lcom/metamoji/ui/cabinet/CabinetTreeItem;->getTagId()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 537
    iget-object v4, p0, Lcom/metamoji/ui/cabinet/FolderPathManager;->_CRBoxOldText:Landroid/widget/TextView;

    invoke-virtual {v4, v3}, Landroid/widget/TextView;->setTag(Ljava/lang/Object;)V

    .line 538
    iget-object v3, p0, Lcom/metamoji/ui/cabinet/FolderPathManager;->_CRBoxOldInequalityText:Landroid/widget/TextView;

    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 539
    invoke-virtual {v0}, Lcom/metamoji/ui/cabinet/CabinetTreeItem;->getParent()Lcom/metamoji/ui/cabinet/CabinetTreeItem;

    move-result-object v3

    .line 540
    iget-object v4, p0, Lcom/metamoji/ui/cabinet/FolderPathManager;->_driveParentText:Landroid/widget/TextView;

    invoke-virtual {v3}, Lcom/metamoji/ui/cabinet/CabinetTreeItem;->getTagId()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 541
    iget-object v4, p0, Lcom/metamoji/ui/cabinet/FolderPathManager;->_driveParentText:Landroid/widget/TextView;

    invoke-virtual {v4, v3}, Landroid/widget/TextView;->setTag(Ljava/lang/Object;)V

    .line 542
    iget-object v3, p0, Lcom/metamoji/ui/cabinet/FolderPathManager;->_driveParentInequalityText:Landroid/widget/TextView;

    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_2

    .line 545
    :cond_2
    iget-object v4, p0, Lcom/metamoji/ui/cabinet/FolderPathManager;->_CRBoxOldText:Landroid/widget/TextView;

    invoke-virtual {v4, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 546
    iget-object v4, p0, Lcom/metamoji/ui/cabinet/FolderPathManager;->_CRBoxOldInequalityText:Landroid/widget/TextView;

    invoke-virtual {v4, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 547
    invoke-virtual {v0}, Lcom/metamoji/ui/cabinet/CabinetTreeItem;->getParent()Lcom/metamoji/ui/cabinet/CabinetTreeItem;

    move-result-object v3

    .line 548
    iget-object v4, p0, Lcom/metamoji/ui/cabinet/FolderPathManager;->_driveParentText:Landroid/widget/TextView;

    invoke-virtual {v3}, Lcom/metamoji/ui/cabinet/CabinetTreeItem;->getTagId()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 549
    iget-object v4, p0, Lcom/metamoji/ui/cabinet/FolderPathManager;->_driveParentText:Landroid/widget/TextView;

    invoke-virtual {v4, v3}, Landroid/widget/TextView;->setTag(Ljava/lang/Object;)V

    .line 550
    iget-object v3, p0, Lcom/metamoji/ui/cabinet/FolderPathManager;->_driveParentInequalityText:Landroid/widget/TextView;

    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 552
    :goto_2
    iget-object v3, p0, Lcom/metamoji/ui/cabinet/FolderPathManager;->_folderPathText:Landroid/widget/TextView;

    invoke-virtual {v0}, Lcom/metamoji/ui/cabinet/CabinetTreeItem;->getTagId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 553
    iget-object v3, p0, Lcom/metamoji/ui/cabinet/FolderPathManager;->_folderPathText:Landroid/widget/TextView;

    invoke-virtual {v3, v0}, Landroid/widget/TextView;->setTag(Ljava/lang/Object;)V

    .line 554
    iget-object v0, p0, Lcom/metamoji/ui/cabinet/FolderPathManager;->_folderPathInequalityText:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 555
    invoke-static {v8}, Lcom/metamoji/dvm/DvmUtil;->sdDocumentManager(Ljava/lang/String;)Lcom/metamoji/sd/SdDriveDocumentManager;

    move-result-object v9

    .line 556
    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    .line 557
    invoke-virtual {p1}, Lcom/metamoji/ui/cabinet/CabinetTreeItem;->getTags()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v11

    :goto_3
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_f

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 558
    invoke-virtual {v9, v0}, Lcom/metamoji/sd/SdDriveDocumentManager;->getTag(Ljava/lang/String;)Lcom/metamoji/dvm/fw/bean/DvmTagBean;

    move-result-object v2

    .line 559
    invoke-virtual {v10, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 561
    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v0

    invoke-virtual {p1}, Lcom/metamoji/ui/cabinet/CabinetTreeItem;->getTags()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ne v0, v3, :cond_3

    move v5, v6

    goto :goto_4

    :cond_3
    move v5, v7

    .line 564
    :goto_4
    new-instance v0, Lcom/metamoji/ui/cabinet/FolderPathManager$TagLabel;

    move-object v3, v2

    iget-object v2, p0, Lcom/metamoji/ui/cabinet/FolderPathManager;->_context:Landroid/content/Context;

    move-object v4, v3

    .line 565
    invoke-static {v10, v8}, Lcom/metamoji/ui/cabinet/CabinetTreeItem;->createFromTags(Ljava/util/List;Ljava/lang/String;)Lcom/metamoji/ui/cabinet/CabinetTreeItem;

    move-result-object v3

    invoke-virtual {v4}, Lcom/metamoji/dvm/fw/bean/DvmTagBean;->getColor()Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/metamoji/ui/cabinet/FolderPathManager$TagLabel;-><init>(Lcom/metamoji/ui/cabinet/FolderPathManager;Landroid/content/Context;Lcom/metamoji/ui/cabinet/CabinetTreeItem;IZ)V

    .line 566
    iget-object v2, p0, Lcom/metamoji/ui/cabinet/FolderPathManager;->_tagList:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    goto :goto_3

    .line 475
    :pswitch_4
    iget-object v0, p0, Lcom/metamoji/ui/cabinet/FolderPathManager;->_driveParentText:Landroid/widget/TextView;

    invoke-virtual {v0, v7}, Landroid/widget/TextView;->setVisibility(I)V

    .line 476
    iget-object v0, p0, Lcom/metamoji/ui/cabinet/FolderPathManager;->_driveParentInequalityText:Landroid/widget/TextView;

    invoke-virtual {v0, v7}, Landroid/widget/TextView;->setVisibility(I)V

    .line 477
    iget-object v0, p0, Lcom/metamoji/ui/cabinet/FolderPathManager;->_folderPathText:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 478
    iget-object v0, p0, Lcom/metamoji/ui/cabinet/FolderPathManager;->_folderPathInequalityText:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 479
    iget-object v0, p0, Lcom/metamoji/ui/cabinet/FolderPathManager;->_folderEndText:Landroid/widget/TextView;

    invoke-virtual {v0, v7}, Landroid/widget/TextView;->setVisibility(I)V

    .line 480
    iget-object v0, p0, Lcom/metamoji/ui/cabinet/FolderPathManager;->_folderPathIcon:Landroid/widget/ImageView;

    sget v4, Lcom/metamoji/noteanytime/R$drawable;->design1_tree_thumb_mydrive:I

    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 481
    invoke-virtual {p1}, Lcom/metamoji/ui/cabinet/CabinetTreeItem;->getDriveId()Ljava/lang/String;

    move-result-object v0

    .line 482
    invoke-static {}, Lcom/metamoji/dvm/DvmDriveManager;->getInstance()Lcom/metamoji/dvm/DvmDriveManager;

    move-result-object v4

    invoke-virtual {v4, v0}, Lcom/metamoji/dvm/DvmDriveManager;->getGroupIdFromDriveId(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_5

    .line 484
    invoke-static {}, Lcom/metamoji/ui/cabinet/CabinetUtils;->getActiveGroupId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0
    :try_end_2
    .catch Lcom/metamoji/cm/CmException; {:try_start_2 .. :try_end_2} :catch_0

    .line 492
    iget-object v4, p0, Lcom/metamoji/ui/cabinet/FolderPathManager;->_CRBoxOldText:Landroid/widget/TextView;

    if-eqz v0, :cond_4

    .line 485
    :try_start_3
    invoke-virtual {v4, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 486
    iget-object v0, p0, Lcom/metamoji/ui/cabinet/FolderPathManager;->_CRBoxOldInequalityText:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 487
    sget-object v0, Lcom/metamoji/ui/cabinet/FolderTreeViewFragment;->CRBOX_FOLDER_INFO:Lcom/metamoji/ui/cabinet/CabinetTreeItem;

    .line 488
    iget-object v3, p0, Lcom/metamoji/ui/cabinet/FolderPathManager;->_driveParentText:Landroid/widget/TextView;

    invoke-virtual {v0}, Lcom/metamoji/ui/cabinet/CabinetTreeItem;->getTagId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 489
    iget-object v3, p0, Lcom/metamoji/ui/cabinet/FolderPathManager;->_driveParentText:Landroid/widget/TextView;

    invoke-virtual {v3, v0}, Landroid/widget/TextView;->setTag(Ljava/lang/Object;)V

    .line 490
    iget-object v0, p0, Lcom/metamoji/ui/cabinet/FolderPathManager;->_driveParentInequalityText:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_5

    .line 492
    :cond_4
    invoke-virtual {v4, v7}, Landroid/widget/TextView;->setVisibility(I)V

    .line 493
    iget-object v0, p0, Lcom/metamoji/ui/cabinet/FolderPathManager;->_CRBoxOldInequalityText:Landroid/widget/TextView;

    invoke-virtual {v0, v7}, Landroid/widget/TextView;->setVisibility(I)V

    .line 494
    sget-object v0, Lcom/metamoji/ui/cabinet/FolderTreeViewFragment;->CRBOXOLD_FOLDER_INFO:Lcom/metamoji/ui/cabinet/CabinetTreeItem;

    .line 495
    iget-object v3, p0, Lcom/metamoji/ui/cabinet/FolderPathManager;->_CRBoxOldText:Landroid/widget/TextView;

    invoke-virtual {v0}, Lcom/metamoji/ui/cabinet/CabinetTreeItem;->getTagId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 496
    iget-object v3, p0, Lcom/metamoji/ui/cabinet/FolderPathManager;->_CRBoxOldText:Landroid/widget/TextView;

    invoke-virtual {v3, v0}, Landroid/widget/TextView;->setTag(Ljava/lang/Object;)V

    .line 497
    iget-object v0, p0, Lcom/metamoji/ui/cabinet/FolderPathManager;->_CRBoxOldInequalityText:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 498
    invoke-virtual {p1}, Lcom/metamoji/ui/cabinet/CabinetTreeItem;->getParent()Lcom/metamoji/ui/cabinet/CabinetTreeItem;

    move-result-object v0

    .line 499
    iget-object v3, p0, Lcom/metamoji/ui/cabinet/FolderPathManager;->_driveParentText:Landroid/widget/TextView;

    invoke-virtual {v0}, Lcom/metamoji/ui/cabinet/CabinetTreeItem;->getTagId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 500
    iget-object v3, p0, Lcom/metamoji/ui/cabinet/FolderPathManager;->_driveParentText:Landroid/widget/TextView;

    invoke-virtual {v3, v0}, Landroid/widget/TextView;->setTag(Ljava/lang/Object;)V

    .line 501
    iget-object v0, p0, Lcom/metamoji/ui/cabinet/FolderPathManager;->_driveParentInequalityText:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_5

    .line 504
    :cond_5
    iget-object v0, p0, Lcom/metamoji/ui/cabinet/FolderPathManager;->_CRBoxOldText:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 505
    iget-object v0, p0, Lcom/metamoji/ui/cabinet/FolderPathManager;->_CRBoxOldInequalityText:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 506
    invoke-virtual {p1}, Lcom/metamoji/ui/cabinet/CabinetTreeItem;->getParent()Lcom/metamoji/ui/cabinet/CabinetTreeItem;

    move-result-object v0

    .line 507
    iget-object v3, p0, Lcom/metamoji/ui/cabinet/FolderPathManager;->_driveParentText:Landroid/widget/TextView;

    invoke-virtual {v0}, Lcom/metamoji/ui/cabinet/CabinetTreeItem;->getTagId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 508
    iget-object v3, p0, Lcom/metamoji/ui/cabinet/FolderPathManager;->_driveParentText:Landroid/widget/TextView;

    invoke-virtual {v3, v0}, Landroid/widget/TextView;->setTag(Ljava/lang/Object;)V

    .line 509
    iget-object v0, p0, Lcom/metamoji/ui/cabinet/FolderPathManager;->_driveParentInequalityText:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 511
    :goto_5
    iget-object v0, p0, Lcom/metamoji/ui/cabinet/FolderPathManager;->_folderEndText:Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/metamoji/ui/cabinet/CabinetTreeItem;->getTagId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void

    .line 412
    :pswitch_5
    iget-object v0, p0, Lcom/metamoji/ui/cabinet/FolderPathManager;->_driveParentText:Landroid/widget/TextView;

    invoke-virtual {v0, v7}, Landroid/widget/TextView;->setVisibility(I)V

    .line 413
    iget-object v0, p0, Lcom/metamoji/ui/cabinet/FolderPathManager;->_driveParentInequalityText:Landroid/widget/TextView;

    invoke-virtual {v0, v7}, Landroid/widget/TextView;->setVisibility(I)V

    .line 414
    iget-object v0, p0, Lcom/metamoji/ui/cabinet/FolderPathManager;->_folderPathText:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 415
    iget-object v0, p0, Lcom/metamoji/ui/cabinet/FolderPathManager;->_folderPathInequalityText:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 416
    iget-object v0, p0, Lcom/metamoji/ui/cabinet/FolderPathManager;->_folderEndText:Landroid/widget/TextView;

    invoke-virtual {v0, v7}, Landroid/widget/TextView;->setVisibility(I)V

    .line 417
    invoke-virtual {p1}, Lcom/metamoji/ui/cabinet/CabinetTreeItem;->getDriveId()Ljava/lang/String;

    move-result-object v0

    .line 418
    invoke-static {}, Lcom/metamoji/dvm/DvmDriveManager;->getInstance()Lcom/metamoji/dvm/DvmDriveManager;

    move-result-object v4

    invoke-virtual {v4, v0}, Lcom/metamoji/dvm/DvmDriveManager;->getGroupIdFromDriveId(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_7

    .line 420
    new-instance v5, Ljava/lang/Thread;

    new-instance v6, Lcom/metamoji/ui/cabinet/FolderPathManager$4;

    invoke-direct {v6, p0, v0}, Lcom/metamoji/ui/cabinet/FolderPathManager$4;-><init>(Lcom/metamoji/ui/cabinet/FolderPathManager;Ljava/lang/String;)V

    invoke-direct {v5, v6}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 442
    invoke-virtual {v5}, Ljava/lang/Thread;->start()V

    .line 443
    invoke-static {}, Lcom/metamoji/ui/cabinet/CabinetUtils;->getActiveGroupId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0
    :try_end_3
    .catch Lcom/metamoji/cm/CmException; {:try_start_3 .. :try_end_3} :catch_0

    .line 451
    iget-object v4, p0, Lcom/metamoji/ui/cabinet/FolderPathManager;->_CRBoxOldText:Landroid/widget/TextView;

    if-eqz v0, :cond_6

    .line 444
    :try_start_4
    invoke-virtual {v4, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 445
    iget-object v0, p0, Lcom/metamoji/ui/cabinet/FolderPathManager;->_CRBoxOldInequalityText:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 446
    sget-object v0, Lcom/metamoji/ui/cabinet/FolderTreeViewFragment;->CRBOX_FOLDER_INFO:Lcom/metamoji/ui/cabinet/CabinetTreeItem;

    .line 447
    iget-object v3, p0, Lcom/metamoji/ui/cabinet/FolderPathManager;->_driveParentText:Landroid/widget/TextView;

    invoke-virtual {v0}, Lcom/metamoji/ui/cabinet/CabinetTreeItem;->getTagId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 448
    iget-object v3, p0, Lcom/metamoji/ui/cabinet/FolderPathManager;->_driveParentText:Landroid/widget/TextView;

    invoke-virtual {v3, v0}, Landroid/widget/TextView;->setTag(Ljava/lang/Object;)V

    .line 449
    iget-object v0, p0, Lcom/metamoji/ui/cabinet/FolderPathManager;->_driveParentInequalityText:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_6

    .line 451
    :cond_6
    invoke-virtual {v4, v7}, Landroid/widget/TextView;->setVisibility(I)V

    .line 452
    iget-object v0, p0, Lcom/metamoji/ui/cabinet/FolderPathManager;->_CRBoxOldInequalityText:Landroid/widget/TextView;

    invoke-virtual {v0, v7}, Landroid/widget/TextView;->setVisibility(I)V

    .line 453
    sget-object v0, Lcom/metamoji/ui/cabinet/FolderTreeViewFragment;->CRBOXOLD_FOLDER_INFO:Lcom/metamoji/ui/cabinet/CabinetTreeItem;

    .line 454
    iget-object v3, p0, Lcom/metamoji/ui/cabinet/FolderPathManager;->_CRBoxOldText:Landroid/widget/TextView;

    invoke-virtual {v0}, Lcom/metamoji/ui/cabinet/CabinetTreeItem;->getTagId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 455
    iget-object v3, p0, Lcom/metamoji/ui/cabinet/FolderPathManager;->_CRBoxOldText:Landroid/widget/TextView;

    invoke-virtual {v3, v0}, Landroid/widget/TextView;->setTag(Ljava/lang/Object;)V

    .line 456
    iget-object v0, p0, Lcom/metamoji/ui/cabinet/FolderPathManager;->_CRBoxOldInequalityText:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 457
    invoke-virtual {p1}, Lcom/metamoji/ui/cabinet/CabinetTreeItem;->getParent()Lcom/metamoji/ui/cabinet/CabinetTreeItem;

    move-result-object v0

    .line 458
    iget-object v3, p0, Lcom/metamoji/ui/cabinet/FolderPathManager;->_driveParentText:Landroid/widget/TextView;

    invoke-virtual {v0}, Lcom/metamoji/ui/cabinet/CabinetTreeItem;->getTagId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 459
    iget-object v3, p0, Lcom/metamoji/ui/cabinet/FolderPathManager;->_driveParentText:Landroid/widget/TextView;

    invoke-virtual {v3, v0}, Landroid/widget/TextView;->setTag(Ljava/lang/Object;)V

    .line 460
    iget-object v0, p0, Lcom/metamoji/ui/cabinet/FolderPathManager;->_driveParentInequalityText:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_6

    .line 463
    :cond_7
    iget-object v0, p0, Lcom/metamoji/ui/cabinet/FolderPathManager;->_folderPathIcon:Landroid/widget/ImageView;

    sget v4, Lcom/metamoji/noteanytime/R$drawable;->design1_tree_thumb_drive:I

    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 464
    iget-object v0, p0, Lcom/metamoji/ui/cabinet/FolderPathManager;->_CRBoxOldText:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 465
    iget-object v0, p0, Lcom/metamoji/ui/cabinet/FolderPathManager;->_CRBoxOldInequalityText:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 466
    invoke-virtual {p1}, Lcom/metamoji/ui/cabinet/CabinetTreeItem;->getParent()Lcom/metamoji/ui/cabinet/CabinetTreeItem;

    move-result-object v0

    .line 467
    iget-object v3, p0, Lcom/metamoji/ui/cabinet/FolderPathManager;->_driveParentText:Landroid/widget/TextView;

    invoke-virtual {v0}, Lcom/metamoji/ui/cabinet/CabinetTreeItem;->getTagId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 468
    iget-object v3, p0, Lcom/metamoji/ui/cabinet/FolderPathManager;->_driveParentText:Landroid/widget/TextView;

    invoke-virtual {v3, v0}, Landroid/widget/TextView;->setTag(Ljava/lang/Object;)V

    .line 469
    iget-object v0, p0, Lcom/metamoji/ui/cabinet/FolderPathManager;->_driveParentInequalityText:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 471
    :goto_6
    iget-object v0, p0, Lcom/metamoji/ui/cabinet/FolderPathManager;->_folderEndText:Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/metamoji/ui/cabinet/CabinetTreeItem;->getTagId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void

    .line 399
    :pswitch_6
    iget-object v0, p0, Lcom/metamoji/ui/cabinet/FolderPathManager;->_CRBoxOldText:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 400
    iget-object v0, p0, Lcom/metamoji/ui/cabinet/FolderPathManager;->_CRBoxOldInequalityText:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 401
    iget-object v0, p0, Lcom/metamoji/ui/cabinet/FolderPathManager;->_driveParentText:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 402
    iget-object v0, p0, Lcom/metamoji/ui/cabinet/FolderPathManager;->_driveParentInequalityText:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 403
    iget-object v0, p0, Lcom/metamoji/ui/cabinet/FolderPathManager;->_folderPathText:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 404
    iget-object v0, p0, Lcom/metamoji/ui/cabinet/FolderPathManager;->_folderPathInequalityText:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 405
    iget-object v0, p0, Lcom/metamoji/ui/cabinet/FolderPathManager;->_folderEndText:Landroid/widget/TextView;

    invoke-virtual {v0, v7}, Landroid/widget/TextView;->setVisibility(I)V

    .line 406
    iget-object v0, p0, Lcom/metamoji/ui/cabinet/FolderPathManager;->_folderPathIcon:Landroid/widget/ImageView;

    sget v2, Lcom/metamoji/noteanytime/R$drawable;->design1_tree_thumb_driveall:I

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 407
    iget-object v0, p0, Lcom/metamoji/ui/cabinet/FolderPathManager;->_folderPathIcon:Landroid/widget/ImageView;

    const/high16 v2, 0x3f000000    # 0.5f

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setAlpha(F)V

    .line 408
    iget-object v0, p0, Lcom/metamoji/ui/cabinet/FolderPathManager;->_folderEndText:Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/metamoji/ui/cabinet/CabinetTreeItem;->getTagId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void

    .line 384
    :pswitch_7
    iget-object v0, p0, Lcom/metamoji/ui/cabinet/FolderPathManager;->_CRBoxOldText:Landroid/widget/TextView;

    invoke-virtual {v0, v7}, Landroid/widget/TextView;->setVisibility(I)V

    .line 385
    iget-object v0, p0, Lcom/metamoji/ui/cabinet/FolderPathManager;->_CRBoxOldInequalityText:Landroid/widget/TextView;

    invoke-virtual {v0, v7}, Landroid/widget/TextView;->setVisibility(I)V

    .line 386
    iget-object v0, p0, Lcom/metamoji/ui/cabinet/FolderPathManager;->_driveParentText:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 387
    iget-object v0, p0, Lcom/metamoji/ui/cabinet/FolderPathManager;->_driveParentInequalityText:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 388
    iget-object v0, p0, Lcom/metamoji/ui/cabinet/FolderPathManager;->_folderPathText:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 389
    iget-object v0, p0, Lcom/metamoji/ui/cabinet/FolderPathManager;->_folderPathInequalityText:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 390
    iget-object v0, p0, Lcom/metamoji/ui/cabinet/FolderPathManager;->_folderEndText:Landroid/widget/TextView;

    invoke-virtual {v0, v7}, Landroid/widget/TextView;->setVisibility(I)V

    .line 391
    iget-object v0, p0, Lcom/metamoji/ui/cabinet/FolderPathManager;->_folderPathIcon:Landroid/widget/ImageView;

    sget v3, Lcom/metamoji/noteanytime/R$drawable;->design1_tree_thumb_driveall:I

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 392
    sget-object v0, Lcom/metamoji/ui/cabinet/FolderTreeViewFragment;->CRBOXOLD_FOLDER_INFO:Lcom/metamoji/ui/cabinet/CabinetTreeItem;

    .line 393
    iget-object v3, p0, Lcom/metamoji/ui/cabinet/FolderPathManager;->_CRBoxOldText:Landroid/widget/TextView;

    invoke-virtual {v0}, Lcom/metamoji/ui/cabinet/CabinetTreeItem;->getTagId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 394
    iget-object v3, p0, Lcom/metamoji/ui/cabinet/FolderPathManager;->_CRBoxOldText:Landroid/widget/TextView;

    invoke-virtual {v3, v0}, Landroid/widget/TextView;->setTag(Ljava/lang/Object;)V

    .line 395
    iget-object v0, p0, Lcom/metamoji/ui/cabinet/FolderPathManager;->_CRBoxOldInequalityText:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 396
    iget-object v0, p0, Lcom/metamoji/ui/cabinet/FolderPathManager;->_folderEndText:Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/metamoji/ui/cabinet/CabinetTreeItem;->getTagId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void

    .line 373
    :pswitch_8
    iget-object v0, p0, Lcom/metamoji/ui/cabinet/FolderPathManager;->_CRBoxOldText:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 374
    iget-object v0, p0, Lcom/metamoji/ui/cabinet/FolderPathManager;->_CRBoxOldInequalityText:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 375
    iget-object v0, p0, Lcom/metamoji/ui/cabinet/FolderPathManager;->_driveParentText:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 376
    iget-object v0, p0, Lcom/metamoji/ui/cabinet/FolderPathManager;->_driveParentInequalityText:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 377
    iget-object v0, p0, Lcom/metamoji/ui/cabinet/FolderPathManager;->_folderPathText:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 378
    iget-object v0, p0, Lcom/metamoji/ui/cabinet/FolderPathManager;->_folderPathInequalityText:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 379
    iget-object v0, p0, Lcom/metamoji/ui/cabinet/FolderPathManager;->_folderEndText:Landroid/widget/TextView;

    invoke-virtual {v0, v7}, Landroid/widget/TextView;->setVisibility(I)V

    .line 380
    iget-object v0, p0, Lcom/metamoji/ui/cabinet/FolderPathManager;->_folderPathIcon:Landroid/widget/ImageView;

    sget v2, Lcom/metamoji/noteanytime/R$drawable;->design1_tree_thumb_driveall:I

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 381
    iget-object v0, p0, Lcom/metamoji/ui/cabinet/FolderPathManager;->_folderEndText:Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/metamoji/ui/cabinet/CabinetTreeItem;->getTagId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void

    .line 357
    :pswitch_9
    iget-object v0, p0, Lcom/metamoji/ui/cabinet/FolderPathManager;->_CRBoxOldText:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 358
    iget-object v0, p0, Lcom/metamoji/ui/cabinet/FolderPathManager;->_CRBoxOldInequalityText:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 359
    iget-object v0, p0, Lcom/metamoji/ui/cabinet/FolderPathManager;->_driveParentText:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 360
    iget-object v0, p0, Lcom/metamoji/ui/cabinet/FolderPathManager;->_driveParentInequalityText:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 361
    iget-object v0, p0, Lcom/metamoji/ui/cabinet/FolderPathManager;->_folderPathText:Landroid/widget/TextView;

    invoke-virtual {v0, v7}, Landroid/widget/TextView;->setVisibility(I)V

    .line 362
    iget-object v0, p0, Lcom/metamoji/ui/cabinet/FolderPathManager;->_folderPathInequalityText:Landroid/widget/TextView;

    invoke-virtual {v0, v7}, Landroid/widget/TextView;->setVisibility(I)V

    .line 363
    iget-object v0, p0, Lcom/metamoji/ui/cabinet/FolderPathManager;->_folderEndText:Landroid/widget/TextView;

    invoke-virtual {v0, v7}, Landroid/widget/TextView;->setVisibility(I)V

    .line 364
    iget-object v0, p0, Lcom/metamoji/ui/cabinet/FolderPathManager;->_folderPathIcon:Landroid/widget/ImageView;

    sget v3, Lcom/metamoji/noteanytime/R$drawable;->cabinet_tree_thumb_copiedshare:I

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 365
    iget-object v0, p0, Lcom/metamoji/ui/cabinet/FolderPathManager;->_folderPathText:Landroid/widget/TextView;

    sget-object v3, Lcom/metamoji/ui/cabinet/FolderTreeViewFragment;->CABINET_ROOT_FOLDER_INFO:Lcom/metamoji/ui/cabinet/CabinetTreeItem;

    invoke-virtual {v3}, Lcom/metamoji/ui/cabinet/CabinetTreeItem;->getTagId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 366
    iget-object v0, p0, Lcom/metamoji/ui/cabinet/FolderPathManager;->_folderPathText:Landroid/widget/TextView;

    sget-object v3, Lcom/metamoji/ui/cabinet/FolderTreeViewFragment;->CABINET_ROOT_FOLDER_INFO:Lcom/metamoji/ui/cabinet/CabinetTreeItem;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setTag(Ljava/lang/Object;)V

    .line 367
    iget-object v0, p0, Lcom/metamoji/ui/cabinet/FolderPathManager;->_folderPathInequalityText:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 368
    iget-object v0, p0, Lcom/metamoji/ui/cabinet/FolderPathManager;->_folderEndText:Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/metamoji/ui/cabinet/CabinetTreeItem;->getTagId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void

    .line 306
    :pswitch_a
    iget-object v0, p0, Lcom/metamoji/ui/cabinet/FolderPathManager;->_folderPathText:Landroid/widget/TextView;

    invoke-virtual {v0, v7}, Landroid/widget/TextView;->setVisibility(I)V

    .line 307
    iget-object v0, p0, Lcom/metamoji/ui/cabinet/FolderPathManager;->_folderPathInequalityText:Landroid/widget/TextView;

    invoke-virtual {v0, v7}, Landroid/widget/TextView;->setVisibility(I)V

    .line 308
    iget-object v0, p0, Lcom/metamoji/ui/cabinet/FolderPathManager;->_folderEndText:Landroid/widget/TextView;

    invoke-virtual {v0, v7}, Landroid/widget/TextView;->setVisibility(I)V

    .line 309
    iget-object v0, p0, Lcom/metamoji/ui/cabinet/FolderPathManager;->_folderPathIcon:Landroid/widget/ImageView;

    sget v4, Lcom/metamoji/noteanytime/R$drawable;->cabinet_tree_thumb_template:I

    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 310
    invoke-virtual {p1}, Lcom/metamoji/ui/cabinet/CabinetTreeItem;->getDriveId()Ljava/lang/String;

    move-result-object v0
    :try_end_4
    .catch Lcom/metamoji/cm/CmException; {:try_start_4 .. :try_end_4} :catch_0

    .line 317
    iget-object v4, p0, Lcom/metamoji/ui/cabinet/FolderPathManager;->_driveParentText:Landroid/widget/TextView;

    if-nez v0, :cond_8

    .line 312
    :try_start_5
    invoke-virtual {v4, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 313
    iget-object v0, p0, Lcom/metamoji/ui/cabinet/FolderPathManager;->_driveParentInequalityText:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 314
    iget-object v0, p0, Lcom/metamoji/ui/cabinet/FolderPathManager;->_folderPathText:Landroid/widget/TextView;

    sget-object v3, Lcom/metamoji/ui/cabinet/FolderTreeViewFragment;->CABINET_ROOT_FOLDER_INFO:Lcom/metamoji/ui/cabinet/CabinetTreeItem;

    invoke-virtual {v3}, Lcom/metamoji/ui/cabinet/CabinetTreeItem;->getTagId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 315
    iget-object v0, p0, Lcom/metamoji/ui/cabinet/FolderPathManager;->_folderPathText:Landroid/widget/TextView;

    sget-object v3, Lcom/metamoji/ui/cabinet/FolderTreeViewFragment;->CABINET_ROOT_FOLDER_INFO:Lcom/metamoji/ui/cabinet/CabinetTreeItem;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setTag(Ljava/lang/Object;)V

    goto/16 :goto_8

    .line 317
    :cond_8
    invoke-virtual {v4, v7}, Landroid/widget/TextView;->setVisibility(I)V

    .line 318
    iget-object v4, p0, Lcom/metamoji/ui/cabinet/FolderPathManager;->_driveParentInequalityText:Landroid/widget/TextView;

    invoke-virtual {v4, v7}, Landroid/widget/TextView;->setVisibility(I)V

    .line 319
    invoke-static {v0}, Lcom/metamoji/ui/cabinet/CabinetTreeItem;->createAsSharedDrive(Ljava/lang/String;)Lcom/metamoji/ui/cabinet/CabinetTreeItem;

    move-result-object v4

    .line 320
    invoke-static {}, Lcom/metamoji/dvm/DvmDriveManager;->getInstance()Lcom/metamoji/dvm/DvmDriveManager;

    move-result-object v5

    invoke-virtual {v5, v0}, Lcom/metamoji/dvm/DvmDriveManager;->getGroupIdFromDriveId(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_a

    .line 322
    invoke-static {}, Lcom/metamoji/ui/cabinet/CabinetUtils;->getActiveGroupId()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0
    :try_end_5
    .catch Lcom/metamoji/cm/CmException; {:try_start_5 .. :try_end_5} :catch_0

    .line 330
    iget-object v5, p0, Lcom/metamoji/ui/cabinet/FolderPathManager;->_CRBoxOldText:Landroid/widget/TextView;

    if-eqz v0, :cond_9

    .line 323
    :try_start_6
    invoke-virtual {v5, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 324
    iget-object v0, p0, Lcom/metamoji/ui/cabinet/FolderPathManager;->_CRBoxOldInequalityText:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 325
    sget-object v0, Lcom/metamoji/ui/cabinet/FolderTreeViewFragment;->CRBOX_FOLDER_INFO:Lcom/metamoji/ui/cabinet/CabinetTreeItem;

    .line 326
    iget-object v3, p0, Lcom/metamoji/ui/cabinet/FolderPathManager;->_driveParentText:Landroid/widget/TextView;

    invoke-virtual {v0}, Lcom/metamoji/ui/cabinet/CabinetTreeItem;->getTagId()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 327
    iget-object v3, p0, Lcom/metamoji/ui/cabinet/FolderPathManager;->_driveParentText:Landroid/widget/TextView;

    invoke-virtual {v3, v0}, Landroid/widget/TextView;->setTag(Ljava/lang/Object;)V

    .line 328
    iget-object v0, p0, Lcom/metamoji/ui/cabinet/FolderPathManager;->_driveParentInequalityText:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_7

    .line 330
    :cond_9
    invoke-virtual {v5, v7}, Landroid/widget/TextView;->setVisibility(I)V

    .line 331
    iget-object v0, p0, Lcom/metamoji/ui/cabinet/FolderPathManager;->_CRBoxOldInequalityText:Landroid/widget/TextView;

    invoke-virtual {v0, v7}, Landroid/widget/TextView;->setVisibility(I)V

    .line 332
    sget-object v0, Lcom/metamoji/ui/cabinet/FolderTreeViewFragment;->CRBOXOLD_FOLDER_INFO:Lcom/metamoji/ui/cabinet/CabinetTreeItem;

    .line 333
    iget-object v3, p0, Lcom/metamoji/ui/cabinet/FolderPathManager;->_CRBoxOldText:Landroid/widget/TextView;

    invoke-virtual {v0}, Lcom/metamoji/ui/cabinet/CabinetTreeItem;->getTagId()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 334
    iget-object v3, p0, Lcom/metamoji/ui/cabinet/FolderPathManager;->_CRBoxOldText:Landroid/widget/TextView;

    invoke-virtual {v3, v0}, Landroid/widget/TextView;->setTag(Ljava/lang/Object;)V

    .line 335
    iget-object v0, p0, Lcom/metamoji/ui/cabinet/FolderPathManager;->_CRBoxOldInequalityText:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 336
    invoke-virtual {v4}, Lcom/metamoji/ui/cabinet/CabinetTreeItem;->getParent()Lcom/metamoji/ui/cabinet/CabinetTreeItem;

    move-result-object v0

    .line 337
    iget-object v3, p0, Lcom/metamoji/ui/cabinet/FolderPathManager;->_driveParentText:Landroid/widget/TextView;

    invoke-virtual {v0}, Lcom/metamoji/ui/cabinet/CabinetTreeItem;->getTagId()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 338
    iget-object v3, p0, Lcom/metamoji/ui/cabinet/FolderPathManager;->_driveParentText:Landroid/widget/TextView;

    invoke-virtual {v3, v0}, Landroid/widget/TextView;->setTag(Ljava/lang/Object;)V

    .line 339
    iget-object v0, p0, Lcom/metamoji/ui/cabinet/FolderPathManager;->_driveParentInequalityText:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_7

    .line 342
    :cond_a
    iget-object v0, p0, Lcom/metamoji/ui/cabinet/FolderPathManager;->_CRBoxOldText:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 343
    iget-object v0, p0, Lcom/metamoji/ui/cabinet/FolderPathManager;->_CRBoxOldInequalityText:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 344
    invoke-virtual {v4}, Lcom/metamoji/ui/cabinet/CabinetTreeItem;->getParent()Lcom/metamoji/ui/cabinet/CabinetTreeItem;

    move-result-object v0

    .line 345
    iget-object v3, p0, Lcom/metamoji/ui/cabinet/FolderPathManager;->_driveParentText:Landroid/widget/TextView;

    invoke-virtual {v0}, Lcom/metamoji/ui/cabinet/CabinetTreeItem;->getTagId()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 346
    iget-object v3, p0, Lcom/metamoji/ui/cabinet/FolderPathManager;->_driveParentText:Landroid/widget/TextView;

    invoke-virtual {v3, v0}, Landroid/widget/TextView;->setTag(Ljava/lang/Object;)V

    .line 347
    iget-object v0, p0, Lcom/metamoji/ui/cabinet/FolderPathManager;->_driveParentInequalityText:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 349
    :goto_7
    iget-object v0, p0, Lcom/metamoji/ui/cabinet/FolderPathManager;->_folderPathText:Landroid/widget/TextView;

    invoke-virtual {v4}, Lcom/metamoji/ui/cabinet/CabinetTreeItem;->getTagId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 350
    iget-object v0, p0, Lcom/metamoji/ui/cabinet/FolderPathManager;->_folderPathText:Landroid/widget/TextView;

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setTag(Ljava/lang/Object;)V

    .line 352
    :goto_8
    iget-object v0, p0, Lcom/metamoji/ui/cabinet/FolderPathManager;->_folderPathInequalityText:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 353
    iget-object v0, p0, Lcom/metamoji/ui/cabinet/FolderPathManager;->_folderEndText:Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/metamoji/ui/cabinet/CabinetTreeItem;->getTagId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void

    .line 253
    :pswitch_b
    iget-object v0, p0, Lcom/metamoji/ui/cabinet/FolderPathManager;->_folderPathText:Landroid/widget/TextView;

    invoke-virtual {v0, v7}, Landroid/widget/TextView;->setVisibility(I)V

    .line 254
    iget-object v0, p0, Lcom/metamoji/ui/cabinet/FolderPathManager;->_folderPathInequalityText:Landroid/widget/TextView;

    invoke-virtual {v0, v7}, Landroid/widget/TextView;->setVisibility(I)V

    .line 255
    iget-object v0, p0, Lcom/metamoji/ui/cabinet/FolderPathManager;->_folderEndText:Landroid/widget/TextView;

    invoke-virtual {v0, v7}, Landroid/widget/TextView;->setVisibility(I)V

    .line 256
    iget-object v0, p0, Lcom/metamoji/ui/cabinet/FolderPathManager;->_folderPathIcon:Landroid/widget/ImageView;

    sget v4, Lcom/metamoji/noteanytime/R$drawable;->cabinet_tree_trash:I

    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 257
    invoke-virtual {p1}, Lcom/metamoji/ui/cabinet/CabinetTreeItem;->getDriveId()Ljava/lang/String;

    move-result-object v0
    :try_end_6
    .catch Lcom/metamoji/cm/CmException; {:try_start_6 .. :try_end_6} :catch_0

    .line 258
    const-string v4, " < "

    if-nez v0, :cond_b

    .line 259
    :try_start_7
    iget-object v0, p0, Lcom/metamoji/ui/cabinet/FolderPathManager;->_CRBoxOldText:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 260
    iget-object v0, p0, Lcom/metamoji/ui/cabinet/FolderPathManager;->_CRBoxOldInequalityText:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 261
    iget-object v0, p0, Lcom/metamoji/ui/cabinet/FolderPathManager;->_driveParentText:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 262
    iget-object v0, p0, Lcom/metamoji/ui/cabinet/FolderPathManager;->_driveParentInequalityText:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 263
    iget-object v0, p0, Lcom/metamoji/ui/cabinet/FolderPathManager;->_folderPathText:Landroid/widget/TextView;

    sget-object v2, Lcom/metamoji/ui/cabinet/FolderTreeViewFragment;->CABINET_ROOT_FOLDER_INFO:Lcom/metamoji/ui/cabinet/CabinetTreeItem;

    invoke-virtual {v2}, Lcom/metamoji/ui/cabinet/CabinetTreeItem;->getTagId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 264
    iget-object v0, p0, Lcom/metamoji/ui/cabinet/FolderPathManager;->_folderPathText:Landroid/widget/TextView;

    sget-object v2, Lcom/metamoji/ui/cabinet/FolderTreeViewFragment;->CABINET_ROOT_FOLDER_INFO:Lcom/metamoji/ui/cabinet/CabinetTreeItem;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setTag(Ljava/lang/Object;)V

    goto/16 :goto_a

    .line 266
    :cond_b
    iget-object v5, p0, Lcom/metamoji/ui/cabinet/FolderPathManager;->_driveParentText:Landroid/widget/TextView;

    invoke-virtual {v5, v7}, Landroid/widget/TextView;->setVisibility(I)V

    .line 267
    iget-object v5, p0, Lcom/metamoji/ui/cabinet/FolderPathManager;->_driveParentInequalityText:Landroid/widget/TextView;

    invoke-virtual {v5, v7}, Landroid/widget/TextView;->setVisibility(I)V

    .line 268
    invoke-static {v0}, Lcom/metamoji/ui/cabinet/CabinetTreeItem;->createAsSharedDrive(Ljava/lang/String;)Lcom/metamoji/ui/cabinet/CabinetTreeItem;

    move-result-object v5

    .line 269
    invoke-static {}, Lcom/metamoji/dvm/DvmDriveManager;->getInstance()Lcom/metamoji/dvm/DvmDriveManager;

    move-result-object v6

    invoke-virtual {v6, v0}, Lcom/metamoji/dvm/DvmDriveManager;->getGroupIdFromDriveId(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_d

    .line 271
    invoke-static {}, Lcom/metamoji/ui/cabinet/CabinetUtils;->getActiveGroupId()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0
    :try_end_7
    .catch Lcom/metamoji/cm/CmException; {:try_start_7 .. :try_end_7} :catch_0

    .line 279
    iget-object v6, p0, Lcom/metamoji/ui/cabinet/FolderPathManager;->_CRBoxOldText:Landroid/widget/TextView;

    if-eqz v0, :cond_c

    .line 272
    :try_start_8
    invoke-virtual {v6, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 273
    iget-object v0, p0, Lcom/metamoji/ui/cabinet/FolderPathManager;->_CRBoxOldInequalityText:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 274
    sget-object v0, Lcom/metamoji/ui/cabinet/FolderTreeViewFragment;->CRBOX_FOLDER_INFO:Lcom/metamoji/ui/cabinet/CabinetTreeItem;

    .line 275
    iget-object v2, p0, Lcom/metamoji/ui/cabinet/FolderPathManager;->_driveParentText:Landroid/widget/TextView;

    invoke-virtual {v0}, Lcom/metamoji/ui/cabinet/CabinetTreeItem;->getTagId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 276
    iget-object v2, p0, Lcom/metamoji/ui/cabinet/FolderPathManager;->_driveParentText:Landroid/widget/TextView;

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setTag(Ljava/lang/Object;)V

    .line 277
    iget-object v0, p0, Lcom/metamoji/ui/cabinet/FolderPathManager;->_driveParentInequalityText:Landroid/widget/TextView;

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_9

    .line 279
    :cond_c
    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setVisibility(I)V

    .line 280
    iget-object v0, p0, Lcom/metamoji/ui/cabinet/FolderPathManager;->_CRBoxOldInequalityText:Landroid/widget/TextView;

    invoke-virtual {v0, v7}, Landroid/widget/TextView;->setVisibility(I)V

    .line 281
    sget-object v0, Lcom/metamoji/ui/cabinet/FolderTreeViewFragment;->CRBOXOLD_FOLDER_INFO:Lcom/metamoji/ui/cabinet/CabinetTreeItem;

    .line 282
    iget-object v3, p0, Lcom/metamoji/ui/cabinet/FolderPathManager;->_CRBoxOldText:Landroid/widget/TextView;

    invoke-virtual {v0}, Lcom/metamoji/ui/cabinet/CabinetTreeItem;->getTagId()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 283
    iget-object v3, p0, Lcom/metamoji/ui/cabinet/FolderPathManager;->_CRBoxOldText:Landroid/widget/TextView;

    invoke-virtual {v3, v0}, Landroid/widget/TextView;->setTag(Ljava/lang/Object;)V

    .line 284
    iget-object v0, p0, Lcom/metamoji/ui/cabinet/FolderPathManager;->_CRBoxOldInequalityText:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 285
    invoke-virtual {v5}, Lcom/metamoji/ui/cabinet/CabinetTreeItem;->getParent()Lcom/metamoji/ui/cabinet/CabinetTreeItem;

    move-result-object v0

    .line 286
    iget-object v3, p0, Lcom/metamoji/ui/cabinet/FolderPathManager;->_driveParentText:Landroid/widget/TextView;

    invoke-virtual {v0}, Lcom/metamoji/ui/cabinet/CabinetTreeItem;->getTagId()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 287
    iget-object v3, p0, Lcom/metamoji/ui/cabinet/FolderPathManager;->_driveParentText:Landroid/widget/TextView;

    invoke-virtual {v3, v0}, Landroid/widget/TextView;->setTag(Ljava/lang/Object;)V

    .line 288
    iget-object v0, p0, Lcom/metamoji/ui/cabinet/FolderPathManager;->_driveParentInequalityText:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_9

    .line 291
    :cond_d
    iget-object v0, p0, Lcom/metamoji/ui/cabinet/FolderPathManager;->_CRBoxOldText:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 292
    iget-object v0, p0, Lcom/metamoji/ui/cabinet/FolderPathManager;->_CRBoxOldInequalityText:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 293
    invoke-virtual {v5}, Lcom/metamoji/ui/cabinet/CabinetTreeItem;->getParent()Lcom/metamoji/ui/cabinet/CabinetTreeItem;

    move-result-object v0

    .line 294
    iget-object v3, p0, Lcom/metamoji/ui/cabinet/FolderPathManager;->_driveParentText:Landroid/widget/TextView;

    invoke-virtual {v0}, Lcom/metamoji/ui/cabinet/CabinetTreeItem;->getTagId()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 295
    iget-object v3, p0, Lcom/metamoji/ui/cabinet/FolderPathManager;->_driveParentText:Landroid/widget/TextView;

    invoke-virtual {v3, v0}, Landroid/widget/TextView;->setTag(Ljava/lang/Object;)V

    .line 296
    iget-object v0, p0, Lcom/metamoji/ui/cabinet/FolderPathManager;->_driveParentInequalityText:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 298
    :goto_9
    iget-object v0, p0, Lcom/metamoji/ui/cabinet/FolderPathManager;->_folderPathText:Landroid/widget/TextView;

    invoke-virtual {v5}, Lcom/metamoji/ui/cabinet/CabinetTreeItem;->getTagId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 299
    iget-object v0, p0, Lcom/metamoji/ui/cabinet/FolderPathManager;->_folderPathText:Landroid/widget/TextView;

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setTag(Ljava/lang/Object;)V

    .line 301
    :goto_a
    iget-object v0, p0, Lcom/metamoji/ui/cabinet/FolderPathManager;->_folderPathInequalityText:Landroid/widget/TextView;

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 302
    iget-object v0, p0, Lcom/metamoji/ui/cabinet/FolderPathManager;->_folderEndText:Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/metamoji/ui/cabinet/CabinetTreeItem;->getTagId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void

    .line 231
    :pswitch_c
    iget-object v0, p0, Lcom/metamoji/ui/cabinet/FolderPathManager;->_CRBoxOldText:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 232
    iget-object v0, p0, Lcom/metamoji/ui/cabinet/FolderPathManager;->_CRBoxOldInequalityText:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 233
    iget-object v0, p0, Lcom/metamoji/ui/cabinet/FolderPathManager;->_driveParentText:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 234
    iget-object v0, p0, Lcom/metamoji/ui/cabinet/FolderPathManager;->_driveParentInequalityText:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 235
    iget-object v0, p0, Lcom/metamoji/ui/cabinet/FolderPathManager;->_folderPathText:Landroid/widget/TextView;

    invoke-virtual {v0, v7}, Landroid/widget/TextView;->setVisibility(I)V

    .line 236
    iget-object v0, p0, Lcom/metamoji/ui/cabinet/FolderPathManager;->_folderPathInequalityText:Landroid/widget/TextView;

    invoke-virtual {v0, v7}, Landroid/widget/TextView;->setVisibility(I)V

    .line 237
    iget-object v0, p0, Lcom/metamoji/ui/cabinet/FolderPathManager;->_folderEndText:Landroid/widget/TextView;

    invoke-virtual {v0, v7}, Landroid/widget/TextView;->setVisibility(I)V

    .line 238
    iget-object v0, p0, Lcom/metamoji/ui/cabinet/FolderPathManager;->_folderPathIcon:Landroid/widget/ImageView;

    sget v3, Lcom/metamoji/noteanytime/R$drawable;->cabinet_tree_thumb_all:I

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 239
    invoke-virtual {p1}, Lcom/metamoji/ui/cabinet/CabinetTreeItem;->getDriveId()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_e

    .line 241
    iget-object v0, p0, Lcom/metamoji/ui/cabinet/FolderPathManager;->_folderPathText:Landroid/widget/TextView;

    sget-object v3, Lcom/metamoji/ui/cabinet/FolderTreeViewFragment;->CABINET_ROOT_FOLDER_INFO:Lcom/metamoji/ui/cabinet/CabinetTreeItem;

    invoke-virtual {v3}, Lcom/metamoji/ui/cabinet/CabinetTreeItem;->getTagId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 242
    iget-object v0, p0, Lcom/metamoji/ui/cabinet/FolderPathManager;->_folderPathText:Landroid/widget/TextView;

    sget-object v3, Lcom/metamoji/ui/cabinet/FolderTreeViewFragment;->CABINET_ROOT_FOLDER_INFO:Lcom/metamoji/ui/cabinet/CabinetTreeItem;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setTag(Ljava/lang/Object;)V

    goto :goto_b

    .line 244
    :cond_e
    invoke-static {v0}, Lcom/metamoji/ui/cabinet/CabinetTreeItem;->createAsSharedDrive(Ljava/lang/String;)Lcom/metamoji/ui/cabinet/CabinetTreeItem;

    move-result-object v0

    .line 245
    iget-object v3, p0, Lcom/metamoji/ui/cabinet/FolderPathManager;->_folderPathText:Landroid/widget/TextView;

    invoke-virtual {v0}, Lcom/metamoji/ui/cabinet/CabinetTreeItem;->getTagId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 246
    iget-object v3, p0, Lcom/metamoji/ui/cabinet/FolderPathManager;->_folderPathText:Landroid/widget/TextView;

    invoke-virtual {v3, v0}, Landroid/widget/TextView;->setTag(Ljava/lang/Object;)V

    .line 248
    :goto_b
    iget-object v0, p0, Lcom/metamoji/ui/cabinet/FolderPathManager;->_folderPathInequalityText:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 249
    iget-object v0, p0, Lcom/metamoji/ui/cabinet/FolderPathManager;->_folderEndText:Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/metamoji/ui/cabinet/CabinetTreeItem;->getTagId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
    :try_end_8
    .catch Lcom/metamoji/cm/CmException; {:try_start_8 .. :try_end_8} :catch_0

    :cond_f
    :goto_c
    return-void

    :catch_0
    move-exception v0

    .line 624
    const-string v2, "[FolderPathManager] :: ERROR updateView:"

    invoke-static {v0, v2}, Lcom/metamoji/cm/CmLog;->error(Ljava/lang/Throwable;Ljava/lang/String;)V

    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
