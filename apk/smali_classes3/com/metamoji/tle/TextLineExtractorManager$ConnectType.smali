.class final enum Lcom/metamoji/tle/TextLineExtractorManager$ConnectType;
.super Ljava/lang/Enum;
.source "TextLineExtractorManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/metamoji/tle/TextLineExtractorManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
    name = "ConnectType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/metamoji/tle/TextLineExtractorManager$ConnectType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/metamoji/tle/TextLineExtractorManager$ConnectType;

.field public static final enum Bottom:Lcom/metamoji/tle/TextLineExtractorManager$ConnectType;

.field public static final enum None:Lcom/metamoji/tle/TextLineExtractorManager$ConnectType;

.field public static final enum Right:Lcom/metamoji/tle/TextLineExtractorManager$ConnectType;


# direct methods
.method private static synthetic $values()[Lcom/metamoji/tle/TextLineExtractorManager$ConnectType;
    .locals 3

    .line 267
    sget-object v0, Lcom/metamoji/tle/TextLineExtractorManager$ConnectType;->None:Lcom/metamoji/tle/TextLineExtractorManager$ConnectType;

    sget-object v1, Lcom/metamoji/tle/TextLineExtractorManager$ConnectType;->Bottom:Lcom/metamoji/tle/TextLineExtractorManager$ConnectType;

    sget-object v2, Lcom/metamoji/tle/TextLineExtractorManager$ConnectType;->Right:Lcom/metamoji/tle/TextLineExtractorManager$ConnectType;

    filled-new-array {v0, v1, v2}, [Lcom/metamoji/tle/TextLineExtractorManager$ConnectType;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 3

    .line 268
    new-instance v0, Lcom/metamoji/tle/TextLineExtractorManager$ConnectType;

    const-string v1, "None"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/metamoji/tle/TextLineExtractorManager$ConnectType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/metamoji/tle/TextLineExtractorManager$ConnectType;->None:Lcom/metamoji/tle/TextLineExtractorManager$ConnectType;

    .line 269
    new-instance v0, Lcom/metamoji/tle/TextLineExtractorManager$ConnectType;

    const-string v1, "Bottom"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/metamoji/tle/TextLineExtractorManager$ConnectType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/metamoji/tle/TextLineExtractorManager$ConnectType;->Bottom:Lcom/metamoji/tle/TextLineExtractorManager$ConnectType;

    .line 270
    new-instance v0, Lcom/metamoji/tle/TextLineExtractorManager$ConnectType;

    const-string v1, "Right"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lcom/metamoji/tle/TextLineExtractorManager$ConnectType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/metamoji/tle/TextLineExtractorManager$ConnectType;->Right:Lcom/metamoji/tle/TextLineExtractorManager$ConnectType;

    .line 267
    invoke-static {}, Lcom/metamoji/tle/TextLineExtractorManager$ConnectType;->$values()[Lcom/metamoji/tle/TextLineExtractorManager$ConnectType;

    move-result-object v0

    sput-object v0, Lcom/metamoji/tle/TextLineExtractorManager$ConnectType;->$VALUES:[Lcom/metamoji/tle/TextLineExtractorManager$ConnectType;

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

    .line 267
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/metamoji/tle/TextLineExtractorManager$ConnectType;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8000
        }
        names = {
            null
        }
    .end annotation

    .line 267
    const-class v0, Lcom/metamoji/tle/TextLineExtractorManager$ConnectType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/metamoji/tle/TextLineExtractorManager$ConnectType;

    return-object p0
.end method

.method public static values()[Lcom/metamoji/tle/TextLineExtractorManager$ConnectType;
    .locals 1

    .line 267
    sget-object v0, Lcom/metamoji/tle/TextLineExtractorManager$ConnectType;->$VALUES:[Lcom/metamoji/tle/TextLineExtractorManager$ConnectType;

    invoke-virtual {v0}, [Lcom/metamoji/tle/TextLineExtractorManager$ConnectType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/metamoji/tle/TextLineExtractorManager$ConnectType;

    return-object v0
.end method
