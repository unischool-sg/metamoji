.class public final enum Lcom/metamoji/cs/dc/params/CsUpdateClassBoxParam$ClassBoxJoinStatus;
.super Ljava/lang/Enum;
.source "CsUpdateClassBoxParam.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/metamoji/cs/dc/params/CsUpdateClassBoxParam;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "ClassBoxJoinStatus"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/metamoji/cs/dc/params/CsUpdateClassBoxParam$ClassBoxJoinStatus;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/metamoji/cs/dc/params/CsUpdateClassBoxParam$ClassBoxJoinStatus;

.field public static final enum DISABLED:Lcom/metamoji/cs/dc/params/CsUpdateClassBoxParam$ClassBoxJoinStatus;

.field public static final enum ENABLED:Lcom/metamoji/cs/dc/params/CsUpdateClassBoxParam$ClassBoxJoinStatus;

.field public static final enum NO_VALUE:Lcom/metamoji/cs/dc/params/CsUpdateClassBoxParam$ClassBoxJoinStatus;


# direct methods
.method private static synthetic $values()[Lcom/metamoji/cs/dc/params/CsUpdateClassBoxParam$ClassBoxJoinStatus;
    .locals 3

    .line 7
    sget-object v0, Lcom/metamoji/cs/dc/params/CsUpdateClassBoxParam$ClassBoxJoinStatus;->ENABLED:Lcom/metamoji/cs/dc/params/CsUpdateClassBoxParam$ClassBoxJoinStatus;

    sget-object v1, Lcom/metamoji/cs/dc/params/CsUpdateClassBoxParam$ClassBoxJoinStatus;->DISABLED:Lcom/metamoji/cs/dc/params/CsUpdateClassBoxParam$ClassBoxJoinStatus;

    sget-object v2, Lcom/metamoji/cs/dc/params/CsUpdateClassBoxParam$ClassBoxJoinStatus;->NO_VALUE:Lcom/metamoji/cs/dc/params/CsUpdateClassBoxParam$ClassBoxJoinStatus;

    filled-new-array {v0, v1, v2}, [Lcom/metamoji/cs/dc/params/CsUpdateClassBoxParam$ClassBoxJoinStatus;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 3

    .line 8
    new-instance v0, Lcom/metamoji/cs/dc/params/CsUpdateClassBoxParam$ClassBoxJoinStatus;

    const-string v1, "ENABLED"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/metamoji/cs/dc/params/CsUpdateClassBoxParam$ClassBoxJoinStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/metamoji/cs/dc/params/CsUpdateClassBoxParam$ClassBoxJoinStatus;->ENABLED:Lcom/metamoji/cs/dc/params/CsUpdateClassBoxParam$ClassBoxJoinStatus;

    .line 9
    new-instance v0, Lcom/metamoji/cs/dc/params/CsUpdateClassBoxParam$ClassBoxJoinStatus;

    const-string v1, "DISABLED"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/metamoji/cs/dc/params/CsUpdateClassBoxParam$ClassBoxJoinStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/metamoji/cs/dc/params/CsUpdateClassBoxParam$ClassBoxJoinStatus;->DISABLED:Lcom/metamoji/cs/dc/params/CsUpdateClassBoxParam$ClassBoxJoinStatus;

    .line 10
    new-instance v0, Lcom/metamoji/cs/dc/params/CsUpdateClassBoxParam$ClassBoxJoinStatus;

    const-string v1, "NO_VALUE"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lcom/metamoji/cs/dc/params/CsUpdateClassBoxParam$ClassBoxJoinStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/metamoji/cs/dc/params/CsUpdateClassBoxParam$ClassBoxJoinStatus;->NO_VALUE:Lcom/metamoji/cs/dc/params/CsUpdateClassBoxParam$ClassBoxJoinStatus;

    .line 7
    invoke-static {}, Lcom/metamoji/cs/dc/params/CsUpdateClassBoxParam$ClassBoxJoinStatus;->$values()[Lcom/metamoji/cs/dc/params/CsUpdateClassBoxParam$ClassBoxJoinStatus;

    move-result-object v0

    sput-object v0, Lcom/metamoji/cs/dc/params/CsUpdateClassBoxParam$ClassBoxJoinStatus;->$VALUES:[Lcom/metamoji/cs/dc/params/CsUpdateClassBoxParam$ClassBoxJoinStatus;

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

    .line 7
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/metamoji/cs/dc/params/CsUpdateClassBoxParam$ClassBoxJoinStatus;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8000
        }
        names = {
            null
        }
    .end annotation

    .line 7
    const-class v0, Lcom/metamoji/cs/dc/params/CsUpdateClassBoxParam$ClassBoxJoinStatus;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/metamoji/cs/dc/params/CsUpdateClassBoxParam$ClassBoxJoinStatus;

    return-object p0
.end method

.method public static values()[Lcom/metamoji/cs/dc/params/CsUpdateClassBoxParam$ClassBoxJoinStatus;
    .locals 1

    .line 7
    sget-object v0, Lcom/metamoji/cs/dc/params/CsUpdateClassBoxParam$ClassBoxJoinStatus;->$VALUES:[Lcom/metamoji/cs/dc/params/CsUpdateClassBoxParam$ClassBoxJoinStatus;

    invoke-virtual {v0}, [Lcom/metamoji/cs/dc/params/CsUpdateClassBoxParam$ClassBoxJoinStatus;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/metamoji/cs/dc/params/CsUpdateClassBoxParam$ClassBoxJoinStatus;

    return-object v0
.end method
