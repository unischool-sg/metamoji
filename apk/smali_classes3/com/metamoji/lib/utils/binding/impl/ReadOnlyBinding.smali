.class public final Lcom/metamoji/lib/utils/binding/impl/ReadOnlyBinding;
.super Lcom/metamoji/lib/utils/binding/impl/BoolBinding;
.source "ReadOnlyBinding.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/metamoji/lib/utils/binding/impl/ReadOnlyBinding$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000:\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u0008\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0018\u0000 \u00182\u00020\u0001:\u0001\u0018B\u001f\u0012\u000c\u0010\u0002\u001a\u0008\u0012\u0004\u0012\u00020\u00040\u0003\u0012\u0008\u0008\u0002\u0010\u0005\u001a\u00020\u0006\u00a2\u0006\u0004\u0008\u0007\u0010\u0008J\u0017\u0010\t\u001a\u00020\n2\u0008\u0010\u000b\u001a\u0004\u0018\u00010\u0004H\u0014\u00a2\u0006\u0002\u0010\u000cJ\u0018\u0010\u0013\u001a\u00020\n2\u0006\u0010\u0014\u001a\u00020\u00152\u0006\u0010\u0016\u001a\u00020\u0017H\u0016R\u001a\u0010\r\u001a\u00020\u000eX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u000f\u0010\u0010\"\u0004\u0008\u0011\u0010\u0012\u00a8\u0006\u0019"
    }
    d2 = {
        "Lcom/metamoji/lib/utils/binding/impl/ReadOnlyBinding;",
        "Lcom/metamoji/lib/utils/binding/impl/BoolBinding;",
        "rawData",
        "Landroidx/lifecycle/LiveData;",
        "",
        "boolConvert",
        "Lcom/metamoji/lib/utils/binding/BoolConvert;",
        "<init>",
        "(Landroidx/lifecycle/LiveData;Lcom/metamoji/lib/utils/binding/BoolConvert;)V",
        "onDataChanged",
        "",
        "v",
        "(Ljava/lang/Boolean;)V",
        "inputType",
        "",
        "getInputType",
        "()I",
        "setInputType",
        "(I)V",
        "connect",
        "owner",
        "Landroidx/lifecycle/LifecycleOwner;",
        "view",
        "Landroid/view/View;",
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
.field public static final Companion:Lcom/metamoji/lib/utils/binding/impl/ReadOnlyBinding$Companion;


# instance fields
.field private inputType:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/metamoji/lib/utils/binding/impl/ReadOnlyBinding$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/metamoji/lib/utils/binding/impl/ReadOnlyBinding$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/metamoji/lib/utils/binding/impl/ReadOnlyBinding;->Companion:Lcom/metamoji/lib/utils/binding/impl/ReadOnlyBinding$Companion;

    return-void
.end method

.method public constructor <init>(Landroidx/lifecycle/LiveData;Lcom/metamoji/lib/utils/binding/BoolConvert;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/lifecycle/LiveData<",
            "Ljava/lang/Boolean;",
            ">;",
            "Lcom/metamoji/lib/utils/binding/BoolConvert;",
            ")V"
        }
    .end annotation

    const-string v0, "rawData"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "boolConvert"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 17
    sget-object v0, Lcom/metamoji/lib/utils/binding/BindingMode;->TwoWay:Lcom/metamoji/lib/utils/binding/BindingMode;

    invoke-direct {p0, p1, v0, p2}, Lcom/metamoji/lib/utils/binding/impl/BoolBinding;-><init>(Landroidx/lifecycle/LiveData;Lcom/metamoji/lib/utils/binding/BindingMode;Lcom/metamoji/lib/utils/binding/BoolConvert;)V

    return-void
.end method

.method public synthetic constructor <init>(Landroidx/lifecycle/LiveData;Lcom/metamoji/lib/utils/binding/BoolConvert;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_0

    .line 16
    sget-object p2, Lcom/metamoji/lib/utils/binding/BoolConvert;->Straight:Lcom/metamoji/lib/utils/binding/BoolConvert;

    .line 14
    :cond_0
    invoke-direct {p0, p1, p2}, Lcom/metamoji/lib/utils/binding/impl/ReadOnlyBinding;-><init>(Landroidx/lifecycle/LiveData;Lcom/metamoji/lib/utils/binding/BoolConvert;)V

    return-void
.end method


# virtual methods
.method public connect(Landroidx/lifecycle/LifecycleOwner;Landroid/view/View;)V
    .locals 1

    const-string v0, "owner"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "view"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 32
    instance-of v0, p2, Landroid/widget/EditText;

    if-eqz v0, :cond_0

    move-object v0, p2

    check-cast v0, Landroid/widget/EditText;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/widget/EditText;->getInputType()I

    move-result v0

    goto :goto_1

    :cond_1
    const/4 v0, 0x0

    :goto_1
    iput v0, p0, Lcom/metamoji/lib/utils/binding/impl/ReadOnlyBinding;->inputType:I

    .line 33
    invoke-super {p0, p1, p2}, Lcom/metamoji/lib/utils/binding/impl/BoolBinding;->connect(Landroidx/lifecycle/LifecycleOwner;Landroid/view/View;)V

    return-void
.end method

.method public final getInputType()I
    .locals 1

    .line 29
    iget v0, p0, Lcom/metamoji/lib/utils/binding/impl/ReadOnlyBinding;->inputType:I

    return v0
.end method

.method protected onDataChanged(Ljava/lang/Boolean;)V
    .locals 2

    .line 19
    invoke-virtual {p0}, Lcom/metamoji/lib/utils/binding/impl/ReadOnlyBinding;->getView()Landroid/view/View;

    move-result-object v0

    instance-of v1, v0, Landroid/widget/EditText;

    if-eqz v1, :cond_0

    check-cast v0, Landroid/widget/EditText;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-nez v0, :cond_1

    return-void

    :cond_1
    const/4 v1, 0x1

    .line 20
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    xor-int/lit8 v1, p1, 0x1

    .line 21
    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setClickable(Z)V

    .line 22
    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setCursorVisible(Z)V

    .line 23
    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setFocusable(Z)V

    .line 24
    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setFocusableInTouchMode(Z)V

    if-nez p1, :cond_2

    .line 26
    iget p1, p0, Lcom/metamoji/lib/utils/binding/impl/ReadOnlyBinding;->inputType:I

    goto :goto_1

    :cond_2
    const/4 p1, 0x0

    .line 25
    :goto_1
    invoke-virtual {v0, p1}, Landroid/widget/EditText;->setInputType(I)V

    return-void
.end method

.method public bridge synthetic onDataChanged(Ljava/lang/Object;)V
    .locals 0

    .line 14
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p0, p1}, Lcom/metamoji/lib/utils/binding/impl/ReadOnlyBinding;->onDataChanged(Ljava/lang/Boolean;)V

    return-void
.end method

.method public final setInputType(I)V
    .locals 0

    .line 29
    iput p1, p0, Lcom/metamoji/lib/utils/binding/impl/ReadOnlyBinding;->inputType:I

    return-void
.end method
