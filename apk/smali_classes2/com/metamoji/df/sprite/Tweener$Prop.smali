.class abstract Lcom/metamoji/df/sprite/Tweener$Prop;
.super Ljava/lang/Object;
.source "Tweener.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/metamoji/df/sprite/Tweener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x408
    name = "Prop"
.end annotation


# instance fields
.field begin:F

.field change:F

.field eq:Lcom/metamoji/df/sprite/Equations;


# direct methods
.method constructor <init>(FFLcom/metamoji/df/sprite/Equations;)V
    .locals 0

    .line 170
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 171
    iput p1, p0, Lcom/metamoji/df/sprite/Tweener$Prop;->begin:F

    sub-float/2addr p2, p1

    .line 172
    iput p2, p0, Lcom/metamoji/df/sprite/Tweener$Prop;->change:F

    .line 173
    iput-object p3, p0, Lcom/metamoji/df/sprite/Tweener$Prop;->eq:Lcom/metamoji/df/sprite/Equations;

    return-void
.end method


# virtual methods
.method next(JJ)V
    .locals 2

    .line 181
    iget-object v0, p0, Lcom/metamoji/df/sprite/Tweener$Prop;->eq:Lcom/metamoji/df/sprite/Equations;

    long-to-float p1, p1

    iget p2, p0, Lcom/metamoji/df/sprite/Tweener$Prop;->begin:F

    iget v1, p0, Lcom/metamoji/df/sprite/Tweener$Prop;->change:F

    long-to-float p3, p3

    invoke-interface {v0, p1, p2, v1, p3}, Lcom/metamoji/df/sprite/Equations;->f(FFFF)F

    move-result p1

    invoke-virtual {p0, p1}, Lcom/metamoji/df/sprite/Tweener$Prop;->set(F)V

    return-void
.end method

.method protected abstract set(F)V
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 194
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "{Prop"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 196
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, " begin="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, p0, Lcom/metamoji/df/sprite/Tweener$Prop;->begin:F

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 197
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, " change="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, p0, Lcom/metamoji/df/sprite/Tweener$Prop;->change:F

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 198
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, " eq="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/metamoji/df/sprite/Tweener$Prop;->eq:Lcom/metamoji/df/sprite/Equations;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 199
    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 200
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
