.class final Lcom/metamoji/lib/utils/binding/impl/CombinatorialVisibilityBinding$ViewOption;
.super Ljava/lang/Object;
.source "VisibilityBinding.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/metamoji/lib/utils/binding/impl/CombinatorialVisibilityBinding;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "ViewOption"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00008\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\t\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u0007\n\u0002\u0010\u0008\n\u0000\n\u0002\u0010\u000e\n\u0000\u0008\u0082\u0008\u0018\u00002\u00020\u0001B\u001f\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u0006\u0010\u0006\u001a\u00020\u0007\u00a2\u0006\u0004\u0008\u0008\u0010\tJ\u000e\u0010\u0010\u001a\u00020\u00112\u0006\u0010\u0012\u001a\u00020\u0013J\t\u0010\u0014\u001a\u00020\u0003H\u00c6\u0003J\t\u0010\u0015\u001a\u00020\u0005H\u00c6\u0003J\t\u0010\u0016\u001a\u00020\u0007H\u00c6\u0003J\'\u0010\u0017\u001a\u00020\u00002\u0008\u0008\u0002\u0010\u0002\u001a\u00020\u00032\u0008\u0008\u0002\u0010\u0004\u001a\u00020\u00052\u0008\u0008\u0002\u0010\u0006\u001a\u00020\u0007H\u00c6\u0001J\u0013\u0010\u0018\u001a\u00020\u00132\u0008\u0010\u0019\u001a\u0004\u0018\u00010\u0001H\u00d6\u0003J\t\u0010\u001a\u001a\u00020\u001bH\u00d6\u0001J\t\u0010\u001c\u001a\u00020\u001dH\u00d6\u0001R\u0011\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\n\u0010\u000bR\u0011\u0010\u0004\u001a\u00020\u0005\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000c\u0010\rR\u0011\u0010\u0006\u001a\u00020\u0007\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000e\u0010\u000f\u00a8\u0006\u001e"
    }
    d2 = {
        "Lcom/metamoji/lib/utils/binding/impl/CombinatorialVisibilityBinding$ViewOption;",
        "",
        "view",
        "Landroid/view/View;",
        "conv",
        "Lcom/metamoji/lib/utils/binding/BoolConvert;",
        "hiddenMode",
        "Lcom/metamoji/lib/utils/binding/impl/VisibilityBinding$HiddenMode;",
        "<init>",
        "(Landroid/view/View;Lcom/metamoji/lib/utils/binding/BoolConvert;Lcom/metamoji/lib/utils/binding/impl/VisibilityBinding$HiddenMode;)V",
        "getView",
        "()Landroid/view/View;",
        "getConv",
        "()Lcom/metamoji/lib/utils/binding/BoolConvert;",
        "getHiddenMode",
        "()Lcom/metamoji/lib/utils/binding/impl/VisibilityBinding$HiddenMode;",
        "show",
        "",
        "flag",
        "",
        "component1",
        "component2",
        "component3",
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
.field private final conv:Lcom/metamoji/lib/utils/binding/BoolConvert;

.field private final hiddenMode:Lcom/metamoji/lib/utils/binding/impl/VisibilityBinding$HiddenMode;

.field private final view:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/view/View;Lcom/metamoji/lib/utils/binding/BoolConvert;Lcom/metamoji/lib/utils/binding/impl/VisibilityBinding$HiddenMode;)V
    .locals 1

    const-string/jumbo v0, "view"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "conv"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "hiddenMode"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 104
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/metamoji/lib/utils/binding/impl/CombinatorialVisibilityBinding$ViewOption;->view:Landroid/view/View;

    iput-object p2, p0, Lcom/metamoji/lib/utils/binding/impl/CombinatorialVisibilityBinding$ViewOption;->conv:Lcom/metamoji/lib/utils/binding/BoolConvert;

    iput-object p3, p0, Lcom/metamoji/lib/utils/binding/impl/CombinatorialVisibilityBinding$ViewOption;->hiddenMode:Lcom/metamoji/lib/utils/binding/impl/VisibilityBinding$HiddenMode;

    return-void
.end method

.method public static synthetic copy$default(Lcom/metamoji/lib/utils/binding/impl/CombinatorialVisibilityBinding$ViewOption;Landroid/view/View;Lcom/metamoji/lib/utils/binding/BoolConvert;Lcom/metamoji/lib/utils/binding/impl/VisibilityBinding$HiddenMode;ILjava/lang/Object;)Lcom/metamoji/lib/utils/binding/impl/CombinatorialVisibilityBinding$ViewOption;
    .locals 0

    and-int/lit8 p5, p4, 0x1

    if-eqz p5, :cond_0

    iget-object p1, p0, Lcom/metamoji/lib/utils/binding/impl/CombinatorialVisibilityBinding$ViewOption;->view:Landroid/view/View;

    :cond_0
    and-int/lit8 p5, p4, 0x2

    if-eqz p5, :cond_1

    iget-object p2, p0, Lcom/metamoji/lib/utils/binding/impl/CombinatorialVisibilityBinding$ViewOption;->conv:Lcom/metamoji/lib/utils/binding/BoolConvert;

    :cond_1
    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_2

    iget-object p3, p0, Lcom/metamoji/lib/utils/binding/impl/CombinatorialVisibilityBinding$ViewOption;->hiddenMode:Lcom/metamoji/lib/utils/binding/impl/VisibilityBinding$HiddenMode;

    :cond_2
    invoke-virtual {p0, p1, p2, p3}, Lcom/metamoji/lib/utils/binding/impl/CombinatorialVisibilityBinding$ViewOption;->copy(Landroid/view/View;Lcom/metamoji/lib/utils/binding/BoolConvert;Lcom/metamoji/lib/utils/binding/impl/VisibilityBinding$HiddenMode;)Lcom/metamoji/lib/utils/binding/impl/CombinatorialVisibilityBinding$ViewOption;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final component1()Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lcom/metamoji/lib/utils/binding/impl/CombinatorialVisibilityBinding$ViewOption;->view:Landroid/view/View;

    return-object v0
.end method

.method public final component2()Lcom/metamoji/lib/utils/binding/BoolConvert;
    .locals 1

    iget-object v0, p0, Lcom/metamoji/lib/utils/binding/impl/CombinatorialVisibilityBinding$ViewOption;->conv:Lcom/metamoji/lib/utils/binding/BoolConvert;

    return-object v0
.end method

.method public final component3()Lcom/metamoji/lib/utils/binding/impl/VisibilityBinding$HiddenMode;
    .locals 1

    iget-object v0, p0, Lcom/metamoji/lib/utils/binding/impl/CombinatorialVisibilityBinding$ViewOption;->hiddenMode:Lcom/metamoji/lib/utils/binding/impl/VisibilityBinding$HiddenMode;

    return-object v0
.end method

.method public final copy(Landroid/view/View;Lcom/metamoji/lib/utils/binding/BoolConvert;Lcom/metamoji/lib/utils/binding/impl/VisibilityBinding$HiddenMode;)Lcom/metamoji/lib/utils/binding/impl/CombinatorialVisibilityBinding$ViewOption;
    .locals 1

    const-string/jumbo v0, "view"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "conv"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "hiddenMode"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lcom/metamoji/lib/utils/binding/impl/CombinatorialVisibilityBinding$ViewOption;

    invoke-direct {v0, p1, p2, p3}, Lcom/metamoji/lib/utils/binding/impl/CombinatorialVisibilityBinding$ViewOption;-><init>(Landroid/view/View;Lcom/metamoji/lib/utils/binding/BoolConvert;Lcom/metamoji/lib/utils/binding/impl/VisibilityBinding$HiddenMode;)V

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/metamoji/lib/utils/binding/impl/CombinatorialVisibilityBinding$ViewOption;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/metamoji/lib/utils/binding/impl/CombinatorialVisibilityBinding$ViewOption;

    iget-object v1, p0, Lcom/metamoji/lib/utils/binding/impl/CombinatorialVisibilityBinding$ViewOption;->view:Landroid/view/View;

    iget-object v3, p1, Lcom/metamoji/lib/utils/binding/impl/CombinatorialVisibilityBinding$ViewOption;->view:Landroid/view/View;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    return v2

    :cond_2
    iget-object v1, p0, Lcom/metamoji/lib/utils/binding/impl/CombinatorialVisibilityBinding$ViewOption;->conv:Lcom/metamoji/lib/utils/binding/BoolConvert;

    iget-object v3, p1, Lcom/metamoji/lib/utils/binding/impl/CombinatorialVisibilityBinding$ViewOption;->conv:Lcom/metamoji/lib/utils/binding/BoolConvert;

    if-eq v1, v3, :cond_3

    return v2

    :cond_3
    iget-object v1, p0, Lcom/metamoji/lib/utils/binding/impl/CombinatorialVisibilityBinding$ViewOption;->hiddenMode:Lcom/metamoji/lib/utils/binding/impl/VisibilityBinding$HiddenMode;

    iget-object p1, p1, Lcom/metamoji/lib/utils/binding/impl/CombinatorialVisibilityBinding$ViewOption;->hiddenMode:Lcom/metamoji/lib/utils/binding/impl/VisibilityBinding$HiddenMode;

    if-eq v1, p1, :cond_4

    return v2

    :cond_4
    return v0
.end method

.method public final getConv()Lcom/metamoji/lib/utils/binding/BoolConvert;
    .locals 1

    .line 104
    iget-object v0, p0, Lcom/metamoji/lib/utils/binding/impl/CombinatorialVisibilityBinding$ViewOption;->conv:Lcom/metamoji/lib/utils/binding/BoolConvert;

    return-object v0
.end method

.method public final getHiddenMode()Lcom/metamoji/lib/utils/binding/impl/VisibilityBinding$HiddenMode;
    .locals 1

    .line 104
    iget-object v0, p0, Lcom/metamoji/lib/utils/binding/impl/CombinatorialVisibilityBinding$ViewOption;->hiddenMode:Lcom/metamoji/lib/utils/binding/impl/VisibilityBinding$HiddenMode;

    return-object v0
.end method

.method public final getView()Landroid/view/View;
    .locals 1

    .line 104
    iget-object v0, p0, Lcom/metamoji/lib/utils/binding/impl/CombinatorialVisibilityBinding$ViewOption;->view:Landroid/view/View;

    return-object v0
.end method

.method public hashCode()I
    .locals 2

    iget-object v0, p0, Lcom/metamoji/lib/utils/binding/impl/CombinatorialVisibilityBinding$ViewOption;->view:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/metamoji/lib/utils/binding/impl/CombinatorialVisibilityBinding$ViewOption;->conv:Lcom/metamoji/lib/utils/binding/BoolConvert;

    invoke-virtual {v1}, Lcom/metamoji/lib/utils/binding/BoolConvert;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/metamoji/lib/utils/binding/impl/CombinatorialVisibilityBinding$ViewOption;->hiddenMode:Lcom/metamoji/lib/utils/binding/impl/VisibilityBinding$HiddenMode;

    invoke-virtual {v1}, Lcom/metamoji/lib/utils/binding/impl/VisibilityBinding$HiddenMode;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public final show(Z)V
    .locals 3

    .line 106
    iget-object v0, p0, Lcom/metamoji/lib/utils/binding/impl/CombinatorialVisibilityBinding$ViewOption;->view:Landroid/view/View;

    if-eqz p1, :cond_0

    .line 107
    iget-object v1, p0, Lcom/metamoji/lib/utils/binding/impl/CombinatorialVisibilityBinding$ViewOption;->conv:Lcom/metamoji/lib/utils/binding/BoolConvert;

    sget-object v2, Lcom/metamoji/lib/utils/binding/BoolConvert;->Straight:Lcom/metamoji/lib/utils/binding/BoolConvert;

    if-eq v1, v2, :cond_1

    :cond_0
    if-nez p1, :cond_2

    iget-object p1, p0, Lcom/metamoji/lib/utils/binding/impl/CombinatorialVisibilityBinding$ViewOption;->conv:Lcom/metamoji/lib/utils/binding/BoolConvert;

    sget-object v1, Lcom/metamoji/lib/utils/binding/BoolConvert;->Inverse:Lcom/metamoji/lib/utils/binding/BoolConvert;

    if-ne p1, v1, :cond_2

    :cond_1
    const/4 p1, 0x0

    goto :goto_0

    .line 109
    :cond_2
    iget-object p1, p0, Lcom/metamoji/lib/utils/binding/impl/CombinatorialVisibilityBinding$ViewOption;->hiddenMode:Lcom/metamoji/lib/utils/binding/impl/VisibilityBinding$HiddenMode;

    sget-object v1, Lcom/metamoji/lib/utils/binding/impl/VisibilityBinding$HiddenMode;->HideByGone:Lcom/metamoji/lib/utils/binding/impl/VisibilityBinding$HiddenMode;

    if-ne p1, v1, :cond_3

    const/16 p1, 0x8

    goto :goto_0

    :cond_3
    const/4 p1, 0x4

    .line 106
    :goto_0
    invoke-virtual {v0, p1}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 5

    iget-object v0, p0, Lcom/metamoji/lib/utils/binding/impl/CombinatorialVisibilityBinding$ViewOption;->view:Landroid/view/View;

    iget-object v1, p0, Lcom/metamoji/lib/utils/binding/impl/CombinatorialVisibilityBinding$ViewOption;->conv:Lcom/metamoji/lib/utils/binding/BoolConvert;

    iget-object v2, p0, Lcom/metamoji/lib/utils/binding/impl/CombinatorialVisibilityBinding$ViewOption;->hiddenMode:Lcom/metamoji/lib/utils/binding/impl/VisibilityBinding$HiddenMode;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "ViewOption(view="

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, ", conv="

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", hiddenMode="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
