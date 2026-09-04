.class public Lcom/metamoji/lib/utils/binding/impl/VisibilityBinding;
.super Lcom/metamoji/lib/utils/binding/impl/BoolBinding;
.source "VisibilityBinding.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/metamoji/lib/utils/binding/impl/VisibilityBinding$Companion;,
        Lcom/metamoji/lib/utils/binding/impl/VisibilityBinding$HiddenMode;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000*\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0010\u0002\n\u0002\u0008\u0005\u0008\u0016\u0018\u0000 \u00122\u00020\u0001:\u0002\u0011\u0012B)\u0012\u000c\u0010\u0002\u001a\u0008\u0012\u0004\u0012\u00020\u00040\u0003\u0012\u0008\u0008\u0002\u0010\u0005\u001a\u00020\u0006\u0012\u0008\u0008\u0002\u0010\u0007\u001a\u00020\u0008\u00a2\u0006\u0004\u0008\t\u0010\nJ\u0017\u0010\r\u001a\u00020\u000e2\u0008\u0010\u000f\u001a\u0004\u0018\u00010\u0004H\u0014\u00a2\u0006\u0002\u0010\u0010R\u0014\u0010\u0007\u001a\u00020\u0008X\u0084\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000b\u0010\u000c\u00a8\u0006\u0013"
    }
    d2 = {
        "Lcom/metamoji/lib/utils/binding/impl/VisibilityBinding;",
        "Lcom/metamoji/lib/utils/binding/impl/BoolBinding;",
        "data",
        "Landroidx/lifecycle/LiveData;",
        "",
        "boolConvert",
        "Lcom/metamoji/lib/utils/binding/BoolConvert;",
        "hiddenMode",
        "Lcom/metamoji/lib/utils/binding/impl/VisibilityBinding$HiddenMode;",
        "<init>",
        "(Landroidx/lifecycle/LiveData;Lcom/metamoji/lib/utils/binding/BoolConvert;Lcom/metamoji/lib/utils/binding/impl/VisibilityBinding$HiddenMode;)V",
        "getHiddenMode",
        "()Lcom/metamoji/lib/utils/binding/impl/VisibilityBinding$HiddenMode;",
        "onDataChanged",
        "",
        "v",
        "(Ljava/lang/Boolean;)V",
        "HiddenMode",
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
.field public static final Companion:Lcom/metamoji/lib/utils/binding/impl/VisibilityBinding$Companion;


# instance fields
.field private final hiddenMode:Lcom/metamoji/lib/utils/binding/impl/VisibilityBinding$HiddenMode;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/metamoji/lib/utils/binding/impl/VisibilityBinding$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/metamoji/lib/utils/binding/impl/VisibilityBinding$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/metamoji/lib/utils/binding/impl/VisibilityBinding;->Companion:Lcom/metamoji/lib/utils/binding/impl/VisibilityBinding$Companion;

    return-void
.end method

.method public constructor <init>(Landroidx/lifecycle/LiveData;Lcom/metamoji/lib/utils/binding/BoolConvert;Lcom/metamoji/lib/utils/binding/impl/VisibilityBinding$HiddenMode;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/lifecycle/LiveData<",
            "Ljava/lang/Boolean;",
            ">;",
            "Lcom/metamoji/lib/utils/binding/BoolConvert;",
            "Lcom/metamoji/lib/utils/binding/impl/VisibilityBinding$HiddenMode;",
            ")V"
        }
    .end annotation

    const-string v0, "data"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "boolConvert"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "hiddenMode"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 20
    sget-object v0, Lcom/metamoji/lib/utils/binding/BindingMode;->OneWay:Lcom/metamoji/lib/utils/binding/BindingMode;

    invoke-direct {p0, p1, v0, p2}, Lcom/metamoji/lib/utils/binding/impl/BoolBinding;-><init>(Landroidx/lifecycle/LiveData;Lcom/metamoji/lib/utils/binding/BindingMode;Lcom/metamoji/lib/utils/binding/BoolConvert;)V

    .line 19
    iput-object p3, p0, Lcom/metamoji/lib/utils/binding/impl/VisibilityBinding;->hiddenMode:Lcom/metamoji/lib/utils/binding/impl/VisibilityBinding$HiddenMode;

    return-void
.end method

.method public synthetic constructor <init>(Landroidx/lifecycle/LiveData;Lcom/metamoji/lib/utils/binding/BoolConvert;Lcom/metamoji/lib/utils/binding/impl/VisibilityBinding$HiddenMode;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    and-int/lit8 p5, p4, 0x2

    if-eqz p5, :cond_0

    .line 18
    sget-object p2, Lcom/metamoji/lib/utils/binding/BoolConvert;->Straight:Lcom/metamoji/lib/utils/binding/BoolConvert;

    :cond_0
    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_1

    .line 19
    sget-object p3, Lcom/metamoji/lib/utils/binding/impl/VisibilityBinding$HiddenMode;->HideByGone:Lcom/metamoji/lib/utils/binding/impl/VisibilityBinding$HiddenMode;

    .line 16
    :cond_1
    invoke-direct {p0, p1, p2, p3}, Lcom/metamoji/lib/utils/binding/impl/VisibilityBinding;-><init>(Landroidx/lifecycle/LiveData;Lcom/metamoji/lib/utils/binding/BoolConvert;Lcom/metamoji/lib/utils/binding/impl/VisibilityBinding$HiddenMode;)V

    return-void
.end method


# virtual methods
.method protected final getHiddenMode()Lcom/metamoji/lib/utils/binding/impl/VisibilityBinding$HiddenMode;
    .locals 1

    .line 19
    iget-object v0, p0, Lcom/metamoji/lib/utils/binding/impl/VisibilityBinding;->hiddenMode:Lcom/metamoji/lib/utils/binding/impl/VisibilityBinding$HiddenMode;

    return-object v0
.end method

.method protected onDataChanged(Ljava/lang/Boolean;)V
    .locals 2

    .line 27
    invoke-virtual {p0}, Lcom/metamoji/lib/utils/binding/impl/VisibilityBinding;->getView()Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v1, 0x1

    .line 29
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    const/4 p1, 0x0

    goto :goto_0

    .line 30
    :cond_1
    iget-object p1, p0, Lcom/metamoji/lib/utils/binding/impl/VisibilityBinding;->hiddenMode:Lcom/metamoji/lib/utils/binding/impl/VisibilityBinding$HiddenMode;

    sget-object v1, Lcom/metamoji/lib/utils/binding/impl/VisibilityBinding$HiddenMode;->HideByGone:Lcom/metamoji/lib/utils/binding/impl/VisibilityBinding$HiddenMode;

    if-ne p1, v1, :cond_2

    const/16 p1, 0x8

    goto :goto_0

    :cond_2
    const/4 p1, 0x4

    .line 28
    :goto_0
    invoke-virtual {v0, p1}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method public bridge synthetic onDataChanged(Ljava/lang/Object;)V
    .locals 0

    .line 15
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p0, p1}, Lcom/metamoji/lib/utils/binding/impl/VisibilityBinding;->onDataChanged(Ljava/lang/Boolean;)V

    return-void
.end method
