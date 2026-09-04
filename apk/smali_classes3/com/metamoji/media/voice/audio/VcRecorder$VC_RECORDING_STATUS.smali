.class public final enum Lcom/metamoji/media/voice/audio/VcRecorder$VC_RECORDING_STATUS;
.super Ljava/lang/Enum;
.source "VcRecorder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/metamoji/media/voice/audio/VcRecorder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "VC_RECORDING_STATUS"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/metamoji/media/voice/audio/VcRecorder$VC_RECORDING_STATUS;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/metamoji/media/voice/audio/VcRecorder$VC_RECORDING_STATUS;

.field public static final enum RECORDING:Lcom/metamoji/media/voice/audio/VcRecorder$VC_RECORDING_STATUS;

.field public static final enum STOPPED:Lcom/metamoji/media/voice/audio/VcRecorder$VC_RECORDING_STATUS;


# direct methods
.method private static synthetic $values()[Lcom/metamoji/media/voice/audio/VcRecorder$VC_RECORDING_STATUS;
    .locals 2

    .line 27
    sget-object v0, Lcom/metamoji/media/voice/audio/VcRecorder$VC_RECORDING_STATUS;->RECORDING:Lcom/metamoji/media/voice/audio/VcRecorder$VC_RECORDING_STATUS;

    sget-object v1, Lcom/metamoji/media/voice/audio/VcRecorder$VC_RECORDING_STATUS;->STOPPED:Lcom/metamoji/media/voice/audio/VcRecorder$VC_RECORDING_STATUS;

    filled-new-array {v0, v1}, [Lcom/metamoji/media/voice/audio/VcRecorder$VC_RECORDING_STATUS;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 3

    .line 28
    new-instance v0, Lcom/metamoji/media/voice/audio/VcRecorder$VC_RECORDING_STATUS;

    const-string v1, "RECORDING"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/metamoji/media/voice/audio/VcRecorder$VC_RECORDING_STATUS;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/metamoji/media/voice/audio/VcRecorder$VC_RECORDING_STATUS;->RECORDING:Lcom/metamoji/media/voice/audio/VcRecorder$VC_RECORDING_STATUS;

    .line 29
    new-instance v0, Lcom/metamoji/media/voice/audio/VcRecorder$VC_RECORDING_STATUS;

    const-string v1, "STOPPED"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/metamoji/media/voice/audio/VcRecorder$VC_RECORDING_STATUS;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/metamoji/media/voice/audio/VcRecorder$VC_RECORDING_STATUS;->STOPPED:Lcom/metamoji/media/voice/audio/VcRecorder$VC_RECORDING_STATUS;

    .line 27
    invoke-static {}, Lcom/metamoji/media/voice/audio/VcRecorder$VC_RECORDING_STATUS;->$values()[Lcom/metamoji/media/voice/audio/VcRecorder$VC_RECORDING_STATUS;

    move-result-object v0

    sput-object v0, Lcom/metamoji/media/voice/audio/VcRecorder$VC_RECORDING_STATUS;->$VALUES:[Lcom/metamoji/media/voice/audio/VcRecorder$VC_RECORDING_STATUS;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000,
            0x1000
        }
        names = {
            null,
            null
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 27
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/metamoji/media/voice/audio/VcRecorder$VC_RECORDING_STATUS;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8000
        }
        names = {
            null
        }
    .end annotation

    .line 27
    const-class v0, Lcom/metamoji/media/voice/audio/VcRecorder$VC_RECORDING_STATUS;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/metamoji/media/voice/audio/VcRecorder$VC_RECORDING_STATUS;

    return-object p0
.end method

.method public static values()[Lcom/metamoji/media/voice/audio/VcRecorder$VC_RECORDING_STATUS;
    .locals 1

    .line 27
    sget-object v0, Lcom/metamoji/media/voice/audio/VcRecorder$VC_RECORDING_STATUS;->$VALUES:[Lcom/metamoji/media/voice/audio/VcRecorder$VC_RECORDING_STATUS;

    invoke-virtual {v0}, [Lcom/metamoji/media/voice/audio/VcRecorder$VC_RECORDING_STATUS;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/metamoji/media/voice/audio/VcRecorder$VC_RECORDING_STATUS;

    return-object v0
.end method
