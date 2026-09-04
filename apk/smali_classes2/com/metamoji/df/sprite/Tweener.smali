.class Lcom/metamoji/df/sprite/Tweener;
.super Ljava/lang/Object;
.source "Tweener.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/metamoji/df/sprite/Tweener$Tween;,
        Lcom/metamoji/df/sprite/Tweener$Prop;
    }
.end annotation


# instance fields
.field private current:J

.field private list:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/metamoji/df/sprite/Tweener$Tween;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>()V
    .locals 1

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/metamoji/df/sprite/Tweener;->list:Ljava/util/List;

    return-void
.end method


# virtual methods
.method add(Lcom/metamoji/df/sprite/Tweener$Tween;)V
    .locals 2

    .line 27
    iget-wide v0, p0, Lcom/metamoji/df/sprite/Tweener;->current:J

    iput-wide v0, p1, Lcom/metamoji/df/sprite/Tweener$Tween;->start:J

    .line 28
    iget-object v0, p0, Lcom/metamoji/df/sprite/Tweener;->list:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method cancel()V
    .locals 3

    .line 70
    iget-object v0, p0, Lcom/metamoji/df/sprite/Tweener;->list:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x0

    .line 75
    :goto_0
    iget-object v2, p0, Lcom/metamoji/df/sprite/Tweener;->list:Ljava/util/List;

    if-ge v1, v0, :cond_0

    .line 72
    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/metamoji/df/sprite/Tweener$Tween;

    .line 73
    invoke-virtual {v2}, Lcom/metamoji/df/sprite/Tweener$Tween;->cancel()V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 75
    :cond_0
    invoke-interface {v2}, Ljava/util/List;->clear()V

    return-void
.end method

.method flush()V
    .locals 7

    .line 58
    iget-object v0, p0, Lcom/metamoji/df/sprite/Tweener;->list:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x0

    .line 63
    :goto_0
    iget-object v2, p0, Lcom/metamoji/df/sprite/Tweener;->list:Ljava/util/List;

    if-ge v1, v0, :cond_0

    .line 60
    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/metamoji/df/sprite/Tweener$Tween;

    .line 61
    iget-wide v3, v2, Lcom/metamoji/df/sprite/Tweener$Tween;->start:J

    iget-wide v5, v2, Lcom/metamoji/df/sprite/Tweener$Tween;->duration:J

    add-long/2addr v3, v5

    invoke-virtual {v2, v3, v4}, Lcom/metamoji/df/sprite/Tweener$Tween;->tick(J)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 63
    :cond_0
    invoke-interface {v2}, Ljava/util/List;->clear()V

    return-void
.end method

.method size()I
    .locals 1

    .line 21
    iget-object v0, p0, Lcom/metamoji/df/sprite/Tweener;->list:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method step()V
    .locals 2

    .line 34
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/metamoji/df/sprite/Tweener;->tick(J)V

    return-void
.end method

.method tick(J)V
    .locals 3

    .line 41
    iput-wide p1, p0, Lcom/metamoji/df/sprite/Tweener;->current:J

    .line 42
    iget-object p1, p0, Lcom/metamoji/df/sprite/Tweener;->list:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    const/4 p2, 0x0

    .line 47
    :goto_0
    iget-object v0, p0, Lcom/metamoji/df/sprite/Tweener;->list:Ljava/util/List;

    if-ge p2, p1, :cond_0

    .line 44
    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/metamoji/df/sprite/Tweener$Tween;

    .line 45
    iget-wide v1, p0, Lcom/metamoji/df/sprite/Tweener;->current:J

    invoke-virtual {v0, v1, v2}, Lcom/metamoji/df/sprite/Tweener$Tween;->tick(J)V

    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    .line 47
    :cond_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result p1

    add-int/lit8 p1, p1, -0x1

    :goto_1
    if-ltz p1, :cond_2

    .line 48
    iget-object p2, p0, Lcom/metamoji/df/sprite/Tweener;->list:Ljava/util/List;

    invoke-interface {p2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/metamoji/df/sprite/Tweener$Tween;

    iget-boolean p2, p2, Lcom/metamoji/df/sprite/Tweener$Tween;->delete:Z

    if-eqz p2, :cond_1

    .line 49
    iget-object p2, p0, Lcom/metamoji/df/sprite/Tweener;->list:Ljava/util/List;

    invoke-interface {p2, p1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    :cond_1
    add-int/lit8 p1, p1, -0x1

    goto :goto_1

    :cond_2
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .line 209
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "{Tweener"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 211
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, " current="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-wide v2, p0, Lcom/metamoji/df/sprite/Tweener;->current:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 212
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, " list="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/metamoji/df/sprite/Tweener;->list:Ljava/util/List;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 213
    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 214
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
