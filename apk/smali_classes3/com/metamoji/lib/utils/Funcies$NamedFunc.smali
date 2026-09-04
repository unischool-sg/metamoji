.class public final Lcom/metamoji/lib/utils/Funcies$NamedFunc;
.super Ljava/lang/Object;
.source "Funcies.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/metamoji/lib/utils/Funcies;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "NamedFunc"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<R:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000*\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\n\n\u0002\u0010\u000b\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0002\u0008\u0002\u0008\u0086\u0008\u0018\u0000*\u0004\u0008\u0001\u0010\u00012\u00020\u0002B\u001f\u0012\u0008\u0010\u0003\u001a\u0004\u0018\u00010\u0004\u0012\u000c\u0010\u0005\u001a\u0008\u0012\u0004\u0012\u00028\u00010\u0006\u00a2\u0006\u0004\u0008\u0007\u0010\u0008J\u000b\u0010\r\u001a\u0004\u0018\u00010\u0004H\u00c6\u0003J\u000f\u0010\u000e\u001a\u0008\u0012\u0004\u0012\u00028\u00010\u0006H\u00c6\u0003J+\u0010\u000f\u001a\u0008\u0012\u0004\u0012\u00028\u00010\u00002\n\u0008\u0002\u0010\u0003\u001a\u0004\u0018\u00010\u00042\u000e\u0008\u0002\u0010\u0005\u001a\u0008\u0012\u0004\u0012\u00028\u00010\u0006H\u00c6\u0001J\u0013\u0010\u0010\u001a\u00020\u00112\u0008\u0010\u0012\u001a\u0004\u0018\u00010\u0002H\u00d6\u0003J\t\u0010\u0013\u001a\u00020\u0014H\u00d6\u0001J\t\u0010\u0015\u001a\u00020\u0004H\u00d6\u0001R\u0013\u0010\u0003\u001a\u0004\u0018\u00010\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\t\u0010\nR\u0017\u0010\u0005\u001a\u0008\u0012\u0004\u0012\u00028\u00010\u0006\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000b\u0010\u000c\u00a8\u0006\u0016"
    }
    d2 = {
        "Lcom/metamoji/lib/utils/Funcies$NamedFunc;",
        "R",
        "",
        "name",
        "",
        "funcy",
        "Lcom/metamoji/lib/utils/IFuncy;",
        "<init>",
        "(Ljava/lang/String;Lcom/metamoji/lib/utils/IFuncy;)V",
        "getName",
        "()Ljava/lang/String;",
        "getFuncy",
        "()Lcom/metamoji/lib/utils/IFuncy;",
        "component1",
        "component2",
        "copy",
        "equals",
        "",
        "other",
        "hashCode",
        "",
        "toString",
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
.field private final funcy:Lcom/metamoji/lib/utils/IFuncy;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/metamoji/lib/utils/IFuncy<",
            "TR;>;"
        }
    .end annotation
.end field

.field private final name:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcom/metamoji/lib/utils/IFuncy;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/metamoji/lib/utils/IFuncy<",
            "TR;>;)V"
        }
    .end annotation

    const-string v0, "funcy"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 316
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/metamoji/lib/utils/Funcies$NamedFunc;->name:Ljava/lang/String;

    iput-object p2, p0, Lcom/metamoji/lib/utils/Funcies$NamedFunc;->funcy:Lcom/metamoji/lib/utils/IFuncy;

    return-void
.end method

.method public static synthetic copy$default(Lcom/metamoji/lib/utils/Funcies$NamedFunc;Ljava/lang/String;Lcom/metamoji/lib/utils/IFuncy;ILjava/lang/Object;)Lcom/metamoji/lib/utils/Funcies$NamedFunc;
    .locals 0

    and-int/lit8 p4, p3, 0x1

    if-eqz p4, :cond_0

    iget-object p1, p0, Lcom/metamoji/lib/utils/Funcies$NamedFunc;->name:Ljava/lang/String;

    :cond_0
    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_1

    iget-object p2, p0, Lcom/metamoji/lib/utils/Funcies$NamedFunc;->funcy:Lcom/metamoji/lib/utils/IFuncy;

    :cond_1
    invoke-virtual {p0, p1, p2}, Lcom/metamoji/lib/utils/Funcies$NamedFunc;->copy(Ljava/lang/String;Lcom/metamoji/lib/utils/IFuncy;)Lcom/metamoji/lib/utils/Funcies$NamedFunc;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final component1()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/metamoji/lib/utils/Funcies$NamedFunc;->name:Ljava/lang/String;

    return-object v0
.end method

.method public final component2()Lcom/metamoji/lib/utils/IFuncy;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/metamoji/lib/utils/IFuncy<",
            "TR;>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/metamoji/lib/utils/Funcies$NamedFunc;->funcy:Lcom/metamoji/lib/utils/IFuncy;

    return-object v0
.end method

.method public final copy(Ljava/lang/String;Lcom/metamoji/lib/utils/IFuncy;)Lcom/metamoji/lib/utils/Funcies$NamedFunc;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/metamoji/lib/utils/IFuncy<",
            "TR;>;)",
            "Lcom/metamoji/lib/utils/Funcies$NamedFunc<",
            "TR;>;"
        }
    .end annotation

    const-string v0, "funcy"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lcom/metamoji/lib/utils/Funcies$NamedFunc;

    invoke-direct {v0, p1, p2}, Lcom/metamoji/lib/utils/Funcies$NamedFunc;-><init>(Ljava/lang/String;Lcom/metamoji/lib/utils/IFuncy;)V

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/metamoji/lib/utils/Funcies$NamedFunc;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/metamoji/lib/utils/Funcies$NamedFunc;

    iget-object v1, p0, Lcom/metamoji/lib/utils/Funcies$NamedFunc;->name:Ljava/lang/String;

    iget-object v3, p1, Lcom/metamoji/lib/utils/Funcies$NamedFunc;->name:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    return v2

    :cond_2
    iget-object v1, p0, Lcom/metamoji/lib/utils/Funcies$NamedFunc;->funcy:Lcom/metamoji/lib/utils/IFuncy;

    iget-object p1, p1, Lcom/metamoji/lib/utils/Funcies$NamedFunc;->funcy:Lcom/metamoji/lib/utils/IFuncy;

    invoke-static {v1, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_3

    return v2

    :cond_3
    return v0
.end method

.method public final getFuncy()Lcom/metamoji/lib/utils/IFuncy;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/metamoji/lib/utils/IFuncy<",
            "TR;>;"
        }
    .end annotation

    .line 316
    iget-object v0, p0, Lcom/metamoji/lib/utils/Funcies$NamedFunc;->funcy:Lcom/metamoji/lib/utils/IFuncy;

    return-object v0
.end method

.method public final getName()Ljava/lang/String;
    .locals 1

    .line 316
    iget-object v0, p0, Lcom/metamoji/lib/utils/Funcies$NamedFunc;->name:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .locals 2

    iget-object v0, p0, Lcom/metamoji/lib/utils/Funcies$NamedFunc;->name:Ljava/lang/String;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    :goto_0
    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/metamoji/lib/utils/Funcies$NamedFunc;->funcy:Lcom/metamoji/lib/utils/IFuncy;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    iget-object v0, p0, Lcom/metamoji/lib/utils/Funcies$NamedFunc;->name:Ljava/lang/String;

    iget-object v1, p0, Lcom/metamoji/lib/utils/Funcies$NamedFunc;->funcy:Lcom/metamoji/lib/utils/IFuncy;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "NamedFunc(name="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ", funcy="

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
