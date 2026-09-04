.class final Lcom/metamoji/lib/utils/binding/impl/RecyclerViewBinding$ViewBindingBuilder$InflaterInfo;
.super Ljava/lang/Object;
.source "RecyclerViewBinding.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/metamoji/lib/utils/binding/impl/RecyclerViewBinding$ViewBindingBuilder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "InflaterInfo"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<B:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00008\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u000f\n\u0002\u0010\u0008\n\u0000\n\u0002\u0010\u000e\n\u0000\u0008\u0082\u0008\u0018\u0000*\u0004\u0008\u0003\u0010\u00012\u00020\u0002Bb\u0012\n\u0008\u0002\u0010\u0003\u001a\u0004\u0018\u00010\u0004\u0012M\u0010\u0005\u001aI\u0012\u0013\u0012\u00110\u0004\u00a2\u0006\u000c\u0008\u0007\u0012\u0008\u0008\u0008\u0012\u0004\u0008\u0008(\t\u0012\u0015\u0012\u0013\u0018\u00010\n\u00a2\u0006\u000c\u0008\u0007\u0012\u0008\u0008\u0008\u0012\u0004\u0008\u0008(\u000b\u0012\u0013\u0012\u00110\u000c\u00a2\u0006\u000c\u0008\u0007\u0012\u0008\u0008\u0008\u0012\u0004\u0008\u0008(\r\u0012\u0004\u0012\u00028\u00030\u0006\u00a2\u0006\u0004\u0008\u000e\u0010\u000fJ\u0013\u0010\u0014\u001a\u00028\u00032\u0006\u0010\u000b\u001a\u00020\n\u00a2\u0006\u0002\u0010\u0015J\u000b\u0010\u0016\u001a\u0004\u0018\u00010\u0004H\u00c6\u0003JP\u0010\u0017\u001aI\u0012\u0013\u0012\u00110\u0004\u00a2\u0006\u000c\u0008\u0007\u0012\u0008\u0008\u0008\u0012\u0004\u0008\u0008(\t\u0012\u0015\u0012\u0013\u0018\u00010\n\u00a2\u0006\u000c\u0008\u0007\u0012\u0008\u0008\u0008\u0012\u0004\u0008\u0008(\u000b\u0012\u0013\u0012\u00110\u000c\u00a2\u0006\u000c\u0008\u0007\u0012\u0008\u0008\u0008\u0012\u0004\u0008\u0008(\r\u0012\u0004\u0012\u00028\u00030\u0006H\u00c6\u0003Jl\u0010\u0018\u001a\u0008\u0012\u0004\u0012\u00028\u00030\u00002\n\u0008\u0002\u0010\u0003\u001a\u0004\u0018\u00010\u00042O\u0008\u0002\u0010\u0005\u001aI\u0012\u0013\u0012\u00110\u0004\u00a2\u0006\u000c\u0008\u0007\u0012\u0008\u0008\u0008\u0012\u0004\u0008\u0008(\t\u0012\u0015\u0012\u0013\u0018\u00010\n\u00a2\u0006\u000c\u0008\u0007\u0012\u0008\u0008\u0008\u0012\u0004\u0008\u0008(\u000b\u0012\u0013\u0012\u00110\u000c\u00a2\u0006\u000c\u0008\u0007\u0012\u0008\u0008\u0008\u0012\u0004\u0008\u0008(\r\u0012\u0004\u0012\u00028\u00030\u0006H\u00c6\u0001J\u0013\u0010\u0019\u001a\u00020\u000c2\u0008\u0010\u001a\u001a\u0004\u0018\u00010\u0002H\u00d6\u0003J\t\u0010\u001b\u001a\u00020\u001cH\u00d6\u0001J\t\u0010\u001d\u001a\u00020\u001eH\u00d6\u0001R\u0013\u0010\u0003\u001a\u0004\u0018\u00010\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0010\u0010\u0011RX\u0010\u0005\u001aI\u0012\u0013\u0012\u00110\u0004\u00a2\u0006\u000c\u0008\u0007\u0012\u0008\u0008\u0008\u0012\u0004\u0008\u0008(\t\u0012\u0015\u0012\u0013\u0018\u00010\n\u00a2\u0006\u000c\u0008\u0007\u0012\u0008\u0008\u0008\u0012\u0004\u0008\u0008(\u000b\u0012\u0013\u0012\u00110\u000c\u00a2\u0006\u000c\u0008\u0007\u0012\u0008\u0008\u0008\u0012\u0004\u0008\u0008(\r\u0012\u0004\u0012\u00028\u00030\u0006\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0012\u0010\u0013\u00a8\u0006\u001f"
    }
    d2 = {
        "Lcom/metamoji/lib/utils/binding/impl/RecyclerViewBinding$ViewBindingBuilder$InflaterInfo;",
        "B",
        "",
        "actualInflater",
        "Landroid/view/LayoutInflater;",
        "viewBindingInflater",
        "Lkotlin/Function3;",
        "Lkotlin/ParameterName;",
        "name",
        "inflater",
        "Landroid/view/ViewGroup;",
        "parent",
        "",
        "attachToParent",
        "<init>",
        "(Landroid/view/LayoutInflater;Lkotlin/jvm/functions/Function3;)V",
        "getActualInflater",
        "()Landroid/view/LayoutInflater;",
        "getViewBindingInflater",
        "()Lkotlin/jvm/functions/Function3;",
        "inflate",
        "(Landroid/view/ViewGroup;)Ljava/lang/Object;",
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
.field private final actualInflater:Landroid/view/LayoutInflater;

.field private final viewBindingInflater:Lkotlin/jvm/functions/Function3;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function3<",
            "Landroid/view/LayoutInflater;",
            "Landroid/view/ViewGroup;",
            "Ljava/lang/Boolean;",
            "TB;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/view/LayoutInflater;Lkotlin/jvm/functions/Function3;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/LayoutInflater;",
            "Lkotlin/jvm/functions/Function3<",
            "-",
            "Landroid/view/LayoutInflater;",
            "-",
            "Landroid/view/ViewGroup;",
            "-",
            "Ljava/lang/Boolean;",
            "+TB;>;)V"
        }
    .end annotation

    const-string/jumbo v0, "viewBindingInflater"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 361
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/metamoji/lib/utils/binding/impl/RecyclerViewBinding$ViewBindingBuilder$InflaterInfo;->actualInflater:Landroid/view/LayoutInflater;

    iput-object p2, p0, Lcom/metamoji/lib/utils/binding/impl/RecyclerViewBinding$ViewBindingBuilder$InflaterInfo;->viewBindingInflater:Lkotlin/jvm/functions/Function3;

    return-void
.end method

.method public synthetic constructor <init>(Landroid/view/LayoutInflater;Lkotlin/jvm/functions/Function3;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    and-int/lit8 p3, p3, 0x1

    if-eqz p3, :cond_0

    const/4 p1, 0x0

    .line 361
    :cond_0
    invoke-direct {p0, p1, p2}, Lcom/metamoji/lib/utils/binding/impl/RecyclerViewBinding$ViewBindingBuilder$InflaterInfo;-><init>(Landroid/view/LayoutInflater;Lkotlin/jvm/functions/Function3;)V

    return-void
.end method

.method public static synthetic copy$default(Lcom/metamoji/lib/utils/binding/impl/RecyclerViewBinding$ViewBindingBuilder$InflaterInfo;Landroid/view/LayoutInflater;Lkotlin/jvm/functions/Function3;ILjava/lang/Object;)Lcom/metamoji/lib/utils/binding/impl/RecyclerViewBinding$ViewBindingBuilder$InflaterInfo;
    .locals 0

    and-int/lit8 p4, p3, 0x1

    if-eqz p4, :cond_0

    iget-object p1, p0, Lcom/metamoji/lib/utils/binding/impl/RecyclerViewBinding$ViewBindingBuilder$InflaterInfo;->actualInflater:Landroid/view/LayoutInflater;

    :cond_0
    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_1

    iget-object p2, p0, Lcom/metamoji/lib/utils/binding/impl/RecyclerViewBinding$ViewBindingBuilder$InflaterInfo;->viewBindingInflater:Lkotlin/jvm/functions/Function3;

    :cond_1
    invoke-virtual {p0, p1, p2}, Lcom/metamoji/lib/utils/binding/impl/RecyclerViewBinding$ViewBindingBuilder$InflaterInfo;->copy(Landroid/view/LayoutInflater;Lkotlin/jvm/functions/Function3;)Lcom/metamoji/lib/utils/binding/impl/RecyclerViewBinding$ViewBindingBuilder$InflaterInfo;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final component1()Landroid/view/LayoutInflater;
    .locals 1

    iget-object v0, p0, Lcom/metamoji/lib/utils/binding/impl/RecyclerViewBinding$ViewBindingBuilder$InflaterInfo;->actualInflater:Landroid/view/LayoutInflater;

    return-object v0
.end method

.method public final component2()Lkotlin/jvm/functions/Function3;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlin/jvm/functions/Function3<",
            "Landroid/view/LayoutInflater;",
            "Landroid/view/ViewGroup;",
            "Ljava/lang/Boolean;",
            "TB;>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/metamoji/lib/utils/binding/impl/RecyclerViewBinding$ViewBindingBuilder$InflaterInfo;->viewBindingInflater:Lkotlin/jvm/functions/Function3;

    return-object v0
.end method

.method public final copy(Landroid/view/LayoutInflater;Lkotlin/jvm/functions/Function3;)Lcom/metamoji/lib/utils/binding/impl/RecyclerViewBinding$ViewBindingBuilder$InflaterInfo;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/LayoutInflater;",
            "Lkotlin/jvm/functions/Function3<",
            "-",
            "Landroid/view/LayoutInflater;",
            "-",
            "Landroid/view/ViewGroup;",
            "-",
            "Ljava/lang/Boolean;",
            "+TB;>;)",
            "Lcom/metamoji/lib/utils/binding/impl/RecyclerViewBinding$ViewBindingBuilder$InflaterInfo<",
            "TB;>;"
        }
    .end annotation

    const-string/jumbo v0, "viewBindingInflater"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lcom/metamoji/lib/utils/binding/impl/RecyclerViewBinding$ViewBindingBuilder$InflaterInfo;

    invoke-direct {v0, p1, p2}, Lcom/metamoji/lib/utils/binding/impl/RecyclerViewBinding$ViewBindingBuilder$InflaterInfo;-><init>(Landroid/view/LayoutInflater;Lkotlin/jvm/functions/Function3;)V

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/metamoji/lib/utils/binding/impl/RecyclerViewBinding$ViewBindingBuilder$InflaterInfo;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/metamoji/lib/utils/binding/impl/RecyclerViewBinding$ViewBindingBuilder$InflaterInfo;

    iget-object v1, p0, Lcom/metamoji/lib/utils/binding/impl/RecyclerViewBinding$ViewBindingBuilder$InflaterInfo;->actualInflater:Landroid/view/LayoutInflater;

    iget-object v3, p1, Lcom/metamoji/lib/utils/binding/impl/RecyclerViewBinding$ViewBindingBuilder$InflaterInfo;->actualInflater:Landroid/view/LayoutInflater;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    return v2

    :cond_2
    iget-object v1, p0, Lcom/metamoji/lib/utils/binding/impl/RecyclerViewBinding$ViewBindingBuilder$InflaterInfo;->viewBindingInflater:Lkotlin/jvm/functions/Function3;

    iget-object p1, p1, Lcom/metamoji/lib/utils/binding/impl/RecyclerViewBinding$ViewBindingBuilder$InflaterInfo;->viewBindingInflater:Lkotlin/jvm/functions/Function3;

    invoke-static {v1, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_3

    return v2

    :cond_3
    return v0
.end method

.method public final getActualInflater()Landroid/view/LayoutInflater;
    .locals 1

    .line 361
    iget-object v0, p0, Lcom/metamoji/lib/utils/binding/impl/RecyclerViewBinding$ViewBindingBuilder$InflaterInfo;->actualInflater:Landroid/view/LayoutInflater;

    return-object v0
.end method

.method public final getViewBindingInflater()Lkotlin/jvm/functions/Function3;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlin/jvm/functions/Function3<",
            "Landroid/view/LayoutInflater;",
            "Landroid/view/ViewGroup;",
            "Ljava/lang/Boolean;",
            "TB;>;"
        }
    .end annotation

    .line 361
    iget-object v0, p0, Lcom/metamoji/lib/utils/binding/impl/RecyclerViewBinding$ViewBindingBuilder$InflaterInfo;->viewBindingInflater:Lkotlin/jvm/functions/Function3;

    return-object v0
.end method

.method public hashCode()I
    .locals 2

    iget-object v0, p0, Lcom/metamoji/lib/utils/binding/impl/RecyclerViewBinding$ViewBindingBuilder$InflaterInfo;->actualInflater:Landroid/view/LayoutInflater;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Landroid/view/LayoutInflater;->hashCode()I

    move-result v0

    :goto_0
    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/metamoji/lib/utils/binding/impl/RecyclerViewBinding$ViewBindingBuilder$InflaterInfo;->viewBindingInflater:Lkotlin/jvm/functions/Function3;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public final inflate(Landroid/view/ViewGroup;)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/ViewGroup;",
            ")TB;"
        }
    .end annotation

    const-string v0, "parent"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 363
    iget-object v0, p0, Lcom/metamoji/lib/utils/binding/impl/RecyclerViewBinding$ViewBindingBuilder$InflaterInfo;->viewBindingInflater:Lkotlin/jvm/functions/Function3;

    iget-object v1, p0, Lcom/metamoji/lib/utils/binding/impl/RecyclerViewBinding$ViewBindingBuilder$InflaterInfo;->actualInflater:Landroid/view/LayoutInflater;

    if-nez v1, :cond_0

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    :cond_0
    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-interface {v0, v1, p1, v2}, Lkotlin/jvm/functions/Function3;->invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    iget-object v0, p0, Lcom/metamoji/lib/utils/binding/impl/RecyclerViewBinding$ViewBindingBuilder$InflaterInfo;->actualInflater:Landroid/view/LayoutInflater;

    iget-object v1, p0, Lcom/metamoji/lib/utils/binding/impl/RecyclerViewBinding$ViewBindingBuilder$InflaterInfo;->viewBindingInflater:Lkotlin/jvm/functions/Function3;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "InflaterInfo(actualInflater="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ", viewBindingInflater="

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
