.class public Lcom/metamoji/ui/dialog/PaperSelect;
.super Lcom/metamoji/ui/dialog/NtDialog;
.source "PaperSelect.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/metamoji/ui/dialog/PaperSelect$ViewHolder;
    }
.end annotation


# instance fields
.field _adapter:Landroid/widget/ArrayAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/widget/ArrayAdapter<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private _paperSize:Lcom/metamoji/cm/SizeF;

.field private _paperSizeListView:Landroid/widget/ListView;

.field private _paperSizeOrientationButtons:Lcom/metamoji/ui/common/UiRadioGroup;

.field private _paperSizes:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private _paperlist:Lcom/metamoji/ui/UiPaperSize;

.field _portrait:Z

.field private _printSize:Lcom/metamoji/cm/SizeF;

.field private _selected:I


# direct methods
.method static bridge synthetic -$$Nest$fget_paperSizeListView(Lcom/metamoji/ui/dialog/PaperSelect;)Landroid/widget/ListView;
    .locals 0

    iget-object p0, p0, Lcom/metamoji/ui/dialog/PaperSelect;->_paperSizeListView:Landroid/widget/ListView;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fget_paperSizeOrientationButtons(Lcom/metamoji/ui/dialog/PaperSelect;)Lcom/metamoji/ui/common/UiRadioGroup;
    .locals 0

    iget-object p0, p0, Lcom/metamoji/ui/dialog/PaperSelect;->_paperSizeOrientationButtons:Lcom/metamoji/ui/common/UiRadioGroup;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fget_paperSizes(Lcom/metamoji/ui/dialog/PaperSelect;)Ljava/util/ArrayList;
    .locals 0

    iget-object p0, p0, Lcom/metamoji/ui/dialog/PaperSelect;->_paperSizes:Ljava/util/ArrayList;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fget_paperlist(Lcom/metamoji/ui/dialog/PaperSelect;)Lcom/metamoji/ui/UiPaperSize;
    .locals 0

    iget-object p0, p0, Lcom/metamoji/ui/dialog/PaperSelect;->_paperlist:Lcom/metamoji/ui/UiPaperSize;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fget_selected(Lcom/metamoji/ui/dialog/PaperSelect;)I
    .locals 0

    iget p0, p0, Lcom/metamoji/ui/dialog/PaperSelect;->_selected:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fput_selected(Lcom/metamoji/ui/dialog/PaperSelect;I)V
    .locals 0

    iput p1, p0, Lcom/metamoji/ui/dialog/PaperSelect;->_selected:I

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .line 62
    invoke-direct {p0}, Lcom/metamoji/ui/dialog/NtDialog;-><init>()V

    const/4 v0, -0x1

    .line 42
    iput v0, p0, Lcom/metamoji/ui/dialog/PaperSelect;->_selected:I

    const/4 v0, 0x0

    .line 48
    iput-object v0, p0, Lcom/metamoji/ui/dialog/PaperSelect;->_paperSizeOrientationButtons:Lcom/metamoji/ui/common/UiRadioGroup;

    const/4 v0, 0x1

    .line 50
    iput-boolean v0, p0, Lcom/metamoji/ui/dialog/PaperSelect;->_portrait:Z

    .line 52
    new-instance v0, Lcom/metamoji/cm/SizeF;

    invoke-direct {v0}, Lcom/metamoji/cm/SizeF;-><init>()V

    iput-object v0, p0, Lcom/metamoji/ui/dialog/PaperSelect;->_paperSize:Lcom/metamoji/cm/SizeF;

    .line 53
    new-instance v0, Lcom/metamoji/cm/SizeF;

    invoke-direct {v0}, Lcom/metamoji/cm/SizeF;-><init>()V

    iput-object v0, p0, Lcom/metamoji/ui/dialog/PaperSelect;->_printSize:Lcom/metamoji/cm/SizeF;

    .line 55
    new-instance v0, Lcom/metamoji/ui/UiPaperSize;

    invoke-direct {v0}, Lcom/metamoji/ui/UiPaperSize;-><init>()V

    iput-object v0, p0, Lcom/metamoji/ui/dialog/PaperSelect;->_paperlist:Lcom/metamoji/ui/UiPaperSize;

    .line 63
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/metamoji/ui/dialog/PaperSelect;->_paperSizes:Ljava/util/ArrayList;

    const/4 v0, 0x0

    .line 64
    :goto_0
    sget v1, Lcom/metamoji/ui/UiPaperSize;->PAPER_KIND_MAX:I

    if-ge v0, v1, :cond_0

    .line 65
    iget-object v1, p0, Lcom/metamoji/ui/dialog/PaperSelect;->_paperSizes:Ljava/util/ArrayList;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method


# virtual methods
.method public get_paperSize()Lcom/metamoji/cm/SizeF;
    .locals 1

    .line 226
    iget-object v0, p0, Lcom/metamoji/ui/dialog/PaperSelect;->_paperSize:Lcom/metamoji/cm/SizeF;

    return-object v0
.end method

.method public get_printSize()Lcom/metamoji/cm/SizeF;
    .locals 1

    .line 230
    iget-object v0, p0, Lcom/metamoji/ui/dialog/PaperSelect;->_printSize:Lcom/metamoji/cm/SizeF;

    return-object v0
.end method

.method public onCancel(Landroid/view/View;)V
    .locals 0

    .line 208
    invoke-super {p0, p1}, Lcom/metamoji/ui/dialog/NtDialog;->onCancel(Landroid/view/View;)V

    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 6

    .line 72
    sget v0, Lcom/metamoji/noteanytime/R$layout;->dialog_paperselect:I

    iput v0, p0, Lcom/metamoji/ui/dialog/PaperSelect;->mViewId:I

    .line 73
    sget v0, Lcom/metamoji/noteanytime/R$string;->Menu_Paper_Size_Prop:I

    iput v0, p0, Lcom/metamoji/ui/dialog/PaperSelect;->mTitleId:I

    if-eqz p3, :cond_0

    .line 76
    const-string v0, "SelectedPaperSizeIndex"

    invoke-virtual {p3, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/metamoji/ui/dialog/PaperSelect;->_selected:I

    .line 79
    :cond_0
    invoke-super {p0, p1, p2, p3}, Lcom/metamoji/ui/dialog/NtDialog;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    move-result-object p1

    .line 81
    invoke-virtual {p0}, Lcom/metamoji/ui/dialog/PaperSelect;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v5

    .line 84
    sget p2, Lcom/metamoji/noteanytime/R$id;->papersize_view:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/ListView;

    iput-object p2, p0, Lcom/metamoji/ui/dialog/PaperSelect;->_paperSizeListView:Landroid/widget/ListView;

    const/4 p3, 0x0

    .line 85
    invoke-virtual {p2, p3}, Landroid/widget/ListView;->setDividerHeight(I)V

    .line 87
    new-instance v0, Lcom/metamoji/ui/dialog/PaperSelect$1;

    invoke-virtual {p0}, Lcom/metamoji/ui/dialog/PaperSelect;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v2

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/metamoji/ui/dialog/PaperSelect;->_paperSizes:Ljava/util/ArrayList;

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/metamoji/ui/dialog/PaperSelect$1;-><init>(Lcom/metamoji/ui/dialog/PaperSelect;Landroid/content/Context;ILjava/util/List;Landroid/content/Context;)V

    iput-object v0, v1, Lcom/metamoji/ui/dialog/PaperSelect;->_adapter:Landroid/widget/ArrayAdapter;

    .line 130
    iget-object p2, v1, Lcom/metamoji/ui/dialog/PaperSelect;->_paperSizeListView:Landroid/widget/ListView;

    invoke-virtual {p2, v0}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 131
    iget-object p2, v1, Lcom/metamoji/ui/dialog/PaperSelect;->_paperSizeListView:Landroid/widget/ListView;

    new-instance p3, Lcom/metamoji/ui/dialog/PaperSelect$2;

    invoke-direct {p3, p0}, Lcom/metamoji/ui/dialog/PaperSelect$2;-><init>(Lcom/metamoji/ui/dialog/PaperSelect;)V

    invoke-virtual {p2, p3}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 145
    iget-object p2, v1, Lcom/metamoji/ui/dialog/PaperSelect;->_paperSizeListView:Landroid/widget/ListView;

    new-instance p3, Lcom/metamoji/ui/dialog/PaperSelect$3;

    invoke-direct {p3, p0}, Lcom/metamoji/ui/dialog/PaperSelect$3;-><init>(Lcom/metamoji/ui/dialog/PaperSelect;)V

    const-wide/16 v2, 0x64

    invoke-virtual {p2, p3, v2, v3}, Landroid/widget/ListView;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 155
    iget-object p2, v1, Lcom/metamoji/ui/dialog/PaperSelect;->_paperSizeListView:Landroid/widget/ListView;

    new-instance p3, Landroid/graphics/drawable/StateListDrawable;

    invoke-direct {p3}, Landroid/graphics/drawable/StateListDrawable;-><init>()V

    invoke-virtual {p2, p3}, Landroid/widget/ListView;->setSelector(Landroid/graphics/drawable/Drawable;)V

    .line 158
    sget p2, Lcom/metamoji/noteanytime/R$id;->group_papaersize_orientation:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Lcom/metamoji/ui/common/UiRadioGroup;

    iput-object p2, v1, Lcom/metamoji/ui/dialog/PaperSelect;->_paperSizeOrientationButtons:Lcom/metamoji/ui/common/UiRadioGroup;

    if-eqz p2, :cond_1

    .line 160
    iget-boolean p3, v1, Lcom/metamoji/ui/dialog/PaperSelect;->_portrait:Z

    xor-int/lit8 p3, p3, 0x1

    invoke-virtual {p2, p3}, Lcom/metamoji/ui/common/UiRadioGroup;->setCurrentButtonIndex(I)V

    .line 161
    iget-object p2, v1, Lcom/metamoji/ui/dialog/PaperSelect;->_paperSizeOrientationButtons:Lcom/metamoji/ui/common/UiRadioGroup;

    new-instance p3, Lcom/metamoji/ui/dialog/PaperSelect$4;

    invoke-direct {p3, p0}, Lcom/metamoji/ui/dialog/PaperSelect$4;-><init>(Lcom/metamoji/ui/dialog/PaperSelect;)V

    invoke-virtual {p2, p3}, Lcom/metamoji/ui/common/UiRadioGroup;->setOnCheckedChangeListener(Landroid/widget/RadioGroup$OnCheckedChangeListener;)V

    .line 171
    :cond_1
    invoke-virtual {p0, p1}, Lcom/metamoji/ui/dialog/PaperSelect;->restoreInstanceStateIfAvailable(Landroid/view/View;)Z

    return-object p1
.end method

.method public onDone(Landroid/view/View;)V
    .locals 4

    .line 184
    invoke-static {}, Lcom/metamoji/nt/NtEditorWindowController;->getInstance()Lcom/metamoji/nt/NtEditorWindowController;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 185
    iget v1, p0, Lcom/metamoji/ui/dialog/PaperSelect;->_selected:I

    if-ltz v1, :cond_0

    .line 186
    iget-object v2, p0, Lcom/metamoji/ui/dialog/PaperSelect;->_paperlist:Lcom/metamoji/ui/UiPaperSize;

    iget-boolean v3, p0, Lcom/metamoji/ui/dialog/PaperSelect;->_portrait:Z

    invoke-virtual {v2, v1, v3}, Lcom/metamoji/ui/UiPaperSize;->GetPaperSize(IZ)Lcom/metamoji/ui/UiPaperSize$PaperSize;

    move-result-object v1

    .line 187
    iget-object v2, p0, Lcom/metamoji/ui/dialog/PaperSelect;->_paperSize:Lcom/metamoji/cm/SizeF;

    iget v3, v1, Lcom/metamoji/ui/UiPaperSize$PaperSize;->width:F

    iput v3, v2, Lcom/metamoji/cm/SizeF;->width:F

    .line 188
    iget-object v2, p0, Lcom/metamoji/ui/dialog/PaperSelect;->_paperSize:Lcom/metamoji/cm/SizeF;

    iget v3, v1, Lcom/metamoji/ui/UiPaperSize$PaperSize;->height:F

    iput v3, v2, Lcom/metamoji/cm/SizeF;->height:F

    .line 189
    iget-object v2, p0, Lcom/metamoji/ui/dialog/PaperSelect;->_printSize:Lcom/metamoji/cm/SizeF;

    iget v3, v1, Lcom/metamoji/ui/UiPaperSize$PaperSize;->printWidth:F

    iput v3, v2, Lcom/metamoji/cm/SizeF;->width:F

    .line 190
    iget-object v2, p0, Lcom/metamoji/ui/dialog/PaperSelect;->_printSize:Lcom/metamoji/cm/SizeF;

    iget v1, v1, Lcom/metamoji/ui/UiPaperSize$PaperSize;->printHeight:F

    iput v1, v2, Lcom/metamoji/cm/SizeF;->height:F

    .line 191
    invoke-super {p0, p1}, Lcom/metamoji/ui/dialog/NtDialog;->onDone(Landroid/view/View;)V

    .line 192
    new-instance p1, Lcom/metamoji/cm/CmContext;

    invoke-direct {p1}, Lcom/metamoji/cm/CmContext;-><init>()V

    .line 193
    const-string v1, "PaperSizeSettings"

    invoke-virtual {p1, v1, p0}, Lcom/metamoji/cm/CmContext;->setExtData(Ljava/lang/String;Ljava/lang/Object;)V

    .line 194
    sget-object v1, Lcom/metamoji/nt/NtCommand;->CMD_PAPER_SIZE_SETTING_DONE:Lcom/metamoji/nt/NtCommand;

    invoke-virtual {v0, v1, p1}, Lcom/metamoji/nt/NtEditorWindowController;->performCommand(Lcom/metamoji/nt/NtCommand;Lcom/metamoji/cm/CmContext;)Z

    return-void

    .line 197
    :cond_0
    invoke-static {}, Lcom/metamoji/cm/CmTaskManager;->getInstance()Lcom/metamoji/cm/CmTaskManager;

    move-result-object p1

    new-instance v0, Lcom/metamoji/ui/dialog/PaperSelect$5;

    invoke-direct {v0, p0}, Lcom/metamoji/ui/dialog/PaperSelect$5;-><init>(Lcom/metamoji/ui/dialog/PaperSelect;)V

    invoke-virtual {p1, v0}, Lcom/metamoji/cm/CmTaskManager;->runOnBackground(Ljava/lang/Runnable;)V

    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2

    .line 177
    invoke-super {p0, p1}, Lcom/metamoji/ui/dialog/NtDialog;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 178
    const-string v0, "SelectedPaperSizeIndex"

    iget v1, p0, Lcom/metamoji/ui/dialog/PaperSelect;->_selected:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 179
    sget-object v0, Lcom/metamoji/ui/dialog/PaperSelect;->Key_ReconstructDialogFlag:Ljava/lang/String;

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    return-void
.end method

.method public set_paperSize(FF)V
    .locals 1

    .line 212
    iget-object v0, p0, Lcom/metamoji/ui/dialog/PaperSelect;->_paperSize:Lcom/metamoji/cm/SizeF;

    iput p1, v0, Lcom/metamoji/cm/SizeF;->width:F

    .line 213
    iget-object v0, p0, Lcom/metamoji/ui/dialog/PaperSelect;->_paperSize:Lcom/metamoji/cm/SizeF;

    iput p2, v0, Lcom/metamoji/cm/SizeF;->height:F

    cmpl-float p1, p2, p1

    if-lez p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 214
    :goto_0
    iput-boolean p1, p0, Lcom/metamoji/ui/dialog/PaperSelect;->_portrait:Z

    .line 217
    iget-object p2, p0, Lcom/metamoji/ui/dialog/PaperSelect;->_paperlist:Lcom/metamoji/ui/UiPaperSize;

    iget-object v0, p0, Lcom/metamoji/ui/dialog/PaperSelect;->_paperSize:Lcom/metamoji/cm/SizeF;

    invoke-virtual {p2, v0, p1}, Lcom/metamoji/ui/UiPaperSize;->GetIndex(Lcom/metamoji/cm/SizeF;Z)I

    move-result p1

    iput p1, p0, Lcom/metamoji/ui/dialog/PaperSelect;->_selected:I

    return-void
.end method

.method public set_printSize(FF)V
    .locals 1

    .line 221
    iget-object v0, p0, Lcom/metamoji/ui/dialog/PaperSelect;->_printSize:Lcom/metamoji/cm/SizeF;

    iput p1, v0, Lcom/metamoji/cm/SizeF;->width:F

    .line 222
    iget-object p1, p0, Lcom/metamoji/ui/dialog/PaperSelect;->_printSize:Lcom/metamoji/cm/SizeF;

    iput p2, p1, Lcom/metamoji/cm/SizeF;->height:F

    return-void
.end method
