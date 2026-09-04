.class public Lcom/metamoji/un/draw2/library/utility/id/DrUtId;
.super Ljava/lang/Object;
.source "DrUtId.java"


# instance fields
.field private m_count:J

.field private m_hash:I

.field private m_prefix:J


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static hash(JJ)I
    .locals 3

    const/16 v0, 0x20

    shr-long v1, p0, v0

    long-to-int v1, v1

    const v2, -0x7ee3623b

    xor-int/2addr v1, v2

    const v2, 0x1000193

    mul-int/2addr v1, v2

    long-to-int p0, p0

    xor-int/2addr p0, v1

    mul-int/2addr p0, v2

    shr-long v0, p2, v0

    long-to-int p1, v0

    xor-int/2addr p0, p1

    mul-int/2addr p0, v2

    long-to-int p1, p2

    xor-int/2addr p0, p1

    mul-int/2addr p0, v2

    return p0
.end method

.method public static idWithCount(JJ)Lcom/metamoji/un/draw2/library/utility/id/DrUtId;
    .locals 3

    const-wide/16 v0, 0x0

    cmp-long v2, p0, v0

    if-ltz v2, :cond_1

    cmp-long v0, p2, v0

    if-gez v0, :cond_0

    goto :goto_0

    .line 81
    :cond_0
    new-instance v0, Lcom/metamoji/un/draw2/library/utility/id/DrUtId;

    invoke-direct {v0}, Lcom/metamoji/un/draw2/library/utility/id/DrUtId;-><init>()V

    .line 82
    iput-wide p0, v0, Lcom/metamoji/un/draw2/library/utility/id/DrUtId;->m_count:J

    .line 83
    iput-wide p2, v0, Lcom/metamoji/un/draw2/library/utility/id/DrUtId;->m_prefix:J

    .line 84
    invoke-static {p0, p1, p2, p3}, Lcom/metamoji/un/draw2/library/utility/id/DrUtId;->hash(JJ)I

    move-result p0

    iput p0, v0, Lcom/metamoji/un/draw2/library/utility/id/DrUtId;->m_hash:I

    return-object v0

    :cond_1
    :goto_0
    const/4 p0, 0x0

    const/4 p1, 0x0

    .line 78
    invoke-static {p0, p1}, Lcom/metamoji/un/draw2/library/utility/application/DrUtLogger;->error(ILjava/lang/String;)V

    return-object p1
.end method


# virtual methods
.method public count()J
    .locals 2

    .line 38
    iget-wide v0, p0, Lcom/metamoji/un/draw2/library/utility/id/DrUtId;->m_count:J

    return-wide v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 1

    .line 46
    instance-of v0, p1, Lcom/metamoji/un/draw2/library/utility/id/DrUtId;

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return p1

    .line 49
    :cond_0
    check-cast p1, Lcom/metamoji/un/draw2/library/utility/id/DrUtId;

    invoke-virtual {p0, p1}, Lcom/metamoji/un/draw2/library/utility/id/DrUtId;->isEqualToId(Lcom/metamoji/un/draw2/library/utility/id/DrUtId;)Z

    move-result p1

    return p1
.end method

.method public hashCode()I
    .locals 1

    .line 54
    iget v0, p0, Lcom/metamoji/un/draw2/library/utility/id/DrUtId;->m_hash:I

    return v0
.end method

.method public isEqualToId(Lcom/metamoji/un/draw2/library/utility/id/DrUtId;)Z
    .locals 6

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x1

    if-ne p1, p0, :cond_1

    return v1

    .line 32
    :cond_1
    iget-wide v2, p0, Lcom/metamoji/un/draw2/library/utility/id/DrUtId;->m_count:J

    iget-wide v4, p1, Lcom/metamoji/un/draw2/library/utility/id/DrUtId;->m_count:J

    cmp-long v2, v2, v4

    if-nez v2, :cond_2

    iget-wide v2, p0, Lcom/metamoji/un/draw2/library/utility/id/DrUtId;->m_prefix:J

    iget-wide v4, p1, Lcom/metamoji/un/draw2/library/utility/id/DrUtId;->m_prefix:J

    cmp-long p1, v2, v4

    if-nez p1, :cond_2

    return v1

    :cond_2
    return v0
.end method

.method public prefix()J
    .locals 2

    .line 39
    iget-wide v0, p0, Lcom/metamoji/un/draw2/library/utility/id/DrUtId;->m_prefix:J

    return-wide v0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .line 95
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    iget-wide v1, p0, Lcom/metamoji/un/draw2/library/utility/id/DrUtId;->m_prefix:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    iget-wide v2, p0, Lcom/metamoji/un/draw2/library/utility/id/DrUtId;->m_count:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    filled-new-array {v1, v2}, [Ljava/lang/Object;

    move-result-object v1

    const-string v2, "<0x%x,%x>"

    invoke-static {v0, v2, v1}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
