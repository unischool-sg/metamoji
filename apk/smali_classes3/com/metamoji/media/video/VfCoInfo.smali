.class public final Lcom/metamoji/media/video/VfCoInfo;
.super Ljava/lang/Object;
.source "VfCoInfo.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000.\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\t\n\u0002\u0008\u0007\n\u0002\u0018\u0002\n\u0002\u0008\u0014\n\u0002\u0010\u000b\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0000\n\u0002\u0010\u000e\n\u0000\u0008\u0086\u0008\u0018\u00002\u00020\u0001B9\u0012\u0008\u0008\u0002\u0010\u0002\u001a\u00020\u0003\u0012\u0008\u0008\u0002\u0010\u0004\u001a\u00020\u0003\u0012\u0008\u0008\u0002\u0010\u0005\u001a\u00020\u0003\u0012\u0008\u0008\u0002\u0010\u0006\u001a\u00020\u0003\u0012\u0008\u0008\u0002\u0010\u0007\u001a\u00020\u0003\u00a2\u0006\u0004\u0008\u0008\u0010\tB\u0011\u0008\u0016\u0012\u0006\u0010\n\u001a\u00020\u000b\u00a2\u0006\u0004\u0008\u0008\u0010\u000cJ\t\u0010\u0019\u001a\u00020\u0003H\u00c6\u0003J\t\u0010\u001a\u001a\u00020\u0003H\u00c6\u0003J\t\u0010\u001b\u001a\u00020\u0003H\u00c6\u0003J\t\u0010\u001c\u001a\u00020\u0003H\u00c6\u0003J\t\u0010\u001d\u001a\u00020\u0003H\u00c6\u0003J;\u0010\u001e\u001a\u00020\u00002\u0008\u0008\u0002\u0010\u0002\u001a\u00020\u00032\u0008\u0008\u0002\u0010\u0004\u001a\u00020\u00032\u0008\u0008\u0002\u0010\u0005\u001a\u00020\u00032\u0008\u0008\u0002\u0010\u0006\u001a\u00020\u00032\u0008\u0008\u0002\u0010\u0007\u001a\u00020\u0003H\u00c6\u0001J\u0013\u0010\u001f\u001a\u00020 2\u0008\u0010!\u001a\u0004\u0018\u00010\u0001H\u00d6\u0003J\t\u0010\"\u001a\u00020#H\u00d6\u0001J\t\u0010$\u001a\u00020%H\u00d6\u0001R\u001a\u0010\u0002\u001a\u00020\u0003X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\r\u0010\u000e\"\u0004\u0008\u000f\u0010\u0010R\u001a\u0010\u0004\u001a\u00020\u0003X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0011\u0010\u000e\"\u0004\u0008\u0012\u0010\u0010R\u001a\u0010\u0005\u001a\u00020\u0003X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0013\u0010\u000e\"\u0004\u0008\u0014\u0010\u0010R\u001a\u0010\u0006\u001a\u00020\u0003X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0015\u0010\u000e\"\u0004\u0008\u0016\u0010\u0010R\u001a\u0010\u0007\u001a\u00020\u0003X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0017\u0010\u000e\"\u0004\u0008\u0018\u0010\u0010\u00a8\u0006&"
    }
    d2 = {
        "Lcom/metamoji/media/video/VfCoInfo;",
        "",
        "company_id",
        "",
        "count_in_company",
        "count_in_user",
        "size_in_company",
        "size_in_user",
        "<init>",
        "(JJJJJ)V",
        "jsonObject",
        "Lorg/json/JSONObject;",
        "(Lorg/json/JSONObject;)V",
        "getCompany_id",
        "()J",
        "setCompany_id",
        "(J)V",
        "getCount_in_company",
        "setCount_in_company",
        "getCount_in_user",
        "setCount_in_user",
        "getSize_in_company",
        "setSize_in_company",
        "getSize_in_user",
        "setSize_in_user",
        "component1",
        "component2",
        "component3",
        "component4",
        "component5",
        "copy",
        "equals",
        "",
        "other",
        "hashCode",
        "",
        "toString",
        "",
        "app"
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
.field private company_id:J

.field private count_in_company:J

.field private count_in_user:J

.field private size_in_company:J

.field private size_in_user:J


# direct methods
.method public constructor <init>()V
    .locals 13

    const/16 v11, 0x1f

    const/4 v12, 0x0

    const-wide/16 v1, 0x0

    const-wide/16 v3, 0x0

    const-wide/16 v5, 0x0

    const-wide/16 v7, 0x0

    const-wide/16 v9, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v12}, Lcom/metamoji/media/video/VfCoInfo;-><init>(JJJJJILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(JJJJJ)V
    .locals 0

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 7
    iput-wide p1, p0, Lcom/metamoji/media/video/VfCoInfo;->company_id:J

    .line 8
    iput-wide p3, p0, Lcom/metamoji/media/video/VfCoInfo;->count_in_company:J

    .line 9
    iput-wide p5, p0, Lcom/metamoji/media/video/VfCoInfo;->count_in_user:J

    .line 10
    iput-wide p7, p0, Lcom/metamoji/media/video/VfCoInfo;->size_in_company:J

    .line 11
    iput-wide p9, p0, Lcom/metamoji/media/video/VfCoInfo;->size_in_user:J

    return-void
.end method

.method public synthetic constructor <init>(JJJJJILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 2

    and-int/lit8 p12, p11, 0x1

    const-wide/16 v0, 0x0

    if-eqz p12, :cond_0

    move-wide p1, v0

    :cond_0
    and-int/lit8 p12, p11, 0x2

    if-eqz p12, :cond_1

    move-wide p3, v0

    :cond_1
    and-int/lit8 p12, p11, 0x4

    if-eqz p12, :cond_2

    move-wide p5, v0

    :cond_2
    and-int/lit8 p12, p11, 0x8

    if-eqz p12, :cond_3

    move-wide p7, v0

    :cond_3
    and-int/lit8 p11, p11, 0x10

    if-eqz p11, :cond_4

    move-wide p10, v0

    goto :goto_0

    :cond_4
    move-wide p10, p9

    :goto_0
    move-wide p8, p7

    move-wide p6, p5

    move-wide p4, p3

    move-wide p2, p1

    move-object p1, p0

    .line 6
    invoke-direct/range {p1 .. p11}, Lcom/metamoji/media/video/VfCoInfo;-><init>(JJJJJ)V

    return-void
.end method

.method public constructor <init>(Lorg/json/JSONObject;)V
    .locals 18

    const-string v0, "jsonObject"

    move-object/from16 v1, p1

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v5, 0x2

    const/4 v6, 0x0

    .line 14
    const-string v2, "company_id"

    const-wide/16 v3, 0x0

    invoke-static/range {v1 .. v6}, Lcom/metamoji/media/video/network/VfCloudKt;->safeGetLong$default(Lorg/json/JSONObject;Ljava/lang/String;JILjava/lang/Object;)J

    move-result-wide v8

    .line 15
    const-string v2, "count_in_company"

    invoke-static/range {v1 .. v6}, Lcom/metamoji/media/video/network/VfCloudKt;->safeGetLong$default(Lorg/json/JSONObject;Ljava/lang/String;JILjava/lang/Object;)J

    move-result-wide v10

    .line 16
    const-string v2, "count_in_user"

    invoke-static/range {v1 .. v6}, Lcom/metamoji/media/video/network/VfCloudKt;->safeGetLong$default(Lorg/json/JSONObject;Ljava/lang/String;JILjava/lang/Object;)J

    move-result-wide v12

    .line 17
    const-string/jumbo v2, "size_in_company"

    invoke-static/range {v1 .. v6}, Lcom/metamoji/media/video/network/VfCloudKt;->safeGetLong$default(Lorg/json/JSONObject;Ljava/lang/String;JILjava/lang/Object;)J

    move-result-wide v14

    .line 18
    const-string/jumbo v2, "size_in_user"

    invoke-static/range {v1 .. v6}, Lcom/metamoji/media/video/network/VfCloudKt;->safeGetLong$default(Lorg/json/JSONObject;Ljava/lang/String;JILjava/lang/Object;)J

    move-result-wide v16

    move-object/from16 v7, p0

    .line 13
    invoke-direct/range {v7 .. v17}, Lcom/metamoji/media/video/VfCoInfo;-><init>(JJJJJ)V

    return-void
.end method

.method public static synthetic copy$default(Lcom/metamoji/media/video/VfCoInfo;JJJJJILjava/lang/Object;)Lcom/metamoji/media/video/VfCoInfo;
    .locals 11

    and-int/lit8 v0, p11, 0x1

    if-eqz v0, :cond_0

    iget-wide p1, p0, Lcom/metamoji/media/video/VfCoInfo;->company_id:J

    :cond_0
    move-wide v1, p1

    and-int/lit8 p1, p11, 0x2

    if-eqz p1, :cond_1

    iget-wide p3, p0, Lcom/metamoji/media/video/VfCoInfo;->count_in_company:J

    :cond_1
    move-wide v3, p3

    and-int/lit8 p1, p11, 0x4

    if-eqz p1, :cond_2

    iget-wide p1, p0, Lcom/metamoji/media/video/VfCoInfo;->count_in_user:J

    move-wide v5, p1

    goto :goto_0

    :cond_2
    move-wide/from16 v5, p5

    :goto_0
    and-int/lit8 p1, p11, 0x8

    if-eqz p1, :cond_3

    iget-wide p1, p0, Lcom/metamoji/media/video/VfCoInfo;->size_in_company:J

    move-wide v7, p1

    goto :goto_1

    :cond_3
    move-wide/from16 v7, p7

    :goto_1
    and-int/lit8 p1, p11, 0x10

    if-eqz p1, :cond_4

    iget-wide p1, p0, Lcom/metamoji/media/video/VfCoInfo;->size_in_user:J

    move-wide v9, p1

    goto :goto_2

    :cond_4
    move-wide/from16 v9, p9

    :goto_2
    move-object v0, p0

    invoke-virtual/range {v0 .. v10}, Lcom/metamoji/media/video/VfCoInfo;->copy(JJJJJ)Lcom/metamoji/media/video/VfCoInfo;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final component1()J
    .locals 2

    iget-wide v0, p0, Lcom/metamoji/media/video/VfCoInfo;->company_id:J

    return-wide v0
.end method

.method public final component2()J
    .locals 2

    iget-wide v0, p0, Lcom/metamoji/media/video/VfCoInfo;->count_in_company:J

    return-wide v0
.end method

.method public final component3()J
    .locals 2

    iget-wide v0, p0, Lcom/metamoji/media/video/VfCoInfo;->count_in_user:J

    return-wide v0
.end method

.method public final component4()J
    .locals 2

    iget-wide v0, p0, Lcom/metamoji/media/video/VfCoInfo;->size_in_company:J

    return-wide v0
.end method

.method public final component5()J
    .locals 2

    iget-wide v0, p0, Lcom/metamoji/media/video/VfCoInfo;->size_in_user:J

    return-wide v0
.end method

.method public final copy(JJJJJ)Lcom/metamoji/media/video/VfCoInfo;
    .locals 11

    new-instance v0, Lcom/metamoji/media/video/VfCoInfo;

    move-wide v1, p1

    move-wide v3, p3

    move-wide/from16 v5, p5

    move-wide/from16 v7, p7

    move-wide/from16 v9, p9

    invoke-direct/range {v0 .. v10}, Lcom/metamoji/media/video/VfCoInfo;-><init>(JJJJJ)V

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 7

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/metamoji/media/video/VfCoInfo;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/metamoji/media/video/VfCoInfo;

    iget-wide v3, p0, Lcom/metamoji/media/video/VfCoInfo;->company_id:J

    iget-wide v5, p1, Lcom/metamoji/media/video/VfCoInfo;->company_id:J

    cmp-long v1, v3, v5

    if-eqz v1, :cond_2

    return v2

    :cond_2
    iget-wide v3, p0, Lcom/metamoji/media/video/VfCoInfo;->count_in_company:J

    iget-wide v5, p1, Lcom/metamoji/media/video/VfCoInfo;->count_in_company:J

    cmp-long v1, v3, v5

    if-eqz v1, :cond_3

    return v2

    :cond_3
    iget-wide v3, p0, Lcom/metamoji/media/video/VfCoInfo;->count_in_user:J

    iget-wide v5, p1, Lcom/metamoji/media/video/VfCoInfo;->count_in_user:J

    cmp-long v1, v3, v5

    if-eqz v1, :cond_4

    return v2

    :cond_4
    iget-wide v3, p0, Lcom/metamoji/media/video/VfCoInfo;->size_in_company:J

    iget-wide v5, p1, Lcom/metamoji/media/video/VfCoInfo;->size_in_company:J

    cmp-long v1, v3, v5

    if-eqz v1, :cond_5

    return v2

    :cond_5
    iget-wide v3, p0, Lcom/metamoji/media/video/VfCoInfo;->size_in_user:J

    iget-wide v5, p1, Lcom/metamoji/media/video/VfCoInfo;->size_in_user:J

    cmp-long p1, v3, v5

    if-eqz p1, :cond_6

    return v2

    :cond_6
    return v0
.end method

.method public final getCompany_id()J
    .locals 2

    .line 7
    iget-wide v0, p0, Lcom/metamoji/media/video/VfCoInfo;->company_id:J

    return-wide v0
.end method

.method public final getCount_in_company()J
    .locals 2

    .line 8
    iget-wide v0, p0, Lcom/metamoji/media/video/VfCoInfo;->count_in_company:J

    return-wide v0
.end method

.method public final getCount_in_user()J
    .locals 2

    .line 9
    iget-wide v0, p0, Lcom/metamoji/media/video/VfCoInfo;->count_in_user:J

    return-wide v0
.end method

.method public final getSize_in_company()J
    .locals 2

    .line 10
    iget-wide v0, p0, Lcom/metamoji/media/video/VfCoInfo;->size_in_company:J

    return-wide v0
.end method

.method public final getSize_in_user()J
    .locals 2

    .line 11
    iget-wide v0, p0, Lcom/metamoji/media/video/VfCoInfo;->size_in_user:J

    return-wide v0
.end method

.method public hashCode()I
    .locals 3

    iget-wide v0, p0, Lcom/metamoji/media/video/VfCoInfo;->company_id:J

    invoke-static {v0, v1}, Ljava/lang/Long;->hashCode(J)I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget-wide v1, p0, Lcom/metamoji/media/video/VfCoInfo;->count_in_company:J

    invoke-static {v1, v2}, Ljava/lang/Long;->hashCode(J)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-wide v1, p0, Lcom/metamoji/media/video/VfCoInfo;->count_in_user:J

    invoke-static {v1, v2}, Ljava/lang/Long;->hashCode(J)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-wide v1, p0, Lcom/metamoji/media/video/VfCoInfo;->size_in_company:J

    invoke-static {v1, v2}, Ljava/lang/Long;->hashCode(J)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-wide v1, p0, Lcom/metamoji/media/video/VfCoInfo;->size_in_user:J

    invoke-static {v1, v2}, Ljava/lang/Long;->hashCode(J)I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public final setCompany_id(J)V
    .locals 0

    .line 7
    iput-wide p1, p0, Lcom/metamoji/media/video/VfCoInfo;->company_id:J

    return-void
.end method

.method public final setCount_in_company(J)V
    .locals 0

    .line 8
    iput-wide p1, p0, Lcom/metamoji/media/video/VfCoInfo;->count_in_company:J

    return-void
.end method

.method public final setCount_in_user(J)V
    .locals 0

    .line 9
    iput-wide p1, p0, Lcom/metamoji/media/video/VfCoInfo;->count_in_user:J

    return-void
.end method

.method public final setSize_in_company(J)V
    .locals 0

    .line 10
    iput-wide p1, p0, Lcom/metamoji/media/video/VfCoInfo;->size_in_company:J

    return-void
.end method

.method public final setSize_in_user(J)V
    .locals 0

    .line 11
    iput-wide p1, p0, Lcom/metamoji/media/video/VfCoInfo;->size_in_user:J

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 12

    iget-wide v0, p0, Lcom/metamoji/media/video/VfCoInfo;->company_id:J

    iget-wide v2, p0, Lcom/metamoji/media/video/VfCoInfo;->count_in_company:J

    iget-wide v4, p0, Lcom/metamoji/media/video/VfCoInfo;->count_in_user:J

    iget-wide v6, p0, Lcom/metamoji/media/video/VfCoInfo;->size_in_company:J

    iget-wide v8, p0, Lcom/metamoji/media/video/VfCoInfo;->size_in_user:J

    new-instance v10, Ljava/lang/StringBuilder;

    const-string v11, "VfCoInfo(company_id="

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v10, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", count_in_company="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", count_in_user="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", size_in_company="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", size_in_user="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
