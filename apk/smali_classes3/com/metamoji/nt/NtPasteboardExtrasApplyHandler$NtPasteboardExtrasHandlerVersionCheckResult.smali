.class public final enum Lcom/metamoji/nt/NtPasteboardExtrasApplyHandler$NtPasteboardExtrasHandlerVersionCheckResult;
.super Ljava/lang/Enum;
.source "NtPasteboardExtrasApplyHandler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/metamoji/nt/NtPasteboardExtrasApplyHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "NtPasteboardExtrasHandlerVersionCheckResult"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/metamoji/nt/NtPasteboardExtrasApplyHandler$NtPasteboardExtrasHandlerVersionCheckResult;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/metamoji/nt/NtPasteboardExtrasApplyHandler$NtPasteboardExtrasHandlerVersionCheckResult;

.field public static final enum CANNOT_PASTE:Lcom/metamoji/nt/NtPasteboardExtrasApplyHandler$NtPasteboardExtrasHandlerVersionCheckResult;

.field public static final enum CAN_IGNORE:Lcom/metamoji/nt/NtPasteboardExtrasApplyHandler$NtPasteboardExtrasHandlerVersionCheckResult;

.field public static final enum CAN_PASTE:Lcom/metamoji/nt/NtPasteboardExtrasApplyHandler$NtPasteboardExtrasHandlerVersionCheckResult;


# direct methods
.method private static synthetic $values()[Lcom/metamoji/nt/NtPasteboardExtrasApplyHandler$NtPasteboardExtrasHandlerVersionCheckResult;
    .locals 3

    .line 16
    sget-object v0, Lcom/metamoji/nt/NtPasteboardExtrasApplyHandler$NtPasteboardExtrasHandlerVersionCheckResult;->CAN_IGNORE:Lcom/metamoji/nt/NtPasteboardExtrasApplyHandler$NtPasteboardExtrasHandlerVersionCheckResult;

    sget-object v1, Lcom/metamoji/nt/NtPasteboardExtrasApplyHandler$NtPasteboardExtrasHandlerVersionCheckResult;->CAN_PASTE:Lcom/metamoji/nt/NtPasteboardExtrasApplyHandler$NtPasteboardExtrasHandlerVersionCheckResult;

    sget-object v2, Lcom/metamoji/nt/NtPasteboardExtrasApplyHandler$NtPasteboardExtrasHandlerVersionCheckResult;->CANNOT_PASTE:Lcom/metamoji/nt/NtPasteboardExtrasApplyHandler$NtPasteboardExtrasHandlerVersionCheckResult;

    filled-new-array {v0, v1, v2}, [Lcom/metamoji/nt/NtPasteboardExtrasApplyHandler$NtPasteboardExtrasHandlerVersionCheckResult;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 3

    .line 17
    new-instance v0, Lcom/metamoji/nt/NtPasteboardExtrasApplyHandler$NtPasteboardExtrasHandlerVersionCheckResult;

    const-string v1, "CAN_IGNORE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/metamoji/nt/NtPasteboardExtrasApplyHandler$NtPasteboardExtrasHandlerVersionCheckResult;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/metamoji/nt/NtPasteboardExtrasApplyHandler$NtPasteboardExtrasHandlerVersionCheckResult;->CAN_IGNORE:Lcom/metamoji/nt/NtPasteboardExtrasApplyHandler$NtPasteboardExtrasHandlerVersionCheckResult;

    .line 18
    new-instance v0, Lcom/metamoji/nt/NtPasteboardExtrasApplyHandler$NtPasteboardExtrasHandlerVersionCheckResult;

    const-string v1, "CAN_PASTE"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/metamoji/nt/NtPasteboardExtrasApplyHandler$NtPasteboardExtrasHandlerVersionCheckResult;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/metamoji/nt/NtPasteboardExtrasApplyHandler$NtPasteboardExtrasHandlerVersionCheckResult;->CAN_PASTE:Lcom/metamoji/nt/NtPasteboardExtrasApplyHandler$NtPasteboardExtrasHandlerVersionCheckResult;

    .line 19
    new-instance v0, Lcom/metamoji/nt/NtPasteboardExtrasApplyHandler$NtPasteboardExtrasHandlerVersionCheckResult;

    const-string v1, "CANNOT_PASTE"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lcom/metamoji/nt/NtPasteboardExtrasApplyHandler$NtPasteboardExtrasHandlerVersionCheckResult;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/metamoji/nt/NtPasteboardExtrasApplyHandler$NtPasteboardExtrasHandlerVersionCheckResult;->CANNOT_PASTE:Lcom/metamoji/nt/NtPasteboardExtrasApplyHandler$NtPasteboardExtrasHandlerVersionCheckResult;

    .line 16
    invoke-static {}, Lcom/metamoji/nt/NtPasteboardExtrasApplyHandler$NtPasteboardExtrasHandlerVersionCheckResult;->$values()[Lcom/metamoji/nt/NtPasteboardExtrasApplyHandler$NtPasteboardExtrasHandlerVersionCheckResult;

    move-result-object v0

    sput-object v0, Lcom/metamoji/nt/NtPasteboardExtrasApplyHandler$NtPasteboardExtrasHandlerVersionCheckResult;->$VALUES:[Lcom/metamoji/nt/NtPasteboardExtrasApplyHandler$NtPasteboardExtrasHandlerVersionCheckResult;

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

    .line 16
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/metamoji/nt/NtPasteboardExtrasApplyHandler$NtPasteboardExtrasHandlerVersionCheckResult;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8000
        }
        names = {
            null
        }
    .end annotation

    .line 16
    const-class v0, Lcom/metamoji/nt/NtPasteboardExtrasApplyHandler$NtPasteboardExtrasHandlerVersionCheckResult;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/metamoji/nt/NtPasteboardExtrasApplyHandler$NtPasteboardExtrasHandlerVersionCheckResult;

    return-object p0
.end method

.method public static values()[Lcom/metamoji/nt/NtPasteboardExtrasApplyHandler$NtPasteboardExtrasHandlerVersionCheckResult;
    .locals 1

    .line 16
    sget-object v0, Lcom/metamoji/nt/NtPasteboardExtrasApplyHandler$NtPasteboardExtrasHandlerVersionCheckResult;->$VALUES:[Lcom/metamoji/nt/NtPasteboardExtrasApplyHandler$NtPasteboardExtrasHandlerVersionCheckResult;

    invoke-virtual {v0}, [Lcom/metamoji/nt/NtPasteboardExtrasApplyHandler$NtPasteboardExtrasHandlerVersionCheckResult;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/metamoji/nt/NtPasteboardExtrasApplyHandler$NtPasteboardExtrasHandlerVersionCheckResult;

    return-object v0
.end method
