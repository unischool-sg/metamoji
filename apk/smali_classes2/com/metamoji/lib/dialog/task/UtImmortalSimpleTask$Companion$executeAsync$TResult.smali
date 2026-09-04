.class public final Lcom/metamoji/lib/dialog/task/UtImmortalSimpleTask$Companion$executeAsync$TResult;
.super Ljava/lang/Object;
.source "UtImmortalSimpleTask.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/metamoji/lib/dialog/task/UtImmortalSimpleTask$Companion;->executeAsync(Ljava/lang/String;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "TResult"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000#\n\u0002\u0008\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u000b\n\u0002\u0010\u000b\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0000\n\u0002\u0010\u000e\n\u0000*\u0001\u0000\u0008\u008a\u0008\u0018\u0000*\u0004\u0008\u0000\u0010\u00012\u00020\u0002B\u000f\u0012\u0006\u0010\u0003\u001a\u00028\u0000\u00a2\u0006\u0004\u0008\u0004\u0010\u0005J\u000e\u0010\n\u001a\u00028\u0000H\u00c6\u0003\u00a2\u0006\u0002\u0010\u0007J\u001e\u0010\u000b\u001a\u0008\u0012\u0004\u0012\u00028\u00000\u00002\u0008\u0008\u0002\u0010\u0003\u001a\u00028\u0000H\u00c6\u0001\u00a2\u0006\u0002\u0010\u000cJ\u0013\u0010\r\u001a\u00020\u000e2\u0008\u0010\u000f\u001a\u0004\u0018\u00010\u0002H\u00d6\u0003J\t\u0010\u0010\u001a\u00020\u0011H\u00d6\u0001J\t\u0010\u0012\u001a\u00020\u0013H\u00d6\u0001R\u001c\u0010\u0003\u001a\u00028\u0000X\u0086\u000e\u00a2\u0006\u0010\n\u0002\u0010\t\u001a\u0004\u0008\u0006\u0010\u0007\"\u0004\u0008\u0008\u0010\u0005\u00a8\u0006\u0014"
    }
    d2 = {
        "com/metamoji/lib/dialog/task/UtImmortalSimpleTask$Companion$executeAsync$TResult",
        "T",
        "",
        "value",
        "<init>",
        "(Ljava/lang/Object;)V",
        "getValue",
        "()Ljava/lang/Object;",
        "setValue",
        "Ljava/lang/Object;",
        "component1",
        "copy",
        "(Ljava/lang/Object;)Lcom/metamoji/lib/dialog/task/UtImmortalSimpleTask$Companion$executeAsync$TResult;",
        "equals",
        "",
        "other",
        "hashCode",
        "",
        "toString",
        "",
        "dialog"
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
.field private value:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/metamoji/lib/dialog/task/UtImmortalSimpleTask$Companion$executeAsync$TResult;->value:Ljava/lang/Object;

    return-void
.end method

.method public static synthetic copy$default(Lcom/metamoji/lib/dialog/task/UtImmortalSimpleTask$Companion$executeAsync$TResult;Ljava/lang/Object;ILjava/lang/Object;)Lcom/metamoji/lib/dialog/task/UtImmortalSimpleTask$Companion$executeAsync$TResult;
    .locals 0

    and-int/lit8 p2, p2, 0x1

    if-eqz p2, :cond_0

    iget-object p1, p0, Lcom/metamoji/lib/dialog/task/UtImmortalSimpleTask$Companion$executeAsync$TResult;->value:Ljava/lang/Object;

    :cond_0
    invoke-virtual {p0, p1}, Lcom/metamoji/lib/dialog/task/UtImmortalSimpleTask$Companion$executeAsync$TResult;->copy(Ljava/lang/Object;)Lcom/metamoji/lib/dialog/task/UtImmortalSimpleTask$Companion$executeAsync$TResult;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final component1()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    iget-object v0, p0, Lcom/metamoji/lib/dialog/task/UtImmortalSimpleTask$Companion$executeAsync$TResult;->value:Ljava/lang/Object;

    return-object v0
.end method

.method public final copy(Ljava/lang/Object;)Lcom/metamoji/lib/dialog/task/UtImmortalSimpleTask$Companion$executeAsync$TResult;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)",
            "Lcom/metamoji/lib/dialog/task/UtImmortalSimpleTask$Companion$executeAsync$TResult<",
            "TT;>;"
        }
    .end annotation

    new-instance v0, Lcom/metamoji/lib/dialog/task/UtImmortalSimpleTask$Companion$executeAsync$TResult;

    invoke-direct {v0, p1}, Lcom/metamoji/lib/dialog/task/UtImmortalSimpleTask$Companion$executeAsync$TResult;-><init>(Ljava/lang/Object;)V

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 3

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/metamoji/lib/dialog/task/UtImmortalSimpleTask$Companion$executeAsync$TResult;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/metamoji/lib/dialog/task/UtImmortalSimpleTask$Companion$executeAsync$TResult;

    iget-object v1, p0, Lcom/metamoji/lib/dialog/task/UtImmortalSimpleTask$Companion$executeAsync$TResult;->value:Ljava/lang/Object;

    iget-object p1, p1, Lcom/metamoji/lib/dialog/task/UtImmortalSimpleTask$Companion$executeAsync$TResult;->value:Ljava/lang/Object;

    invoke-static {v1, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_2

    return v2

    :cond_2
    return v0
.end method

.method public final getValue()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .line 38
    iget-object v0, p0, Lcom/metamoji/lib/dialog/task/UtImmortalSimpleTask$Companion$executeAsync$TResult;->value:Ljava/lang/Object;

    return-object v0
.end method

.method public hashCode()I
    .locals 1

    iget-object v0, p0, Lcom/metamoji/lib/dialog/task/UtImmortalSimpleTask$Companion$executeAsync$TResult;->value:Ljava/lang/Object;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    return v0
.end method

.method public final setValue(Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .line 38
    iput-object p1, p0, Lcom/metamoji/lib/dialog/task/UtImmortalSimpleTask$Companion$executeAsync$TResult;->value:Ljava/lang/Object;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    iget-object v0, p0, Lcom/metamoji/lib/dialog/task/UtImmortalSimpleTask$Companion$executeAsync$TResult;->value:Ljava/lang/Object;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "TResult(value="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
