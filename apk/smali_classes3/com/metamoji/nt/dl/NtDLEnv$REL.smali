.class final Lcom/metamoji/nt/dl/NtDLEnv$REL;
.super Ljava/lang/Object;
.source "NtDLEnv.kt"

# interfaces
.implements Lcom/metamoji/nt/dl/INtDLEnv;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/metamoji/nt/dl/NtDLEnv;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "REL"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000,\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u000e\n\u0002\u0008\u0003\n\u0002\u0010\u000b\n\u0002\u0008\u0005\n\u0002\u0010\t\n\u0002\u0008\u0003\n\u0002\u0010\u0006\n\u0002\u0008\r\u0008\u00c2\u0002\u0018\u00002\u00020\u0001B\t\u0008\u0002\u00a2\u0006\u0004\u0008\u0002\u0010\u0003R\u0014\u0010\u0004\u001a\u00020\u0005X\u0096D\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0006\u0010\u0007R\u0014\u0010\u0008\u001a\u00020\tX\u0096D\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\n\u0010\u000bR\u0014\u0010\u000c\u001a\u00020\tX\u0096D\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\r\u0010\u000bR\u0014\u0010\u000e\u001a\u00020\u000fX\u0096\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0010\u0010\u0011R\u0014\u0010\u0012\u001a\u00020\u0013X\u0096\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0014\u0010\u0015R\u0014\u0010\u0016\u001a\u00020\u000fX\u0096\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0017\u0010\u0011R\u0014\u0010\u0018\u001a\u00020\u000fX\u0096D\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0019\u0010\u0011R\u0014\u0010\u001a\u001a\u00020\u000fX\u0096\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u001b\u0010\u0011R\u0014\u0010\u001c\u001a\u00020\u000fX\u0096D\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u001d\u0010\u0011R\u0014\u0010\u001e\u001a\u00020\u000fX\u0096\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u001f\u0010\u0011\u00a8\u0006 "
    }
    d2 = {
        "Lcom/metamoji/nt/dl/NtDLEnv$REL;",
        "Lcom/metamoji/nt/dl/INtDLEnv;",
        "<init>",
        "()V",
        "NAME",
        "",
        "getNAME",
        "()Ljava/lang/String;",
        "SKIP_SAVE_MAZEC",
        "",
        "getSKIP_SAVE_MAZEC",
        "()Z",
        "SKIP_SAVE_FONT",
        "getSKIP_SAVE_FONT",
        "SLOW_BIT_RATE",
        "",
        "getSLOW_BIT_RATE",
        "()J",
        "REMAINING_THRESHOLD",
        "",
        "getREMAINING_THRESHOLD",
        "()D",
        "NO_RESPONSE_LIMIT",
        "getNO_RESPONSE_LIMIT",
        "SLOWEST_AVE_BIT_RATE",
        "getSLOWEST_AVE_BIT_RATE",
        "MIN_AVE_DURATION",
        "getMIN_AVE_DURATION",
        "LONGEST_DURATION",
        "getLONGEST_DURATION",
        "MAX_SYSINFO_WAIT",
        "getMAX_SYSINFO_WAIT",
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


# static fields
.field public static final INSTANCE:Lcom/metamoji/nt/dl/NtDLEnv$REL;

.field private static final LONGEST_DURATION:J

.field private static final MAX_SYSINFO_WAIT:J

.field private static final MIN_AVE_DURATION:J

.field private static final NAME:Ljava/lang/String;

.field private static final NO_RESPONSE_LIMIT:J

.field private static final REMAINING_THRESHOLD:D

.field private static final SKIP_SAVE_FONT:Z

.field private static final SKIP_SAVE_MAZEC:Z

.field private static final SLOWEST_AVE_BIT_RATE:J

.field private static final SLOW_BIT_RATE:J


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/metamoji/nt/dl/NtDLEnv$REL;

    invoke-direct {v0}, Lcom/metamoji/nt/dl/NtDLEnv$REL;-><init>()V

    sput-object v0, Lcom/metamoji/nt/dl/NtDLEnv$REL;->INSTANCE:Lcom/metamoji/nt/dl/NtDLEnv$REL;

    .line 79
    const-string v0, "REL"

    sput-object v0, Lcom/metamoji/nt/dl/NtDLEnv$REL;->NAME:Ljava/lang/String;

    const-wide/32 v0, 0xf4240

    .line 85
    sput-wide v0, Lcom/metamoji/nt/dl/NtDLEnv$REL;->SLOW_BIT_RATE:J

    const-wide v0, 0x3fd5555555555555L    # 0.3333333333333333

    .line 86
    sput-wide v0, Lcom/metamoji/nt/dl/NtDLEnv$REL;->REMAINING_THRESHOLD:D

    const-wide/32 v0, 0xea60

    .line 89
    sput-wide v0, Lcom/metamoji/nt/dl/NtDLEnv$REL;->NO_RESPONSE_LIMIT:J

    const-wide/32 v0, 0x1f400

    .line 92
    sput-wide v0, Lcom/metamoji/nt/dl/NtDLEnv$REL;->SLOWEST_AVE_BIT_RATE:J

    const-wide/32 v0, 0x493e0

    .line 93
    sput-wide v0, Lcom/metamoji/nt/dl/NtDLEnv$REL;->MIN_AVE_DURATION:J

    const-wide/32 v0, 0x15f90

    .line 100
    sput-wide v0, Lcom/metamoji/nt/dl/NtDLEnv$REL;->MAX_SYSINFO_WAIT:J

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 78
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getLONGEST_DURATION()J
    .locals 2

    .line 97
    sget-wide v0, Lcom/metamoji/nt/dl/NtDLEnv$REL;->LONGEST_DURATION:J

    return-wide v0
.end method

.method public getMAX_SYSINFO_WAIT()J
    .locals 2

    .line 100
    sget-wide v0, Lcom/metamoji/nt/dl/NtDLEnv$REL;->MAX_SYSINFO_WAIT:J

    return-wide v0
.end method

.method public getMIN_AVE_DURATION()J
    .locals 2

    .line 93
    sget-wide v0, Lcom/metamoji/nt/dl/NtDLEnv$REL;->MIN_AVE_DURATION:J

    return-wide v0
.end method

.method public getNAME()Ljava/lang/String;
    .locals 1

    .line 79
    sget-object v0, Lcom/metamoji/nt/dl/NtDLEnv$REL;->NAME:Ljava/lang/String;

    return-object v0
.end method

.method public getNO_RESPONSE_LIMIT()J
    .locals 2

    .line 89
    sget-wide v0, Lcom/metamoji/nt/dl/NtDLEnv$REL;->NO_RESPONSE_LIMIT:J

    return-wide v0
.end method

.method public getREMAINING_THRESHOLD()D
    .locals 2

    .line 86
    sget-wide v0, Lcom/metamoji/nt/dl/NtDLEnv$REL;->REMAINING_THRESHOLD:D

    return-wide v0
.end method

.method public getSKIP_SAVE_FONT()Z
    .locals 1

    .line 82
    sget-boolean v0, Lcom/metamoji/nt/dl/NtDLEnv$REL;->SKIP_SAVE_FONT:Z

    return v0
.end method

.method public getSKIP_SAVE_MAZEC()Z
    .locals 1

    .line 81
    sget-boolean v0, Lcom/metamoji/nt/dl/NtDLEnv$REL;->SKIP_SAVE_MAZEC:Z

    return v0
.end method

.method public getSLOWEST_AVE_BIT_RATE()J
    .locals 2

    .line 92
    sget-wide v0, Lcom/metamoji/nt/dl/NtDLEnv$REL;->SLOWEST_AVE_BIT_RATE:J

    return-wide v0
.end method

.method public getSLOW_BIT_RATE()J
    .locals 2

    .line 85
    sget-wide v0, Lcom/metamoji/nt/dl/NtDLEnv$REL;->SLOW_BIT_RATE:J

    return-wide v0
.end method
