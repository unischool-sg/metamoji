.class public final Lcom/metamoji/media/video/dialog/MfDialogResultViewModel;
.super Landroidx/lifecycle/ViewModel;
.source "MfDialogResultViewModel.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/metamoji/media/video/dialog/MfDialogResultViewModel$Companion;,
        Lcom/metamoji/media/video/dialog/MfDialogResultViewModel$DialogResult;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00006\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0005\u0018\u0000 \u00142\u00020\u0001:\u0002\u0013\u0014B\u0007\u00a2\u0006\u0004\u0008\u0002\u0010\u0003J\u000e\u0010\u0007\u001a\u00020\u00082\u0006\u0010\u0004\u001a\u00020\u0006J4\u0010\t\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\u00060\n2\u0006\u0010\u000b\u001a\u00020\u000c2\u0006\u0010\r\u001a\u00020\u000e2\u0014\u0010\u000f\u001a\u0010\u0012\u0006\u0012\u0004\u0018\u00010\u0006\u0012\u0004\u0012\u00020\u00080\u0010J\u0016\u0010\u0011\u001a\u00020\u00082\u000e\u0010\u0012\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\u00060\nR\u0016\u0010\u0004\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\u00060\u0005X\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u0015"
    }
    d2 = {
        "Lcom/metamoji/media/video/dialog/MfDialogResultViewModel;",
        "Landroidx/lifecycle/ViewModel;",
        "<init>",
        "()V",
        "result",
        "Landroidx/lifecycle/MutableLiveData;",
        "Lcom/metamoji/media/video/dialog/MfDialogResultViewModel$DialogResult;",
        "dialogCompleted",
        "",
        "registerObserver",
        "Landroidx/lifecycle/Observer;",
        "owner",
        "Landroidx/fragment/app/FragmentActivity;",
        "targetDlgId",
        "",
        "onResult",
        "Lkotlin/Function1;",
        "unregisterObserver",
        "observer",
        "DialogResult",
        "Companion",
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
.field public static final Companion:Lcom/metamoji/media/video/dialog/MfDialogResultViewModel$Companion;


# instance fields
.field private final result:Landroidx/lifecycle/MutableLiveData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/MutableLiveData<",
            "Lcom/metamoji/media/video/dialog/MfDialogResultViewModel$DialogResult;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/metamoji/media/video/dialog/MfDialogResultViewModel$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/metamoji/media/video/dialog/MfDialogResultViewModel$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/metamoji/media/video/dialog/MfDialogResultViewModel;->Companion:Lcom/metamoji/media/video/dialog/MfDialogResultViewModel$Companion;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 9
    invoke-direct {p0}, Landroidx/lifecycle/ViewModel;-><init>()V

    .line 12
    new-instance v0, Landroidx/lifecycle/MutableLiveData;

    invoke-direct {v0}, Landroidx/lifecycle/MutableLiveData;-><init>()V

    iput-object v0, p0, Lcom/metamoji/media/video/dialog/MfDialogResultViewModel;->result:Landroidx/lifecycle/MutableLiveData;

    return-void
.end method

.method static final registerObserver$lambda$0(Ljava/lang/String;Lcom/metamoji/media/video/dialog/MfDialogResultViewModel;Lkotlin/jvm/functions/Function1;Lcom/metamoji/media/video/dialog/MfDialogResultViewModel$DialogResult;)V
    .locals 1

    if-eqz p3, :cond_0

    .line 27
    invoke-virtual {p3}, Lcom/metamoji/media/video/dialog/MfDialogResultViewModel$DialogResult;->getDlgId()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    .line 28
    iget-object p0, p1, Lcom/metamoji/media/video/dialog/MfDialogResultViewModel;->result:Landroidx/lifecycle/MutableLiveData;

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Landroidx/lifecycle/MutableLiveData;->setValue(Ljava/lang/Object;)V

    .line 29
    invoke-interface {p2, p3}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-void
.end method


# virtual methods
.method public final dialogCompleted(Lcom/metamoji/media/video/dialog/MfDialogResultViewModel$DialogResult;)V
    .locals 1

    const-string/jumbo v0, "result"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 18
    iget-object v0, p0, Lcom/metamoji/media/video/dialog/MfDialogResultViewModel;->result:Landroidx/lifecycle/MutableLiveData;

    invoke-virtual {v0, p1}, Landroidx/lifecycle/MutableLiveData;->setValue(Ljava/lang/Object;)V

    return-void
.end method

.method public final registerObserver(Landroidx/fragment/app/FragmentActivity;Ljava/lang/String;Lkotlin/jvm/functions/Function1;)Landroidx/lifecycle/Observer;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/fragment/app/FragmentActivity;",
            "Ljava/lang/String;",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Lcom/metamoji/media/video/dialog/MfDialogResultViewModel$DialogResult;",
            "Lkotlin/Unit;",
            ">;)",
            "Landroidx/lifecycle/Observer<",
            "Lcom/metamoji/media/video/dialog/MfDialogResultViewModel$DialogResult;",
            ">;"
        }
    .end annotation

    const-string v0, "owner"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "targetDlgId"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "onResult"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 26
    new-instance v0, Lcom/metamoji/media/video/dialog/MfDialogResultViewModel$$ExternalSyntheticLambda0;

    invoke-direct {v0, p2, p0, p3}, Lcom/metamoji/media/video/dialog/MfDialogResultViewModel$$ExternalSyntheticLambda0;-><init>(Ljava/lang/String;Lcom/metamoji/media/video/dialog/MfDialogResultViewModel;Lkotlin/jvm/functions/Function1;)V

    .line 32
    iget-object p2, p0, Lcom/metamoji/media/video/dialog/MfDialogResultViewModel;->result:Landroidx/lifecycle/MutableLiveData;

    check-cast p1, Landroidx/lifecycle/LifecycleOwner;

    invoke-virtual {p2, p1, v0}, Landroidx/lifecycle/MutableLiveData;->observe(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Observer;)V

    return-object v0
.end method

.method public final unregisterObserver(Landroidx/lifecycle/Observer;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/lifecycle/Observer<",
            "Lcom/metamoji/media/video/dialog/MfDialogResultViewModel$DialogResult;",
            ">;)V"
        }
    .end annotation

    const-string v0, "observer"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 40
    iget-object v0, p0, Lcom/metamoji/media/video/dialog/MfDialogResultViewModel;->result:Landroidx/lifecycle/MutableLiveData;

    invoke-virtual {v0, p1}, Landroidx/lifecycle/MutableLiveData;->removeObserver(Landroidx/lifecycle/Observer;)V

    return-void
.end method
