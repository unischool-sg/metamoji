.class public final enum Lcom/metamoji/ns/INsCollaboHandler$CollaboLogModeStatus;
.super Ljava/lang/Enum;
.source "INsCollaboHandler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/metamoji/ns/INsCollaboHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "CollaboLogModeStatus"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/metamoji/ns/INsCollaboHandler$CollaboLogModeStatus;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/metamoji/ns/INsCollaboHandler$CollaboLogModeStatus;

.field public static final enum LOGMODE_END:Lcom/metamoji/ns/INsCollaboHandler$CollaboLogModeStatus;

.field public static final enum LOGMODE_NONE:Lcom/metamoji/ns/INsCollaboHandler$CollaboLogModeStatus;

.field public static final enum LOGMODE_START:Lcom/metamoji/ns/INsCollaboHandler$CollaboLogModeStatus;


# direct methods
.method private static synthetic $values()[Lcom/metamoji/ns/INsCollaboHandler$CollaboLogModeStatus;
    .locals 3

    .line 81
    sget-object v0, Lcom/metamoji/ns/INsCollaboHandler$CollaboLogModeStatus;->LOGMODE_START:Lcom/metamoji/ns/INsCollaboHandler$CollaboLogModeStatus;

    sget-object v1, Lcom/metamoji/ns/INsCollaboHandler$CollaboLogModeStatus;->LOGMODE_END:Lcom/metamoji/ns/INsCollaboHandler$CollaboLogModeStatus;

    sget-object v2, Lcom/metamoji/ns/INsCollaboHandler$CollaboLogModeStatus;->LOGMODE_NONE:Lcom/metamoji/ns/INsCollaboHandler$CollaboLogModeStatus;

    filled-new-array {v0, v1, v2}, [Lcom/metamoji/ns/INsCollaboHandler$CollaboLogModeStatus;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 3

    .line 82
    new-instance v0, Lcom/metamoji/ns/INsCollaboHandler$CollaboLogModeStatus;

    const-string v1, "LOGMODE_START"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/metamoji/ns/INsCollaboHandler$CollaboLogModeStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/metamoji/ns/INsCollaboHandler$CollaboLogModeStatus;->LOGMODE_START:Lcom/metamoji/ns/INsCollaboHandler$CollaboLogModeStatus;

    .line 83
    new-instance v0, Lcom/metamoji/ns/INsCollaboHandler$CollaboLogModeStatus;

    const-string v1, "LOGMODE_END"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/metamoji/ns/INsCollaboHandler$CollaboLogModeStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/metamoji/ns/INsCollaboHandler$CollaboLogModeStatus;->LOGMODE_END:Lcom/metamoji/ns/INsCollaboHandler$CollaboLogModeStatus;

    .line 84
    new-instance v0, Lcom/metamoji/ns/INsCollaboHandler$CollaboLogModeStatus;

    const-string v1, "LOGMODE_NONE"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lcom/metamoji/ns/INsCollaboHandler$CollaboLogModeStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/metamoji/ns/INsCollaboHandler$CollaboLogModeStatus;->LOGMODE_NONE:Lcom/metamoji/ns/INsCollaboHandler$CollaboLogModeStatus;

    .line 81
    invoke-static {}, Lcom/metamoji/ns/INsCollaboHandler$CollaboLogModeStatus;->$values()[Lcom/metamoji/ns/INsCollaboHandler$CollaboLogModeStatus;

    move-result-object v0

    sput-object v0, Lcom/metamoji/ns/INsCollaboHandler$CollaboLogModeStatus;->$VALUES:[Lcom/metamoji/ns/INsCollaboHandler$CollaboLogModeStatus;

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

    .line 81
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/metamoji/ns/INsCollaboHandler$CollaboLogModeStatus;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8000
        }
        names = {
            null
        }
    .end annotation

    .line 81
    const-class v0, Lcom/metamoji/ns/INsCollaboHandler$CollaboLogModeStatus;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/metamoji/ns/INsCollaboHandler$CollaboLogModeStatus;

    return-object p0
.end method

.method public static values()[Lcom/metamoji/ns/INsCollaboHandler$CollaboLogModeStatus;
    .locals 1

    .line 81
    sget-object v0, Lcom/metamoji/ns/INsCollaboHandler$CollaboLogModeStatus;->$VALUES:[Lcom/metamoji/ns/INsCollaboHandler$CollaboLogModeStatus;

    invoke-virtual {v0}, [Lcom/metamoji/ns/INsCollaboHandler$CollaboLogModeStatus;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/metamoji/ns/INsCollaboHandler$CollaboLogModeStatus;

    return-object v0
.end method
