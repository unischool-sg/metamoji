.class final enum Lcom/metamoji/lc/LicenseUtil$LicenseType;
.super Ljava/lang/Enum;
.source "LicenseUtil.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/metamoji/lc/LicenseUtil;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4018
    name = "LicenseType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/metamoji/lc/LicenseUtil$LicenseType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/metamoji/lc/LicenseUtil$LicenseType;

.field public static final enum Empty:Lcom/metamoji/lc/LicenseUtil$LicenseType;

.field public static final enum Offline:Lcom/metamoji/lc/LicenseUtil$LicenseType;

.field public static final enum Online:Lcom/metamoji/lc/LicenseUtil$LicenseType;

.field public static final enum Package:Lcom/metamoji/lc/LicenseUtil$LicenseType;

.field public static final enum Unknown:Lcom/metamoji/lc/LicenseUtil$LicenseType;


# direct methods
.method private static synthetic $values()[Lcom/metamoji/lc/LicenseUtil$LicenseType;
    .locals 5

    .line 83
    sget-object v0, Lcom/metamoji/lc/LicenseUtil$LicenseType;->Unknown:Lcom/metamoji/lc/LicenseUtil$LicenseType;

    sget-object v1, Lcom/metamoji/lc/LicenseUtil$LicenseType;->Empty:Lcom/metamoji/lc/LicenseUtil$LicenseType;

    sget-object v2, Lcom/metamoji/lc/LicenseUtil$LicenseType;->Online:Lcom/metamoji/lc/LicenseUtil$LicenseType;

    sget-object v3, Lcom/metamoji/lc/LicenseUtil$LicenseType;->Offline:Lcom/metamoji/lc/LicenseUtil$LicenseType;

    sget-object v4, Lcom/metamoji/lc/LicenseUtil$LicenseType;->Package:Lcom/metamoji/lc/LicenseUtil$LicenseType;

    filled-new-array {v0, v1, v2, v3, v4}, [Lcom/metamoji/lc/LicenseUtil$LicenseType;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 3

    .line 84
    new-instance v0, Lcom/metamoji/lc/LicenseUtil$LicenseType;

    const-string v1, "Unknown"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/metamoji/lc/LicenseUtil$LicenseType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/metamoji/lc/LicenseUtil$LicenseType;->Unknown:Lcom/metamoji/lc/LicenseUtil$LicenseType;

    .line 85
    new-instance v0, Lcom/metamoji/lc/LicenseUtil$LicenseType;

    const-string v1, "Empty"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/metamoji/lc/LicenseUtil$LicenseType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/metamoji/lc/LicenseUtil$LicenseType;->Empty:Lcom/metamoji/lc/LicenseUtil$LicenseType;

    .line 86
    new-instance v0, Lcom/metamoji/lc/LicenseUtil$LicenseType;

    const-string v1, "Online"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lcom/metamoji/lc/LicenseUtil$LicenseType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/metamoji/lc/LicenseUtil$LicenseType;->Online:Lcom/metamoji/lc/LicenseUtil$LicenseType;

    .line 87
    new-instance v0, Lcom/metamoji/lc/LicenseUtil$LicenseType;

    const-string v1, "Offline"

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2}, Lcom/metamoji/lc/LicenseUtil$LicenseType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/metamoji/lc/LicenseUtil$LicenseType;->Offline:Lcom/metamoji/lc/LicenseUtil$LicenseType;

    .line 88
    new-instance v0, Lcom/metamoji/lc/LicenseUtil$LicenseType;

    const-string v1, "Package"

    const/4 v2, 0x4

    invoke-direct {v0, v1, v2}, Lcom/metamoji/lc/LicenseUtil$LicenseType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/metamoji/lc/LicenseUtil$LicenseType;->Package:Lcom/metamoji/lc/LicenseUtil$LicenseType;

    .line 83
    invoke-static {}, Lcom/metamoji/lc/LicenseUtil$LicenseType;->$values()[Lcom/metamoji/lc/LicenseUtil$LicenseType;

    move-result-object v0

    sput-object v0, Lcom/metamoji/lc/LicenseUtil$LicenseType;->$VALUES:[Lcom/metamoji/lc/LicenseUtil$LicenseType;

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

    .line 83
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/metamoji/lc/LicenseUtil$LicenseType;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8000
        }
        names = {
            null
        }
    .end annotation

    .line 83
    const-class v0, Lcom/metamoji/lc/LicenseUtil$LicenseType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/metamoji/lc/LicenseUtil$LicenseType;

    return-object p0
.end method

.method public static values()[Lcom/metamoji/lc/LicenseUtil$LicenseType;
    .locals 1

    .line 83
    sget-object v0, Lcom/metamoji/lc/LicenseUtil$LicenseType;->$VALUES:[Lcom/metamoji/lc/LicenseUtil$LicenseType;

    invoke-virtual {v0}, [Lcom/metamoji/lc/LicenseUtil$LicenseType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/metamoji/lc/LicenseUtil$LicenseType;

    return-object v0
.end method
