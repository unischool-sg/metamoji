.class public final enum Lcom/metamoji/media/voice/controller/VcRecordingsDef$VcConvOption;
.super Ljava/lang/Enum;
.source "VcRecordingsDef.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/metamoji/media/voice/controller/VcRecordingsDef;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "VcConvOption"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/metamoji/media/voice/controller/VcRecordingsDef$VcConvOption;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/metamoji/media/voice/controller/VcRecordingsDef$VcConvOption;

.field public static final enum INCLUDED:Lcom/metamoji/media/voice/controller/VcRecordingsDef$VcConvOption;

.field public static final enum REMOVED:Lcom/metamoji/media/voice/controller/VcRecordingsDef$VcConvOption;

.field public static final enum SHARED:Lcom/metamoji/media/voice/controller/VcRecordingsDef$VcConvOption;


# instance fields
.field private _intValue:I


# direct methods
.method private static synthetic $values()[Lcom/metamoji/media/voice/controller/VcRecordingsDef$VcConvOption;
    .locals 3

    .line 80
    sget-object v0, Lcom/metamoji/media/voice/controller/VcRecordingsDef$VcConvOption;->REMOVED:Lcom/metamoji/media/voice/controller/VcRecordingsDef$VcConvOption;

    sget-object v1, Lcom/metamoji/media/voice/controller/VcRecordingsDef$VcConvOption;->SHARED:Lcom/metamoji/media/voice/controller/VcRecordingsDef$VcConvOption;

    sget-object v2, Lcom/metamoji/media/voice/controller/VcRecordingsDef$VcConvOption;->INCLUDED:Lcom/metamoji/media/voice/controller/VcRecordingsDef$VcConvOption;

    filled-new-array {v0, v1, v2}, [Lcom/metamoji/media/voice/controller/VcRecordingsDef$VcConvOption;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 4

    .line 81
    new-instance v0, Lcom/metamoji/media/voice/controller/VcRecordingsDef$VcConvOption;

    const/4 v1, -0x1

    const-string v2, "REMOVED"

    const/4 v3, 0x0

    invoke-direct {v0, v2, v3, v1}, Lcom/metamoji/media/voice/controller/VcRecordingsDef$VcConvOption;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/metamoji/media/voice/controller/VcRecordingsDef$VcConvOption;->REMOVED:Lcom/metamoji/media/voice/controller/VcRecordingsDef$VcConvOption;

    .line 82
    new-instance v0, Lcom/metamoji/media/voice/controller/VcRecordingsDef$VcConvOption;

    const-string v1, "SHARED"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2, v3}, Lcom/metamoji/media/voice/controller/VcRecordingsDef$VcConvOption;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/metamoji/media/voice/controller/VcRecordingsDef$VcConvOption;->SHARED:Lcom/metamoji/media/voice/controller/VcRecordingsDef$VcConvOption;

    .line 83
    new-instance v0, Lcom/metamoji/media/voice/controller/VcRecordingsDef$VcConvOption;

    const-string v1, "INCLUDED"

    const/4 v3, 0x2

    invoke-direct {v0, v1, v3, v2}, Lcom/metamoji/media/voice/controller/VcRecordingsDef$VcConvOption;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/metamoji/media/voice/controller/VcRecordingsDef$VcConvOption;->INCLUDED:Lcom/metamoji/media/voice/controller/VcRecordingsDef$VcConvOption;

    .line 80
    invoke-static {}, Lcom/metamoji/media/voice/controller/VcRecordingsDef$VcConvOption;->$values()[Lcom/metamoji/media/voice/controller/VcRecordingsDef$VcConvOption;

    move-result-object v0

    sput-object v0, Lcom/metamoji/media/voice/controller/VcRecordingsDef$VcConvOption;->$VALUES:[Lcom/metamoji/media/voice/controller/VcRecordingsDef$VcConvOption;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000,
            0x1000,
            0x0
        }
        names = {
            null,
            null,
            null
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 87
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 88
    iput p3, p0, Lcom/metamoji/media/voice/controller/VcRecordingsDef$VcConvOption;->_intValue:I

    return-void
.end method

.method public static valueOf(I)Lcom/metamoji/media/voice/controller/VcRecordingsDef$VcConvOption;
    .locals 5

    .line 94
    invoke-static {}, Lcom/metamoji/media/voice/controller/VcRecordingsDef$VcConvOption;->values()[Lcom/metamoji/media/voice/controller/VcRecordingsDef$VcConvOption;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    .line 95
    invoke-virtual {v3}, Lcom/metamoji/media/voice/controller/VcRecordingsDef$VcConvOption;->intValue()I

    move-result v4

    if-ne v4, p0, :cond_0

    return-object v3

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 99
    :cond_1
    new-instance p0, Ljava/lang/IncompatibleClassChangeError;

    const-string v0, "cannot cast int to VcConvOption"

    invoke-direct {p0, v0}, Ljava/lang/IncompatibleClassChangeError;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/metamoji/media/voice/controller/VcRecordingsDef$VcConvOption;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8000
        }
        names = {
            null
        }
    .end annotation

    .line 80
    const-class v0, Lcom/metamoji/media/voice/controller/VcRecordingsDef$VcConvOption;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/metamoji/media/voice/controller/VcRecordingsDef$VcConvOption;

    return-object p0
.end method

.method public static values()[Lcom/metamoji/media/voice/controller/VcRecordingsDef$VcConvOption;
    .locals 1

    .line 80
    sget-object v0, Lcom/metamoji/media/voice/controller/VcRecordingsDef$VcConvOption;->$VALUES:[Lcom/metamoji/media/voice/controller/VcRecordingsDef$VcConvOption;

    invoke-virtual {v0}, [Lcom/metamoji/media/voice/controller/VcRecordingsDef$VcConvOption;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/metamoji/media/voice/controller/VcRecordingsDef$VcConvOption;

    return-object v0
.end method


# virtual methods
.method public intValue()I
    .locals 1

    .line 91
    iget v0, p0, Lcom/metamoji/media/voice/controller/VcRecordingsDef$VcConvOption;->_intValue:I

    return v0
.end method
