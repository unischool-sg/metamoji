.class public Lcom/metamoji/cm/CmLocalIdManager;
.super Ljava/lang/Object;
.source "CmLocalIdManager.java"


# static fields
.field private static sInstance:Lcom/metamoji/cm/CmLocalIdManager;


# instance fields
.field private final LOCAL_ID_PREFIX:Ljava/lang/String;

.field private final ROOTID_CATEGORY_DEFAULT:Ljava/lang/String;

.field private final SUBID_CATEGORY_DEFAULT:Ljava/lang/String;

.field private final SUBID_PREFIX:Ljava/lang/String;

.field private m_counter:J

.field private m_lockContext:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private m_uuid:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 28
    new-instance v0, Lcom/metamoji/cm/CmLocalIdManager;

    invoke-direct {v0}, Lcom/metamoji/cm/CmLocalIdManager;-><init>()V

    sput-object v0, Lcom/metamoji/cm/CmLocalIdManager;->sInstance:Lcom/metamoji/cm/CmLocalIdManager;

    return-void
.end method

.method private constructor <init>()V
    .locals 2

    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    const-string v0, "__localId_"

    iput-object v0, p0, Lcom/metamoji/cm/CmLocalIdManager;->LOCAL_ID_PREFIX:Ljava/lang/String;

    .line 20
    const-string v0, "__subId_v2_"

    iput-object v0, p0, Lcom/metamoji/cm/CmLocalIdManager;->SUBID_PREFIX:Ljava/lang/String;

    .line 21
    const-string v0, "default"

    iput-object v0, p0, Lcom/metamoji/cm/CmLocalIdManager;->SUBID_CATEGORY_DEFAULT:Ljava/lang/String;

    .line 22
    const-string v0, "note"

    iput-object v0, p0, Lcom/metamoji/cm/CmLocalIdManager;->ROOTID_CATEGORY_DEFAULT:Ljava/lang/String;

    const/4 v0, 0x0

    .line 35
    iput-object v0, p0, Lcom/metamoji/cm/CmLocalIdManager;->m_uuid:Ljava/lang/String;

    const-wide/16 v0, 0x0

    .line 36
    iput-wide v0, p0, Lcom/metamoji/cm/CmLocalIdManager;->m_counter:J

    .line 37
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/metamoji/cm/CmLocalIdManager;->m_lockContext:Ljava/util/HashSet;

    return-void
.end method

.method public static escapeString(Ljava/lang/String;)Ljava/lang/String;
    .locals 24

    const/16 v0, 0x14

    .line 58
    new-array v1, v0, [Ljava/lang/String;

    const-string v2, "%"

    const/4 v3, 0x0

    aput-object v2, v1, v3

    const-string v2, "!"

    const/4 v4, 0x1

    aput-object v2, v1, v4

    const-string v2, "\\*"

    const/4 v5, 0x2

    aput-object v2, v1, v5

    const-string v2, "\'"

    const/4 v6, 0x3

    aput-object v2, v1, v6

    const-string v2, "\\("

    const/4 v7, 0x4

    aput-object v2, v1, v7

    const-string v2, "\\)"

    const/4 v8, 0x5

    aput-object v2, v1, v8

    const-string v2, ";"

    const/4 v9, 0x6

    aput-object v2, v1, v9

    const-string v2, ":"

    const/4 v10, 0x7

    aput-object v2, v1, v10

    const-string v2, "@"

    const/16 v11, 0x8

    aput-object v2, v1, v11

    const-string v2, "&"

    const/16 v12, 0x9

    aput-object v2, v1, v12

    const-string v2, "="

    const/16 v13, 0xa

    aput-object v2, v1, v13

    const-string v2, "\\+"

    const/16 v14, 0xb

    aput-object v2, v1, v14

    const-string v2, "\\$"

    const/16 v15, 0xc

    aput-object v2, v1, v15

    const-string v2, ","

    const/16 v16, 0xd

    aput-object v2, v1, v16

    const-string v2, "/"

    const/16 v17, 0xe

    aput-object v2, v1, v17

    const-string v2, "\\?"

    const/16 v18, 0xf

    aput-object v2, v1, v18

    const-string v2, "#"

    const/16 v19, 0x10

    aput-object v2, v1, v19

    const-string v2, "\\["

    const/16 v20, 0x11

    aput-object v2, v1, v20

    const-string v2, "\\]"

    const/16 v21, 0x12

    aput-object v2, v1, v21

    const-string v2, "\""

    const/16 v22, 0x13

    aput-object v2, v1, v22

    .line 62
    new-array v2, v0, [Ljava/lang/String;

    const-string v23, "%25"

    aput-object v23, v2, v3

    const-string v23, "%21"

    aput-object v23, v2, v4

    const-string v4, "%2A"

    aput-object v4, v2, v5

    const-string v4, "%27"

    aput-object v4, v2, v6

    const-string v4, "%28"

    aput-object v4, v2, v7

    const-string v4, "%29"

    aput-object v4, v2, v8

    const-string v4, "%3B"

    aput-object v4, v2, v9

    const-string v4, "%3A"

    aput-object v4, v2, v10

    const-string v4, "%40"

    aput-object v4, v2, v11

    const-string v4, "%26"

    aput-object v4, v2, v12

    const-string v4, "%3D"

    aput-object v4, v2, v13

    const-string v4, "%2B"

    aput-object v4, v2, v14

    const-string v4, "%24"

    aput-object v4, v2, v15

    const-string v4, "%2C"

    aput-object v4, v2, v16

    const-string v4, "%2F"

    aput-object v4, v2, v17

    const-string v4, "%3F"

    aput-object v4, v2, v18

    const-string v4, "%23"

    aput-object v4, v2, v19

    const-string v4, "%5B"

    aput-object v4, v2, v20

    const-string v4, "%5D"

    aput-object v4, v2, v21

    const-string v4, "%22"

    aput-object v4, v2, v22

    move v4, v3

    move-object/from16 v3, p0

    :goto_0
    if-ge v4, v0, :cond_0

    .line 68
    aget-object v5, v1, v4

    aget-object v6, v2, v4

    invoke-virtual {v3, v5, v6}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_0
    return-object v3
.end method

.method public static generateRandomId()Ljava/lang/String;
    .locals 1

    .line 52
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v0

    .line 53
    invoke-virtual {v0}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private getCounter()J
    .locals 4

    .line 100
    monitor-enter p0

    .line 101
    :try_start_0
    iget-wide v0, p0, Lcom/metamoji/cm/CmLocalIdManager;->m_counter:J

    const-wide/16 v2, 0x1

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/metamoji/cm/CmLocalIdManager;->m_counter:J

    .line 102
    monitor-exit p0

    return-wide v0

    :catchall_0
    move-exception v0

    .line 103
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public static getInstance()Lcom/metamoji/cm/CmLocalIdManager;
    .locals 1

    .line 44
    sget-object v0, Lcom/metamoji/cm/CmLocalIdManager;->sInstance:Lcom/metamoji/cm/CmLocalIdManager;

    return-object v0
.end method

.method private getUuid()Ljava/lang/String;
    .locals 4

    .line 91
    monitor-enter p0

    .line 92
    :try_start_0
    iget-wide v0, p0, Lcom/metamoji/cm/CmLocalIdManager;->m_counter:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/metamoji/cm/CmLocalIdManager;->m_uuid:Ljava/lang/String;

    if-nez v0, :cond_1

    .line 93
    :cond_0
    invoke-static {}, Lcom/metamoji/cm/CmLocalIdManager;->generateRandomId()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/metamoji/cm/CmLocalIdManager;->m_uuid:Ljava/lang/String;

    .line 95
    :cond_1
    iget-object v0, p0, Lcom/metamoji/cm/CmLocalIdManager;->m_uuid:Ljava/lang/String;

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    .line 96
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public static unescapeString(Ljava/lang/String;)Ljava/lang/String;
    .locals 24

    const/16 v0, 0x14

    .line 75
    new-array v1, v0, [Ljava/lang/String;

    const-string v2, "%"

    const/4 v3, 0x0

    aput-object v2, v1, v3

    const-string v2, "!"

    const/4 v4, 0x1

    aput-object v2, v1, v4

    const-string v2, "*"

    const/4 v5, 0x2

    aput-object v2, v1, v5

    const-string v2, "\'"

    const/4 v6, 0x3

    aput-object v2, v1, v6

    const-string v2, "("

    const/4 v7, 0x4

    aput-object v2, v1, v7

    const-string v2, ")"

    const/4 v8, 0x5

    aput-object v2, v1, v8

    const-string v2, ";"

    const/4 v9, 0x6

    aput-object v2, v1, v9

    const-string v2, ":"

    const/4 v10, 0x7

    aput-object v2, v1, v10

    const-string v2, "@"

    const/16 v11, 0x8

    aput-object v2, v1, v11

    const-string v2, "&"

    const/16 v12, 0x9

    aput-object v2, v1, v12

    const-string v2, "="

    const/16 v13, 0xa

    aput-object v2, v1, v13

    const-string v2, "+"

    const/16 v14, 0xb

    aput-object v2, v1, v14

    const-string v2, "$"

    const/16 v15, 0xc

    aput-object v2, v1, v15

    const-string v2, ","

    const/16 v16, 0xd

    aput-object v2, v1, v16

    const-string v2, "/"

    const/16 v17, 0xe

    aput-object v2, v1, v17

    const-string v2, "?"

    const/16 v18, 0xf

    aput-object v2, v1, v18

    const-string v2, "#"

    const/16 v19, 0x10

    aput-object v2, v1, v19

    const-string v2, "["

    const/16 v20, 0x11

    aput-object v2, v1, v20

    const-string v2, "]"

    const/16 v21, 0x12

    aput-object v2, v1, v21

    const-string v2, "\""

    const/16 v22, 0x13

    aput-object v2, v1, v22

    .line 79
    new-array v2, v0, [Ljava/lang/String;

    const-string v23, "%25"

    aput-object v23, v2, v3

    const-string v23, "%21"

    aput-object v23, v2, v4

    const-string v4, "%2A"

    aput-object v4, v2, v5

    const-string v4, "%27"

    aput-object v4, v2, v6

    const-string v4, "%28"

    aput-object v4, v2, v7

    const-string v4, "%29"

    aput-object v4, v2, v8

    const-string v4, "%3B"

    aput-object v4, v2, v9

    const-string v4, "%3A"

    aput-object v4, v2, v10

    const-string v4, "%40"

    aput-object v4, v2, v11

    const-string v4, "%26"

    aput-object v4, v2, v12

    const-string v4, "%3D"

    aput-object v4, v2, v13

    const-string v4, "%2B"

    aput-object v4, v2, v14

    const-string v4, "%24"

    aput-object v4, v2, v15

    const-string v4, "%2C"

    aput-object v4, v2, v16

    const-string v4, "%2F"

    aput-object v4, v2, v17

    const-string v4, "%3F"

    aput-object v4, v2, v18

    const-string v4, "%23"

    aput-object v4, v2, v19

    const-string v4, "%5B"

    aput-object v4, v2, v20

    const-string v4, "%5D"

    aput-object v4, v2, v21

    const-string v4, "%22"

    aput-object v4, v2, v22

    move v4, v3

    move-object/from16 v3, p0

    :goto_0
    if-ge v4, v0, :cond_0

    .line 85
    aget-object v5, v2, v4

    aget-object v6, v1, v4

    invoke-virtual {v3, v5, v6}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_0
    return-object v3
.end method


# virtual methods
.method public endReserveSubId(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public generateRootId(Ljava/lang/String;)Ljava/lang/String;
    .locals 5

    if-nez p1, :cond_0

    .line 108
    const-string p1, "note"

    .line 111
    :cond_0
    invoke-static {p1}, Lcom/metamoji/cm/CmLocalIdManager;->escapeString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 112
    invoke-direct {p0}, Lcom/metamoji/cm/CmLocalIdManager;->getUuid()Ljava/lang/String;

    move-result-object v0

    .line 113
    invoke-direct {p0}, Lcom/metamoji/cm/CmLocalIdManager;->getCounter()J

    move-result-wide v1

    .line 115
    sget-object v3, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v4, "__localId_"

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    filled-new-array {v4, p1, v0, v1}, [Ljava/lang/Object;

    move-result-object p1

    const-string v0, "%s[%s]_[%s]_%d"

    invoke-static {v3, v0, p1}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public generateSubIdWithType(Ljava/lang/String;)Ljava/lang/String;
    .locals 5

    if-nez p1, :cond_0

    .line 120
    const-string p1, "default"

    .line 123
    :cond_0
    invoke-static {p1}, Lcom/metamoji/cm/CmLocalIdManager;->escapeString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 124
    invoke-direct {p0}, Lcom/metamoji/cm/CmLocalIdManager;->getUuid()Ljava/lang/String;

    move-result-object v0

    .line 125
    invoke-direct {p0}, Lcom/metamoji/cm/CmLocalIdManager;->getCounter()J

    move-result-wide v1

    .line 127
    sget-object v3, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v4, "__subId_v2_"

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    filled-new-array {v4, v0, p1, v1}, [Ljava/lang/Object;

    move-result-object p1

    const-string v0, "%s[%s]_[%s]_%d"

    invoke-static {v3, v0, p1}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public isLockId(Ljava/lang/String;)Z
    .locals 2

    const/4 v0, 0x0

    if-nez p1, :cond_0

    .line 178
    const-string p1, "lockId is nil! return NO..."

    invoke-static {p1}, Lcom/metamoji/cm/CmLog;->warn(Ljava/lang/String;)V

    return v0

    .line 181
    :cond_0
    monitor-enter p0

    .line 182
    :try_start_0
    iget-object v1, p0, Lcom/metamoji/cm/CmLocalIdManager;->m_lockContext:Ljava/util/HashSet;

    invoke-virtual {v1, p1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    const/4 p1, 0x1

    .line 183
    monitor-exit p0

    return p1

    .line 185
    :cond_1
    monitor-exit p0

    return v0

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public lockId(Ljava/lang/String;)Z
    .locals 2

    .line 138
    monitor-enter p0

    const/4 v0, 0x0

    if-nez p1, :cond_0

    .line 141
    :try_start_0
    const-string p1, "lockId is nil! return NO..."

    invoke-static {p1}, Lcom/metamoji/cm/CmLog;->warn(Ljava/lang/String;)V

    .line 142
    monitor-exit p0

    return v0

    .line 145
    :cond_0
    iget-object v1, p0, Lcom/metamoji/cm/CmLocalIdManager;->m_lockContext:Ljava/util/HashSet;

    invoke-virtual {v1, p1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 146
    monitor-exit p0

    return v0

    .line 149
    :cond_1
    iget-object v0, p0, Lcom/metamoji/cm/CmLocalIdManager;->m_lockContext:Ljava/util/HashSet;

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    const/4 p1, 0x1

    .line 150
    monitor-exit p0

    return p1

    :catchall_0
    move-exception p1

    .line 151
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public setReserveSubId(Ljava/lang/String;I)V
    .locals 0

    return-void
.end method

.method public unlockId(Ljava/lang/String;)V
    .locals 1

    .line 160
    monitor-enter p0

    if-nez p1, :cond_0

    .line 162
    :try_start_0
    const-string p1, "unlockId is nil! return NOP..."

    invoke-static {p1}, Lcom/metamoji/cm/CmLog;->warn(Ljava/lang/String;)V

    .line 163
    monitor-exit p0

    return-void

    .line 165
    :cond_0
    iget-object v0, p0, Lcom/metamoji/cm/CmLocalIdManager;->m_lockContext:Ljava/util/HashSet;

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    .line 166
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method
