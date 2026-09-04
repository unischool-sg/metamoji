.class public final enum Lcom/metamoji/lc/LicenseUtil$ExpirationStatus;
.super Ljava/lang/Enum;
.source "LicenseUtil.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/metamoji/lc/LicenseUtil;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "ExpirationStatus"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/metamoji/lc/LicenseUtil$ExpirationStatus;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/metamoji/lc/LicenseUtil$ExpirationStatus;

.field public static final enum Error:Lcom/metamoji/lc/LicenseUtil$ExpirationStatus;

.field public static final enum Expired:Lcom/metamoji/lc/LicenseUtil$ExpirationStatus;

.field public static final enum ExpiredWarning:Lcom/metamoji/lc/LicenseUtil$ExpirationStatus;

.field public static final enum NoRegistryKey:Lcom/metamoji/lc/LicenseUtil$ExpirationStatus;

.field public static final enum Respite:Lcom/metamoji/lc/LicenseUtil$ExpirationStatus;

.field public static final enum UpdateWarning:Lcom/metamoji/lc/LicenseUtil$ExpirationStatus;

.field public static final enum Valid:Lcom/metamoji/lc/LicenseUtil$ExpirationStatus;


# direct methods
.method private static synthetic $values()[Lcom/metamoji/lc/LicenseUtil$ExpirationStatus;
    .locals 7

    .line 250
    sget-object v0, Lcom/metamoji/lc/LicenseUtil$ExpirationStatus;->Error:Lcom/metamoji/lc/LicenseUtil$ExpirationStatus;

    sget-object v1, Lcom/metamoji/lc/LicenseUtil$ExpirationStatus;->Valid:Lcom/metamoji/lc/LicenseUtil$ExpirationStatus;

    sget-object v2, Lcom/metamoji/lc/LicenseUtil$ExpirationStatus;->NoRegistryKey:Lcom/metamoji/lc/LicenseUtil$ExpirationStatus;

    sget-object v3, Lcom/metamoji/lc/LicenseUtil$ExpirationStatus;->Expired:Lcom/metamoji/lc/LicenseUtil$ExpirationStatus;

    sget-object v4, Lcom/metamoji/lc/LicenseUtil$ExpirationStatus;->ExpiredWarning:Lcom/metamoji/lc/LicenseUtil$ExpirationStatus;

    sget-object v5, Lcom/metamoji/lc/LicenseUtil$ExpirationStatus;->UpdateWarning:Lcom/metamoji/lc/LicenseUtil$ExpirationStatus;

    sget-object v6, Lcom/metamoji/lc/LicenseUtil$ExpirationStatus;->Respite:Lcom/metamoji/lc/LicenseUtil$ExpirationStatus;

    filled-new-array/range {v0 .. v6}, [Lcom/metamoji/lc/LicenseUtil$ExpirationStatus;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 3

    .line 251
    new-instance v0, Lcom/metamoji/lc/LicenseUtil$ExpirationStatus;

    const-string v1, "Error"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/metamoji/lc/LicenseUtil$ExpirationStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/metamoji/lc/LicenseUtil$ExpirationStatus;->Error:Lcom/metamoji/lc/LicenseUtil$ExpirationStatus;

    .line 252
    new-instance v0, Lcom/metamoji/lc/LicenseUtil$ExpirationStatus;

    const-string v1, "Valid"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/metamoji/lc/LicenseUtil$ExpirationStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/metamoji/lc/LicenseUtil$ExpirationStatus;->Valid:Lcom/metamoji/lc/LicenseUtil$ExpirationStatus;

    .line 253
    new-instance v0, Lcom/metamoji/lc/LicenseUtil$ExpirationStatus;

    const-string v1, "NoRegistryKey"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lcom/metamoji/lc/LicenseUtil$ExpirationStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/metamoji/lc/LicenseUtil$ExpirationStatus;->NoRegistryKey:Lcom/metamoji/lc/LicenseUtil$ExpirationStatus;

    .line 254
    new-instance v0, Lcom/metamoji/lc/LicenseUtil$ExpirationStatus;

    const-string v1, "Expired"

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2}, Lcom/metamoji/lc/LicenseUtil$ExpirationStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/metamoji/lc/LicenseUtil$ExpirationStatus;->Expired:Lcom/metamoji/lc/LicenseUtil$ExpirationStatus;

    .line 255
    new-instance v0, Lcom/metamoji/lc/LicenseUtil$ExpirationStatus;

    const-string v1, "ExpiredWarning"

    const/4 v2, 0x4

    invoke-direct {v0, v1, v2}, Lcom/metamoji/lc/LicenseUtil$ExpirationStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/metamoji/lc/LicenseUtil$ExpirationStatus;->ExpiredWarning:Lcom/metamoji/lc/LicenseUtil$ExpirationStatus;

    .line 256
    new-instance v0, Lcom/metamoji/lc/LicenseUtil$ExpirationStatus;

    const-string v1, "UpdateWarning"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/metamoji/lc/LicenseUtil$ExpirationStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/metamoji/lc/LicenseUtil$ExpirationStatus;->UpdateWarning:Lcom/metamoji/lc/LicenseUtil$ExpirationStatus;

    .line 257
    new-instance v0, Lcom/metamoji/lc/LicenseUtil$ExpirationStatus;

    const-string v1, "Respite"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Lcom/metamoji/lc/LicenseUtil$ExpirationStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/metamoji/lc/LicenseUtil$ExpirationStatus;->Respite:Lcom/metamoji/lc/LicenseUtil$ExpirationStatus;

    .line 250
    invoke-static {}, Lcom/metamoji/lc/LicenseUtil$ExpirationStatus;->$values()[Lcom/metamoji/lc/LicenseUtil$ExpirationStatus;

    move-result-object v0

    sput-object v0, Lcom/metamoji/lc/LicenseUtil$ExpirationStatus;->$VALUES:[Lcom/metamoji/lc/LicenseUtil$ExpirationStatus;

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

    .line 250
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/metamoji/lc/LicenseUtil$ExpirationStatus;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8000
        }
        names = {
            null
        }
    .end annotation

    .line 250
    const-class v0, Lcom/metamoji/lc/LicenseUtil$ExpirationStatus;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/metamoji/lc/LicenseUtil$ExpirationStatus;

    return-object p0
.end method

.method public static values()[Lcom/metamoji/lc/LicenseUtil$ExpirationStatus;
    .locals 1

    .line 250
    sget-object v0, Lcom/metamoji/lc/LicenseUtil$ExpirationStatus;->$VALUES:[Lcom/metamoji/lc/LicenseUtil$ExpirationStatus;

    invoke-virtual {v0}, [Lcom/metamoji/lc/LicenseUtil$ExpirationStatus;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/metamoji/lc/LicenseUtil$ExpirationStatus;

    return-object v0
.end method
