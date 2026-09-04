.class public Lcom/metamoji/lib/utils/binding/impl/ProgressBarBinding;
.super Lcom/metamoji/lib/utils/binding/impl/BaseBinding;
.source "ProgressBarBinding.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/metamoji/lib/utils/binding/impl/ProgressBarBinding$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/metamoji/lib/utils/binding/impl/BaseBinding<",
        "Ljava/lang/Integer;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000<\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0008\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0006\u0008\u0016\u0018\u0000 \u001d2\u0008\u0012\u0004\u0012\u00020\u00020\u0001:\u0001\u001dB?\u0008\u0004\u0012\u000c\u0010\u0003\u001a\u0008\u0012\u0004\u0012\u00020\u00020\u0004\u0012\u000e\u0010\u0005\u001a\n\u0012\u0004\u0012\u00020\u0002\u0018\u00010\u0004\u0012\u000e\u0010\u0006\u001a\n\u0012\u0004\u0012\u00020\u0002\u0018\u00010\u0004\u0012\u0006\u0010\u0007\u001a\u00020\u0008\u00a2\u0006\u0004\u0008\t\u0010\nB;\u0008\u0016\u0012\u000c\u0010\u0003\u001a\u0008\u0012\u0004\u0012\u00020\u00020\u0004\u0012\u0010\u0008\u0002\u0010\u0005\u001a\n\u0012\u0004\u0012\u00020\u0002\u0018\u00010\u0004\u0012\u0010\u0008\u0002\u0010\u0006\u001a\n\u0012\u0004\u0012\u00020\u0002\u0018\u00010\u0004\u00a2\u0006\u0004\u0008\t\u0010\u000bJ\u0016\u0010\u0015\u001a\u00020\u00162\u0006\u0010\u0017\u001a\u00020\u00182\u0006\u0010\u0019\u001a\u00020\u000fJ\u0017\u0010\u001a\u001a\u00020\u00162\u0008\u0010\u001b\u001a\u0004\u0018\u00010\u0002H\u0014\u00a2\u0006\u0002\u0010\u001cR\u001a\u0010\u0003\u001a\u0008\u0012\u0004\u0012\u00020\u00020\u0004X\u0096\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000c\u0010\rR\u0016\u0010\u0005\u001a\n\u0012\u0004\u0012\u00020\u0002\u0018\u00010\u0004X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0016\u0010\u0006\u001a\n\u0012\u0004\u0012\u00020\u0002\u0018\u00010\u0004X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0016\u0010\u000e\u001a\u0004\u0018\u00010\u000f8BX\u0082\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\u0010\u0010\u0011R\u0016\u0010\u0012\u001a\n\u0012\u0004\u0012\u00020\u0002\u0018\u00010\u0013X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0016\u0010\u0014\u001a\n\u0012\u0004\u0012\u00020\u0002\u0018\u00010\u0013X\u0082\u000e\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u001e"
    }
    d2 = {
        "Lcom/metamoji/lib/utils/binding/impl/ProgressBarBinding;",
        "Lcom/metamoji/lib/utils/binding/impl/BaseBinding;",
        "",
        "data",
        "Landroidx/lifecycle/LiveData;",
        "min",
        "max",
        "mode",
        "Lcom/metamoji/lib/utils/binding/BindingMode;",
        "<init>",
        "(Landroidx/lifecycle/LiveData;Landroidx/lifecycle/LiveData;Landroidx/lifecycle/LiveData;Lcom/metamoji/lib/utils/binding/BindingMode;)V",
        "(Landroidx/lifecycle/LiveData;Landroidx/lifecycle/LiveData;Landroidx/lifecycle/LiveData;)V",
        "getData",
        "()Landroidx/lifecycle/LiveData;",
        "progressBar",
        "Landroid/widget/ProgressBar;",
        "getProgressBar",
        "()Landroid/widget/ProgressBar;",
        "minObserver",
        "Landroidx/lifecycle/Observer;",
        "maxObserver",
        "connect",
        "",
        "owner",
        "Landroidx/lifecycle/LifecycleOwner;",
        "view",
        "onDataChanged",
        "v",
        "(Ljava/lang/Integer;)V",
        "Companion",
        "utils"
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
.field public static final Companion:Lcom/metamoji/lib/utils/binding/impl/ProgressBarBinding$Companion;


# instance fields
.field private final data:Landroidx/lifecycle/LiveData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/LiveData<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final max:Landroidx/lifecycle/LiveData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/LiveData<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private maxObserver:Landroidx/lifecycle/Observer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/Observer<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final min:Landroidx/lifecycle/LiveData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/LiveData<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private minObserver:Landroidx/lifecycle/Observer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/Observer<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/metamoji/lib/utils/binding/impl/ProgressBarBinding$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/metamoji/lib/utils/binding/impl/ProgressBarBinding$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/metamoji/lib/utils/binding/impl/ProgressBarBinding;->Companion:Lcom/metamoji/lib/utils/binding/impl/ProgressBarBinding$Companion;

    return-void
.end method

.method public constructor <init>(Landroidx/lifecycle/LiveData;Landroidx/lifecycle/LiveData;Landroidx/lifecycle/LiveData;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/lifecycle/LiveData<",
            "Ljava/lang/Integer;",
            ">;",
            "Landroidx/lifecycle/LiveData<",
            "Ljava/lang/Integer;",
            ">;",
            "Landroidx/lifecycle/LiveData<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    const-string v0, "data"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 28
    sget-object v0, Lcom/metamoji/lib/utils/binding/BindingMode;->OneWay:Lcom/metamoji/lib/utils/binding/BindingMode;

    .line 27
    invoke-direct {p0, p1, p2, p3, v0}, Lcom/metamoji/lib/utils/binding/impl/ProgressBarBinding;-><init>(Landroidx/lifecycle/LiveData;Landroidx/lifecycle/LiveData;Landroidx/lifecycle/LiveData;Lcom/metamoji/lib/utils/binding/BindingMode;)V

    return-void
.end method

.method public synthetic constructor <init>(Landroidx/lifecycle/LiveData;Landroidx/lifecycle/LiveData;Landroidx/lifecycle/LiveData;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 1

    and-int/lit8 p5, p4, 0x2

    const/4 v0, 0x0

    if-eqz p5, :cond_0

    move-object p2, v0

    :cond_0
    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_1

    move-object p3, v0

    .line 27
    :cond_1
    invoke-direct {p0, p1, p2, p3}, Lcom/metamoji/lib/utils/binding/impl/ProgressBarBinding;-><init>(Landroidx/lifecycle/LiveData;Landroidx/lifecycle/LiveData;Landroidx/lifecycle/LiveData;)V

    return-void
.end method

.method protected constructor <init>(Landroidx/lifecycle/LiveData;Landroidx/lifecycle/LiveData;Landroidx/lifecycle/LiveData;Lcom/metamoji/lib/utils/binding/BindingMode;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/lifecycle/LiveData<",
            "Ljava/lang/Integer;",
            ">;",
            "Landroidx/lifecycle/LiveData<",
            "Ljava/lang/Integer;",
            ">;",
            "Landroidx/lifecycle/LiveData<",
            "Ljava/lang/Integer;",
            ">;",
            "Lcom/metamoji/lib/utils/binding/BindingMode;",
            ")V"
        }
    .end annotation

    const-string v0, "data"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "mode"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 26
    invoke-direct {p0, p4}, Lcom/metamoji/lib/utils/binding/impl/BaseBinding;-><init>(Lcom/metamoji/lib/utils/binding/BindingMode;)V

    .line 22
    iput-object p1, p0, Lcom/metamoji/lib/utils/binding/impl/ProgressBarBinding;->data:Landroidx/lifecycle/LiveData;

    .line 23
    iput-object p2, p0, Lcom/metamoji/lib/utils/binding/impl/ProgressBarBinding;->min:Landroidx/lifecycle/LiveData;

    .line 24
    iput-object p3, p0, Lcom/metamoji/lib/utils/binding/impl/ProgressBarBinding;->max:Landroidx/lifecycle/LiveData;

    return-void
.end method

.method static final connect$lambda$0(Landroid/widget/ProgressBar;I)V
    .locals 1

    .line 40
    invoke-virtual {p0}, Landroid/widget/ProgressBar;->getMax()I

    move-result v0

    if-ge v0, p1, :cond_0

    .line 41
    invoke-virtual {p0, p1}, Landroid/widget/ProgressBar;->setMax(I)V

    .line 44
    :cond_0
    invoke-virtual {p0, p1}, Landroid/widget/ProgressBar;->setMin(I)V

    return-void
.end method

.method static final connect$lambda$2(Landroid/widget/ProgressBar;I)V
    .locals 1

    .line 53
    invoke-virtual {p0}, Landroid/widget/ProgressBar;->getMin()I

    move-result v0

    if-le v0, p1, :cond_0

    .line 54
    invoke-virtual {p0, p1}, Landroid/widget/ProgressBar;->setMin(I)V

    .line 57
    :cond_0
    invoke-virtual {p0, p1}, Landroid/widget/ProgressBar;->setMax(I)V

    return-void
.end method

.method private final getProgressBar()Landroid/widget/ProgressBar;
    .locals 2

    .line 31
    invoke-virtual {p0}, Lcom/metamoji/lib/utils/binding/impl/ProgressBarBinding;->getView()Landroid/view/View;

    move-result-object v0

    instance-of v1, v0, Landroid/widget/ProgressBar;

    if-eqz v1, :cond_0

    check-cast v0, Landroid/widget/ProgressBar;

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method


# virtual methods
.method public final connect(Landroidx/lifecycle/LifecycleOwner;Landroid/widget/ProgressBar;)V
    .locals 2

    const-string v0, "owner"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "view"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 37
    invoke-virtual {p2, v0}, Landroid/widget/ProgressBar;->setIndeterminate(Z)V

    .line 38
    iget-object v0, p0, Lcom/metamoji/lib/utils/binding/impl/ProgressBarBinding;->min:Landroidx/lifecycle/LiveData;

    if-eqz v0, :cond_0

    .line 46
    new-instance v0, Lcom/metamoji/lib/utils/binding/impl/ProgressBarBinding$$ExternalSyntheticLambda0;

    invoke-direct {v0, p2}, Lcom/metamoji/lib/utils/binding/impl/ProgressBarBinding$$ExternalSyntheticLambda0;-><init>(Landroid/widget/ProgressBar;)V

    .line 47
    iget-object v1, p0, Lcom/metamoji/lib/utils/binding/impl/ProgressBarBinding;->min:Landroidx/lifecycle/LiveData;

    invoke-virtual {v1, p1, v0}, Landroidx/lifecycle/LiveData;->observe(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Observer;)V

    .line 39
    iput-object v0, p0, Lcom/metamoji/lib/utils/binding/impl/ProgressBarBinding;->minObserver:Landroidx/lifecycle/Observer;

    .line 50
    :cond_0
    iget-object v0, p0, Lcom/metamoji/lib/utils/binding/impl/ProgressBarBinding;->max:Landroidx/lifecycle/LiveData;

    if-eqz v0, :cond_1

    .line 58
    new-instance v0, Lcom/metamoji/lib/utils/binding/impl/ProgressBarBinding$$ExternalSyntheticLambda1;

    invoke-direct {v0, p2}, Lcom/metamoji/lib/utils/binding/impl/ProgressBarBinding$$ExternalSyntheticLambda1;-><init>(Landroid/widget/ProgressBar;)V

    .line 59
    iget-object v1, p0, Lcom/metamoji/lib/utils/binding/impl/ProgressBarBinding;->max:Landroidx/lifecycle/LiveData;

    invoke-virtual {v1, p1, v0}, Landroidx/lifecycle/LiveData;->observe(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Observer;)V

    .line 51
    iput-object v0, p0, Lcom/metamoji/lib/utils/binding/impl/ProgressBarBinding;->maxObserver:Landroidx/lifecycle/Observer;

    .line 62
    :cond_1
    check-cast p2, Landroid/view/View;

    invoke-super {p0, p1, p2}, Lcom/metamoji/lib/utils/binding/impl/BaseBinding;->connect(Landroidx/lifecycle/LifecycleOwner;Landroid/view/View;)V

    return-void
.end method

.method public getData()Landroidx/lifecycle/LiveData;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/lifecycle/LiveData<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 22
    iget-object v0, p0, Lcom/metamoji/lib/utils/binding/impl/ProgressBarBinding;->data:Landroidx/lifecycle/LiveData;

    return-object v0
.end method

.method protected onDataChanged(Ljava/lang/Integer;)V
    .locals 2

    .line 66
    invoke-direct {p0}, Lcom/metamoji/lib/utils/binding/impl/ProgressBarBinding;->getProgressBar()Landroid/widget/ProgressBar;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_1

    :cond_0
    if-eqz p1, :cond_1

    .line 67
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    .line 68
    :goto_0
    invoke-virtual {v0}, Landroid/widget/ProgressBar;->getProgress()I

    move-result v1

    if-eq v1, p1, :cond_2

    .line 69
    invoke-virtual {v0, p1}, Landroid/widget/ProgressBar;->setProgress(I)V

    :cond_2
    :goto_1
    return-void
.end method

.method public bridge synthetic onDataChanged(Ljava/lang/Object;)V
    .locals 0

    .line 20
    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p0, p1}, Lcom/metamoji/lib/utils/binding/impl/ProgressBarBinding;->onDataChanged(Ljava/lang/Integer;)V

    return-void
.end method
