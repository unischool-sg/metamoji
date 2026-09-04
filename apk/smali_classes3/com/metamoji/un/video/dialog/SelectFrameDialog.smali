.class public final Lcom/metamoji/un/video/dialog/SelectFrameDialog;
.super Lcom/metamoji/ui/dialog/UtDialogNt;
.source "SelectFrameDialog.kt"

# interfaces
.implements Lcom/metamoji/un/video/UnVideoUnit$IClosableDialog;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/metamoji/un/video/dialog/SelectFrameDialog$Companion;,
        Lcom/metamoji/un/video/dialog/SelectFrameDialog$SelectFrameViewModel;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000D\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0008\u0018\u0000 #2\u00020\u00012\u00020\u0002:\u0002#$B\u0007\u00a2\u0006\u0004\u0008\u0003\u0010\u0004J\u0008\u0010\u0015\u001a\u00020\u0016H\u0016J\u0008\u0010\u0017\u001a\u00020\u0016H\u0016J\u001a\u0010\u0018\u001a\u00020\u00192\u0008\u0010\u001a\u001a\u0004\u0018\u00010\u001b2\u0006\u0010\u001c\u001a\u00020\u001dH\u0014J\u001a\u0010\u001e\u001a\u00020\u00162\u0006\u0010\u001f\u001a\u00020\u00192\u0008\u0010\u001a\u001a\u0004\u0018\u00010\u001bH\u0016J\u0008\u0010 \u001a\u00020\u0016H\u0014J\u0008\u0010!\u001a\u00020\u0016H\u0014J\u0008\u0010\"\u001a\u00020\u0016H\u0014R\u001a\u0010\u0005\u001a\u00020\u0006X\u0086.\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0007\u0010\u0008\"\u0004\u0008\t\u0010\nR\u001a\u0010\u000b\u001a\u00020\u000cX\u0086.\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\r\u0010\u000e\"\u0004\u0008\u000f\u0010\u0010R\u0011\u0010\u0011\u001a\u00020\u0012\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0013\u0010\u0014\u00a8\u0006%"
    }
    d2 = {
        "Lcom/metamoji/un/video/dialog/SelectFrameDialog;",
        "Lcom/metamoji/ui/dialog/UtDialogNt;",
        "Lcom/metamoji/un/video/UnVideoUnit$IClosableDialog;",
        "<init>",
        "()V",
        "viewModel",
        "Lcom/metamoji/un/video/dialog/SelectFrameDialog$SelectFrameViewModel;",
        "getViewModel",
        "()Lcom/metamoji/un/video/dialog/SelectFrameDialog$SelectFrameViewModel;",
        "setViewModel",
        "(Lcom/metamoji/un/video/dialog/SelectFrameDialog$SelectFrameViewModel;)V",
        "frameSelectorView",
        "Lcom/metamoji/video/AmvFrameSelectorView;",
        "getFrameSelectorView",
        "()Lcom/metamoji/video/AmvFrameSelectorView;",
        "setFrameSelectorView",
        "(Lcom/metamoji/video/AmvFrameSelectorView;)V",
        "binder",
        "Lcom/metamoji/lib/utils/binding/Binder;",
        "getBinder",
        "()Lcom/metamoji/lib/utils/binding/Binder;",
        "forceClose",
        "",
        "preCreateBodyView",
        "createBodyView",
        "Landroid/view/View;",
        "savedInstanceState",
        "Landroid/os/Bundle;",
        "inflater",
        "Lcom/metamoji/lib/dialog/UtDialog$IViewInflater;",
        "onViewCreated",
        "view",
        "onPositive",
        "onNegative",
        "onDialogClosed",
        "Companion",
        "SelectFrameViewModel",
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


# static fields
.field public static final Companion:Lcom/metamoji/un/video/dialog/SelectFrameDialog$Companion;

.field private static final KEY_INITIAL_POSITION:Ljava/lang/String; = "initialPos"

.field private static final KEY_TICKET:Ljava/lang/String; = "ticket"


# instance fields
.field private final binder:Lcom/metamoji/lib/utils/binding/Binder;

.field public frameSelectorView:Lcom/metamoji/video/AmvFrameSelectorView;

.field public viewModel:Lcom/metamoji/un/video/dialog/SelectFrameDialog$SelectFrameViewModel;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/metamoji/un/video/dialog/SelectFrameDialog$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/metamoji/un/video/dialog/SelectFrameDialog$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/metamoji/un/video/dialog/SelectFrameDialog;->Companion:Lcom/metamoji/un/video/dialog/SelectFrameDialog$Companion;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 41
    invoke-direct {p0}, Lcom/metamoji/ui/dialog/UtDialogNt;-><init>()V

    .line 157
    new-instance v0, Lcom/metamoji/lib/utils/binding/Binder;

    invoke-direct {v0}, Lcom/metamoji/lib/utils/binding/Binder;-><init>()V

    iput-object v0, p0, Lcom/metamoji/un/video/dialog/SelectFrameDialog;->binder:Lcom/metamoji/lib/utils/binding/Binder;

    return-void
.end method

.method public static final newInstance(Lcom/metamoji/lib/dialog/task/IUtImmortalTask;Ljava/lang/String;D)Lcom/metamoji/un/video/dialog/SelectFrameDialog;
    .locals 1
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    sget-object v0, Lcom/metamoji/un/video/dialog/SelectFrameDialog;->Companion:Lcom/metamoji/un/video/dialog/SelectFrameDialog$Companion;

    invoke-virtual {v0, p0, p1, p2, p3}, Lcom/metamoji/un/video/dialog/SelectFrameDialog$Companion;->newInstance(Lcom/metamoji/lib/dialog/task/IUtImmortalTask;Ljava/lang/String;D)Lcom/metamoji/un/video/dialog/SelectFrameDialog;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method protected createBodyView(Landroid/os/Bundle;Lcom/metamoji/lib/dialog/UtDialog$IViewInflater;)Landroid/view/View;
    .locals 2

    const-string p1, "inflater"

    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 173
    sget-object p1, Lcom/metamoji/un/video/dialog/SelectFrameDialog$SelectFrameViewModel;->Companion:Lcom/metamoji/un/video/dialog/SelectFrameDialog$SelectFrameViewModel$Companion;

    move-object v0, p0

    check-cast v0, Lcom/metamoji/lib/dialog/IUtDialog;

    invoke-virtual {p1, v0}, Lcom/metamoji/un/video/dialog/SelectFrameDialog$SelectFrameViewModel$Companion;->instanceFor(Lcom/metamoji/lib/dialog/IUtDialog;)Lcom/metamoji/un/video/dialog/SelectFrameDialog$SelectFrameViewModel;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/metamoji/un/video/dialog/SelectFrameDialog;->setViewModel(Lcom/metamoji/un/video/dialog/SelectFrameDialog$SelectFrameViewModel;)V

    .line 174
    sget p1, Lcom/metamoji/noteanytime/R$layout;->dialog_video_select_frame:I

    invoke-interface {p2, p1}, Lcom/metamoji/lib/dialog/UtDialog$IViewInflater;->inflate(I)Landroid/view/View;

    move-result-object p1

    .line 175
    sget p2, Lcom/metamoji/noteanytime/R$id;->videoFrameSelectorView:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    const-string v0, "findViewById(...)"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p2, Lcom/metamoji/video/AmvFrameSelectorView;

    invoke-virtual {p0, p2}, Lcom/metamoji/un/video/dialog/SelectFrameDialog;->setFrameSelectorView(Lcom/metamoji/video/AmvFrameSelectorView;)V

    .line 176
    invoke-virtual {p0}, Lcom/metamoji/un/video/dialog/SelectFrameDialog;->getViewModel()Lcom/metamoji/un/video/dialog/SelectFrameDialog$SelectFrameViewModel;

    move-result-object p2

    invoke-virtual {p2}, Lcom/metamoji/un/video/dialog/SelectFrameDialog$SelectFrameViewModel;->getSourceFile()Lkotlinx/coroutines/flow/MutableStateFlow;

    move-result-object p2

    check-cast p2, Lkotlinx/coroutines/flow/Flow;

    new-instance v0, Lcom/metamoji/un/video/dialog/SelectFrameDialog$createBodyView$1$1;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/metamoji/un/video/dialog/SelectFrameDialog$createBodyView$1$1;-><init>(Lcom/metamoji/un/video/dialog/SelectFrameDialog;Lkotlin/coroutines/Continuation;)V

    check-cast v0, Lkotlin/jvm/functions/Function2;

    invoke-static {p2, v0}, Lkotlinx/coroutines/flow/FlowKt;->onEach(Lkotlinx/coroutines/flow/Flow;Lkotlin/jvm/functions/Function2;)Lkotlinx/coroutines/flow/Flow;

    move-result-object p2

    .line 180
    invoke-virtual {p0}, Lcom/metamoji/un/video/dialog/SelectFrameDialog;->getViewLifecycleOwner()Landroidx/lifecycle/LifecycleOwner;

    move-result-object v0

    invoke-interface {v0}, Landroidx/lifecycle/LifecycleOwner;->getLifecycle()Landroidx/lifecycle/Lifecycle;

    move-result-object v0

    invoke-static {v0}, Landroidx/lifecycle/LifecycleKt;->getCoroutineScope(Landroidx/lifecycle/Lifecycle;)Landroidx/lifecycle/LifecycleCoroutineScope;

    move-result-object v0

    check-cast v0, Lkotlinx/coroutines/CoroutineScope;

    invoke-static {p2, v0}, Lkotlinx/coroutines/flow/FlowKt;->launchIn(Lkotlinx/coroutines/flow/Flow;Lkotlinx/coroutines/CoroutineScope;)Lkotlinx/coroutines/Job;

    .line 181
    invoke-virtual {p0}, Lcom/metamoji/un/video/dialog/SelectFrameDialog;->getViewModel()Lcom/metamoji/un/video/dialog/SelectFrameDialog$SelectFrameViewModel;

    move-result-object p2

    invoke-virtual {p2}, Lcom/metamoji/un/video/dialog/SelectFrameDialog$SelectFrameViewModel;->getCompleted()Lkotlinx/coroutines/flow/MutableStateFlow;

    move-result-object p2

    check-cast p2, Lkotlinx/coroutines/flow/Flow;

    new-instance v0, Lcom/metamoji/un/video/dialog/SelectFrameDialog$createBodyView$1$2;

    invoke-direct {v0, p0, v1}, Lcom/metamoji/un/video/dialog/SelectFrameDialog$createBodyView$1$2;-><init>(Lcom/metamoji/un/video/dialog/SelectFrameDialog;Lkotlin/coroutines/Continuation;)V

    check-cast v0, Lkotlin/jvm/functions/Function2;

    invoke-static {p2, v0}, Lkotlinx/coroutines/flow/FlowKt;->onEach(Lkotlinx/coroutines/flow/Flow;Lkotlin/jvm/functions/Function2;)Lkotlinx/coroutines/flow/Flow;

    move-result-object p2

    .line 185
    invoke-virtual {p0}, Lcom/metamoji/un/video/dialog/SelectFrameDialog;->getViewLifecycleOwner()Landroidx/lifecycle/LifecycleOwner;

    move-result-object v0

    invoke-interface {v0}, Landroidx/lifecycle/LifecycleOwner;->getLifecycle()Landroidx/lifecycle/Lifecycle;

    move-result-object v0

    invoke-static {v0}, Landroidx/lifecycle/LifecycleKt;->getCoroutineScope(Landroidx/lifecycle/Lifecycle;)Landroidx/lifecycle/LifecycleCoroutineScope;

    move-result-object v0

    check-cast v0, Lkotlinx/coroutines/CoroutineScope;

    invoke-static {p2, v0}, Lkotlinx/coroutines/flow/FlowKt;->launchIn(Lkotlinx/coroutines/flow/Flow;Lkotlinx/coroutines/CoroutineScope;)Lkotlinx/coroutines/Job;

    return-object p1
.end method

.method public forceClose()V
    .locals 0

    .line 161
    invoke-virtual {p0}, Lcom/metamoji/un/video/dialog/SelectFrameDialog;->dismiss()V

    return-void
.end method

.method public final getBinder()Lcom/metamoji/lib/utils/binding/Binder;
    .locals 1

    .line 157
    iget-object v0, p0, Lcom/metamoji/un/video/dialog/SelectFrameDialog;->binder:Lcom/metamoji/lib/utils/binding/Binder;

    return-object v0
.end method

.method public final getFrameSelectorView()Lcom/metamoji/video/AmvFrameSelectorView;
    .locals 1

    .line 156
    iget-object v0, p0, Lcom/metamoji/un/video/dialog/SelectFrameDialog;->frameSelectorView:Lcom/metamoji/video/AmvFrameSelectorView;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    const-string v0, "frameSelectorView"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 v0, 0x0

    return-object v0
.end method

.method public final getViewModel()Lcom/metamoji/un/video/dialog/SelectFrameDialog$SelectFrameViewModel;
    .locals 1

    .line 155
    iget-object v0, p0, Lcom/metamoji/un/video/dialog/SelectFrameDialog;->viewModel:Lcom/metamoji/un/video/dialog/SelectFrameDialog$SelectFrameViewModel;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    const-string/jumbo v0, "viewModel"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 v0, 0x0

    return-object v0
.end method

.method protected onDialogClosed()V
    .locals 1

    .line 213
    invoke-virtual {p0}, Lcom/metamoji/un/video/dialog/SelectFrameDialog;->getFrameSelectorView()Lcom/metamoji/video/AmvFrameSelectorView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/metamoji/video/AmvFrameSelectorView;->dispose()V

    .line 214
    invoke-super {p0}, Lcom/metamoji/ui/dialog/UtDialogNt;->onDialogClosed()V

    return-void
.end method

.method protected onNegative()V
    .locals 1

    .line 207
    invoke-virtual {p0}, Lcom/metamoji/un/video/dialog/SelectFrameDialog;->getViewModel()Lcom/metamoji/un/video/dialog/SelectFrameDialog$SelectFrameViewModel;

    move-result-object v0

    invoke-virtual {v0}, Lcom/metamoji/un/video/dialog/SelectFrameDialog$SelectFrameViewModel;->cancel()V

    .line 208
    invoke-super {p0}, Lcom/metamoji/ui/dialog/UtDialogNt;->onNegative()V

    return-void
.end method

.method protected onPositive()V
    .locals 3

    .line 203
    invoke-virtual {p0}, Lcom/metamoji/un/video/dialog/SelectFrameDialog;->getViewModel()Lcom/metamoji/un/video/dialog/SelectFrameDialog$SelectFrameViewModel;

    move-result-object v0

    invoke-virtual {p0}, Lcom/metamoji/un/video/dialog/SelectFrameDialog;->getFrameSelectorView()Lcom/metamoji/video/AmvFrameSelectorView;

    move-result-object v1

    invoke-virtual {v1}, Lcom/metamoji/video/AmvFrameSelectorView;->getFramePosition()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/metamoji/un/video/dialog/SelectFrameDialog$SelectFrameViewModel;->extract(J)V

    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 22

    move-object/from16 v0, p1

    const-string/jumbo v1, "view"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 190
    invoke-super/range {p0 .. p2}, Lcom/metamoji/ui/dialog/UtDialogNt;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 193
    sget v1, Lcom/metamoji/noteanytime/R$id;->dvs_progressRing:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ProgressBar;

    .line 194
    sget v2, Lcom/metamoji/noteanytime/R$id;->dvs_errorMessage:I

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    move-object/from16 v2, p0

    .line 195
    iget-object v3, v2, Lcom/metamoji/un/video/dialog/SelectFrameDialog;->binder:Lcom/metamoji/lib/utils/binding/Binder;

    const/4 v4, 0x3

    .line 196
    new-array v4, v4, [Lcom/metamoji/lib/utils/IDisposable;

    sget-object v5, Lcom/metamoji/lib/utils/binding/impl/VisibilityBinding;->Companion:Lcom/metamoji/lib/utils/binding/impl/VisibilityBinding$Companion;

    invoke-virtual {v2}, Lcom/metamoji/un/video/dialog/SelectFrameDialog;->getViewLifecycleOwner()Landroidx/lifecycle/LifecycleOwner;

    move-result-object v6

    const-string v13, "getViewLifecycleOwner(...)"

    invoke-static {v6, v13}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    move-object v7, v1

    check-cast v7, Landroid/view/View;

    invoke-virtual {v2}, Lcom/metamoji/un/video/dialog/SelectFrameDialog;->getViewModel()Lcom/metamoji/un/video/dialog/SelectFrameDialog$SelectFrameViewModel;

    move-result-object v1

    invoke-virtual {v1}, Lcom/metamoji/un/video/dialog/SelectFrameDialog$SelectFrameViewModel;->getWaiting()Lkotlinx/coroutines/flow/Flow;

    move-result-object v14

    const/16 v18, 0x3

    const/16 v19, 0x0

    const/4 v15, 0x0

    const-wide/16 v16, 0x0

    invoke-static/range {v14 .. v19}, Landroidx/lifecycle/FlowLiveDataConversions;->asLiveData$default(Lkotlinx/coroutines/flow/Flow;Lkotlin/coroutines/CoroutineContext;JILjava/lang/Object;)Landroidx/lifecycle/LiveData;

    move-result-object v8

    const/16 v11, 0x18

    const/4 v12, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-static/range {v5 .. v12}, Lcom/metamoji/lib/utils/binding/impl/VisibilityBinding$Companion;->create$default(Lcom/metamoji/lib/utils/binding/impl/VisibilityBinding$Companion;Landroidx/lifecycle/LifecycleOwner;Landroid/view/View;Landroidx/lifecycle/LiveData;Lcom/metamoji/lib/utils/binding/BoolConvert;Lcom/metamoji/lib/utils/binding/impl/VisibilityBinding$HiddenMode;ILjava/lang/Object;)Lcom/metamoji/lib/utils/binding/impl/VisibilityBinding;

    move-result-object v1

    const/4 v5, 0x0

    aput-object v1, v4, v5

    .line 197
    sget-object v14, Lcom/metamoji/lib/utils/binding/impl/VisibilityBinding;->Companion:Lcom/metamoji/lib/utils/binding/impl/VisibilityBinding$Companion;

    invoke-virtual {v2}, Lcom/metamoji/un/video/dialog/SelectFrameDialog;->getViewLifecycleOwner()Landroidx/lifecycle/LifecycleOwner;

    move-result-object v15

    invoke-static {v15, v13}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    move-object/from16 v16, v0

    check-cast v16, Landroid/view/View;

    invoke-virtual {v2}, Lcom/metamoji/un/video/dialog/SelectFrameDialog;->getViewModel()Lcom/metamoji/un/video/dialog/SelectFrameDialog$SelectFrameViewModel;

    move-result-object v0

    invoke-virtual {v0}, Lcom/metamoji/un/video/dialog/SelectFrameDialog$SelectFrameViewModel;->getError()Lkotlinx/coroutines/flow/Flow;

    move-result-object v6

    const/4 v10, 0x3

    const/4 v11, 0x0

    const/4 v7, 0x0

    const-wide/16 v8, 0x0

    invoke-static/range {v6 .. v11}, Landroidx/lifecycle/FlowLiveDataConversions;->asLiveData$default(Lkotlinx/coroutines/flow/Flow;Lkotlin/coroutines/CoroutineContext;JILjava/lang/Object;)Landroidx/lifecycle/LiveData;

    move-result-object v17

    sget-object v19, Lcom/metamoji/lib/utils/binding/impl/VisibilityBinding$HiddenMode;->HideByInvisible:Lcom/metamoji/lib/utils/binding/impl/VisibilityBinding$HiddenMode;

    const/16 v20, 0x8

    const/16 v21, 0x0

    const/16 v18, 0x0

    invoke-static/range {v14 .. v21}, Lcom/metamoji/lib/utils/binding/impl/VisibilityBinding$Companion;->create$default(Lcom/metamoji/lib/utils/binding/impl/VisibilityBinding$Companion;Landroidx/lifecycle/LifecycleOwner;Landroid/view/View;Landroidx/lifecycle/LiveData;Lcom/metamoji/lib/utils/binding/BoolConvert;Lcom/metamoji/lib/utils/binding/impl/VisibilityBinding$HiddenMode;ILjava/lang/Object;)Lcom/metamoji/lib/utils/binding/impl/VisibilityBinding;

    move-result-object v0

    const/4 v1, 0x1

    aput-object v0, v4, v1

    .line 198
    sget-object v14, Lcom/metamoji/lib/utils/binding/impl/MultiVisibilityBinding;->Companion:Lcom/metamoji/lib/utils/binding/impl/MultiVisibilityBinding$Companion;

    invoke-virtual {v2}, Lcom/metamoji/un/video/dialog/SelectFrameDialog;->getViewLifecycleOwner()Landroidx/lifecycle/LifecycleOwner;

    move-result-object v15

    invoke-static {v15, v13}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x2

    new-array v6, v0, [Landroid/view/View;

    invoke-virtual {v2}, Lcom/metamoji/un/video/dialog/SelectFrameDialog;->getFrameSelectorView()Lcom/metamoji/video/AmvFrameSelectorView;

    move-result-object v7

    aput-object v7, v6, v5

    invoke-virtual {v2}, Lcom/metamoji/un/video/dialog/SelectFrameDialog;->getRightButton()Landroid/widget/Button;

    move-result-object v5

    aput-object v5, v6, v1

    invoke-virtual {v2}, Lcom/metamoji/un/video/dialog/SelectFrameDialog;->getViewModel()Lcom/metamoji/un/video/dialog/SelectFrameDialog$SelectFrameViewModel;

    move-result-object v1

    invoke-virtual {v1}, Lcom/metamoji/un/video/dialog/SelectFrameDialog$SelectFrameViewModel;->getReady()Lkotlinx/coroutines/flow/Flow;

    move-result-object v7

    const/4 v11, 0x3

    const/4 v8, 0x0

    const-wide/16 v9, 0x0

    invoke-static/range {v7 .. v12}, Landroidx/lifecycle/FlowLiveDataConversions;->asLiveData$default(Lkotlinx/coroutines/flow/Flow;Lkotlin/coroutines/CoroutineContext;JILjava/lang/Object;)Landroidx/lifecycle/LiveData;

    move-result-object v17

    const/16 v20, 0x18

    const/16 v19, 0x0

    move-object/from16 v16, v6

    invoke-static/range {v14 .. v21}, Lcom/metamoji/lib/utils/binding/impl/MultiVisibilityBinding$Companion;->create$default(Lcom/metamoji/lib/utils/binding/impl/MultiVisibilityBinding$Companion;Landroidx/lifecycle/LifecycleOwner;[Landroid/view/View;Landroidx/lifecycle/LiveData;Lcom/metamoji/lib/utils/binding/BoolConvert;Lcom/metamoji/lib/utils/binding/impl/VisibilityBinding$HiddenMode;ILjava/lang/Object;)Lcom/metamoji/lib/utils/binding/impl/MultiVisibilityBinding;

    move-result-object v1

    aput-object v1, v4, v0

    .line 195
    invoke-virtual {v3, v4}, Lcom/metamoji/lib/utils/binding/Binder;->register([Lcom/metamoji/lib/utils/IDisposable;)Lcom/metamoji/lib/utils/Disposer;

    return-void
.end method

.method public preCreateBodyView()V
    .locals 1

    .line 165
    invoke-super {p0}, Lcom/metamoji/ui/dialog/UtDialogNt;->preCreateBodyView()V

    .line 166
    sget-object v0, Lcom/metamoji/lib/dialog/UtDialog$WidthOption;->FULL:Lcom/metamoji/lib/dialog/UtDialog$WidthOption;

    invoke-virtual {p0, v0}, Lcom/metamoji/un/video/dialog/SelectFrameDialog;->setWidthOption(Lcom/metamoji/lib/dialog/UtDialog$WidthOption;)V

    .line 167
    sget-object v0, Lcom/metamoji/lib/dialog/UtDialog$HeightOption;->FULL:Lcom/metamoji/lib/dialog/UtDialog$HeightOption;

    invoke-virtual {p0, v0}, Lcom/metamoji/un/video/dialog/SelectFrameDialog;->setHeightOption(Lcom/metamoji/lib/dialog/UtDialog$HeightOption;)V

    .line 168
    sget-object v0, Lcom/metamoji/lib/dialog/UtDialog$BuiltInButtonType;->CANCEL:Lcom/metamoji/lib/dialog/UtDialog$BuiltInButtonType;

    invoke-virtual {p0, v0}, Lcom/metamoji/un/video/dialog/SelectFrameDialog;->setLeftButton(Lcom/metamoji/lib/dialog/UtDialog$BuiltInButtonType;)V

    .line 169
    sget-object v0, Lcom/metamoji/lib/dialog/UtDialog$BuiltInButtonType;->DONE:Lcom/metamoji/lib/dialog/UtDialog$BuiltInButtonType;

    invoke-virtual {p0, v0}, Lcom/metamoji/un/video/dialog/SelectFrameDialog;->setRightButton(Lcom/metamoji/lib/dialog/UtDialog$BuiltInButtonType;)V

    return-void
.end method

.method public final setFrameSelectorView(Lcom/metamoji/video/AmvFrameSelectorView;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 156
    iput-object p1, p0, Lcom/metamoji/un/video/dialog/SelectFrameDialog;->frameSelectorView:Lcom/metamoji/video/AmvFrameSelectorView;

    return-void
.end method

.method public final setViewModel(Lcom/metamoji/un/video/dialog/SelectFrameDialog$SelectFrameViewModel;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 155
    iput-object p1, p0, Lcom/metamoji/un/video/dialog/SelectFrameDialog;->viewModel:Lcom/metamoji/un/video/dialog/SelectFrameDialog$SelectFrameViewModel;

    return-void
.end method
