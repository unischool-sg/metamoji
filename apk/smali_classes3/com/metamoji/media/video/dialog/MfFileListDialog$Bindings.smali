.class public final Lcom/metamoji/media/video/dialog/MfFileListDialog$Bindings;
.super Ljava/lang/Object;
.source "MfFileListDialog.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/metamoji/media/video/dialog/MfFileListDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "Bindings"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00002\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0010\t\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0004\u0008\u0086\u0004\u0018\u00002\u00020\u0001B\u0007\u00a2\u0006\u0004\u0008\u0002\u0010\u0003J\u0006\u0010\u000e\u001a\u00020\u000fJ\u0008\u0010\u0010\u001a\u00020\u000fH\u0002J\u0008\u0010\u0011\u001a\u00020\u000fH\u0002J\u0008\u0010\u0012\u001a\u00020\u000fH\u0002R\u0014\u0010\u0004\u001a\u0008\u0012\u0004\u0012\u00020\u00060\u0005X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0014\u0010\u0007\u001a\u0008\u0012\u0004\u0012\u00020\u00060\u0005X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0014\u0010\u0008\u001a\u0008\u0012\u0004\u0012\u00020\t0\u0005X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0014\u0010\n\u001a\u0008\u0012\u0004\u0012\u00020\u000b0\u0005X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0016\u0010\u000c\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\r0\u0005X\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u0013"
    }
    d2 = {
        "Lcom/metamoji/media/video/dialog/MfFileListDialog$Bindings;",
        "",
        "<init>",
        "(Lcom/metamoji/media/video/dialog/MfFileListDialog;)V",
        "consumptionAObserver",
        "Landroidx/lifecycle/Observer;",
        "",
        "consumptionBObserver",
        "editModeObserver",
        "Lcom/metamoji/media/video/dialog/MfConsumptionInfoViewModel$EditMode;",
        "busynessObserver",
        "",
        "selectedItemObserver",
        "Lcom/metamoji/media/video/dialog/MfConsumptionInfoViewModel$SelectedItem;",
        "unbind",
        "",
        "uploadSelectedItems",
        "deleteSelectedItems",
        "clearLocalCache",
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
.field private final busynessObserver:Landroidx/lifecycle/Observer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/Observer<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private final consumptionAObserver:Landroidx/lifecycle/Observer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/Observer<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private final consumptionBObserver:Landroidx/lifecycle/Observer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/Observer<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private final editModeObserver:Landroidx/lifecycle/Observer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/Observer<",
            "Lcom/metamoji/media/video/dialog/MfConsumptionInfoViewModel$EditMode;",
            ">;"
        }
    .end annotation
.end field

.field private final selectedItemObserver:Landroidx/lifecycle/Observer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/Observer<",
            "Lcom/metamoji/media/video/dialog/MfConsumptionInfoViewModel$SelectedItem;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/metamoji/media/video/dialog/MfFileListDialog;


# direct methods
.method public constructor <init>(Lcom/metamoji/media/video/dialog/MfFileListDialog;)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 332
    iput-object p1, p0, Lcom/metamoji/media/video/dialog/MfFileListDialog$Bindings;->this$0:Lcom/metamoji/media/video/dialog/MfFileListDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 333
    new-instance v0, Lcom/metamoji/media/video/dialog/MfFileListDialog$Bindings$$ExternalSyntheticLambda4;

    invoke-direct {v0, p1}, Lcom/metamoji/media/video/dialog/MfFileListDialog$Bindings$$ExternalSyntheticLambda4;-><init>(Lcom/metamoji/media/video/dialog/MfFileListDialog;)V

    iput-object v0, p0, Lcom/metamoji/media/video/dialog/MfFileListDialog$Bindings;->consumptionAObserver:Landroidx/lifecycle/Observer;

    .line 336
    new-instance v1, Lcom/metamoji/media/video/dialog/MfFileListDialog$Bindings$$ExternalSyntheticLambda7;

    invoke-direct {v1, p1}, Lcom/metamoji/media/video/dialog/MfFileListDialog$Bindings$$ExternalSyntheticLambda7;-><init>(Lcom/metamoji/media/video/dialog/MfFileListDialog;)V

    iput-object v1, p0, Lcom/metamoji/media/video/dialog/MfFileListDialog$Bindings;->consumptionBObserver:Landroidx/lifecycle/Observer;

    .line 340
    new-instance v2, Lcom/metamoji/media/video/dialog/MfFileListDialog$Bindings$$ExternalSyntheticLambda8;

    invoke-direct {v2, p1}, Lcom/metamoji/media/video/dialog/MfFileListDialog$Bindings$$ExternalSyntheticLambda8;-><init>(Lcom/metamoji/media/video/dialog/MfFileListDialog;)V

    iput-object v2, p0, Lcom/metamoji/media/video/dialog/MfFileListDialog$Bindings;->editModeObserver:Landroidx/lifecycle/Observer;

    .line 344
    new-instance v3, Lcom/metamoji/media/video/dialog/MfFileListDialog$Bindings$$ExternalSyntheticLambda9;

    invoke-direct {v3, p1}, Lcom/metamoji/media/video/dialog/MfFileListDialog$Bindings$$ExternalSyntheticLambda9;-><init>(Lcom/metamoji/media/video/dialog/MfFileListDialog;)V

    iput-object v3, p0, Lcom/metamoji/media/video/dialog/MfFileListDialog$Bindings;->busynessObserver:Landroidx/lifecycle/Observer;

    .line 348
    new-instance v4, Lcom/metamoji/media/video/dialog/MfFileListDialog$Bindings$$ExternalSyntheticLambda10;

    invoke-direct {v4, p1}, Lcom/metamoji/media/video/dialog/MfFileListDialog$Bindings$$ExternalSyntheticLambda10;-><init>(Lcom/metamoji/media/video/dialog/MfFileListDialog;)V

    iput-object v4, p0, Lcom/metamoji/media/video/dialog/MfFileListDialog$Bindings;->selectedItemObserver:Landroidx/lifecycle/Observer;

    .line 356
    invoke-static {p1}, Lcom/metamoji/media/video/dialog/MfFileListDialog;->access$getControls$p(Lcom/metamoji/media/video/dialog/MfFileListDialog;)Lcom/metamoji/media/video/dialog/MfFileListDialog$Controls;

    move-result-object v5

    const-string v6, "controls"

    const/4 v7, 0x0

    if-nez v5, :cond_0

    invoke-static {v6}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v5, v7

    :cond_0
    invoke-virtual {v5}, Lcom/metamoji/media/video/dialog/MfFileListDialog$Controls;->getSettingButton()Landroid/widget/ImageButton;

    move-result-object v5

    new-instance v8, Lcom/metamoji/media/video/dialog/MfFileListDialog$Bindings$$ExternalSyntheticLambda11;

    invoke-direct {v8, p1}, Lcom/metamoji/media/video/dialog/MfFileListDialog$Bindings$$ExternalSyntheticLambda11;-><init>(Lcom/metamoji/media/video/dialog/MfFileListDialog;)V

    invoke-virtual {v5, v8}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 359
    invoke-static {p1}, Lcom/metamoji/media/video/dialog/MfFileListDialog;->access$getControls$p(Lcom/metamoji/media/video/dialog/MfFileListDialog;)Lcom/metamoji/media/video/dialog/MfFileListDialog$Controls;

    move-result-object v5

    if-nez v5, :cond_1

    invoke-static {v6}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v5, v7

    :cond_1
    invoke-virtual {v5}, Lcom/metamoji/media/video/dialog/MfFileListDialog$Controls;->getUploadButton()Landroid/widget/ImageButton;

    move-result-object v5

    new-instance v8, Lcom/metamoji/media/video/dialog/MfFileListDialog$Bindings$$ExternalSyntheticLambda12;

    invoke-direct {v8, p1}, Lcom/metamoji/media/video/dialog/MfFileListDialog$Bindings$$ExternalSyntheticLambda12;-><init>(Lcom/metamoji/media/video/dialog/MfFileListDialog;)V

    invoke-virtual {v5, v8}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 362
    invoke-static {p1}, Lcom/metamoji/media/video/dialog/MfFileListDialog;->access$getControls$p(Lcom/metamoji/media/video/dialog/MfFileListDialog;)Lcom/metamoji/media/video/dialog/MfFileListDialog$Controls;

    move-result-object v5

    if-nez v5, :cond_2

    invoke-static {v6}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v5, v7

    :cond_2
    invoke-virtual {v5}, Lcom/metamoji/media/video/dialog/MfFileListDialog$Controls;->getDeleteButton()Landroid/widget/ImageButton;

    move-result-object v5

    new-instance v8, Lcom/metamoji/media/video/dialog/MfFileListDialog$Bindings$$ExternalSyntheticLambda1;

    invoke-direct {v8, p1}, Lcom/metamoji/media/video/dialog/MfFileListDialog$Bindings$$ExternalSyntheticLambda1;-><init>(Lcom/metamoji/media/video/dialog/MfFileListDialog;)V

    invoke-virtual {v5, v8}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 365
    invoke-static {p1}, Lcom/metamoji/media/video/dialog/MfFileListDialog;->access$getControls$p(Lcom/metamoji/media/video/dialog/MfFileListDialog;)Lcom/metamoji/media/video/dialog/MfFileListDialog$Controls;

    move-result-object v5

    if-nez v5, :cond_3

    invoke-static {v6}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v5, v7

    :cond_3
    invoke-virtual {v5}, Lcom/metamoji/media/video/dialog/MfFileListDialog$Controls;->getEndEditButton()Lcom/metamoji/ui/common/UiButton;

    move-result-object v5

    new-instance v8, Lcom/metamoji/media/video/dialog/MfFileListDialog$Bindings$$ExternalSyntheticLambda2;

    invoke-direct {v8, p1}, Lcom/metamoji/media/video/dialog/MfFileListDialog$Bindings$$ExternalSyntheticLambda2;-><init>(Lcom/metamoji/media/video/dialog/MfFileListDialog;)V

    invoke-virtual {v5, v8}, Lcom/metamoji/ui/common/UiButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 368
    invoke-static {p1}, Lcom/metamoji/media/video/dialog/MfFileListDialog;->access$getControls$p(Lcom/metamoji/media/video/dialog/MfFileListDialog;)Lcom/metamoji/media/video/dialog/MfFileListDialog$Controls;

    move-result-object v5

    if-nez v5, :cond_4

    invoke-static {v6}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v5, v7

    :cond_4
    invoke-virtual {v5}, Lcom/metamoji/media/video/dialog/MfFileListDialog$Controls;->getDoUploadButton()Lcom/metamoji/ui/common/UiButton;

    move-result-object v5

    new-instance v8, Lcom/metamoji/media/video/dialog/MfFileListDialog$Bindings$$ExternalSyntheticLambda3;

    invoke-direct {v8, p0}, Lcom/metamoji/media/video/dialog/MfFileListDialog$Bindings$$ExternalSyntheticLambda3;-><init>(Lcom/metamoji/media/video/dialog/MfFileListDialog$Bindings;)V

    invoke-virtual {v5, v8}, Lcom/metamoji/ui/common/UiButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 371
    invoke-static {p1}, Lcom/metamoji/media/video/dialog/MfFileListDialog;->access$getControls$p(Lcom/metamoji/media/video/dialog/MfFileListDialog;)Lcom/metamoji/media/video/dialog/MfFileListDialog$Controls;

    move-result-object v5

    if-nez v5, :cond_5

    invoke-static {v6}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v5, v7

    :cond_5
    invoke-virtual {v5}, Lcom/metamoji/media/video/dialog/MfFileListDialog$Controls;->getDoDeleteButton()Lcom/metamoji/ui/common/UiButton;

    move-result-object v5

    new-instance v8, Lcom/metamoji/media/video/dialog/MfFileListDialog$Bindings$$ExternalSyntheticLambda5;

    invoke-direct {v8, p0}, Lcom/metamoji/media/video/dialog/MfFileListDialog$Bindings$$ExternalSyntheticLambda5;-><init>(Lcom/metamoji/media/video/dialog/MfFileListDialog$Bindings;)V

    invoke-virtual {v5, v8}, Lcom/metamoji/ui/common/UiButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 374
    invoke-static {p1}, Lcom/metamoji/media/video/dialog/MfFileListDialog;->access$getControls$p(Lcom/metamoji/media/video/dialog/MfFileListDialog;)Lcom/metamoji/media/video/dialog/MfFileListDialog$Controls;

    move-result-object v5

    if-nez v5, :cond_6

    invoke-static {v6}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v5, v7

    :cond_6
    invoke-virtual {v5}, Lcom/metamoji/media/video/dialog/MfFileListDialog$Controls;->getClearCacheButton()Lcom/metamoji/ui/common/UiButton;

    move-result-object v5

    new-instance v6, Lcom/metamoji/media/video/dialog/MfFileListDialog$Bindings$$ExternalSyntheticLambda6;

    invoke-direct {v6, p0}, Lcom/metamoji/media/video/dialog/MfFileListDialog$Bindings$$ExternalSyntheticLambda6;-><init>(Lcom/metamoji/media/video/dialog/MfFileListDialog$Bindings;)V

    invoke-virtual {v5, v6}, Lcom/metamoji/ui/common/UiButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 378
    invoke-virtual {p1}, Lcom/metamoji/media/video/dialog/MfFileListDialog;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v5

    const-string v6, "null cannot be cast to non-null type androidx.fragment.app.FragmentActivity"

    invoke-static {v5, v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 379
    invoke-static {p1}, Lcom/metamoji/media/video/dialog/MfFileListDialog;->access$getViewModel$p(Lcom/metamoji/media/video/dialog/MfFileListDialog;)Lcom/metamoji/media/video/dialog/MfConsumptionInfoViewModel;

    move-result-object v6

    const-string/jumbo v8, "viewModel"

    if-nez v6, :cond_7

    invoke-static {v8}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v6, v7

    :cond_7
    invoke-virtual {v6}, Lcom/metamoji/media/video/dialog/MfConsumptionInfoViewModel;->getConsumptionA()Landroidx/lifecycle/MutableLiveData;

    move-result-object v6

    check-cast v5, Landroidx/lifecycle/LifecycleOwner;

    invoke-virtual {v6, v5, v0}, Landroidx/lifecycle/MutableLiveData;->observe(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Observer;)V

    .line 380
    invoke-static {p1}, Lcom/metamoji/media/video/dialog/MfFileListDialog;->access$getViewModel$p(Lcom/metamoji/media/video/dialog/MfFileListDialog;)Lcom/metamoji/media/video/dialog/MfConsumptionInfoViewModel;

    move-result-object v0

    if-nez v0, :cond_8

    invoke-static {v8}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v0, v7

    :cond_8
    invoke-virtual {v0}, Lcom/metamoji/media/video/dialog/MfConsumptionInfoViewModel;->getConsumptionB()Landroidx/lifecycle/MutableLiveData;

    move-result-object v0

    invoke-virtual {v0, v5, v1}, Landroidx/lifecycle/MutableLiveData;->observe(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Observer;)V

    .line 381
    invoke-static {p1}, Lcom/metamoji/media/video/dialog/MfFileListDialog;->access$getViewModel$p(Lcom/metamoji/media/video/dialog/MfFileListDialog;)Lcom/metamoji/media/video/dialog/MfConsumptionInfoViewModel;

    move-result-object v0

    if-nez v0, :cond_9

    invoke-static {v8}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v0, v7

    :cond_9
    invoke-virtual {v0}, Lcom/metamoji/media/video/dialog/MfConsumptionInfoViewModel;->getEditMode()Landroidx/lifecycle/MutableLiveData;

    move-result-object v0

    invoke-virtual {v0, v5, v2}, Landroidx/lifecycle/MutableLiveData;->observe(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Observer;)V

    .line 382
    invoke-static {p1}, Lcom/metamoji/media/video/dialog/MfFileListDialog;->access$getViewModel$p(Lcom/metamoji/media/video/dialog/MfFileListDialog;)Lcom/metamoji/media/video/dialog/MfConsumptionInfoViewModel;

    move-result-object v0

    if-nez v0, :cond_a

    invoke-static {v8}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v0, v7

    :cond_a
    invoke-virtual {v0}, Lcom/metamoji/media/video/dialog/MfConsumptionInfoViewModel;->getBusy()Landroidx/lifecycle/MutableLiveData;

    move-result-object v0

    invoke-virtual {v0, v5, v3}, Landroidx/lifecycle/MutableLiveData;->observe(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Observer;)V

    .line 383
    invoke-static {p1}, Lcom/metamoji/media/video/dialog/MfFileListDialog;->access$getViewModel$p(Lcom/metamoji/media/video/dialog/MfFileListDialog;)Lcom/metamoji/media/video/dialog/MfConsumptionInfoViewModel;

    move-result-object p1

    if-nez p1, :cond_b

    invoke-static {v8}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    goto :goto_0

    :cond_b
    move-object v7, p1

    :goto_0
    invoke-virtual {v7}, Lcom/metamoji/media/video/dialog/MfConsumptionInfoViewModel;->getSelectedItem()Landroidx/lifecycle/MutableLiveData;

    move-result-object p1

    invoke-virtual {p1, v5, v4}, Landroidx/lifecycle/MutableLiveData;->observe(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Observer;)V

    return-void
.end method

.method static final _init_$lambda$10(Lcom/metamoji/media/video/dialog/MfFileListDialog$Bindings;Landroid/view/View;)V
    .locals 0

    .line 372
    invoke-direct {p0}, Lcom/metamoji/media/video/dialog/MfFileListDialog$Bindings;->deleteSelectedItems()V

    return-void
.end method

.method static final _init_$lambda$11(Lcom/metamoji/media/video/dialog/MfFileListDialog$Bindings;Landroid/view/View;)V
    .locals 0

    .line 375
    invoke-direct {p0}, Lcom/metamoji/media/video/dialog/MfFileListDialog$Bindings;->clearLocalCache()V

    return-void
.end method

.method static final _init_$lambda$5(Lcom/metamoji/media/video/dialog/MfFileListDialog;Landroid/view/View;)V
    .locals 2

    .line 357
    sget-object p1, Lcom/metamoji/media/video/dialog/MfListModeDialog;->Companion:Lcom/metamoji/media/video/dialog/MfListModeDialog$Companion;

    new-instance v0, Lcom/metamoji/media/video/dialog/MfListModeDialog$SortParams;

    invoke-static {p0}, Lcom/metamoji/media/video/dialog/MfFileListDialog;->access$getSortKey(Lcom/metamoji/media/video/dialog/MfFileListDialog;)Lcom/metamoji/media/video/VfVideoFileManager$MediaFilesOrder;

    move-result-object v1

    invoke-static {p0}, Lcom/metamoji/media/video/dialog/MfFileListDialog;->access$getSortOrder(Lcom/metamoji/media/video/dialog/MfFileListDialog;)Lcom/metamoji/media/video/VfVideoFileManager$MediaFilesOrderDir;

    move-result-object p0

    invoke-direct {v0, v1, p0}, Lcom/metamoji/media/video/dialog/MfListModeDialog$SortParams;-><init>(Lcom/metamoji/media/video/VfVideoFileManager$MediaFilesOrder;Lcom/metamoji/media/video/VfVideoFileManager$MediaFilesOrderDir;)V

    invoke-virtual {p1, v0}, Lcom/metamoji/media/video/dialog/MfListModeDialog$Companion;->newInstance(Lcom/metamoji/media/video/dialog/MfListModeDialog$SortParams;)Lcom/metamoji/media/video/dialog/MfListModeDialog;

    move-result-object p0

    const-string p1, "MfListModeDialog"

    invoke-virtual {p0, p1}, Lcom/metamoji/media/video/dialog/MfListModeDialog;->safeShow(Ljava/lang/String;)V

    return-void
.end method

.method static final _init_$lambda$6(Lcom/metamoji/media/video/dialog/MfFileListDialog;Landroid/view/View;)V
    .locals 0

    .line 360
    invoke-static {p0}, Lcom/metamoji/media/video/dialog/MfFileListDialog;->access$getViewModel$p(Lcom/metamoji/media/video/dialog/MfFileListDialog;)Lcom/metamoji/media/video/dialog/MfConsumptionInfoViewModel;

    move-result-object p0

    if-nez p0, :cond_0

    const-string/jumbo p0, "viewModel"

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 p0, 0x0

    :cond_0
    invoke-virtual {p0}, Lcom/metamoji/media/video/dialog/MfConsumptionInfoViewModel;->getEditMode()Landroidx/lifecycle/MutableLiveData;

    move-result-object p0

    sget-object p1, Lcom/metamoji/media/video/dialog/MfConsumptionInfoViewModel$EditMode;->UPLOADING:Lcom/metamoji/media/video/dialog/MfConsumptionInfoViewModel$EditMode;

    invoke-virtual {p0, p1}, Landroidx/lifecycle/MutableLiveData;->setValue(Ljava/lang/Object;)V

    return-void
.end method

.method static final _init_$lambda$7(Lcom/metamoji/media/video/dialog/MfFileListDialog;Landroid/view/View;)V
    .locals 0

    .line 363
    invoke-static {p0}, Lcom/metamoji/media/video/dialog/MfFileListDialog;->access$getViewModel$p(Lcom/metamoji/media/video/dialog/MfFileListDialog;)Lcom/metamoji/media/video/dialog/MfConsumptionInfoViewModel;

    move-result-object p0

    if-nez p0, :cond_0

    const-string/jumbo p0, "viewModel"

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 p0, 0x0

    :cond_0
    invoke-virtual {p0}, Lcom/metamoji/media/video/dialog/MfConsumptionInfoViewModel;->getEditMode()Landroidx/lifecycle/MutableLiveData;

    move-result-object p0

    sget-object p1, Lcom/metamoji/media/video/dialog/MfConsumptionInfoViewModel$EditMode;->DELETING:Lcom/metamoji/media/video/dialog/MfConsumptionInfoViewModel$EditMode;

    invoke-virtual {p0, p1}, Landroidx/lifecycle/MutableLiveData;->setValue(Ljava/lang/Object;)V

    return-void
.end method

.method static final _init_$lambda$8(Lcom/metamoji/media/video/dialog/MfFileListDialog;Landroid/view/View;)V
    .locals 0

    .line 366
    invoke-static {p0}, Lcom/metamoji/media/video/dialog/MfFileListDialog;->access$getViewModel$p(Lcom/metamoji/media/video/dialog/MfFileListDialog;)Lcom/metamoji/media/video/dialog/MfConsumptionInfoViewModel;

    move-result-object p0

    if-nez p0, :cond_0

    const-string/jumbo p0, "viewModel"

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 p0, 0x0

    :cond_0
    invoke-virtual {p0}, Lcom/metamoji/media/video/dialog/MfConsumptionInfoViewModel;->getEditMode()Landroidx/lifecycle/MutableLiveData;

    move-result-object p0

    sget-object p1, Lcom/metamoji/media/video/dialog/MfConsumptionInfoViewModel$EditMode;->NONE:Lcom/metamoji/media/video/dialog/MfConsumptionInfoViewModel$EditMode;

    invoke-virtual {p0, p1}, Landroidx/lifecycle/MutableLiveData;->setValue(Ljava/lang/Object;)V

    return-void
.end method

.method static final _init_$lambda$9(Lcom/metamoji/media/video/dialog/MfFileListDialog$Bindings;Landroid/view/View;)V
    .locals 0

    .line 369
    invoke-direct {p0}, Lcom/metamoji/media/video/dialog/MfFileListDialog$Bindings;->uploadSelectedItems()V

    return-void
.end method

.method static final busynessObserver$lambda$3(Lcom/metamoji/media/video/dialog/MfFileListDialog;Z)V
    .locals 0

    .line 345
    invoke-static {p0}, Lcom/metamoji/media/video/dialog/MfFileListDialog;->access$getControls$p(Lcom/metamoji/media/video/dialog/MfFileListDialog;)Lcom/metamoji/media/video/dialog/MfFileListDialog$Controls;

    move-result-object p0

    if-nez p0, :cond_0

    const-string p0, "controls"

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 p0, 0x0

    :cond_0
    invoke-virtual {p0, p1}, Lcom/metamoji/media/video/dialog/MfFileListDialog$Controls;->setBusy(Z)V

    return-void
.end method

.method private final clearLocalCache()V
    .locals 2

    .line 406
    iget-object v0, p0, Lcom/metamoji/media/video/dialog/MfFileListDialog$Bindings;->this$0:Lcom/metamoji/media/video/dialog/MfFileListDialog;

    invoke-static {v0}, Lcom/metamoji/media/video/dialog/MfFileListDialog;->access$getForLocal(Lcom/metamoji/media/video/dialog/MfFileListDialog;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 407
    sget-object v0, Lcom/metamoji/video/AmvCacheManager;->INSTANCE:Lcom/metamoji/video/AmvCacheManager;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/metamoji/video/AmvCacheManager;->sweep(I)V

    .line 408
    iget-object v0, p0, Lcom/metamoji/media/video/dialog/MfFileListDialog$Bindings;->this$0:Lcom/metamoji/media/video/dialog/MfFileListDialog;

    invoke-static {v0}, Lcom/metamoji/media/video/dialog/MfFileListDialog;->access$getViewModel$p(Lcom/metamoji/media/video/dialog/MfFileListDialog;)Lcom/metamoji/media/video/dialog/MfConsumptionInfoViewModel;

    move-result-object v0

    if-nez v0, :cond_0

    const-string/jumbo v0, "viewModel"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 v0, 0x0

    :cond_0
    invoke-virtual {v0}, Lcom/metamoji/media/video/dialog/MfConsumptionInfoViewModel;->update()V

    :cond_1
    return-void
.end method

.method static final consumptionAObserver$lambda$0(Lcom/metamoji/media/video/dialog/MfFileListDialog;J)V
    .locals 0

    .line 334
    invoke-static {p0}, Lcom/metamoji/media/video/dialog/MfFileListDialog;->access$getControls$p(Lcom/metamoji/media/video/dialog/MfFileListDialog;)Lcom/metamoji/media/video/dialog/MfFileListDialog$Controls;

    move-result-object p0

    if-nez p0, :cond_0

    const-string p0, "controls"

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 p0, 0x0

    :cond_0
    invoke-virtual {p0, p1, p2}, Lcom/metamoji/media/video/dialog/MfFileListDialog$Controls;->setConsumptionA(J)V

    return-void
.end method

.method static final consumptionBObserver$lambda$1(Lcom/metamoji/media/video/dialog/MfFileListDialog;J)V
    .locals 0

    .line 337
    invoke-static {p0}, Lcom/metamoji/media/video/dialog/MfFileListDialog;->access$getControls$p(Lcom/metamoji/media/video/dialog/MfFileListDialog;)Lcom/metamoji/media/video/dialog/MfFileListDialog$Controls;

    move-result-object p0

    if-nez p0, :cond_0

    const-string p0, "controls"

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 p0, 0x0

    :cond_0
    invoke-virtual {p0, p1, p2}, Lcom/metamoji/media/video/dialog/MfFileListDialog$Controls;->setConsumptionB(J)V

    return-void
.end method

.method private final deleteSelectedItems()V
    .locals 4

    .line 398
    iget-object v0, p0, Lcom/metamoji/media/video/dialog/MfFileListDialog$Bindings;->this$0:Lcom/metamoji/media/video/dialog/MfFileListDialog;

    invoke-static {v0}, Lcom/metamoji/media/video/dialog/MfFileListDialog;->access$getControls$p(Lcom/metamoji/media/video/dialog/MfFileListDialog;)Lcom/metamoji/media/video/dialog/MfFileListDialog$Controls;

    move-result-object v0

    if-nez v0, :cond_0

    const-string v0, "controls"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 v0, 0x0

    :cond_0
    invoke-virtual {v0}, Lcom/metamoji/media/video/dialog/MfFileListDialog$Controls;->getFileListView()Lcom/metamoji/media/video/dialog/MfFileListView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/metamoji/media/video/dialog/MfFileListView;->isItemSelected()Z

    move-result v0

    if-nez v0, :cond_1

    return-void

    .line 401
    :cond_1
    sget-object v0, Lcom/metamoji/media/video/dialog/MfFileItemDialog;->Companion:Lcom/metamoji/media/video/dialog/MfFileItemDialog$Companion;

    iget-object v1, p0, Lcom/metamoji/media/video/dialog/MfFileListDialog$Bindings;->this$0:Lcom/metamoji/media/video/dialog/MfFileListDialog;

    invoke-static {v1}, Lcom/metamoji/media/video/dialog/MfFileListDialog;->access$getForLocal(Lcom/metamoji/media/video/dialog/MfFileListDialog;)Z

    move-result v1

    iget-object v2, p0, Lcom/metamoji/media/video/dialog/MfFileListDialog$Bindings;->this$0:Lcom/metamoji/media/video/dialog/MfFileListDialog;

    new-instance v3, Lcom/metamoji/media/video/dialog/MfFileListDialog$Bindings$$ExternalSyntheticLambda0;

    invoke-direct {v3, v2}, Lcom/metamoji/media/video/dialog/MfFileListDialog$Bindings$$ExternalSyntheticLambda0;-><init>(Lcom/metamoji/media/video/dialog/MfFileListDialog;)V

    invoke-virtual {v0, v1, v3}, Lcom/metamoji/media/video/dialog/MfFileItemDialog$Companion;->showConfirmMessageToRemoveFile(ZLkotlin/jvm/functions/Function0;)V

    return-void
.end method

.method static final deleteSelectedItems$lambda$12(Lcom/metamoji/media/video/dialog/MfFileListDialog;)Lkotlin/Unit;
    .locals 0

    .line 402
    invoke-static {p0}, Lcom/metamoji/media/video/dialog/MfFileListDialog;->access$getControls$p(Lcom/metamoji/media/video/dialog/MfFileListDialog;)Lcom/metamoji/media/video/dialog/MfFileListDialog$Controls;

    move-result-object p0

    if-nez p0, :cond_0

    const-string p0, "controls"

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 p0, 0x0

    :cond_0
    invoke-virtual {p0}, Lcom/metamoji/media/video/dialog/MfFileListDialog$Controls;->getFileListView()Lcom/metamoji/media/video/dialog/MfFileListView;

    move-result-object p0

    invoke-virtual {p0}, Lcom/metamoji/media/video/dialog/MfFileListView;->deleteSelectedItems()V

    .line 403
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method

.method static final editModeObserver$lambda$2(Lcom/metamoji/media/video/dialog/MfFileListDialog;Lcom/metamoji/media/video/dialog/MfConsumptionInfoViewModel$EditMode;)V
    .locals 1

    const-string v0, "it"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 341
    invoke-static {p0}, Lcom/metamoji/media/video/dialog/MfFileListDialog;->access$getControls$p(Lcom/metamoji/media/video/dialog/MfFileListDialog;)Lcom/metamoji/media/video/dialog/MfFileListDialog$Controls;

    move-result-object p0

    if-nez p0, :cond_0

    const-string p0, "controls"

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 p0, 0x0

    :cond_0
    invoke-virtual {p0, p1}, Lcom/metamoji/media/video/dialog/MfFileListDialog$Controls;->setEditMode(Lcom/metamoji/media/video/dialog/MfConsumptionInfoViewModel$EditMode;)V

    return-void
.end method

.method static final selectedItemObserver$lambda$4(Lcom/metamoji/media/video/dialog/MfFileListDialog;Lcom/metamoji/media/video/dialog/MfConsumptionInfoViewModel$SelectedItem;)V
    .locals 2

    if-eqz p1, :cond_1

    .line 350
    invoke-static {p0}, Lcom/metamoji/media/video/dialog/MfFileListDialog;->access$getViewModel$p(Lcom/metamoji/media/video/dialog/MfFileListDialog;)Lcom/metamoji/media/video/dialog/MfConsumptionInfoViewModel;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    const-string/jumbo v0, "viewModel"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v0, v1

    :cond_0
    invoke-virtual {v0}, Lcom/metamoji/media/video/dialog/MfConsumptionInfoViewModel;->getSelectedItem()Landroidx/lifecycle/MutableLiveData;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroidx/lifecycle/MutableLiveData;->setValue(Ljava/lang/Object;)V

    .line 351
    invoke-virtual {p1}, Lcom/metamoji/media/video/dialog/MfConsumptionInfoViewModel$SelectedItem;->getItem()Lcom/metamoji/media/video/dialog/IFileItem;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/metamoji/media/video/dialog/MfFileListDialog;->access$onMovieItemSelected(Lcom/metamoji/media/video/dialog/MfFileListDialog;Lcom/metamoji/media/video/dialog/IFileItem;)V

    :cond_1
    return-void
.end method

.method private final uploadSelectedItems()V
    .locals 1

    .line 395
    iget-object v0, p0, Lcom/metamoji/media/video/dialog/MfFileListDialog$Bindings;->this$0:Lcom/metamoji/media/video/dialog/MfFileListDialog;

    invoke-static {v0}, Lcom/metamoji/media/video/dialog/MfFileListDialog;->access$getControls$p(Lcom/metamoji/media/video/dialog/MfFileListDialog;)Lcom/metamoji/media/video/dialog/MfFileListDialog$Controls;

    move-result-object v0

    if-nez v0, :cond_0

    const-string v0, "controls"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 v0, 0x0

    :cond_0
    invoke-virtual {v0}, Lcom/metamoji/media/video/dialog/MfFileListDialog$Controls;->getFileListView()Lcom/metamoji/media/video/dialog/MfFileListView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/metamoji/media/video/dialog/MfFileListView;->uploadSelectedItems()V

    return-void
.end method


# virtual methods
.method public final unbind()V
    .locals 4

    .line 387
    iget-object v0, p0, Lcom/metamoji/media/video/dialog/MfFileListDialog$Bindings;->this$0:Lcom/metamoji/media/video/dialog/MfFileListDialog;

    invoke-static {v0}, Lcom/metamoji/media/video/dialog/MfFileListDialog;->access$getViewModel$p(Lcom/metamoji/media/video/dialog/MfFileListDialog;)Lcom/metamoji/media/video/dialog/MfConsumptionInfoViewModel;

    move-result-object v0

    const/4 v1, 0x0

    const-string/jumbo v2, "viewModel"

    if-nez v0, :cond_0

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v0, v1

    :cond_0
    invoke-virtual {v0}, Lcom/metamoji/media/video/dialog/MfConsumptionInfoViewModel;->getConsumptionA()Landroidx/lifecycle/MutableLiveData;

    move-result-object v0

    iget-object v3, p0, Lcom/metamoji/media/video/dialog/MfFileListDialog$Bindings;->consumptionAObserver:Landroidx/lifecycle/Observer;

    invoke-virtual {v0, v3}, Landroidx/lifecycle/MutableLiveData;->removeObserver(Landroidx/lifecycle/Observer;)V

    .line 388
    iget-object v0, p0, Lcom/metamoji/media/video/dialog/MfFileListDialog$Bindings;->this$0:Lcom/metamoji/media/video/dialog/MfFileListDialog;

    invoke-static {v0}, Lcom/metamoji/media/video/dialog/MfFileListDialog;->access$getViewModel$p(Lcom/metamoji/media/video/dialog/MfFileListDialog;)Lcom/metamoji/media/video/dialog/MfConsumptionInfoViewModel;

    move-result-object v0

    if-nez v0, :cond_1

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v0, v1

    :cond_1
    invoke-virtual {v0}, Lcom/metamoji/media/video/dialog/MfConsumptionInfoViewModel;->getConsumptionB()Landroidx/lifecycle/MutableLiveData;

    move-result-object v0

    iget-object v3, p0, Lcom/metamoji/media/video/dialog/MfFileListDialog$Bindings;->consumptionBObserver:Landroidx/lifecycle/Observer;

    invoke-virtual {v0, v3}, Landroidx/lifecycle/MutableLiveData;->removeObserver(Landroidx/lifecycle/Observer;)V

    .line 389
    iget-object v0, p0, Lcom/metamoji/media/video/dialog/MfFileListDialog$Bindings;->this$0:Lcom/metamoji/media/video/dialog/MfFileListDialog;

    invoke-static {v0}, Lcom/metamoji/media/video/dialog/MfFileListDialog;->access$getViewModel$p(Lcom/metamoji/media/video/dialog/MfFileListDialog;)Lcom/metamoji/media/video/dialog/MfConsumptionInfoViewModel;

    move-result-object v0

    if-nez v0, :cond_2

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v0, v1

    :cond_2
    invoke-virtual {v0}, Lcom/metamoji/media/video/dialog/MfConsumptionInfoViewModel;->getEditMode()Landroidx/lifecycle/MutableLiveData;

    move-result-object v0

    iget-object v3, p0, Lcom/metamoji/media/video/dialog/MfFileListDialog$Bindings;->editModeObserver:Landroidx/lifecycle/Observer;

    invoke-virtual {v0, v3}, Landroidx/lifecycle/MutableLiveData;->removeObserver(Landroidx/lifecycle/Observer;)V

    .line 390
    iget-object v0, p0, Lcom/metamoji/media/video/dialog/MfFileListDialog$Bindings;->this$0:Lcom/metamoji/media/video/dialog/MfFileListDialog;

    invoke-static {v0}, Lcom/metamoji/media/video/dialog/MfFileListDialog;->access$getViewModel$p(Lcom/metamoji/media/video/dialog/MfFileListDialog;)Lcom/metamoji/media/video/dialog/MfConsumptionInfoViewModel;

    move-result-object v0

    if-nez v0, :cond_3

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v0, v1

    :cond_3
    invoke-virtual {v0}, Lcom/metamoji/media/video/dialog/MfConsumptionInfoViewModel;->getBusy()Landroidx/lifecycle/MutableLiveData;

    move-result-object v0

    iget-object v3, p0, Lcom/metamoji/media/video/dialog/MfFileListDialog$Bindings;->busynessObserver:Landroidx/lifecycle/Observer;

    invoke-virtual {v0, v3}, Landroidx/lifecycle/MutableLiveData;->removeObserver(Landroidx/lifecycle/Observer;)V

    .line 391
    iget-object v0, p0, Lcom/metamoji/media/video/dialog/MfFileListDialog$Bindings;->this$0:Lcom/metamoji/media/video/dialog/MfFileListDialog;

    invoke-static {v0}, Lcom/metamoji/media/video/dialog/MfFileListDialog;->access$getViewModel$p(Lcom/metamoji/media/video/dialog/MfFileListDialog;)Lcom/metamoji/media/video/dialog/MfConsumptionInfoViewModel;

    move-result-object v0

    if-nez v0, :cond_4

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    goto :goto_0

    :cond_4
    move-object v1, v0

    :goto_0
    invoke-virtual {v1}, Lcom/metamoji/media/video/dialog/MfConsumptionInfoViewModel;->getSelectedItem()Landroidx/lifecycle/MutableLiveData;

    move-result-object v0

    iget-object v1, p0, Lcom/metamoji/media/video/dialog/MfFileListDialog$Bindings;->selectedItemObserver:Landroidx/lifecycle/Observer;

    invoke-virtual {v0, v1}, Landroidx/lifecycle/MutableLiveData;->removeObserver(Landroidx/lifecycle/Observer;)V

    return-void
.end method
