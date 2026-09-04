.class public final Lcom/metamoji/nt/dl/NtDLEnv;
.super Ljava/lang/Object;
.source "NtDLEnv.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/metamoji/nt/dl/NtDLEnv$CustomEnv;,
        Lcom/metamoji/nt/dl/NtDLEnv$DBG;,
        Lcom/metamoji/nt/dl/NtDLEnv$REL;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000(\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u0007\n\u0002\u0010\u000e\n\u0002\u0008\u000b\u0008\u00c6\u0002\u0018\u00002\u00020\u0001:\u0003\u0019\u001a\u001bB\t\u0008\u0002\u00a2\u0006\u0004\u0008\u0002\u0010\u0003J\u0008\u0010\u0006\u001a\u00020\u0007H\u0007J\u0008\u0010\u0015\u001a\u00020\u0007H\u0007R\u0010\u0010\u0004\u001a\u0004\u0018\u00010\u0005X\u0082\u000e\u00a2\u0006\u0002\n\u0000R*\u0010\n\u001a\u00020\t2\u0006\u0010\u0008\u001a\u00020\t8F@FX\u0087\u000e\u00a2\u0006\u0012\u0012\u0004\u0008\u000b\u0010\u0003\u001a\u0004\u0008\u000c\u0010\r\"\u0004\u0008\u000e\u0010\u000fR\u001a\u0010\u0010\u001a\u00020\u00118FX\u0087\u0004\u00a2\u0006\u000c\u0012\u0004\u0008\u0012\u0010\u0003\u001a\u0004\u0008\u0013\u0010\u0014R\u0011\u0010\u0016\u001a\u00020\u00058F\u00a2\u0006\u0006\u001a\u0004\u0008\u0017\u0010\u0018\u00a8\u0006\u001c"
    }
    d2 = {
        "Lcom/metamoji/nt/dl/NtDLEnv;",
        "",
        "<init>",
        "()V",
        "customEnv",
        "Lcom/metamoji/nt/dl/INtDLEnv;",
        "prepare",
        "",
        "v",
        "",
        "specialDebugMode",
        "getSpecialDebugMode$annotations",
        "getSpecialDebugMode",
        "()Z",
        "setSpecialDebugMode",
        "(Z)V",
        "specialDebugModeMenuText",
        "",
        "getSpecialDebugModeMenuText$annotations",
        "getSpecialDebugModeMenuText",
        "()Ljava/lang/String;",
        "toggleSpecialDebugMode",
        "e",
        "getE",
        "()Lcom/metamoji/nt/dl/INtDLEnv;",
        "DBG",
        "REL",
        "CustomEnv",
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
.field public static final INSTANCE:Lcom/metamoji/nt/dl/NtDLEnv;

.field private static customEnv:Lcom/metamoji/nt/dl/INtDLEnv;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/metamoji/nt/dl/NtDLEnv;

    invoke-direct {v0}, Lcom/metamoji/nt/dl/NtDLEnv;-><init>()V

    sput-object v0, Lcom/metamoji/nt/dl/NtDLEnv;->INSTANCE:Lcom/metamoji/nt/dl/NtDLEnv;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final getSpecialDebugMode()Z
    .locals 3

    .line 135
    invoke-static {}, Lcom/metamoji/nt/NtUserDefaults;->getInstance()Lcom/metamoji/nt/NtUserDefaults;

    move-result-object v0

    const-string v1, "MMJNtDLEnvSpDebugMode"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/metamoji/nt/NtUserDefaults;->getBoolValue(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public static synthetic getSpecialDebugMode$annotations()V
    .locals 0
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    return-void
.end method

.method public static final getSpecialDebugModeMenuText()Ljava/lang/String;
    .locals 1

    .line 140
    invoke-static {}, Lcom/metamoji/nt/dl/NtDLEnv;->getSpecialDebugMode()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "* DL\u8d85\u7d76\u30c7\u30d0\u30c3\u30b0\u30e2\u30fc\u30c9\u3092\u3084\u3081\u308b"

    return-object v0

    :cond_0
    const-string v0, "* DL\u8d85\u7d76\u30c7\u30d0\u30c3\u30b0\u30e2\u30fc\u30c9\u306b\u3059\u308b"

    return-object v0
.end method

.method public static synthetic getSpecialDebugModeMenuText$annotations()V
    .locals 0
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    return-void
.end method

.method public static final prepare()V
    .locals 3
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    .line 129
    sget-object v0, Lcom/metamoji/nt/dl/NtDLEnv;->INSTANCE:Lcom/metamoji/nt/dl/NtDLEnv;

    invoke-static {}, Lcom/metamoji/nt/dl/NtDLEnv;->getSpecialDebugMode()Z

    move-result v1

    if-eqz v1, :cond_0

    sget-object v1, Lcom/metamoji/nt/dl/NtDLEnv$CustomEnv;->Companion:Lcom/metamoji/nt/dl/NtDLEnv$CustomEnv$Companion;

    new-instance v2, Lcom/metamoji/cm/DebugControl;

    invoke-direct {v2}, Lcom/metamoji/cm/DebugControl;-><init>()V

    invoke-virtual {v1, v2}, Lcom/metamoji/nt/dl/NtDLEnv$CustomEnv$Companion;->fromDebugCtrl(Lcom/metamoji/cm/DebugControl;)Lcom/metamoji/nt/dl/INtDLEnv;

    move-result-object v1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    sput-object v1, Lcom/metamoji/nt/dl/NtDLEnv;->customEnv:Lcom/metamoji/nt/dl/INtDLEnv;

    .line 130
    invoke-virtual {v0}, Lcom/metamoji/nt/dl/NtDLEnv;->getE()Lcom/metamoji/nt/dl/INtDLEnv;

    move-result-object v0

    invoke-interface {v0}, Lcom/metamoji/nt/dl/INtDLEnv;->getNAME()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "NtDLEnv: use "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/metamoji/cm/CmLog;->info(Ljava/lang/String;)V

    return-void
.end method

.method public static final setSpecialDebugMode(Z)V
    .locals 2

    .line 136
    invoke-static {}, Lcom/metamoji/nt/NtUserDefaults;->getInstance()Lcom/metamoji/nt/NtUserDefaults;

    move-result-object v0

    const-string v1, "MMJNtDLEnvSpDebugMode"

    invoke-virtual {v0, v1, p0}, Lcom/metamoji/nt/NtUserDefaults;->setValue(Ljava/lang/String;Z)V

    return-void
.end method

.method public static final toggleSpecialDebugMode()V
    .locals 1
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    .line 144
    invoke-static {}, Lcom/metamoji/nt/dl/NtDLEnv;->getSpecialDebugMode()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    invoke-static {v0}, Lcom/metamoji/nt/dl/NtDLEnv;->setSpecialDebugMode(Z)V

    .line 145
    invoke-static {}, Lcom/metamoji/nt/dl/NtDLEnv;->prepare()V

    return-void
.end method


# virtual methods
.method public final getE()Lcom/metamoji/nt/dl/INtDLEnv;
    .locals 1

    .line 149
    sget-boolean v0, Lcom/metamoji/noteanytime/ModelInfo;->isEvalEdition:Z

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/metamoji/nt/dl/NtDLEnv;->getSpecialDebugMode()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 150
    sget-object v0, Lcom/metamoji/nt/dl/NtDLEnv;->customEnv:Lcom/metamoji/nt/dl/INtDLEnv;

    if-nez v0, :cond_0

    sget-object v0, Lcom/metamoji/nt/dl/NtDLEnv$DBG;->INSTANCE:Lcom/metamoji/nt/dl/NtDLEnv$DBG;

    check-cast v0, Lcom/metamoji/nt/dl/INtDLEnv;

    :cond_0
    return-object v0

    .line 152
    :cond_1
    sget-object v0, Lcom/metamoji/nt/dl/NtDLEnv$REL;->INSTANCE:Lcom/metamoji/nt/dl/NtDLEnv$REL;

    check-cast v0, Lcom/metamoji/nt/dl/INtDLEnv;

    return-object v0
.end method
