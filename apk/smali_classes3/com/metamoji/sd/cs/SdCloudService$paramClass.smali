.class final enum Lcom/metamoji/sd/cs/SdCloudService$paramClass;
.super Ljava/lang/Enum;
.source "SdCloudService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/metamoji/sd/cs/SdCloudService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4018
    name = "paramClass"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/metamoji/sd/cs/SdCloudService$paramClass;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/metamoji/sd/cs/SdCloudService$paramClass;

.field public static final enum SdDeleteDocumentDataParams:Lcom/metamoji/sd/cs/SdCloudService$paramClass;

.field public static final enum SdGetDocumentDataParams:Lcom/metamoji/sd/cs/SdCloudService$paramClass;

.field public static final enum SdGetDocumentMetaParams:Lcom/metamoji/sd/cs/SdCloudService$paramClass;

.field public static final enum SdGetDocumentSearchDataParams:Lcom/metamoji/sd/cs/SdCloudService$paramClass;

.field public static final enum SdGetDocumentThumbnailParams:Lcom/metamoji/sd/cs/SdCloudService$paramClass;

.field public static final enum SdGetDriveDataParams:Lcom/metamoji/sd/cs/SdCloudService$paramClass;

.field public static final enum SdGetDriveLastUpdateRevisionParams:Lcom/metamoji/sd/cs/SdCloudService$paramClass;

.field public static final enum SdGetDrivePropertiesParams:Lcom/metamoji/sd/cs/SdCloudService$paramClass;

.field public static final enum SdGetEditFlagParams:Lcom/metamoji/sd/cs/SdCloudService$paramClass;

.field public static final enum SdGetMaintenanceInfoParams:Lcom/metamoji/sd/cs/SdCloudService$paramClass;

.field public static final enum SdPutDocumentDataParams:Lcom/metamoji/sd/cs/SdCloudService$paramClass;

.field public static final enum SdPutDriveDataParams:Lcom/metamoji/sd/cs/SdCloudService$paramClass;

.field public static final enum SdSyncStartParams:Lcom/metamoji/sd/cs/SdCloudService$paramClass;

.field public static final enum SdTurnOffEditFlagParams:Lcom/metamoji/sd/cs/SdCloudService$paramClass;

.field public static final enum SdTurnOnEditFlagParams:Lcom/metamoji/sd/cs/SdCloudService$paramClass;


# direct methods
.method private static synthetic $values()[Lcom/metamoji/sd/cs/SdCloudService$paramClass;
    .locals 15

    .line 643
    sget-object v0, Lcom/metamoji/sd/cs/SdCloudService$paramClass;->SdGetDrivePropertiesParams:Lcom/metamoji/sd/cs/SdCloudService$paramClass;

    sget-object v1, Lcom/metamoji/sd/cs/SdCloudService$paramClass;->SdGetEditFlagParams:Lcom/metamoji/sd/cs/SdCloudService$paramClass;

    sget-object v2, Lcom/metamoji/sd/cs/SdCloudService$paramClass;->SdTurnOnEditFlagParams:Lcom/metamoji/sd/cs/SdCloudService$paramClass;

    sget-object v3, Lcom/metamoji/sd/cs/SdCloudService$paramClass;->SdTurnOffEditFlagParams:Lcom/metamoji/sd/cs/SdCloudService$paramClass;

    sget-object v4, Lcom/metamoji/sd/cs/SdCloudService$paramClass;->SdGetMaintenanceInfoParams:Lcom/metamoji/sd/cs/SdCloudService$paramClass;

    sget-object v5, Lcom/metamoji/sd/cs/SdCloudService$paramClass;->SdDeleteDocumentDataParams:Lcom/metamoji/sd/cs/SdCloudService$paramClass;

    sget-object v6, Lcom/metamoji/sd/cs/SdCloudService$paramClass;->SdPutDocumentDataParams:Lcom/metamoji/sd/cs/SdCloudService$paramClass;

    sget-object v7, Lcom/metamoji/sd/cs/SdCloudService$paramClass;->SdGetDocumentMetaParams:Lcom/metamoji/sd/cs/SdCloudService$paramClass;

    sget-object v8, Lcom/metamoji/sd/cs/SdCloudService$paramClass;->SdSyncStartParams:Lcom/metamoji/sd/cs/SdCloudService$paramClass;

    sget-object v9, Lcom/metamoji/sd/cs/SdCloudService$paramClass;->SdPutDriveDataParams:Lcom/metamoji/sd/cs/SdCloudService$paramClass;

    sget-object v10, Lcom/metamoji/sd/cs/SdCloudService$paramClass;->SdGetDocumentDataParams:Lcom/metamoji/sd/cs/SdCloudService$paramClass;

    sget-object v11, Lcom/metamoji/sd/cs/SdCloudService$paramClass;->SdGetDriveDataParams:Lcom/metamoji/sd/cs/SdCloudService$paramClass;

    sget-object v12, Lcom/metamoji/sd/cs/SdCloudService$paramClass;->SdGetDocumentThumbnailParams:Lcom/metamoji/sd/cs/SdCloudService$paramClass;

    sget-object v13, Lcom/metamoji/sd/cs/SdCloudService$paramClass;->SdGetDriveLastUpdateRevisionParams:Lcom/metamoji/sd/cs/SdCloudService$paramClass;

    sget-object v14, Lcom/metamoji/sd/cs/SdCloudService$paramClass;->SdGetDocumentSearchDataParams:Lcom/metamoji/sd/cs/SdCloudService$paramClass;

    filled-new-array/range {v0 .. v14}, [Lcom/metamoji/sd/cs/SdCloudService$paramClass;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 3

    .line 644
    new-instance v0, Lcom/metamoji/sd/cs/SdCloudService$paramClass;

    const-string v1, "SdGetDrivePropertiesParams"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/metamoji/sd/cs/SdCloudService$paramClass;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/metamoji/sd/cs/SdCloudService$paramClass;->SdGetDrivePropertiesParams:Lcom/metamoji/sd/cs/SdCloudService$paramClass;

    .line 645
    new-instance v0, Lcom/metamoji/sd/cs/SdCloudService$paramClass;

    const-string v1, "SdGetEditFlagParams"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/metamoji/sd/cs/SdCloudService$paramClass;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/metamoji/sd/cs/SdCloudService$paramClass;->SdGetEditFlagParams:Lcom/metamoji/sd/cs/SdCloudService$paramClass;

    .line 646
    new-instance v0, Lcom/metamoji/sd/cs/SdCloudService$paramClass;

    const-string v1, "SdTurnOnEditFlagParams"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lcom/metamoji/sd/cs/SdCloudService$paramClass;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/metamoji/sd/cs/SdCloudService$paramClass;->SdTurnOnEditFlagParams:Lcom/metamoji/sd/cs/SdCloudService$paramClass;

    .line 647
    new-instance v0, Lcom/metamoji/sd/cs/SdCloudService$paramClass;

    const-string v1, "SdTurnOffEditFlagParams"

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2}, Lcom/metamoji/sd/cs/SdCloudService$paramClass;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/metamoji/sd/cs/SdCloudService$paramClass;->SdTurnOffEditFlagParams:Lcom/metamoji/sd/cs/SdCloudService$paramClass;

    .line 648
    new-instance v0, Lcom/metamoji/sd/cs/SdCloudService$paramClass;

    const-string v1, "SdGetMaintenanceInfoParams"

    const/4 v2, 0x4

    invoke-direct {v0, v1, v2}, Lcom/metamoji/sd/cs/SdCloudService$paramClass;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/metamoji/sd/cs/SdCloudService$paramClass;->SdGetMaintenanceInfoParams:Lcom/metamoji/sd/cs/SdCloudService$paramClass;

    .line 649
    new-instance v0, Lcom/metamoji/sd/cs/SdCloudService$paramClass;

    const-string v1, "SdDeleteDocumentDataParams"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/metamoji/sd/cs/SdCloudService$paramClass;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/metamoji/sd/cs/SdCloudService$paramClass;->SdDeleteDocumentDataParams:Lcom/metamoji/sd/cs/SdCloudService$paramClass;

    .line 650
    new-instance v0, Lcom/metamoji/sd/cs/SdCloudService$paramClass;

    const-string v1, "SdPutDocumentDataParams"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Lcom/metamoji/sd/cs/SdCloudService$paramClass;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/metamoji/sd/cs/SdCloudService$paramClass;->SdPutDocumentDataParams:Lcom/metamoji/sd/cs/SdCloudService$paramClass;

    .line 651
    new-instance v0, Lcom/metamoji/sd/cs/SdCloudService$paramClass;

    const-string v1, "SdGetDocumentMetaParams"

    const/4 v2, 0x7

    invoke-direct {v0, v1, v2}, Lcom/metamoji/sd/cs/SdCloudService$paramClass;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/metamoji/sd/cs/SdCloudService$paramClass;->SdGetDocumentMetaParams:Lcom/metamoji/sd/cs/SdCloudService$paramClass;

    .line 652
    new-instance v0, Lcom/metamoji/sd/cs/SdCloudService$paramClass;

    const-string v1, "SdSyncStartParams"

    const/16 v2, 0x8

    invoke-direct {v0, v1, v2}, Lcom/metamoji/sd/cs/SdCloudService$paramClass;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/metamoji/sd/cs/SdCloudService$paramClass;->SdSyncStartParams:Lcom/metamoji/sd/cs/SdCloudService$paramClass;

    .line 653
    new-instance v0, Lcom/metamoji/sd/cs/SdCloudService$paramClass;

    const-string v1, "SdPutDriveDataParams"

    const/16 v2, 0x9

    invoke-direct {v0, v1, v2}, Lcom/metamoji/sd/cs/SdCloudService$paramClass;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/metamoji/sd/cs/SdCloudService$paramClass;->SdPutDriveDataParams:Lcom/metamoji/sd/cs/SdCloudService$paramClass;

    .line 654
    new-instance v0, Lcom/metamoji/sd/cs/SdCloudService$paramClass;

    const-string v1, "SdGetDocumentDataParams"

    const/16 v2, 0xa

    invoke-direct {v0, v1, v2}, Lcom/metamoji/sd/cs/SdCloudService$paramClass;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/metamoji/sd/cs/SdCloudService$paramClass;->SdGetDocumentDataParams:Lcom/metamoji/sd/cs/SdCloudService$paramClass;

    .line 655
    new-instance v0, Lcom/metamoji/sd/cs/SdCloudService$paramClass;

    const-string v1, "SdGetDriveDataParams"

    const/16 v2, 0xb

    invoke-direct {v0, v1, v2}, Lcom/metamoji/sd/cs/SdCloudService$paramClass;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/metamoji/sd/cs/SdCloudService$paramClass;->SdGetDriveDataParams:Lcom/metamoji/sd/cs/SdCloudService$paramClass;

    .line 656
    new-instance v0, Lcom/metamoji/sd/cs/SdCloudService$paramClass;

    const-string v1, "SdGetDocumentThumbnailParams"

    const/16 v2, 0xc

    invoke-direct {v0, v1, v2}, Lcom/metamoji/sd/cs/SdCloudService$paramClass;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/metamoji/sd/cs/SdCloudService$paramClass;->SdGetDocumentThumbnailParams:Lcom/metamoji/sd/cs/SdCloudService$paramClass;

    .line 657
    new-instance v0, Lcom/metamoji/sd/cs/SdCloudService$paramClass;

    const-string v1, "SdGetDriveLastUpdateRevisionParams"

    const/16 v2, 0xd

    invoke-direct {v0, v1, v2}, Lcom/metamoji/sd/cs/SdCloudService$paramClass;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/metamoji/sd/cs/SdCloudService$paramClass;->SdGetDriveLastUpdateRevisionParams:Lcom/metamoji/sd/cs/SdCloudService$paramClass;

    .line 658
    new-instance v0, Lcom/metamoji/sd/cs/SdCloudService$paramClass;

    const-string v1, "SdGetDocumentSearchDataParams"

    const/16 v2, 0xe

    invoke-direct {v0, v1, v2}, Lcom/metamoji/sd/cs/SdCloudService$paramClass;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/metamoji/sd/cs/SdCloudService$paramClass;->SdGetDocumentSearchDataParams:Lcom/metamoji/sd/cs/SdCloudService$paramClass;

    .line 643
    invoke-static {}, Lcom/metamoji/sd/cs/SdCloudService$paramClass;->$values()[Lcom/metamoji/sd/cs/SdCloudService$paramClass;

    move-result-object v0

    sput-object v0, Lcom/metamoji/sd/cs/SdCloudService$paramClass;->$VALUES:[Lcom/metamoji/sd/cs/SdCloudService$paramClass;

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

    .line 643
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/metamoji/sd/cs/SdCloudService$paramClass;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8000
        }
        names = {
            null
        }
    .end annotation

    .line 643
    const-class v0, Lcom/metamoji/sd/cs/SdCloudService$paramClass;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/metamoji/sd/cs/SdCloudService$paramClass;

    return-object p0
.end method

.method public static values()[Lcom/metamoji/sd/cs/SdCloudService$paramClass;
    .locals 1

    .line 643
    sget-object v0, Lcom/metamoji/sd/cs/SdCloudService$paramClass;->$VALUES:[Lcom/metamoji/sd/cs/SdCloudService$paramClass;

    invoke-virtual {v0}, [Lcom/metamoji/sd/cs/SdCloudService$paramClass;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/metamoji/sd/cs/SdCloudService$paramClass;

    return-object v0
.end method
