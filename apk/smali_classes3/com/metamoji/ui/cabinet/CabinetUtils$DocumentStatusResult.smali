.class public final enum Lcom/metamoji/ui/cabinet/CabinetUtils$DocumentStatusResult;
.super Ljava/lang/Enum;
.source "CabinetUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/metamoji/ui/cabinet/CabinetUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "DocumentStatusResult"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/metamoji/ui/cabinet/CabinetUtils$DocumentStatusResult;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/metamoji/ui/cabinet/CabinetUtils$DocumentStatusResult;

.field public static final enum AdditionalDrive:Lcom/metamoji/ui/cabinet/CabinetUtils$DocumentStatusResult;

.field public static final enum Available:Lcom/metamoji/ui/cabinet/CabinetUtils$DocumentStatusResult;

.field public static final enum HiddenDrive:Lcom/metamoji/ui/cabinet/CabinetUtils$DocumentStatusResult;

.field public static final enum NeedSyncDrive:Lcom/metamoji/ui/cabinet/CabinetUtils$DocumentStatusResult;

.field public static final enum Unavailable:Lcom/metamoji/ui/cabinet/CabinetUtils$DocumentStatusResult;


# direct methods
.method private static synthetic $values()[Lcom/metamoji/ui/cabinet/CabinetUtils$DocumentStatusResult;
    .locals 5

    .line 1425
    sget-object v0, Lcom/metamoji/ui/cabinet/CabinetUtils$DocumentStatusResult;->Unavailable:Lcom/metamoji/ui/cabinet/CabinetUtils$DocumentStatusResult;

    sget-object v1, Lcom/metamoji/ui/cabinet/CabinetUtils$DocumentStatusResult;->Available:Lcom/metamoji/ui/cabinet/CabinetUtils$DocumentStatusResult;

    sget-object v2, Lcom/metamoji/ui/cabinet/CabinetUtils$DocumentStatusResult;->NeedSyncDrive:Lcom/metamoji/ui/cabinet/CabinetUtils$DocumentStatusResult;

    sget-object v3, Lcom/metamoji/ui/cabinet/CabinetUtils$DocumentStatusResult;->HiddenDrive:Lcom/metamoji/ui/cabinet/CabinetUtils$DocumentStatusResult;

    sget-object v4, Lcom/metamoji/ui/cabinet/CabinetUtils$DocumentStatusResult;->AdditionalDrive:Lcom/metamoji/ui/cabinet/CabinetUtils$DocumentStatusResult;

    filled-new-array {v0, v1, v2, v3, v4}, [Lcom/metamoji/ui/cabinet/CabinetUtils$DocumentStatusResult;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 3

    .line 1426
    new-instance v0, Lcom/metamoji/ui/cabinet/CabinetUtils$DocumentStatusResult;

    const-string v1, "Unavailable"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/metamoji/ui/cabinet/CabinetUtils$DocumentStatusResult;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/metamoji/ui/cabinet/CabinetUtils$DocumentStatusResult;->Unavailable:Lcom/metamoji/ui/cabinet/CabinetUtils$DocumentStatusResult;

    .line 1427
    new-instance v0, Lcom/metamoji/ui/cabinet/CabinetUtils$DocumentStatusResult;

    const-string v1, "Available"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/metamoji/ui/cabinet/CabinetUtils$DocumentStatusResult;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/metamoji/ui/cabinet/CabinetUtils$DocumentStatusResult;->Available:Lcom/metamoji/ui/cabinet/CabinetUtils$DocumentStatusResult;

    .line 1428
    new-instance v0, Lcom/metamoji/ui/cabinet/CabinetUtils$DocumentStatusResult;

    const-string v1, "NeedSyncDrive"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lcom/metamoji/ui/cabinet/CabinetUtils$DocumentStatusResult;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/metamoji/ui/cabinet/CabinetUtils$DocumentStatusResult;->NeedSyncDrive:Lcom/metamoji/ui/cabinet/CabinetUtils$DocumentStatusResult;

    .line 1429
    new-instance v0, Lcom/metamoji/ui/cabinet/CabinetUtils$DocumentStatusResult;

    const-string v1, "HiddenDrive"

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2}, Lcom/metamoji/ui/cabinet/CabinetUtils$DocumentStatusResult;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/metamoji/ui/cabinet/CabinetUtils$DocumentStatusResult;->HiddenDrive:Lcom/metamoji/ui/cabinet/CabinetUtils$DocumentStatusResult;

    .line 1430
    new-instance v0, Lcom/metamoji/ui/cabinet/CabinetUtils$DocumentStatusResult;

    const-string v1, "AdditionalDrive"

    const/4 v2, 0x4

    invoke-direct {v0, v1, v2}, Lcom/metamoji/ui/cabinet/CabinetUtils$DocumentStatusResult;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/metamoji/ui/cabinet/CabinetUtils$DocumentStatusResult;->AdditionalDrive:Lcom/metamoji/ui/cabinet/CabinetUtils$DocumentStatusResult;

    .line 1425
    invoke-static {}, Lcom/metamoji/ui/cabinet/CabinetUtils$DocumentStatusResult;->$values()[Lcom/metamoji/ui/cabinet/CabinetUtils$DocumentStatusResult;

    move-result-object v0

    sput-object v0, Lcom/metamoji/ui/cabinet/CabinetUtils$DocumentStatusResult;->$VALUES:[Lcom/metamoji/ui/cabinet/CabinetUtils$DocumentStatusResult;

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

    .line 1425
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/metamoji/ui/cabinet/CabinetUtils$DocumentStatusResult;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8000
        }
        names = {
            null
        }
    .end annotation

    .line 1425
    const-class v0, Lcom/metamoji/ui/cabinet/CabinetUtils$DocumentStatusResult;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/metamoji/ui/cabinet/CabinetUtils$DocumentStatusResult;

    return-object p0
.end method

.method public static values()[Lcom/metamoji/ui/cabinet/CabinetUtils$DocumentStatusResult;
    .locals 1

    .line 1425
    sget-object v0, Lcom/metamoji/ui/cabinet/CabinetUtils$DocumentStatusResult;->$VALUES:[Lcom/metamoji/ui/cabinet/CabinetUtils$DocumentStatusResult;

    invoke-virtual {v0}, [Lcom/metamoji/ui/cabinet/CabinetUtils$DocumentStatusResult;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/metamoji/ui/cabinet/CabinetUtils$DocumentStatusResult;

    return-object v0
.end method
