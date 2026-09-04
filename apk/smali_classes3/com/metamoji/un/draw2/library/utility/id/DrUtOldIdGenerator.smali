.class public Lcom/metamoji/un/draw2/library/utility/id/DrUtOldIdGenerator;
.super Ljava/lang/Object;
.source "DrUtOldIdGenerator.java"


# static fields
.field static final synthetic $assertionsDisabled:Z = false

.field private static final s_basenum:I = 0x3e

.field private static final s_charset:Ljava/lang/String; = "0123456789ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz"

.field private static final s_max_digits:I = 0x6


# instance fields
.field private m_count:I


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 76
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 71
    iput v0, p0, Lcom/metamoji/un/draw2/library/utility/id/DrUtOldIdGenerator;->m_count:I

    return-void
.end method

.method public static Decode(Ljava/lang/String;)I
    .locals 4

    .line 58
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    .line 64
    invoke-virtual {p0}, Ljava/lang/String;->toCharArray()[C

    move-result-object p0

    array-length v0, p0

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v1, v0, :cond_0

    aget-char v3, p0, v1

    mul-int/lit8 v2, v2, 0x3e

    .line 65
    invoke-static {v3}, Lcom/metamoji/un/draw2/library/utility/id/DrUtOldIdGenerator;->decode_char(C)I

    move-result v3

    add-int/2addr v2, v3

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return v2
.end method

.method public static Encode(I)Ljava/lang/String;
    .locals 5

    const/4 v0, 0x6

    .line 40
    new-array v0, v0, [C

    const/4 v1, 0x5

    :goto_0
    const/16 v2, 0x3e

    if-lt p0, v2, :cond_0

    .line 44
    div-int/lit8 v2, p0, 0x3e

    add-int/lit8 v3, v1, -0x1

    mul-int/lit8 v4, v2, 0x3e

    sub-int/2addr p0, v4

    .line 45
    invoke-static {p0}, Lcom/metamoji/un/draw2/library/utility/id/DrUtOldIdGenerator;->encode_char(I)C

    move-result p0

    aput-char p0, v0, v1

    move p0, v2

    move v1, v3

    goto :goto_0

    .line 48
    :cond_0
    invoke-static {p0}, Lcom/metamoji/un/draw2/library/utility/id/DrUtOldIdGenerator;->encode_char(I)C

    move-result p0

    aput-char p0, v0, v1

    .line 49
    new-instance p0, Ljava/lang/String;

    rsub-int/lit8 v2, v1, 0x6

    invoke-direct {p0, v0, v1, v2}, Ljava/lang/String;-><init>([CII)V

    return-object p0
.end method

.method private static decode_char(C)I
    .locals 1

    .line 29
    const-string v0, "0123456789ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz"

    invoke-virtual {v0, p0}, Ljava/lang/String;->indexOf(I)I

    move-result p0

    return p0
.end method

.method private static encode_char(I)C
    .locals 1

    .line 24
    const-string v0, "0123456789ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz"

    invoke-virtual {v0, p0}, Ljava/lang/String;->charAt(I)C

    move-result p0

    return p0
.end method


# virtual methods
.method public count()I
    .locals 1

    .line 83
    iget v0, p0, Lcom/metamoji/un/draw2/library/utility/id/DrUtOldIdGenerator;->m_count:I

    return v0
.end method

.method public generate()Ljava/lang/String;
    .locals 2

    .line 93
    monitor-enter p0

    .line 94
    :try_start_0
    iget v0, p0, Lcom/metamoji/un/draw2/library/utility/id/DrUtOldIdGenerator;->m_count:I

    const v1, 0x7fffffff

    if-ne v0, v1, :cond_0

    const/4 v0, 0x0

    .line 95
    monitor-exit p0

    return-object v0

    :cond_0
    add-int/lit8 v1, v0, 0x1

    .line 97
    iput v1, p0, Lcom/metamoji/un/draw2/library/utility/id/DrUtOldIdGenerator;->m_count:I

    .line 98
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 100
    invoke-static {v0}, Lcom/metamoji/un/draw2/library/utility/id/DrUtOldIdGenerator;->Encode(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :catchall_0
    move-exception v0

    .line 98
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public setCount(I)V
    .locals 0

    .line 84
    iput p1, p0, Lcom/metamoji/un/draw2/library/utility/id/DrUtOldIdGenerator;->m_count:I

    return-void
.end method
