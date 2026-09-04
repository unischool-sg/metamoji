.class public final Lcom/metamoji/lib/utils/ConvertLiveData;
.super Landroidx/lifecycle/MediatorLiveData;
.source "ConvertLiveData.kt"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<R:",
        "Ljava/lang/Object;",
        "C:",
        "Ljava/lang/Object;",
        ">",
        "Landroidx/lifecycle/MediatorLiveData<",
        "TC;>;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000$\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\t\n\u0002\u0010\u0002\n\u0002\u0008\u0004\u0018\u0000*\u0004\u0008\u0000\u0010\u0001*\u0004\u0008\u0001\u0010\u00022\u0008\u0012\u0004\u0012\u0002H\u00020\u0003B=\u0012\u000c\u0010\u0004\u001a\u0008\u0012\u0004\u0012\u00028\u00000\u0005\u0012\u0012\u0010\u0006\u001a\u000e\u0012\u0004\u0012\u00028\u0000\u0012\u0004\u0012\u00028\u00010\u0007\u0012\u0012\u0010\u0008\u001a\u000e\u0012\u0004\u0012\u00028\u0001\u0012\u0004\u0012\u00028\u00000\u0007\u00a2\u0006\u0004\u0008\t\u0010\nJ\u0015\u0010\u0010\u001a\u00020\u00112\u0006\u0010\u0012\u001a\u00028\u0001H\u0016\u00a2\u0006\u0002\u0010\u0013J\u0015\u0010\u0014\u001a\u00020\u00112\u0006\u0010\u0012\u001a\u00028\u0001H\u0016\u00a2\u0006\u0002\u0010\u0013R\u0017\u0010\u0004\u001a\u0008\u0012\u0004\u0012\u00028\u00000\u0005\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000b\u0010\u000cR\u001d\u0010\u0006\u001a\u000e\u0012\u0004\u0012\u00028\u0000\u0012\u0004\u0012\u00028\u00010\u0007\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\r\u0010\u000eR\u001d\u0010\u0008\u001a\u000e\u0012\u0004\u0012\u00028\u0001\u0012\u0004\u0012\u00028\u00000\u0007\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000f\u0010\u000e\u00a8\u0006\u0015"
    }
    d2 = {
        "Lcom/metamoji/lib/utils/ConvertLiveData;",
        "R",
        "C",
        "Landroidx/lifecycle/MediatorLiveData;",
        "source",
        "Landroidx/lifecycle/MutableLiveData;",
        "convert",
        "Lkotlin/Function1;",
        "invert",
        "<init>",
        "(Landroidx/lifecycle/MutableLiveData;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;)V",
        "getSource",
        "()Landroidx/lifecycle/MutableLiveData;",
        "getConvert",
        "()Lkotlin/jvm/functions/Function1;",
        "getInvert",
        "setValue",
        "",
        "value",
        "(Ljava/lang/Object;)V",
        "postValue",
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


# instance fields
.field private final convert:Lkotlin/jvm/functions/Function1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function1<",
            "TR;TC;>;"
        }
    .end annotation
.end field

.field private final invert:Lkotlin/jvm/functions/Function1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function1<",
            "TC;TR;>;"
        }
    .end annotation
.end field

.field private final source:Landroidx/lifecycle/MutableLiveData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/MutableLiveData<",
            "TR;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroidx/lifecycle/MutableLiveData;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/lifecycle/MutableLiveData<",
            "TR;>;",
            "Lkotlin/jvm/functions/Function1<",
            "-TR;+TC;>;",
            "Lkotlin/jvm/functions/Function1<",
            "-TC;+TR;>;)V"
        }
    .end annotation

    const-string/jumbo v0, "source"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "convert"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "invert"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 14
    invoke-direct {p0}, Landroidx/lifecycle/MediatorLiveData;-><init>()V

    .line 11
    iput-object p1, p0, Lcom/metamoji/lib/utils/ConvertLiveData;->source:Landroidx/lifecycle/MutableLiveData;

    .line 12
    iput-object p2, p0, Lcom/metamoji/lib/utils/ConvertLiveData;->convert:Lkotlin/jvm/functions/Function1;

    .line 13
    iput-object p3, p0, Lcom/metamoji/lib/utils/ConvertLiveData;->invert:Lkotlin/jvm/functions/Function1;

    .line 17
    check-cast p1, Landroidx/lifecycle/LiveData;

    new-instance p2, Lcom/metamoji/lib/utils/ConvertLiveData$$ExternalSyntheticLambda0;

    invoke-direct {p2, p0}, Lcom/metamoji/lib/utils/ConvertLiveData$$ExternalSyntheticLambda0;-><init>(Lcom/metamoji/lib/utils/ConvertLiveData;)V

    new-instance p3, Lcom/metamoji/lib/utils/ConvertLiveData$sam$androidx_lifecycle_Observer$0;

    invoke-direct {p3, p2}, Lcom/metamoji/lib/utils/ConvertLiveData$sam$androidx_lifecycle_Observer$0;-><init>(Lkotlin/jvm/functions/Function1;)V

    check-cast p3, Landroidx/lifecycle/Observer;

    invoke-virtual {p0, p1, p3}, Lcom/metamoji/lib/utils/ConvertLiveData;->addSource(Landroidx/lifecycle/LiveData;Landroidx/lifecycle/Observer;)V

    return-void
.end method

.method static final _init_$lambda$0(Lcom/metamoji/lib/utils/ConvertLiveData;Ljava/lang/Object;)Lkotlin/Unit;
    .locals 1

    .line 19
    iget-object v0, p0, Lcom/metamoji/lib/utils/ConvertLiveData;->convert:Lkotlin/jvm/functions/Function1;

    invoke-interface {v0, p1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    .line 20
    invoke-virtual {p0}, Lcom/metamoji/lib/utils/ConvertLiveData;->getValue()Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 21
    invoke-virtual {p0, p1}, Lcom/metamoji/lib/utils/ConvertLiveData;->setValue(Ljava/lang/Object;)V

    .line 23
    :cond_0
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method


# virtual methods
.method public final getConvert()Lkotlin/jvm/functions/Function1;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlin/jvm/functions/Function1<",
            "TR;TC;>;"
        }
    .end annotation

    .line 12
    iget-object v0, p0, Lcom/metamoji/lib/utils/ConvertLiveData;->convert:Lkotlin/jvm/functions/Function1;

    return-object v0
.end method

.method public final getInvert()Lkotlin/jvm/functions/Function1;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlin/jvm/functions/Function1<",
            "TC;TR;>;"
        }
    .end annotation

    .line 13
    iget-object v0, p0, Lcom/metamoji/lib/utils/ConvertLiveData;->invert:Lkotlin/jvm/functions/Function1;

    return-object v0
.end method

.method public final getSource()Landroidx/lifecycle/MutableLiveData;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/lifecycle/MutableLiveData<",
            "TR;>;"
        }
    .end annotation

    .line 11
    iget-object v0, p0, Lcom/metamoji/lib/utils/ConvertLiveData;->source:Landroidx/lifecycle/MutableLiveData;

    return-object v0
.end method

.method public postValue(Ljava/lang/Object;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TC;)V"
        }
    .end annotation

    .line 42
    invoke-super {p0, p1}, Landroidx/lifecycle/MediatorLiveData;->postValue(Ljava/lang/Object;)V

    .line 43
    iget-object v0, p0, Lcom/metamoji/lib/utils/ConvertLiveData;->source:Landroidx/lifecycle/MutableLiveData;

    iget-object v1, p0, Lcom/metamoji/lib/utils/ConvertLiveData;->invert:Lkotlin/jvm/functions/Function1;

    invoke-interface {v1, p1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroidx/lifecycle/MutableLiveData;->postValue(Ljava/lang/Object;)V

    return-void
.end method

.method public setValue(Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TC;)V"
        }
    .end annotation

    .line 34
    invoke-super {p0, p1}, Landroidx/lifecycle/MediatorLiveData;->setValue(Ljava/lang/Object;)V

    .line 35
    iget-object v0, p0, Lcom/metamoji/lib/utils/ConvertLiveData;->invert:Lkotlin/jvm/functions/Function1;

    invoke-interface {v0, p1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    .line 36
    iget-object v0, p0, Lcom/metamoji/lib/utils/ConvertLiveData;->source:Landroidx/lifecycle/MutableLiveData;

    invoke-virtual {v0}, Landroidx/lifecycle/MutableLiveData;->getValue()Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 37
    iget-object v0, p0, Lcom/metamoji/lib/utils/ConvertLiveData;->source:Landroidx/lifecycle/MutableLiveData;

    invoke-virtual {v0, p1}, Landroidx/lifecycle/MutableLiveData;->setValue(Ljava/lang/Object;)V

    :cond_0
    return-void
.end method
