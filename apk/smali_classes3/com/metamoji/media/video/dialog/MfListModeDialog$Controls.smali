.class public final Lcom/metamoji/media/video/dialog/MfListModeDialog$Controls;
.super Ljava/lang/Object;
.source "MfListModeDialog.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/metamoji/media/video/dialog/MfListModeDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "Controls"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000:\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0008\n\u0002\u0018\u0002\n\u0002\u0008\u0007\n\u0002\u0010\u000e\n\u0002\u0008\t\n\u0002\u0010\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u0008\n\u0002\u0008\u0003\u0008\u0086\u0004\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0004\u0008\u0004\u0010\u0005J\u0008\u0010!\u001a\u00020\"H\u0002J\u0018\u0010#\u001a\u00020\"2\u0006\u0010$\u001a\u00020\u00072\u0006\u0010%\u001a\u00020&H\u0002J\u0018\u0010\'\u001a\u00020\"2\u0006\u0010$\u001a\u00020\u00072\u0006\u0010%\u001a\u00020&H\u0002J\u0008\u0010(\u001a\u00020\"H\u0002R\u001b\u0010\u0006\u001a\u00020\u00078BX\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008\n\u0010\u000b\u001a\u0004\u0008\u0008\u0010\tR\u001b\u0010\u000c\u001a\u00020\u00078BX\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008\u000e\u0010\u000b\u001a\u0004\u0008\r\u0010\tR\u001b\u0010\u000f\u001a\u00020\u00108BX\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008\u0013\u0010\u000b\u001a\u0004\u0008\u0011\u0010\u0012R\u001b\u0010\u0014\u001a\u00020\u00108BX\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008\u0016\u0010\u000b\u001a\u0004\u0008\u0015\u0010\u0012R\u0014\u0010\u0017\u001a\u00020\u00188BX\u0082\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\u0019\u0010\u001aR\u0014\u0010\u001b\u001a\u00020\u00188BX\u0082\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\u001c\u0010\u001aR\u0014\u0010\u001d\u001a\u00020\u00188BX\u0082\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\u001e\u0010\u001aR\u0014\u0010\u001f\u001a\u00020\u00188BX\u0082\u0004\u00a2\u0006\u0006\u001a\u0004\u0008 \u0010\u001a\u00a8\u0006)"
    }
    d2 = {
        "Lcom/metamoji/media/video/dialog/MfListModeDialog$Controls;",
        "",
        "dlg",
        "Landroid/view/View;",
        "<init>",
        "(Lcom/metamoji/media/video/dialog/MfListModeDialog;Landroid/view/View;)V",
        "sortKeyGroup",
        "Landroid/widget/RadioGroup;",
        "getSortKeyGroup",
        "()Landroid/widget/RadioGroup;",
        "sortKeyGroup$delegate",
        "Lkotlin/Lazy;",
        "sortOrderGroup",
        "getSortOrderGroup",
        "sortOrderGroup$delegate",
        "orderDescendingButton",
        "Landroid/widget/RadioButton;",
        "getOrderDescendingButton",
        "()Landroid/widget/RadioButton;",
        "orderDescendingButton$delegate",
        "orderAscendingButton",
        "getOrderAscendingButton",
        "orderAscendingButton$delegate",
        "ascendingSizeLabel",
        "",
        "getAscendingSizeLabel",
        "()Ljava/lang/String;",
        "descendingSizeLabel",
        "getDescendingSizeLabel",
        "ascendingDateLabel",
        "getAscendingDateLabel",
        "descendingDateLabel",
        "getDescendingDateLabel",
        "updateOrderButtons",
        "",
        "onKeyChanged",
        "group",
        "checkedId",
        "",
        "onOrderChanged",
        "initViews",
        "app"
    }
    k = 0x1
    mv = {
        0x2,
        0x2,
        0x0
    }
    xi = 0x30
.end annotation


# instance fields
.field private final orderAscendingButton$delegate:Lkotlin/Lazy;

.field private final orderDescendingButton$delegate:Lkotlin/Lazy;

.field private final sortKeyGroup$delegate:Lkotlin/Lazy;

.field private final sortOrderGroup$delegate:Lkotlin/Lazy;

.field final synthetic this$0:Lcom/metamoji/media/video/dialog/MfListModeDialog;


# direct methods
.method public static synthetic $r8$lambda$-OKK4SUbfSSYtDsidBMPXdIZZFk(Lcom/metamoji/media/video/dialog/MfListModeDialog$Controls;Landroid/widget/RadioGroup;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/metamoji/media/video/dialog/MfListModeDialog$Controls;->onOrderChanged(Landroid/widget/RadioGroup;I)V

    return-void
.end method

.method public static synthetic $r8$lambda$DmO1_kg2vJRQEkcs58yil1Wv5PE(Lcom/metamoji/media/video/dialog/MfListModeDialog$Controls;Landroid/widget/RadioGroup;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/metamoji/media/video/dialog/MfListModeDialog$Controls;->onKeyChanged(Landroid/widget/RadioGroup;I)V

    return-void
.end method

.method public constructor <init>(Lcom/metamoji/media/video/dialog/MfListModeDialog;Landroid/view/View;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/View;",
            ")V"
        }
    .end annotation

    const-string v0, "dlg"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 96
    iput-object p1, p0, Lcom/metamoji/media/video/dialog/MfListModeDialog$Controls;->this$0:Lcom/metamoji/media/video/dialog/MfListModeDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 97
    new-instance p1, Lcom/metamoji/media/video/dialog/MfListModeDialog$Controls$$ExternalSyntheticLambda0;

    invoke-direct {p1, p2}, Lcom/metamoji/media/video/dialog/MfListModeDialog$Controls$$ExternalSyntheticLambda0;-><init>(Landroid/view/View;)V

    invoke-static {p1}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p1

    iput-object p1, p0, Lcom/metamoji/media/video/dialog/MfListModeDialog$Controls;->sortKeyGroup$delegate:Lkotlin/Lazy;

    .line 100
    new-instance p1, Lcom/metamoji/media/video/dialog/MfListModeDialog$Controls$$ExternalSyntheticLambda1;

    invoke-direct {p1, p2}, Lcom/metamoji/media/video/dialog/MfListModeDialog$Controls$$ExternalSyntheticLambda1;-><init>(Landroid/view/View;)V

    invoke-static {p1}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p1

    iput-object p1, p0, Lcom/metamoji/media/video/dialog/MfListModeDialog$Controls;->sortOrderGroup$delegate:Lkotlin/Lazy;

    .line 104
    new-instance p1, Lcom/metamoji/media/video/dialog/MfListModeDialog$Controls$$ExternalSyntheticLambda2;

    invoke-direct {p1, p2}, Lcom/metamoji/media/video/dialog/MfListModeDialog$Controls$$ExternalSyntheticLambda2;-><init>(Landroid/view/View;)V

    invoke-static {p1}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p1

    iput-object p1, p0, Lcom/metamoji/media/video/dialog/MfListModeDialog$Controls;->orderDescendingButton$delegate:Lkotlin/Lazy;

    .line 107
    new-instance p1, Lcom/metamoji/media/video/dialog/MfListModeDialog$Controls$$ExternalSyntheticLambda3;

    invoke-direct {p1, p2}, Lcom/metamoji/media/video/dialog/MfListModeDialog$Controls$$ExternalSyntheticLambda3;-><init>(Landroid/view/View;)V

    invoke-static {p1}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p1

    iput-object p1, p0, Lcom/metamoji/media/video/dialog/MfListModeDialog$Controls;->orderAscendingButton$delegate:Lkotlin/Lazy;

    .line 112
    invoke-direct {p0}, Lcom/metamoji/media/video/dialog/MfListModeDialog$Controls;->initViews()V

    .line 113
    invoke-direct {p0}, Lcom/metamoji/media/video/dialog/MfListModeDialog$Controls;->getSortKeyGroup()Landroid/widget/RadioGroup;

    move-result-object p1

    new-instance p2, Lcom/metamoji/media/video/dialog/MfListModeDialog$Controls$$ExternalSyntheticLambda4;

    invoke-direct {p2, p0}, Lcom/metamoji/media/video/dialog/MfListModeDialog$Controls$$ExternalSyntheticLambda4;-><init>(Lcom/metamoji/media/video/dialog/MfListModeDialog$Controls;)V

    invoke-virtual {p1, p2}, Landroid/widget/RadioGroup;->setOnCheckedChangeListener(Landroid/widget/RadioGroup$OnCheckedChangeListener;)V

    .line 114
    invoke-direct {p0}, Lcom/metamoji/media/video/dialog/MfListModeDialog$Controls;->getSortOrderGroup()Landroid/widget/RadioGroup;

    move-result-object p1

    new-instance p2, Lcom/metamoji/media/video/dialog/MfListModeDialog$Controls$$ExternalSyntheticLambda5;

    invoke-direct {p2, p0}, Lcom/metamoji/media/video/dialog/MfListModeDialog$Controls$$ExternalSyntheticLambda5;-><init>(Lcom/metamoji/media/video/dialog/MfListModeDialog$Controls;)V

    invoke-virtual {p1, p2}, Landroid/widget/RadioGroup;->setOnCheckedChangeListener(Landroid/widget/RadioGroup$OnCheckedChangeListener;)V

    return-void
.end method

.method private final getAscendingDateLabel()Ljava/lang/String;
    .locals 2

    .line 122
    iget-object v0, p0, Lcom/metamoji/media/video/dialog/MfListModeDialog$Controls;->this$0:Lcom/metamoji/media/video/dialog/MfListModeDialog;

    invoke-virtual {v0}, Lcom/metamoji/media/video/dialog/MfListModeDialog;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    if-eqz v0, :cond_1

    sget v1, Lcom/metamoji/noteanytime/R$string;->MMJNT_LSTR_MEDIAFILES_CLIPLIST_ASC_DATE:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    return-object v0

    :cond_1
    :goto_0
    const-string v0, ""

    return-object v0
.end method

.method private final getAscendingSizeLabel()Ljava/lang/String;
    .locals 2

    .line 118
    iget-object v0, p0, Lcom/metamoji/media/video/dialog/MfListModeDialog$Controls;->this$0:Lcom/metamoji/media/video/dialog/MfListModeDialog;

    invoke-virtual {v0}, Lcom/metamoji/media/video/dialog/MfListModeDialog;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    if-eqz v0, :cond_1

    sget v1, Lcom/metamoji/noteanytime/R$string;->MMJNT_LSTR_MEDIAFILES_CLIPLIST_DESC_SIZE:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    return-object v0

    :cond_1
    :goto_0
    const-string v0, ""

    return-object v0
.end method

.method private final getDescendingDateLabel()Ljava/lang/String;
    .locals 2

    .line 124
    iget-object v0, p0, Lcom/metamoji/media/video/dialog/MfListModeDialog$Controls;->this$0:Lcom/metamoji/media/video/dialog/MfListModeDialog;

    invoke-virtual {v0}, Lcom/metamoji/media/video/dialog/MfListModeDialog;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    if-eqz v0, :cond_1

    sget v1, Lcom/metamoji/noteanytime/R$string;->MMJNT_LSTR_MEDIAFILES_CLIPLIST_DESC_DATE:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    return-object v0

    :cond_1
    :goto_0
    const-string v0, ""

    return-object v0
.end method

.method private final getDescendingSizeLabel()Ljava/lang/String;
    .locals 2

    .line 120
    iget-object v0, p0, Lcom/metamoji/media/video/dialog/MfListModeDialog$Controls;->this$0:Lcom/metamoji/media/video/dialog/MfListModeDialog;

    invoke-virtual {v0}, Lcom/metamoji/media/video/dialog/MfListModeDialog;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    if-eqz v0, :cond_1

    sget v1, Lcom/metamoji/noteanytime/R$string;->MMJNT_LSTR_MEDIAFILES_CLIPLIST_ASC_SIZE:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    return-object v0

    :cond_1
    :goto_0
    const-string v0, ""

    return-object v0
.end method

.method private final getOrderAscendingButton()Landroid/widget/RadioButton;
    .locals 2

    .line 107
    iget-object v0, p0, Lcom/metamoji/media/video/dialog/MfListModeDialog$Controls;->orderAscendingButton$delegate:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    const-string v1, "getValue(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Landroid/widget/RadioButton;

    return-object v0
.end method

.method private final getOrderDescendingButton()Landroid/widget/RadioButton;
    .locals 2

    .line 104
    iget-object v0, p0, Lcom/metamoji/media/video/dialog/MfListModeDialog$Controls;->orderDescendingButton$delegate:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    const-string v1, "getValue(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Landroid/widget/RadioButton;

    return-object v0
.end method

.method private final getSortKeyGroup()Landroid/widget/RadioGroup;
    .locals 2

    .line 97
    iget-object v0, p0, Lcom/metamoji/media/video/dialog/MfListModeDialog$Controls;->sortKeyGroup$delegate:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    const-string v1, "getValue(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Landroid/widget/RadioGroup;

    return-object v0
.end method

.method private final getSortOrderGroup()Landroid/widget/RadioGroup;
    .locals 2

    .line 100
    iget-object v0, p0, Lcom/metamoji/media/video/dialog/MfListModeDialog$Controls;->sortOrderGroup$delegate:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    const-string v1, "getValue(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Landroid/widget/RadioGroup;

    return-object v0
.end method

.method private final initViews()V
    .locals 3

    .line 146
    invoke-direct {p0}, Lcom/metamoji/media/video/dialog/MfListModeDialog$Controls;->getSortKeyGroup()Landroid/widget/RadioGroup;

    move-result-object v0

    sget-object v1, Lcom/metamoji/media/video/dialog/MfListModeDialog$Keys;->Companion:Lcom/metamoji/media/video/dialog/MfListModeDialog$Keys$Companion;

    iget-object v2, p0, Lcom/metamoji/media/video/dialog/MfListModeDialog$Controls;->this$0:Lcom/metamoji/media/video/dialog/MfListModeDialog;

    invoke-static {v2}, Lcom/metamoji/media/video/dialog/MfListModeDialog;->access$getSortKey(Lcom/metamoji/media/video/dialog/MfListModeDialog;)Lcom/metamoji/media/video/VfVideoFileManager$MediaFilesOrder;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/metamoji/media/video/dialog/MfListModeDialog$Keys$Companion;->keyValue2id(Lcom/metamoji/media/video/VfVideoFileManager$MediaFilesOrder;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/RadioGroup;->check(I)V

    .line 147
    invoke-direct {p0}, Lcom/metamoji/media/video/dialog/MfListModeDialog$Controls;->getSortOrderGroup()Landroid/widget/RadioGroup;

    move-result-object v0

    sget-object v1, Lcom/metamoji/media/video/dialog/MfListModeDialog$Orders;->Companion:Lcom/metamoji/media/video/dialog/MfListModeDialog$Orders$Companion;

    iget-object v2, p0, Lcom/metamoji/media/video/dialog/MfListModeDialog$Controls;->this$0:Lcom/metamoji/media/video/dialog/MfListModeDialog;

    invoke-static {v2}, Lcom/metamoji/media/video/dialog/MfListModeDialog;->access$getSortOrder(Lcom/metamoji/media/video/dialog/MfListModeDialog;)Lcom/metamoji/media/video/VfVideoFileManager$MediaFilesOrderDir;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/metamoji/media/video/dialog/MfListModeDialog$Orders$Companion;->orderValue2id(Lcom/metamoji/media/video/VfVideoFileManager$MediaFilesOrderDir;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/RadioGroup;->check(I)V

    .line 148
    invoke-direct {p0}, Lcom/metamoji/media/video/dialog/MfListModeDialog$Controls;->updateOrderButtons()V

    return-void
.end method

.method private final onKeyChanged(Landroid/widget/RadioGroup;I)V
    .locals 1

    .line 137
    iget-object p1, p0, Lcom/metamoji/media/video/dialog/MfListModeDialog$Controls;->this$0:Lcom/metamoji/media/video/dialog/MfListModeDialog;

    sget-object v0, Lcom/metamoji/media/video/dialog/MfListModeDialog$Keys;->Companion:Lcom/metamoji/media/video/dialog/MfListModeDialog$Keys$Companion;

    invoke-virtual {v0, p2}, Lcom/metamoji/media/video/dialog/MfListModeDialog$Keys$Companion;->id2KeyValue(I)Lcom/metamoji/media/video/VfVideoFileManager$MediaFilesOrder;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/metamoji/media/video/dialog/MfListModeDialog;->access$setSortKey(Lcom/metamoji/media/video/dialog/MfListModeDialog;Lcom/metamoji/media/video/VfVideoFileManager$MediaFilesOrder;)V

    .line 138
    invoke-direct {p0}, Lcom/metamoji/media/video/dialog/MfListModeDialog$Controls;->updateOrderButtons()V

    return-void
.end method

.method private final onOrderChanged(Landroid/widget/RadioGroup;I)V
    .locals 1

    .line 142
    iget-object p1, p0, Lcom/metamoji/media/video/dialog/MfListModeDialog$Controls;->this$0:Lcom/metamoji/media/video/dialog/MfListModeDialog;

    sget-object v0, Lcom/metamoji/media/video/dialog/MfListModeDialog$Orders;->Companion:Lcom/metamoji/media/video/dialog/MfListModeDialog$Orders$Companion;

    invoke-virtual {v0, p2}, Lcom/metamoji/media/video/dialog/MfListModeDialog$Orders$Companion;->id2OrderValue(I)Lcom/metamoji/media/video/VfVideoFileManager$MediaFilesOrderDir;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/metamoji/media/video/dialog/MfListModeDialog;->access$setSortOrder(Lcom/metamoji/media/video/dialog/MfListModeDialog;Lcom/metamoji/media/video/VfVideoFileManager$MediaFilesOrderDir;)V

    return-void
.end method

.method static final orderAscendingButton_delegate$lambda$3(Landroid/view/View;)Landroid/widget/RadioButton;
    .locals 1

    .line 108
    sget v0, Lcom/metamoji/noteanytime/R$id;->radioOrderAsc:I

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p0

    check-cast p0, Landroid/widget/RadioButton;

    return-object p0
.end method

.method static final orderDescendingButton_delegate$lambda$2(Landroid/view/View;)Landroid/widget/RadioButton;
    .locals 1

    .line 105
    sget v0, Lcom/metamoji/noteanytime/R$id;->radioOrderDesc:I

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p0

    check-cast p0, Landroid/widget/RadioButton;

    return-object p0
.end method

.method static final sortKeyGroup_delegate$lambda$0(Landroid/view/View;)Landroid/widget/RadioGroup;
    .locals 1

    .line 98
    sget v0, Lcom/metamoji/noteanytime/R$id;->groupSortKey:I

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p0

    check-cast p0, Landroid/widget/RadioGroup;

    return-object p0
.end method

.method static final sortOrderGroup_delegate$lambda$1(Landroid/view/View;)Landroid/widget/RadioGroup;
    .locals 1

    .line 101
    sget v0, Lcom/metamoji/noteanytime/R$id;->groupSortOrder:I

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p0

    check-cast p0, Landroid/widget/RadioGroup;

    return-object p0
.end method

.method private final updateOrderButtons()V
    .locals 2

    .line 127
    sget-object v0, Lcom/metamoji/media/video/dialog/MfListModeDialog$Keys;->Companion:Lcom/metamoji/media/video/dialog/MfListModeDialog$Keys$Companion;

    iget-object v1, p0, Lcom/metamoji/media/video/dialog/MfListModeDialog$Controls;->this$0:Lcom/metamoji/media/video/dialog/MfListModeDialog;

    invoke-static {v1}, Lcom/metamoji/media/video/dialog/MfListModeDialog;->access$getSortKey(Lcom/metamoji/media/video/dialog/MfListModeDialog;)Lcom/metamoji/media/video/VfVideoFileManager$MediaFilesOrder;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/metamoji/media/video/dialog/MfListModeDialog$Keys$Companion;->isDateKey(Lcom/metamoji/media/video/VfVideoFileManager$MediaFilesOrder;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 128
    invoke-direct {p0}, Lcom/metamoji/media/video/dialog/MfListModeDialog$Controls;->getOrderDescendingButton()Landroid/widget/RadioButton;

    move-result-object v0

    invoke-direct {p0}, Lcom/metamoji/media/video/dialog/MfListModeDialog$Controls;->getDescendingDateLabel()Ljava/lang/String;

    move-result-object v1

    check-cast v1, Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Landroid/widget/RadioButton;->setText(Ljava/lang/CharSequence;)V

    .line 129
    invoke-direct {p0}, Lcom/metamoji/media/video/dialog/MfListModeDialog$Controls;->getOrderAscendingButton()Landroid/widget/RadioButton;

    move-result-object v0

    invoke-direct {p0}, Lcom/metamoji/media/video/dialog/MfListModeDialog$Controls;->getAscendingDateLabel()Ljava/lang/String;

    move-result-object v1

    check-cast v1, Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Landroid/widget/RadioButton;->setText(Ljava/lang/CharSequence;)V

    return-void

    .line 131
    :cond_0
    invoke-direct {p0}, Lcom/metamoji/media/video/dialog/MfListModeDialog$Controls;->getOrderDescendingButton()Landroid/widget/RadioButton;

    move-result-object v0

    invoke-direct {p0}, Lcom/metamoji/media/video/dialog/MfListModeDialog$Controls;->getDescendingSizeLabel()Ljava/lang/String;

    move-result-object v1

    check-cast v1, Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Landroid/widget/RadioButton;->setText(Ljava/lang/CharSequence;)V

    .line 132
    invoke-direct {p0}, Lcom/metamoji/media/video/dialog/MfListModeDialog$Controls;->getOrderAscendingButton()Landroid/widget/RadioButton;

    move-result-object v0

    invoke-direct {p0}, Lcom/metamoji/media/video/dialog/MfListModeDialog$Controls;->getAscendingSizeLabel()Ljava/lang/String;

    move-result-object v1

    check-cast v1, Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Landroid/widget/RadioButton;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method
