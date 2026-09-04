.class public abstract Lcom/metamoji/lib/utils/binding/impl/BoolBinding;
.super Lcom/metamoji/lib/utils/binding/impl/BaseBinding;
.source "BoolBinding.kt"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/metamoji/lib/utils/binding/impl/BaseBinding<",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\"\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0006\u0008&\u0018\u00002\u0008\u0012\u0004\u0012\u00020\u00020\u0001B%\u0012\u000c\u0010\u0003\u001a\u0008\u0012\u0004\u0012\u00020\u00020\u0004\u0012\u0006\u0010\u0005\u001a\u00020\u0006\u0012\u0006\u0010\u0007\u001a\u00020\u0008\u00a2\u0006\u0004\u0008\t\u0010\nR\u001a\u0010\u000b\u001a\u0008\u0012\u0004\u0012\u00020\u00020\u0004X\u0096\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000c\u0010\r\u00a8\u0006\u000e"
    }
    d2 = {
        "Lcom/metamoji/lib/utils/binding/impl/BoolBinding;",
        "Lcom/metamoji/lib/utils/binding/impl/BaseBinding;",
        "",
        "rawData",
        "Landroidx/lifecycle/LiveData;",
        "mode",
        "Lcom/metamoji/lib/utils/binding/BindingMode;",
        "boolConvert",
        "Lcom/metamoji/lib/utils/binding/BoolConvert;",
        "<init>",
        "(Landroidx/lifecycle/LiveData;Lcom/metamoji/lib/utils/binding/BindingMode;Lcom/metamoji/lib/utils/binding/BoolConvert;)V",
        "data",
        "getData",
        "()Landroidx/lifecycle/LiveData;",
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
.field private final data:Landroidx/lifecycle/LiveData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/LiveData<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroidx/lifecycle/LiveData;Lcom/metamoji/lib/utils/binding/BindingMode;Lcom/metamoji/lib/utils/binding/BoolConvert;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/lifecycle/LiveData<",
            "Ljava/lang/Boolean;",
            ">;",
            "Lcom/metamoji/lib/utils/binding/BindingMode;",
            "Lcom/metamoji/lib/utils/binding/BoolConvert;",
            ")V"
        }
    .end annotation

    const-string v0, "rawData"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "mode"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "boolConvert"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 21
    invoke-direct {p0, p2}, Lcom/metamoji/lib/utils/binding/impl/BaseBinding;-><init>(Lcom/metamoji/lib/utils/binding/BindingMode;)V

    .line 22
    sget-object p2, Lcom/metamoji/lib/utils/binding/BoolConvert;->Straight:Lcom/metamoji/lib/utils/binding/BoolConvert;

    if-ne p3, p2, :cond_0

    goto :goto_0

    :cond_0
    new-instance p2, Lcom/metamoji/lib/utils/ConvertLiveData;

    check-cast p1, Landroidx/lifecycle/MutableLiveData;

    new-instance p3, Lcom/metamoji/lib/utils/binding/impl/BoolBinding$$ExternalSyntheticLambda0;

    invoke-direct {p3}, Lcom/metamoji/lib/utils/binding/impl/BoolBinding$$ExternalSyntheticLambda0;-><init>()V

    new-instance v0, Lcom/metamoji/lib/utils/binding/impl/BoolBinding$$ExternalSyntheticLambda1;

    invoke-direct {v0}, Lcom/metamoji/lib/utils/binding/impl/BoolBinding$$ExternalSyntheticLambda1;-><init>()V

    invoke-direct {p2, p1, p3, v0}, Lcom/metamoji/lib/utils/ConvertLiveData;-><init>(Landroidx/lifecycle/MutableLiveData;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;)V

    move-object p1, p2

    check-cast p1, Landroidx/lifecycle/LiveData;

    :goto_0
    iput-object p1, p0, Lcom/metamoji/lib/utils/binding/impl/BoolBinding;->data:Landroidx/lifecycle/LiveData;

    return-void
.end method

.method static final data$lambda$0(Z)Z
    .locals 1

    const/4 v0, 0x1

    if-eq p0, v0, :cond_0

    return v0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method static final data$lambda$1(Z)Z
    .locals 1

    const/4 v0, 0x1

    if-eq p0, v0, :cond_0

    return v0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method


# virtual methods
.method public getData()Landroidx/lifecycle/LiveData;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/lifecycle/LiveData<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .line 22
    iget-object v0, p0, Lcom/metamoji/lib/utils/binding/impl/BoolBinding;->data:Landroidx/lifecycle/LiveData;

    return-object v0
.end method
