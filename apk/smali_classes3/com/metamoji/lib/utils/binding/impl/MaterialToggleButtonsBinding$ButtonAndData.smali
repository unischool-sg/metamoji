.class public final Lcom/metamoji/lib/utils/binding/impl/MaterialToggleButtonsBinding$ButtonAndData;
.super Ljava/lang/Object;
.source "MaterialToggleButtonsBinding.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/metamoji/lib/utils/binding/impl/MaterialToggleButtonsBinding;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "ButtonAndData"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000(\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u000b\n\u0002\u0008\u000c\n\u0002\u0010\u0008\n\u0000\n\u0002\u0010\u000e\n\u0000\u0008\u0086\u0008\u0018\u00002\u00020\u0001B\u001d\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u000c\u0010\u0004\u001a\u0008\u0012\u0004\u0012\u00020\u00060\u0005\u00a2\u0006\u0004\u0008\u0007\u0010\u0008J\t\u0010\r\u001a\u00020\u0003H\u00c6\u0003J\u000f\u0010\u000e\u001a\u0008\u0012\u0004\u0012\u00020\u00060\u0005H\u00c6\u0003J#\u0010\u000f\u001a\u00020\u00002\u0008\u0008\u0002\u0010\u0002\u001a\u00020\u00032\u000e\u0008\u0002\u0010\u0004\u001a\u0008\u0012\u0004\u0012\u00020\u00060\u0005H\u00c6\u0001J\u0013\u0010\u0010\u001a\u00020\u00062\u0008\u0010\u0011\u001a\u0004\u0018\u00010\u0001H\u00d6\u0003J\t\u0010\u0012\u001a\u00020\u0013H\u00d6\u0001J\t\u0010\u0014\u001a\u00020\u0015H\u00d6\u0001R\u0011\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\t\u0010\nR\u0017\u0010\u0004\u001a\u0008\u0012\u0004\u0012\u00020\u00060\u0005\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000b\u0010\u000c\u00a8\u0006\u0016"
    }
    d2 = {
        "Lcom/metamoji/lib/utils/binding/impl/MaterialToggleButtonsBinding$ButtonAndData;",
        "",
        "button",
        "Landroid/view/View;",
        "data",
        "Landroidx/lifecycle/MutableLiveData;",
        "",
        "<init>",
        "(Landroid/view/View;Landroidx/lifecycle/MutableLiveData;)V",
        "getButton",
        "()Landroid/view/View;",
        "getData",
        "()Landroidx/lifecycle/MutableLiveData;",
        "component1",
        "component2",
        "copy",
        "equals",
        "other",
        "hashCode",
        "",
        "toString",
        "",
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
.field private final button:Landroid/view/View;

.field private final data:Landroidx/lifecycle/MutableLiveData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/MutableLiveData<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/view/View;Landroidx/lifecycle/MutableLiveData;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/View;",
            "Landroidx/lifecycle/MutableLiveData<",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    const-string v0, "button"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "data"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 70
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/metamoji/lib/utils/binding/impl/MaterialToggleButtonsBinding$ButtonAndData;->button:Landroid/view/View;

    iput-object p2, p0, Lcom/metamoji/lib/utils/binding/impl/MaterialToggleButtonsBinding$ButtonAndData;->data:Landroidx/lifecycle/MutableLiveData;

    return-void
.end method

.method public static synthetic copy$default(Lcom/metamoji/lib/utils/binding/impl/MaterialToggleButtonsBinding$ButtonAndData;Landroid/view/View;Landroidx/lifecycle/MutableLiveData;ILjava/lang/Object;)Lcom/metamoji/lib/utils/binding/impl/MaterialToggleButtonsBinding$ButtonAndData;
    .locals 0

    and-int/lit8 p4, p3, 0x1

    if-eqz p4, :cond_0

    iget-object p1, p0, Lcom/metamoji/lib/utils/binding/impl/MaterialToggleButtonsBinding$ButtonAndData;->button:Landroid/view/View;

    :cond_0
    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_1

    iget-object p2, p0, Lcom/metamoji/lib/utils/binding/impl/MaterialToggleButtonsBinding$ButtonAndData;->data:Landroidx/lifecycle/MutableLiveData;

    :cond_1
    invoke-virtual {p0, p1, p2}, Lcom/metamoji/lib/utils/binding/impl/MaterialToggleButtonsBinding$ButtonAndData;->copy(Landroid/view/View;Landroidx/lifecycle/MutableLiveData;)Lcom/metamoji/lib/utils/binding/impl/MaterialToggleButtonsBinding$ButtonAndData;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final component1()Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lcom/metamoji/lib/utils/binding/impl/MaterialToggleButtonsBinding$ButtonAndData;->button:Landroid/view/View;

    return-object v0
.end method

.method public final component2()Landroidx/lifecycle/MutableLiveData;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/lifecycle/MutableLiveData<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/metamoji/lib/utils/binding/impl/MaterialToggleButtonsBinding$ButtonAndData;->data:Landroidx/lifecycle/MutableLiveData;

    return-object v0
.end method

.method public final copy(Landroid/view/View;Landroidx/lifecycle/MutableLiveData;)Lcom/metamoji/lib/utils/binding/impl/MaterialToggleButtonsBinding$ButtonAndData;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/View;",
            "Landroidx/lifecycle/MutableLiveData<",
            "Ljava/lang/Boolean;",
            ">;)",
            "Lcom/metamoji/lib/utils/binding/impl/MaterialToggleButtonsBinding$ButtonAndData;"
        }
    .end annotation

    const-string v0, "button"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "data"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lcom/metamoji/lib/utils/binding/impl/MaterialToggleButtonsBinding$ButtonAndData;

    invoke-direct {v0, p1, p2}, Lcom/metamoji/lib/utils/binding/impl/MaterialToggleButtonsBinding$ButtonAndData;-><init>(Landroid/view/View;Landroidx/lifecycle/MutableLiveData;)V

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/metamoji/lib/utils/binding/impl/MaterialToggleButtonsBinding$ButtonAndData;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/metamoji/lib/utils/binding/impl/MaterialToggleButtonsBinding$ButtonAndData;

    iget-object v1, p0, Lcom/metamoji/lib/utils/binding/impl/MaterialToggleButtonsBinding$ButtonAndData;->button:Landroid/view/View;

    iget-object v3, p1, Lcom/metamoji/lib/utils/binding/impl/MaterialToggleButtonsBinding$ButtonAndData;->button:Landroid/view/View;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    return v2

    :cond_2
    iget-object v1, p0, Lcom/metamoji/lib/utils/binding/impl/MaterialToggleButtonsBinding$ButtonAndData;->data:Landroidx/lifecycle/MutableLiveData;

    iget-object p1, p1, Lcom/metamoji/lib/utils/binding/impl/MaterialToggleButtonsBinding$ButtonAndData;->data:Landroidx/lifecycle/MutableLiveData;

    invoke-static {v1, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_3

    return v2

    :cond_3
    return v0
.end method

.method public final getButton()Landroid/view/View;
    .locals 1

    .line 70
    iget-object v0, p0, Lcom/metamoji/lib/utils/binding/impl/MaterialToggleButtonsBinding$ButtonAndData;->button:Landroid/view/View;

    return-object v0
.end method

.method public final getData()Landroidx/lifecycle/MutableLiveData;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/lifecycle/MutableLiveData<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .line 70
    iget-object v0, p0, Lcom/metamoji/lib/utils/binding/impl/MaterialToggleButtonsBinding$ButtonAndData;->data:Landroidx/lifecycle/MutableLiveData;

    return-object v0
.end method

.method public hashCode()I
    .locals 2

    iget-object v0, p0, Lcom/metamoji/lib/utils/binding/impl/MaterialToggleButtonsBinding$ButtonAndData;->button:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/metamoji/lib/utils/binding/impl/MaterialToggleButtonsBinding$ButtonAndData;->data:Landroidx/lifecycle/MutableLiveData;

    invoke-virtual {v1}, Landroidx/lifecycle/MutableLiveData;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    iget-object v0, p0, Lcom/metamoji/lib/utils/binding/impl/MaterialToggleButtonsBinding$ButtonAndData;->button:Landroid/view/View;

    iget-object v1, p0, Lcom/metamoji/lib/utils/binding/impl/MaterialToggleButtonsBinding$ButtonAndData;->data:Landroidx/lifecycle/MutableLiveData;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "ButtonAndData(button="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ", data="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
