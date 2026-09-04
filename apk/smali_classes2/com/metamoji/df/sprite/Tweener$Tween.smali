.class Lcom/metamoji/df/sprite/Tweener$Tween;
.super Ljava/lang/Object;
.source "Tweener.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/metamoji/df/sprite/Tweener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "Tween"
.end annotation


# instance fields
.field delete:Z

.field duration:J

.field private list:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/metamoji/df/sprite/Tweener$Prop;",
            ">;"
        }
    .end annotation
.end field

.field start:J


# direct methods
.method constructor <init>(J)V
    .locals 1

    .line 92
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 87
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/metamoji/df/sprite/Tweener$Tween;->list:Ljava/util/List;

    .line 92
    iput-wide p1, p0, Lcom/metamoji/df/sprite/Tweener$Tween;->duration:J

    return-void
.end method


# virtual methods
.method add(Lcom/metamoji/df/sprite/Tweener$Prop;)V
    .locals 1

    .line 97
    iget-object v0, p0, Lcom/metamoji/df/sprite/Tweener$Tween;->list:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method cancel()V
    .locals 1

    const/4 v0, 0x1

    .line 131
    iput-boolean v0, p0, Lcom/metamoji/df/sprite/Tweener$Tween;->delete:Z

    const/4 v0, 0x0

    .line 132
    invoke-virtual {p0, v0}, Lcom/metamoji/df/sprite/Tweener$Tween;->onEnd(Z)V

    return-void
.end method

.method isEmpty()Z
    .locals 1

    .line 102
    iget-object v0, p0, Lcom/metamoji/df/sprite/Tweener$Tween;->list:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    return v0
.end method

.method protected onEnd(Z)V
    .locals 0

    return-void
.end method

.method tick(J)V
    .locals 8

    .line 108
    iget-wide v0, p0, Lcom/metamoji/df/sprite/Tweener$Tween;->start:J

    cmp-long v2, p1, v0

    if-gez v2, :cond_0

    goto :goto_2

    .line 111
    :cond_0
    iget-wide v2, p0, Lcom/metamoji/df/sprite/Tweener$Tween;->duration:J

    add-long v4, v0, v2

    cmp-long v4, p1, v4

    const/4 v5, 0x0

    if-gez v4, :cond_1

    .line 112
    iget-object v0, p0, Lcom/metamoji/df/sprite/Tweener$Tween;->list:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    :goto_0
    if-ge v5, v0, :cond_3

    .line 114
    iget-object v1, p0, Lcom/metamoji/df/sprite/Tweener$Tween;->list:Ljava/util/List;

    invoke-interface {v1, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/metamoji/df/sprite/Tweener$Prop;

    .line 115
    iget-wide v2, p0, Lcom/metamoji/df/sprite/Tweener$Tween;->start:J

    sub-long v2, p1, v2

    iget-wide v6, p0, Lcom/metamoji/df/sprite/Tweener$Tween;->duration:J

    invoke-virtual {v1, v2, v3, v6, v7}, Lcom/metamoji/df/sprite/Tweener$Prop;->next(JJ)V

    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_1
    add-long/2addr v0, v2

    cmp-long p1, v0, p1

    if-gtz p1, :cond_3

    .line 120
    iget-object p1, p0, Lcom/metamoji/df/sprite/Tweener$Tween;->list:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    :goto_1
    if-ge v5, p1, :cond_2

    .line 122
    iget-object p2, p0, Lcom/metamoji/df/sprite/Tweener$Tween;->list:Ljava/util/List;

    invoke-interface {p2, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/metamoji/df/sprite/Tweener$Prop;

    .line 123
    iget-wide v0, p0, Lcom/metamoji/df/sprite/Tweener$Tween;->duration:J

    invoke-virtual {p2, v0, v1, v0, v1}, Lcom/metamoji/df/sprite/Tweener$Prop;->next(JJ)V

    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    :cond_2
    const/4 p1, 0x1

    .line 125
    iput-boolean p1, p0, Lcom/metamoji/df/sprite/Tweener$Tween;->delete:Z

    .line 126
    invoke-virtual {p0, p1}, Lcom/metamoji/df/sprite/Tweener$Tween;->onEnd(Z)V

    :cond_3
    :goto_2
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .line 145
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "{Tween"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 147
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, " start="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-wide v2, p0, Lcom/metamoji/df/sprite/Tweener$Tween;->start:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 148
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, " duration="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-wide v2, p0, Lcom/metamoji/df/sprite/Tweener$Tween;->duration:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 149
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, " delete="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v2, p0, Lcom/metamoji/df/sprite/Tweener$Tween;->delete:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 150
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, " list="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/metamoji/df/sprite/Tweener$Tween;->list:Ljava/util/List;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 151
    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 152
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
