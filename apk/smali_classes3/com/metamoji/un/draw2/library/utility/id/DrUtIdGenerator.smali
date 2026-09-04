.class public Lcom/metamoji/un/draw2/library/utility/id/DrUtIdGenerator;
.super Ljava/lang/Object;
.source "DrUtIdGenerator.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/metamoji/un/draw2/library/utility/id/DrUtIdGenerator$Reference;
    }
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z = false

.field static final BASE:I = 0x5c

.field private static final CHARSET_TABLE:[C

.field private static final ID_PATTERN:Ljava/util/regex/Pattern;

.field static final INVERSE_OFFSET:C = '!'

.field private static final INVERSE_TABLE:[C

.field static final MAX_DIGITS:I = 0xa

.field static final SEPARATOR:C = ' '

.field private static final TLSStringRef:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal<",
            "Lcom/metamoji/un/draw2/library/utility/id/DrUtIdGenerator$Reference<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field


# instance fields
.field private m_count:J

.field private m_prefix:J


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 56
    const-string v0, "0123456789ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz\"#$%&\'()*+,-./:;<=>@[\\]^_`{|}~"

    invoke-virtual {v0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v1

    sput-object v1, Lcom/metamoji/un/draw2/library/utility/id/DrUtIdGenerator;->CHARSET_TABLE:[C

    .line 60
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "(["

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Ljava/util/regex/Pattern;->quote(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]{1,10})"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 62
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "(?: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")?"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/metamoji/un/draw2/library/utility/id/DrUtIdGenerator;->ID_PATTERN:Ljava/util/regex/Pattern;

    const/16 v0, 0x5e

    .line 68
    new-array v0, v0, [C

    fill-array-data v0, :array_0

    sput-object v0, Lcom/metamoji/un/draw2/library/utility/id/DrUtIdGenerator;->INVERSE_TABLE:[C

    .line 246
    new-instance v0, Lcom/metamoji/un/draw2/library/utility/id/DrUtIdGenerator$1;

    invoke-direct {v0}, Lcom/metamoji/un/draw2/library/utility/id/DrUtIdGenerator$1;-><init>()V

    sput-object v0, Lcom/metamoji/un/draw2/library/utility/id/DrUtIdGenerator;->TLSStringRef:Ljava/lang/ThreadLocal;

    return-void

    nop

    :array_0
    .array-data 2
        -0x1s
        0x3es
        0x3fs
        0x40s
        0x41s
        0x42s
        0x43s
        0x44s
        0x45s
        0x46s
        0x47s
        0x48s
        0x49s
        0x4as
        0x4bs
        0x0s
        0x1s
        0x2s
        0x3s
        0x4s
        0x5s
        0x6s
        0x7s
        0x8s
        0x9s
        0x4cs
        0x4ds
        0x4es
        0x4fs
        0x50s
        -0x1s
        0x51s
        0xas
        0xbs
        0xcs
        0xds
        0xes
        0xfs
        0x10s
        0x11s
        0x12s
        0x13s
        0x14s
        0x15s
        0x16s
        0x17s
        0x18s
        0x19s
        0x1as
        0x1bs
        0x1cs
        0x1ds
        0x1es
        0x1fs
        0x20s
        0x21s
        0x22s
        0x23s
        0x52s
        0x53s
        0x54s
        0x55s
        0x56s
        0x57s
        0x24s
        0x25s
        0x26s
        0x27s
        0x28s
        0x29s
        0x2as
        0x2bs
        0x2cs
        0x2ds
        0x2es
        0x2fs
        0x30s
        0x31s
        0x32s
        0x33s
        0x34s
        0x35s
        0x36s
        0x37s
        0x38s
        0x39s
        0x3as
        0x3bs
        0x3cs
        0x3ds
        0x58s
        0x59s
        0x5as
        0x5bs
    .end array-data
.end method

.method public constructor <init>()V
    .locals 2

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, 0x0

    .line 179
    iput-wide v0, p0, Lcom/metamoji/un/draw2/library/utility/id/DrUtIdGenerator;->m_count:J

    .line 180
    iput-wide v0, p0, Lcom/metamoji/un/draw2/library/utility/id/DrUtIdGenerator;->m_prefix:J

    return-void
.end method

.method static checkStringInput(Ljava/lang/String;Lcom/metamoji/un/draw2/library/utility/id/DrUtIdGenerator$Reference;)Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/metamoji/un/draw2/library/utility/id/DrUtIdGenerator$Reference<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return-object v0

    .line 142
    :cond_0
    sget-object v1, Lcom/metamoji/un/draw2/library/utility/id/DrUtIdGenerator;->ID_PATTERN:Ljava/util/regex/Pattern;

    invoke-virtual {v1, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object p0

    .line 143
    invoke-virtual {p0}, Ljava/util/regex/Matcher;->matches()Z

    move-result v1

    if-eqz v1, :cond_3

    const/4 v0, 0x2

    .line 144
    invoke-virtual {p0, v0}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    if-eqz v0, :cond_2

    if-eqz p1, :cond_1

    .line 147
    invoke-virtual {p0, v1}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object p0

    iput-object p0, p1, Lcom/metamoji/un/draw2/library/utility/id/DrUtIdGenerator$Reference;->value:Ljava/lang/Object;

    :cond_1
    return-object v0

    .line 151
    :cond_2
    invoke-virtual {p0, v1}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_3
    return-object v0
.end method

.method static decode64bitFromString(Ljava/lang/String;)J
    .locals 7

    .line 126
    invoke-virtual {p0}, Ljava/lang/String;->toCharArray()[C

    move-result-object p0

    array-length v0, p0

    const-wide/16 v1, 0x0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v0, :cond_0

    aget-char v4, p0, v3

    const-wide/16 v5, 0x5c

    mul-long/2addr v1, v5

    .line 127
    invoke-static {v4}, Lcom/metamoji/un/draw2/library/utility/id/DrUtIdGenerator;->decodeFromChar(C)C

    move-result v4

    int-to-long v4, v4

    add-long/2addr v1, v4

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    return-wide v1
.end method

.method static decodeFromChar(C)C
    .locals 1

    .line 103
    sget-object v0, Lcom/metamoji/un/draw2/library/utility/id/DrUtIdGenerator;->INVERSE_TABLE:[C

    add-int/lit8 p0, p0, -0x21

    aget-char p0, v0, p0

    return p0
.end method

.method static decodeFromString(Ljava/lang/String;Lcom/metamoji/un/draw2/library/utility/id/DrUtIdGenerator$Reference;)J
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/metamoji/un/draw2/library/utility/id/DrUtIdGenerator$Reference<",
            "Ljava/lang/String;",
            ">;)J"
        }
    .end annotation

    .line 168
    invoke-static {p0, p1}, Lcom/metamoji/un/draw2/library/utility/id/DrUtIdGenerator;->checkStringInput(Ljava/lang/String;Lcom/metamoji/un/draw2/library/utility/id/DrUtIdGenerator$Reference;)Ljava/lang/String;

    move-result-object p0

    if-nez p0, :cond_0

    const-wide/16 p0, 0x0

    return-wide p0

    .line 169
    :cond_0
    invoke-static {p0}, Lcom/metamoji/un/draw2/library/utility/id/DrUtIdGenerator;->decode64bitFromString(Ljava/lang/String;)J

    move-result-wide p0

    return-wide p0
.end method

.method static encode64bitToString(J)Ljava/lang/String;
    .locals 7

    const/16 v0, 0xa

    .line 111
    new-array v0, v0, [C

    const/16 v1, 0x9

    :goto_0
    const-wide/16 v2, 0x5c

    cmp-long v4, p0, v2

    if-ltz v4, :cond_0

    .line 114
    div-long v4, p0, v2

    add-int/lit8 v6, v1, -0x1

    mul-long/2addr v2, v4

    sub-long/2addr p0, v2

    long-to-int p0, p0

    int-to-char p0, p0

    .line 115
    invoke-static {p0}, Lcom/metamoji/un/draw2/library/utility/id/DrUtIdGenerator;->encodeToChar(C)C

    move-result p0

    aput-char p0, v0, v1

    move-wide p0, v4

    move v1, v6

    goto :goto_0

    :cond_0
    long-to-int p0, p0

    int-to-char p0, p0

    .line 118
    invoke-static {p0}, Lcom/metamoji/un/draw2/library/utility/id/DrUtIdGenerator;->encodeToChar(C)C

    move-result p0

    aput-char p0, v0, v1

    .line 119
    new-instance p0, Ljava/lang/String;

    rsub-int/lit8 p1, v1, 0xa

    invoke-direct {p0, v0, v1, p1}, Ljava/lang/String;-><init>([CII)V

    return-object p0
.end method

.method static encodeToChar(C)C
    .locals 1

    .line 96
    sget-object v0, Lcom/metamoji/un/draw2/library/utility/id/DrUtIdGenerator;->CHARSET_TABLE:[C

    aget-char p0, v0, p0

    return p0
.end method

.method static encodeToString(JLjava/lang/String;)Ljava/lang/String;
    .locals 2

    const-wide/16 v0, 0x0

    cmp-long v0, p0, v0

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 163
    :cond_0
    invoke-static {p0, p1}, Lcom/metamoji/un/draw2/library/utility/id/DrUtIdGenerator;->encode64bitToString(J)Ljava/lang/String;

    move-result-object p0

    if-nez p2, :cond_1

    return-object p0

    .line 164
    :cond_1
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const/16 p2, 0x20

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static idFromString(Ljava/lang/String;)Lcom/metamoji/un/draw2/library/utility/id/DrUtId;
    .locals 4

    .line 261
    sget-object v0, Lcom/metamoji/un/draw2/library/utility/id/DrUtIdGenerator;->TLSStringRef:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/metamoji/un/draw2/library/utility/id/DrUtIdGenerator$Reference;

    const/4 v1, 0x0

    .line 262
    iput-object v1, v0, Lcom/metamoji/un/draw2/library/utility/id/DrUtIdGenerator$Reference;->value:Ljava/lang/Object;

    .line 263
    invoke-static {p0, v0}, Lcom/metamoji/un/draw2/library/utility/id/DrUtIdGenerator;->decodeFromString(Ljava/lang/String;Lcom/metamoji/un/draw2/library/utility/id/DrUtIdGenerator$Reference;)J

    move-result-wide v2

    .line 264
    iget-object p0, v0, Lcom/metamoji/un/draw2/library/utility/id/DrUtIdGenerator$Reference;->value:Ljava/lang/Object;

    if-eqz p0, :cond_0

    iget-object p0, v0, Lcom/metamoji/un/draw2/library/utility/id/DrUtIdGenerator$Reference;->value:Ljava/lang/Object;

    check-cast p0, Ljava/lang/String;

    invoke-static {p0, v1}, Lcom/metamoji/un/draw2/library/utility/id/DrUtIdGenerator;->decodeFromString(Ljava/lang/String;Lcom/metamoji/un/draw2/library/utility/id/DrUtIdGenerator$Reference;)J

    move-result-wide v0

    goto :goto_0

    :cond_0
    const-wide/16 v0, 0x0

    .line 265
    :goto_0
    invoke-static {v2, v3, v0, v1}, Lcom/metamoji/un/draw2/library/utility/id/DrUtId;->idWithCount(JJ)Lcom/metamoji/un/draw2/library/utility/id/DrUtId;

    move-result-object p0

    return-object p0
.end method

.method public static idStringsFromIds(Ljava/util/List;)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/metamoji/un/draw2/library/utility/id/DrUtId;",
            ">;)",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 306
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 307
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_1
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/metamoji/un/draw2/library/utility/id/DrUtId;

    .line 308
    invoke-static {v1}, Lcom/metamoji/un/draw2/library/utility/id/DrUtIdGenerator;->stringFromId(Lcom/metamoji/un/draw2/library/utility/id/DrUtId;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 310
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    return-object v0
.end method

.method public static idsFromIdStrings(Ljava/util/List;)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/List<",
            "Lcom/metamoji/un/draw2/library/utility/id/DrUtId;",
            ">;"
        }
    .end annotation

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 323
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 324
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_1
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 325
    invoke-static {v1}, Lcom/metamoji/un/draw2/library/utility/id/DrUtIdGenerator;->idFromString(Ljava/lang/String;)Lcom/metamoji/un/draw2/library/utility/id/DrUtId;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 327
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    return-object v0
.end method

.method public static numberFromString(Ljava/lang/String;)J
    .locals 2

    const/4 v0, 0x0

    .line 287
    invoke-static {p0, v0}, Lcom/metamoji/un/draw2/library/utility/id/DrUtIdGenerator;->decodeFromString(Ljava/lang/String;Lcom/metamoji/un/draw2/library/utility/id/DrUtIdGenerator$Reference;)J

    move-result-wide v0

    return-wide v0
.end method

.method public static stringFromId(Lcom/metamoji/un/draw2/library/utility/id/DrUtId;)Ljava/lang/String;
    .locals 7

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return-object v0

    .line 277
    :cond_0
    invoke-virtual {p0}, Lcom/metamoji/un/draw2/library/utility/id/DrUtId;->prefix()J

    move-result-wide v1

    .line 278
    invoke-virtual {p0}, Lcom/metamoji/un/draw2/library/utility/id/DrUtId;->count()J

    move-result-wide v3

    const-wide/16 v5, 0x0

    cmp-long p0, v1, v5

    if-eqz p0, :cond_1

    invoke-static {v1, v2}, Lcom/metamoji/un/draw2/library/utility/id/DrUtIdGenerator;->encode64bitToString(J)Ljava/lang/String;

    move-result-object v0

    :cond_1
    invoke-static {v3, v4, v0}, Lcom/metamoji/un/draw2/library/utility/id/DrUtIdGenerator;->encodeToString(JLjava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static stringFromNumber(J)Ljava/lang/String;
    .locals 2

    const-wide/16 v0, 0x0

    cmp-long v0, p0, v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    .line 296
    :cond_0
    invoke-static {p0, p1, v1}, Lcom/metamoji/un/draw2/library/utility/id/DrUtIdGenerator;->encodeToString(JLjava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public count()J
    .locals 2

    .line 191
    monitor-enter p0

    .line 192
    :try_start_0
    iget-wide v0, p0, Lcom/metamoji/un/draw2/library/utility/id/DrUtIdGenerator;->m_count:J

    monitor-exit p0

    return-wide v0

    :catchall_0
    move-exception v0

    .line 193
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public generateId()Lcom/metamoji/un/draw2/library/utility/id/DrUtId;
    .locals 4

    .line 228
    monitor-enter p0

    .line 229
    :try_start_0
    iget-wide v0, p0, Lcom/metamoji/un/draw2/library/utility/id/DrUtIdGenerator;->m_count:J

    const-wide v2, 0x7fffffffffffffffL

    cmp-long v2, v0, v2

    if-nez v2, :cond_0

    const/4 v0, 0x0

    .line 230
    monitor-exit p0

    return-object v0

    :cond_0
    const-wide/16 v2, 0x1

    add-long/2addr v0, v2

    .line 232
    iput-wide v0, p0, Lcom/metamoji/un/draw2/library/utility/id/DrUtIdGenerator;->m_count:J

    .line 233
    iget-wide v2, p0, Lcom/metamoji/un/draw2/library/utility/id/DrUtIdGenerator;->m_prefix:J

    .line 234
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 235
    invoke-static {v0, v1, v2, v3}, Lcom/metamoji/un/draw2/library/utility/id/DrUtId;->idWithCount(JJ)Lcom/metamoji/un/draw2/library/utility/id/DrUtId;

    move-result-object v0

    return-object v0

    :catchall_0
    move-exception v0

    .line 234
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public prefix()J
    .locals 2

    .line 206
    monitor-enter p0

    .line 207
    :try_start_0
    iget-wide v0, p0, Lcom/metamoji/un/draw2/library/utility/id/DrUtIdGenerator;->m_prefix:J

    monitor-exit p0

    return-wide v0

    :catchall_0
    move-exception v0

    .line 208
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public setCount(J)V
    .locals 0

    .line 196
    monitor-enter p0

    .line 197
    :try_start_0
    iput-wide p1, p0, Lcom/metamoji/un/draw2/library/utility/id/DrUtIdGenerator;->m_count:J

    .line 198
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public setPrefix(J)V
    .locals 0

    .line 211
    monitor-enter p0

    .line 212
    :try_start_0
    iput-wide p1, p0, Lcom/metamoji/un/draw2/library/utility/id/DrUtIdGenerator;->m_prefix:J

    .line 213
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method
