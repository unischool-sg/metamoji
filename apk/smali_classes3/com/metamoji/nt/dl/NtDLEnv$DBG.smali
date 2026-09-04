.class final Lcom/metamoji/nt/dl/NtDLEnv$DBG;
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
    name = "DBG"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000,\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u000e\n\u0002\u0008\u0003\n\u0002\u0010\u000b\n\u0002\u0008\u0006\n\u0002\u0010\t\n\u0002\u0008\u0003\n\u0002\u0010\u0006\n\u0002\u0008\r\u0008\u00c2\u0002\u0018\u00002\u00020\u0001B\t\u0008\u0002\u00a2\u0006\u0004\u0008\u0002\u0010\u0003R\u0014\u0010\u0004\u001a\u00020\u0005X\u0096D\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0006\u0010\u0007R\u000e\u0010\u0008\u001a\u00020\tX\u0082T\u00a2\u0006\u0002\n\u0000R\u0014\u0010\n\u001a\u00020\tX\u0096D\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000b\u0010\u000cR\u0014\u0010\r\u001a\u00020\tX\u0096D\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000e\u0010\u000cR\u0014\u0010\u000f\u001a\u00020\u0010X\u0096\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0011\u0010\u0012R\u0014\u0010\u0013\u001a\u00020\u0014X\u0096\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0015\u0010\u0016R\u0014\u0010\u0017\u001a\u00020\u0010X\u0096D\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0018\u0010\u0012R\u0014\u0010\u0019\u001a\u00020\u0010X\u0096\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u001a\u0010\u0012R\u0014\u0010\u001b\u001a\u00020\u0010X\u0096\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u001c\u0010\u0012R\u0014\u0010\u001d\u001a\u00020\u0010X\u0096\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u001e\u0010\u0012R\u0014\u0010\u001f\u001a\u00020\u0010X\u0096\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008 \u0010\u0012\u00a8\u0006!"
    }
    d2 = {
        "Lcom/metamoji/nt/dl/NtDLEnv$DBG;",
        "Lcom/metamoji/nt/dl/INtDLEnv;",
        "<init>",
        "()V",
        "NAME",
        "",
        "getNAME",
        "()Ljava/lang/String;",
        "RAW_SKIP_SAVE",
        "",
        "SKIP_SAVE_MAZEC",
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
.field public static final INSTANCE:Lcom/metamoji/nt/dl/NtDLEnv$DBG;

.field private static final LONGEST_DURATION:J

.field private static final MAX_SYSINFO_WAIT:J

.field private static final MIN_AVE_DURATION:J

.field private static final NAME:Ljava/lang/String;

.field private static final NO_RESPONSE_LIMIT:J

.field private static final RAW_SKIP_SAVE:Z = true

.field private static final REMAINING_THRESHOLD:D

.field private static final SKIP_SAVE_FONT:Z

.field private static final SKIP_SAVE_MAZEC:Z

.field private static final SLOWEST_AVE_BIT_RATE:J

.field private static final SLOW_BIT_RATE:J


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/metamoji/nt/dl/NtDLEnv$DBG;

    invoke-direct {v0}, Lcom/metamoji/nt/dl/NtDLEnv$DBG;-><init>()V

    sput-object v0, Lcom/metamoji/nt/dl/NtDLEnv$DBG;->INSTANCE:Lcom/metamoji/nt/dl/NtDLEnv$DBG;

    .line 51
    const-string v0, "DBG"

    sput-object v0, Lcom/metamoji/nt/dl/NtDLEnv$DBG;->NAME:Ljava/lang/String;

    const/4 v0, 0x1

    .line 55
    sput-boolean v0, Lcom/metamoji/nt/dl/NtDLEnv$DBG;->SKIP_SAVE_MAZEC:Z

    .line 56
    sput-boolean v0, Lcom/metamoji/nt/dl/NtDLEnv$DBG;->SKIP_SAVE_FONT:Z

    const-wide/32 v0, 0x2faf080

    .line 59
    sput-wide v0, Lcom/metamoji/nt/dl/NtDLEnv$DBG;->SLOW_BIT_RATE:J

    const-wide v0, 0x3fd5555555555555L    # 0.3333333333333333

    .line 60
    sput-wide v0, Lcom/metamoji/nt/dl/NtDLEnv$DBG;->REMAINING_THRESHOLD:D

    const-wide/16 v0, 0x64

    .line 63
    sput-wide v0, Lcom/metamoji/nt/dl/NtDLEnv$DBG;->NO_RESPONSE_LIMIT:J

    const-wide/32 v0, 0x2625a00

    .line 66
    sput-wide v0, Lcom/metamoji/nt/dl/NtDLEnv$DBG;->SLOWEST_AVE_BIT_RATE:J

    const-wide/16 v0, 0x1388

    .line 67
    sput-wide v0, Lcom/metamoji/nt/dl/NtDLEnv$DBG;->MIN_AVE_DURATION:J

    const-wide/16 v0, 0x2710

    .line 71
    sput-wide v0, Lcom/metamoji/nt/dl/NtDLEnv$DBG;->LONGEST_DURATION:J

    const-wide/16 v0, 0x3e8

    .line 74
    sput-wide v0, Lcom/metamoji/nt/dl/NtDLEnv$DBG;->MAX_SYSINFO_WAIT:J

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getLONGEST_DURATION()J
    .locals 2

    .line 71
    sget-wide v0, Lcom/metamoji/nt/dl/NtDLEnv$DBG;->LONGEST_DURATION:J

    return-wide v0
.end method

.method public getMAX_SYSINFO_WAIT()J
    .locals 2

    .line 74
    sget-wide v0, Lcom/metamoji/nt/dl/NtDLEnv$DBG;->MAX_SYSINFO_WAIT:J

    return-wide v0
.end method

.method public getMIN_AVE_DURATION()J
    .locals 2

    .line 67
    sget-wide v0, Lcom/metamoji/nt/dl/NtDLEnv$DBG;->MIN_AVE_DURATION:J

    return-wide v0
.end method

.method public getNAME()Ljava/lang/String;
    .locals 1

    .line 51
    sget-object v0, Lcom/metamoji/nt/dl/NtDLEnv$DBG;->NAME:Ljava/lang/String;

    return-object v0
.end method

.method public getNO_RESPONSE_LIMIT()J
    .locals 2

    .line 63
    sget-wide v0, Lcom/metamoji/nt/dl/NtDLEnv$DBG;->NO_RESPONSE_LIMIT:J

    return-wide v0
.end method

.method public getREMAINING_THRESHOLD()D
    .locals 2

    .line 60
    sget-wide v0, Lcom/metamoji/nt/dl/NtDLEnv$DBG;->REMAINING_THRESHOLD:D

    return-wide v0
.end method

.method public getSKIP_SAVE_FONT()Z
    .locals 1

    .line 56
    sget-boolean v0, Lcom/metamoji/nt/dl/NtDLEnv$DBG;->SKIP_SAVE_FONT:Z

    return v0
.end method

.method public getSKIP_SAVE_MAZEC()Z
    .locals 1

    .line 55
    sget-boolean v0, Lcom/metamoji/nt/dl/NtDLEnv$DBG;->SKIP_SAVE_MAZEC:Z

    return v0
.end method

.method public getSLOWEST_AVE_BIT_RATE()J
    .locals 2

    .line 66
    sget-wide v0, Lcom/metamoji/nt/dl/NtDLEnv$DBG;->SLOWEST_AVE_BIT_RATE:J

    return-wide v0
.end method

.method public getSLOW_BIT_RATE()J
    .locals 2

    .line 59
    sget-wide v0, Lcom/metamoji/nt/dl/NtDLEnv$DBG;->SLOW_BIT_RATE:J

    return-wide v0
.end method
