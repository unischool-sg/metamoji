.class public final enum Lcom/metamoji/dvm/DvmDriveType;
.super Ljava/lang/Enum;
.source "DvmDriveType.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/metamoji/dvm/DvmDriveType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/metamoji/dvm/DvmDriveType;

.field public static final enum PrivateDrive:Lcom/metamoji/dvm/DvmDriveType;

.field public static final enum SharedDrive:Lcom/metamoji/dvm/DvmDriveType;


# direct methods
.method private static synthetic $values()[Lcom/metamoji/dvm/DvmDriveType;
    .locals 2

    .line 4
    sget-object v0, Lcom/metamoji/dvm/DvmDriveType;->PrivateDrive:Lcom/metamoji/dvm/DvmDriveType;

    sget-object v1, Lcom/metamoji/dvm/DvmDriveType;->SharedDrive:Lcom/metamoji/dvm/DvmDriveType;

    filled-new-array {v0, v1}, [Lcom/metamoji/dvm/DvmDriveType;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 3

    .line 5
    new-instance v0, Lcom/metamoji/dvm/DvmDriveType;

    const-string v1, "PrivateDrive"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/metamoji/dvm/DvmDriveType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/metamoji/dvm/DvmDriveType;->PrivateDrive:Lcom/metamoji/dvm/DvmDriveType;

    .line 6
    new-instance v0, Lcom/metamoji/dvm/DvmDriveType;

    const-string v1, "SharedDrive"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/metamoji/dvm/DvmDriveType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/metamoji/dvm/DvmDriveType;->SharedDrive:Lcom/metamoji/dvm/DvmDriveType;

    .line 4
    invoke-static {}, Lcom/metamoji/dvm/DvmDriveType;->$values()[Lcom/metamoji/dvm/DvmDriveType;

    move-result-object v0

    sput-object v0, Lcom/metamoji/dvm/DvmDriveType;->$VALUES:[Lcom/metamoji/dvm/DvmDriveType;

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

    .line 4
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/metamoji/dvm/DvmDriveType;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8000
        }
        names = {
            null
        }
    .end annotation

    .line 4
    const-class v0, Lcom/metamoji/dvm/DvmDriveType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/metamoji/dvm/DvmDriveType;

    return-object p0
.end method

.method public static values()[Lcom/metamoji/dvm/DvmDriveType;
    .locals 1

    .line 4
    sget-object v0, Lcom/metamoji/dvm/DvmDriveType;->$VALUES:[Lcom/metamoji/dvm/DvmDriveType;

    invoke-virtual {v0}, [Lcom/metamoji/dvm/DvmDriveType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/metamoji/dvm/DvmDriveType;

    return-object v0
.end method
