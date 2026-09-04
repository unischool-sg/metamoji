.class public Lcom/metamoji/lib/utils/binding/impl/SeekBarBinding;
.super Lcom/metamoji/lib/utils/binding/impl/ProgressBarBinding;
.source "SeekBarBinding.kt"

# interfaces
.implements Landroid/widget/SeekBar$OnSeekBarChangeListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/metamoji/lib/utils/binding/impl/SeekBarBinding$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000@\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u0008\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0010\u000b\n\u0002\u0008\u0004\u0008\u0016\u0018\u0000 \u001c2\u00020\u00012\u00020\u0002:\u0001\u001cBA\u0012\u000c\u0010\u0003\u001a\u0008\u0012\u0004\u0012\u00020\u00050\u0004\u0012\u0010\u0008\u0002\u0010\u0006\u001a\n\u0012\u0004\u0012\u00020\u0005\u0018\u00010\u0004\u0012\u0010\u0008\u0002\u0010\u0007\u001a\n\u0012\u0004\u0012\u00020\u0005\u0018\u00010\u0004\u0012\u0006\u0010\u0008\u001a\u00020\t\u00a2\u0006\u0004\u0008\n\u0010\u000bJ\u0016\u0010\u0010\u001a\u00020\u00112\u0006\u0010\u0012\u001a\u00020\u00132\u0006\u0010\u0014\u001a\u00020\rJ\u0008\u0010\u0015\u001a\u00020\u0011H\u0016J\"\u0010\u0016\u001a\u00020\u00112\u0008\u0010\u000c\u001a\u0004\u0018\u00010\r2\u0006\u0010\u0017\u001a\u00020\u00052\u0006\u0010\u0018\u001a\u00020\u0019H\u0016J\u0012\u0010\u001a\u001a\u00020\u00112\u0008\u0010\u000c\u001a\u0004\u0018\u00010\rH\u0016J\u0012\u0010\u001b\u001a\u00020\u00112\u0008\u0010\u000c\u001a\u0004\u0018\u00010\rH\u0016R\u0016\u0010\u000c\u001a\u0004\u0018\u00010\r8BX\u0082\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\u000e\u0010\u000f\u00a8\u0006\u001d"
    }
    d2 = {
        "Lcom/metamoji/lib/utils/binding/impl/SeekBarBinding;",
        "Lcom/metamoji/lib/utils/binding/impl/ProgressBarBinding;",
        "Landroid/widget/SeekBar$OnSeekBarChangeListener;",
        "data",
        "Landroidx/lifecycle/LiveData;",
        "",
        "min",
        "max",
        "mode",
        "Lcom/metamoji/lib/utils/binding/BindingMode;",
        "<init>",
        "(Landroidx/lifecycle/LiveData;Landroidx/lifecycle/LiveData;Landroidx/lifecycle/LiveData;Lcom/metamoji/lib/utils/binding/BindingMode;)V",
        "seekBar",
        "Landroid/widget/SeekBar;",
        "getSeekBar",
        "()Landroid/widget/SeekBar;",
        "connect",
        "",
        "owner",
        "Landroidx/lifecycle/LifecycleOwner;",
        "view",
        "dispose",
        "onProgressChanged",
        "progress",
        "fromUser",
        "",
        "onStartTrackingTouch",
        "onStopTrackingTouch",
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
.field public static final Companion:Lcom/metamoji/lib/utils/binding/impl/SeekBarBinding$Companion;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/metamoji/lib/utils/binding/impl/SeekBarBinding$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/metamoji/lib/utils/binding/impl/SeekBarBinding$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/metamoji/lib/utils/binding/impl/SeekBarBinding;->Companion:Lcom/metamoji/lib/utils/binding/impl/SeekBarBinding$Companion;

    return-void
.end method

.method public constructor <init>(Landroidx/lifecycle/LiveData;Landroidx/lifecycle/LiveData;Landroidx/lifecycle/LiveData;Lcom/metamoji/lib/utils/binding/BindingMode;)V
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

    .line 20
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/metamoji/lib/utils/binding/impl/ProgressBarBinding;-><init>(Landroidx/lifecycle/LiveData;Landroidx/lifecycle/LiveData;Landroidx/lifecycle/LiveData;Lcom/metamoji/lib/utils/binding/BindingMode;)V

    return-void
.end method

.method public synthetic constructor <init>(Landroidx/lifecycle/LiveData;Landroidx/lifecycle/LiveData;Landroidx/lifecycle/LiveData;Lcom/metamoji/lib/utils/binding/BindingMode;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 1

    and-int/lit8 p6, p5, 0x2

    const/4 v0, 0x0

    if-eqz p6, :cond_0

    move-object p2, v0

    :cond_0
    and-int/lit8 p5, p5, 0x4

    if-eqz p5, :cond_1

    move-object p3, v0

    .line 15
    :cond_1
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/metamoji/lib/utils/binding/impl/SeekBarBinding;-><init>(Landroidx/lifecycle/LiveData;Landroidx/lifecycle/LiveData;Landroidx/lifecycle/LiveData;Lcom/metamoji/lib/utils/binding/BindingMode;)V

    return-void
.end method

.method private final getSeekBar()Landroid/widget/SeekBar;
    .locals 2

    .line 22
    invoke-virtual {p0}, Lcom/metamoji/lib/utils/binding/impl/SeekBarBinding;->getView()Landroid/view/View;

    move-result-object v0

    instance-of v1, v0, Landroid/widget/SeekBar;

    if-eqz v1, :cond_0

    check-cast v0, Landroid/widget/SeekBar;

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method


# virtual methods
.method public final connect(Landroidx/lifecycle/LifecycleOwner;Landroid/widget/SeekBar;)V
    .locals 1

    const-string v0, "owner"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "view"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 25
    move-object v0, p2

    check-cast v0, Landroid/widget/ProgressBar;

    invoke-super {p0, p1, v0}, Lcom/metamoji/lib/utils/binding/impl/ProgressBarBinding;->connect(Landroidx/lifecycle/LifecycleOwner;Landroid/widget/ProgressBar;)V

    .line 26
    invoke-virtual {p0}, Lcom/metamoji/lib/utils/binding/impl/SeekBarBinding;->getMode()Lcom/metamoji/lib/utils/binding/BindingMode;

    move-result-object p1

    sget-object v0, Lcom/metamoji/lib/utils/binding/BindingMode;->OneWay:Lcom/metamoji/lib/utils/binding/BindingMode;

    if-eq p1, v0, :cond_2

    .line 27
    move-object p1, p0

    check-cast p1, Landroid/widget/SeekBar$OnSeekBarChangeListener;

    invoke-virtual {p2, p1}, Landroid/widget/SeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    .line 28
    invoke-virtual {p0}, Lcom/metamoji/lib/utils/binding/impl/SeekBarBinding;->getMode()Lcom/metamoji/lib/utils/binding/BindingMode;

    move-result-object p1

    sget-object p2, Lcom/metamoji/lib/utils/binding/BindingMode;->OneWayToSource:Lcom/metamoji/lib/utils/binding/BindingMode;

    if-eq p1, p2, :cond_0

    invoke-virtual {p0}, Lcom/metamoji/lib/utils/binding/impl/SeekBarBinding;->getData()Landroidx/lifecycle/LiveData;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/lifecycle/LiveData;->getValue()Ljava/lang/Object;

    move-result-object p1

    if-nez p1, :cond_2

    .line 29
    :cond_0
    invoke-direct {p0}, Lcom/metamoji/lib/utils/binding/impl/SeekBarBinding;->getSeekBar()Landroid/widget/SeekBar;

    move-result-object p1

    invoke-direct {p0}, Lcom/metamoji/lib/utils/binding/impl/SeekBarBinding;->getSeekBar()Landroid/widget/SeekBar;

    move-result-object p2

    const/4 v0, 0x0

    if-eqz p2, :cond_1

    invoke-virtual {p2}, Landroid/widget/SeekBar;->getProgress()I

    move-result p2

    goto :goto_0

    :cond_1
    move p2, v0

    :goto_0
    invoke-virtual {p0, p1, p2, v0}, Lcom/metamoji/lib/utils/binding/impl/SeekBarBinding;->onProgressChanged(Landroid/widget/SeekBar;IZ)V

    :cond_2
    return-void
.end method

.method public dispose()V
    .locals 2

    .line 35
    invoke-virtual {p0}, Lcom/metamoji/lib/utils/binding/impl/SeekBarBinding;->getMode()Lcom/metamoji/lib/utils/binding/BindingMode;

    move-result-object v0

    sget-object v1, Lcom/metamoji/lib/utils/binding/BindingMode;->OneWay:Lcom/metamoji/lib/utils/binding/BindingMode;

    if-eq v0, v1, :cond_0

    .line 36
    invoke-direct {p0}, Lcom/metamoji/lib/utils/binding/impl/SeekBarBinding;->getSeekBar()Landroid/widget/SeekBar;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    .line 38
    :cond_0
    invoke-super {p0}, Lcom/metamoji/lib/utils/binding/impl/ProgressBarBinding;->dispose()V

    return-void
.end method

.method public onProgressChanged(Landroid/widget/SeekBar;IZ)V
    .locals 0

    .line 42
    invoke-virtual {p0}, Lcom/metamoji/lib/utils/binding/impl/SeekBarBinding;->getMutableData()Landroidx/lifecycle/MutableLiveData;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 43
    invoke-virtual {p1}, Landroidx/lifecycle/MutableLiveData;->getValue()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/lang/Integer;

    if-nez p3, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p3}, Ljava/lang/Integer;->intValue()I

    move-result p3

    if-eq p3, p2, :cond_1

    .line 44
    :goto_0
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroidx/lifecycle/MutableLiveData;->setValue(Ljava/lang/Object;)V

    :cond_1
    return-void
.end method

.method public onStartTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 0

    return-void
.end method

.method public onStopTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 0

    return-void
.end method
