.class final enum Lcom/metamoji/sd/sync/SdDriveSyncProcess$SyncSequence;
.super Ljava/lang/Enum;
.source "SdDriveSyncProcess.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/metamoji/sd/sync/SdDriveSyncProcess;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
    name = "SyncSequence"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/metamoji/sd/sync/SdDriveSyncProcess$SyncSequence;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/metamoji/sd/sync/SdDriveSyncProcess$SyncSequence;

.field public static final enum Complate:Lcom/metamoji/sd/sync/SdDriveSyncProcess$SyncSequence;

.field public static final enum GetHome:Lcom/metamoji/sd/sync/SdDriveSyncProcess$SyncSequence;

.field public static final enum GetUpdatedDocument:Lcom/metamoji/sd/sync/SdDriveSyncProcess$SyncSequence;

.field public static final enum GetUpdatedDriveData:Lcom/metamoji/sd/sync/SdDriveSyncProcess$SyncSequence;

.field public static final enum PutUpdatedDocument:Lcom/metamoji/sd/sync/SdDriveSyncProcess$SyncSequence;

.field public static final enum PutUpdatedDriveData:Lcom/metamoji/sd/sync/SdDriveSyncProcess$SyncSequence;

.field public static final enum Setup:Lcom/metamoji/sd/sync/SdDriveSyncProcess$SyncSequence;


# direct methods
.method private static synthetic $values()[Lcom/metamoji/sd/sync/SdDriveSyncProcess$SyncSequence;
    .locals 7

    .line 100
    sget-object v0, Lcom/metamoji/sd/sync/SdDriveSyncProcess$SyncSequence;->GetHome:Lcom/metamoji/sd/sync/SdDriveSyncProcess$SyncSequence;

    sget-object v1, Lcom/metamoji/sd/sync/SdDriveSyncProcess$SyncSequence;->Setup:Lcom/metamoji/sd/sync/SdDriveSyncProcess$SyncSequence;

    sget-object v2, Lcom/metamoji/sd/sync/SdDriveSyncProcess$SyncSequence;->PutUpdatedDocument:Lcom/metamoji/sd/sync/SdDriveSyncProcess$SyncSequence;

    sget-object v3, Lcom/metamoji/sd/sync/SdDriveSyncProcess$SyncSequence;->PutUpdatedDriveData:Lcom/metamoji/sd/sync/SdDriveSyncProcess$SyncSequence;

    sget-object v4, Lcom/metamoji/sd/sync/SdDriveSyncProcess$SyncSequence;->GetUpdatedDriveData:Lcom/metamoji/sd/sync/SdDriveSyncProcess$SyncSequence;

    sget-object v5, Lcom/metamoji/sd/sync/SdDriveSyncProcess$SyncSequence;->GetUpdatedDocument:Lcom/metamoji/sd/sync/SdDriveSyncProcess$SyncSequence;

    sget-object v6, Lcom/metamoji/sd/sync/SdDriveSyncProcess$SyncSequence;->Complate:Lcom/metamoji/sd/sync/SdDriveSyncProcess$SyncSequence;

    filled-new-array/range {v0 .. v6}, [Lcom/metamoji/sd/sync/SdDriveSyncProcess$SyncSequence;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 3

    .line 101
    new-instance v0, Lcom/metamoji/sd/sync/SdDriveSyncProcess$SyncSequence;

    const-string v1, "GetHome"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/metamoji/sd/sync/SdDriveSyncProcess$SyncSequence;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/metamoji/sd/sync/SdDriveSyncProcess$SyncSequence;->GetHome:Lcom/metamoji/sd/sync/SdDriveSyncProcess$SyncSequence;

    .line 102
    new-instance v0, Lcom/metamoji/sd/sync/SdDriveSyncProcess$SyncSequence;

    const-string v1, "Setup"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/metamoji/sd/sync/SdDriveSyncProcess$SyncSequence;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/metamoji/sd/sync/SdDriveSyncProcess$SyncSequence;->Setup:Lcom/metamoji/sd/sync/SdDriveSyncProcess$SyncSequence;

    .line 103
    new-instance v0, Lcom/metamoji/sd/sync/SdDriveSyncProcess$SyncSequence;

    const-string v1, "PutUpdatedDocument"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lcom/metamoji/sd/sync/SdDriveSyncProcess$SyncSequence;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/metamoji/sd/sync/SdDriveSyncProcess$SyncSequence;->PutUpdatedDocument:Lcom/metamoji/sd/sync/SdDriveSyncProcess$SyncSequence;

    .line 104
    new-instance v0, Lcom/metamoji/sd/sync/SdDriveSyncProcess$SyncSequence;

    const-string v1, "PutUpdatedDriveData"

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2}, Lcom/metamoji/sd/sync/SdDriveSyncProcess$SyncSequence;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/metamoji/sd/sync/SdDriveSyncProcess$SyncSequence;->PutUpdatedDriveData:Lcom/metamoji/sd/sync/SdDriveSyncProcess$SyncSequence;

    .line 105
    new-instance v0, Lcom/metamoji/sd/sync/SdDriveSyncProcess$SyncSequence;

    const-string v1, "GetUpdatedDriveData"

    const/4 v2, 0x4

    invoke-direct {v0, v1, v2}, Lcom/metamoji/sd/sync/SdDriveSyncProcess$SyncSequence;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/metamoji/sd/sync/SdDriveSyncProcess$SyncSequence;->GetUpdatedDriveData:Lcom/metamoji/sd/sync/SdDriveSyncProcess$SyncSequence;

    .line 106
    new-instance v0, Lcom/metamoji/sd/sync/SdDriveSyncProcess$SyncSequence;

    const-string v1, "GetUpdatedDocument"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/metamoji/sd/sync/SdDriveSyncProcess$SyncSequence;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/metamoji/sd/sync/SdDriveSyncProcess$SyncSequence;->GetUpdatedDocument:Lcom/metamoji/sd/sync/SdDriveSyncProcess$SyncSequence;

    .line 107
    new-instance v0, Lcom/metamoji/sd/sync/SdDriveSyncProcess$SyncSequence;

    const-string v1, "Complate"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Lcom/metamoji/sd/sync/SdDriveSyncProcess$SyncSequence;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/metamoji/sd/sync/SdDriveSyncProcess$SyncSequence;->Complate:Lcom/metamoji/sd/sync/SdDriveSyncProcess$SyncSequence;

    .line 100
    invoke-static {}, Lcom/metamoji/sd/sync/SdDriveSyncProcess$SyncSequence;->$values()[Lcom/metamoji/sd/sync/SdDriveSyncProcess$SyncSequence;

    move-result-object v0

    sput-object v0, Lcom/metamoji/sd/sync/SdDriveSyncProcess$SyncSequence;->$VALUES:[Lcom/metamoji/sd/sync/SdDriveSyncProcess$SyncSequence;

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

    .line 100
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/metamoji/sd/sync/SdDriveSyncProcess$SyncSequence;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8000
        }
        names = {
            null
        }
    .end annotation

    .line 100
    const-class v0, Lcom/metamoji/sd/sync/SdDriveSyncProcess$SyncSequence;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/metamoji/sd/sync/SdDriveSyncProcess$SyncSequence;

    return-object p0
.end method

.method public static values()[Lcom/metamoji/sd/sync/SdDriveSyncProcess$SyncSequence;
    .locals 1

    .line 100
    sget-object v0, Lcom/metamoji/sd/sync/SdDriveSyncProcess$SyncSequence;->$VALUES:[Lcom/metamoji/sd/sync/SdDriveSyncProcess$SyncSequence;

    invoke-virtual {v0}, [Lcom/metamoji/sd/sync/SdDriveSyncProcess$SyncSequence;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/metamoji/sd/sync/SdDriveSyncProcess$SyncSequence;

    return-object v0
.end method
