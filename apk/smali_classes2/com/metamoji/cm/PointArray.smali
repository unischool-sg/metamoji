.class public Lcom/metamoji/cm/PointArray;
.super Ljava/lang/Object;
.source "PointArray.java"

# interfaces
.implements Ljava/lang/Cloneable;


# instance fields
.field private backingStore:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/graphics/PointF;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/metamoji/cm/PointArray;->backingStore:Ljava/util/List;

    return-void
.end method

.method public constructor <init>(I)V
    .locals 1

    .line 73
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 74
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, p1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lcom/metamoji/cm/PointArray;->backingStore:Ljava/util/List;

    return-void
.end method

.method public constructor <init>(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/graphics/PointF;",
            ">;)V"
        }
    .end annotation

    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    iput-object p1, p0, Lcom/metamoji/cm/PointArray;->backingStore:Ljava/util/List;

    return-void
.end method

.method public static parse(Ljava/lang/String;)Lcom/metamoji/cm/PointArray;
    .locals 6

    .line 174
    const-string v0, "[{};,]"

    invoke-virtual {p0, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    .line 176
    new-instance v0, Lcom/metamoji/cm/PointArray;

    array-length v1, p0

    div-int/lit8 v1, v1, 0x2

    invoke-direct {v0, v1}, Lcom/metamoji/cm/PointArray;-><init>(I)V

    const/4 v1, 0x0

    .line 177
    :goto_0
    array-length v2, p0

    add-int/lit8 v2, v2, -0x1

    if-ge v1, v2, :cond_1

    .line 178
    :goto_1
    aget-object v2, p0, v1

    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_0

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 181
    :cond_0
    new-instance v2, Landroid/graphics/PointF;

    aget-object v3, p0, v1

    const/4 v4, 0x0

    invoke-static {v3, v4}, Lcom/metamoji/cm/CmUtils;->toFloat(Ljava/lang/Object;F)F

    move-result v3

    add-int/lit8 v5, v1, 0x1

    aget-object v5, p0, v5

    invoke-static {v5, v4}, Lcom/metamoji/cm/CmUtils;->toFloat(Ljava/lang/Object;F)F

    move-result v4

    invoke-direct {v2, v3, v4}, Landroid/graphics/PointF;-><init>(FF)V

    invoke-virtual {v0, v2}, Lcom/metamoji/cm/PointArray;->add(Landroid/graphics/PointF;)Z

    add-int/lit8 v1, v1, 0x2

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method public static toString(Lcom/metamoji/cm/PointArray;)Ljava/lang/String;
    .locals 4

    .line 192
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 193
    iget-object p0, p0, Lcom/metamoji/cm/PointArray;->backingStore:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/PointF;

    .line 194
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v2

    if-lez v2, :cond_0

    .line 195
    const-string v2, ";"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 197
    :cond_0
    const-string v2, "{"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, v1, Landroid/graphics/PointF;->x:F

    .line 198
    invoke-static {v3}, Ljava/lang/Float;->toString(F)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ","

    .line 199
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v1, v1, Landroid/graphics/PointF;->y:F

    .line 200
    invoke-static {v1}, Ljava/lang/Float;->toString(F)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "}"

    .line 201
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 203
    :cond_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public add(Landroid/graphics/PointF;)Z
    .locals 1

    .line 132
    iget-object v0, p0, Lcom/metamoji/cm/PointArray;->backingStore:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public addAll(Lcom/metamoji/cm/PointArray;)Z
    .locals 1

    .line 141
    iget-object v0, p0, Lcom/metamoji/cm/PointArray;->backingStore:Ljava/util/List;

    iget-object p1, p1, Lcom/metamoji/cm/PointArray;->backingStore:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    move-result p1

    return p1
.end method

.method public clear()V
    .locals 1

    .line 165
    iget-object v0, p0, Lcom/metamoji/cm/PointArray;->backingStore:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    return-void
.end method

.method public clone()Lcom/metamoji/cm/PointArray;
    .locals 3

    .line 83
    :try_start_0
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/metamoji/cm/PointArray;

    .line 84
    new-instance v1, Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/metamoji/cm/PointArray;->backingStore:Ljava/util/List;

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v1, v0, Lcom/metamoji/cm/PointArray;->backingStore:Ljava/util/List;
    :try_end_0
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .line 15
    invoke-virtual {p0}, Lcom/metamoji/cm/PointArray;->clone()Lcom/metamoji/cm/PointArray;

    move-result-object v0

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 3

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    if-nez p1, :cond_1

    return v1

    .line 58
    :cond_1
    instance-of v2, p1, Lcom/metamoji/cm/PointArray;

    if-nez v2, :cond_2

    return v1

    .line 60
    :cond_2
    check-cast p1, Lcom/metamoji/cm/PointArray;

    .line 61
    iget-object v2, p0, Lcom/metamoji/cm/PointArray;->backingStore:Ljava/util/List;

    if-nez v2, :cond_3

    .line 62
    iget-object p1, p1, Lcom/metamoji/cm/PointArray;->backingStore:Ljava/util/List;

    if-eqz p1, :cond_4

    return v1

    .line 64
    :cond_3
    iget-object p1, p1, Lcom/metamoji/cm/PointArray;->backingStore:Ljava/util/List;

    invoke-virtual {v2, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_4

    return v1

    :cond_4
    return v0
.end method

.method public get(I)Landroid/graphics/PointF;
    .locals 1

    .line 115
    iget-object v0, p0, Lcom/metamoji/cm/PointArray;->backingStore:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/graphics/PointF;

    return-object p1
.end method

.method public getBackingStoreList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/graphics/PointF;",
            ">;"
        }
    .end annotation

    .line 99
    iget-object v0, p0, Lcom/metamoji/cm/PointArray;->backingStore:Ljava/util/List;

    return-object v0
.end method

.method public hashCode()I
    .locals 2

    .line 45
    iget-object v0, p0, Lcom/metamoji/cm/PointArray;->backingStore:Ljava/util/List;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    :goto_0
    const/16 v1, 0x1f

    add-int/2addr v1, v0

    return v1
.end method

.method public remove(I)Landroid/graphics/PointF;
    .locals 1

    .line 150
    iget-object v0, p0, Lcom/metamoji/cm/PointArray;->backingStore:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/graphics/PointF;

    return-object p1
.end method

.method public removeLastPoint()Landroid/graphics/PointF;
    .locals 2

    .line 158
    iget-object v0, p0, Lcom/metamoji/cm/PointArray;->backingStore:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-interface {v0, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/PointF;

    return-object v0
.end method

.method public set(ILandroid/graphics/PointF;)Landroid/graphics/PointF;
    .locals 1

    .line 124
    iget-object v0, p0, Lcom/metamoji/cm/PointArray;->backingStore:Ljava/util/List;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/graphics/PointF;

    return-object p1
.end method

.method public size()I
    .locals 1

    .line 106
    iget-object v0, p0, Lcom/metamoji/cm/PointArray;->backingStore:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 212
    invoke-static {p0}, Lcom/metamoji/cm/PointArray;->toString(Lcom/metamoji/cm/PointArray;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
