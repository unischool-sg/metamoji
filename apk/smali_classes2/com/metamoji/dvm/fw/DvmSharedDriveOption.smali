.class public Lcom/metamoji/dvm/fw/DvmSharedDriveOption;
.super Lcom/metamoji/dvm/fw/DvmDriveOption;
.source "DvmSharedDriveOption.java"


# instance fields
.field private _driveId:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 5
    invoke-direct {p0}, Lcom/metamoji/dvm/fw/DvmDriveOption;-><init>()V

    const/4 v0, 0x0

    .line 7
    iput-object v0, p0, Lcom/metamoji/dvm/fw/DvmSharedDriveOption;->_driveId:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getDriveId()Ljava/lang/String;
    .locals 1

    .line 8
    iget-object v0, p0, Lcom/metamoji/dvm/fw/DvmSharedDriveOption;->_driveId:Ljava/lang/String;

    return-object v0
.end method

.method public initWithDriveId(Ljava/lang/String;)Lcom/metamoji/dvm/fw/DvmSharedDriveOption;
    .locals 1

    .line 16
    sget-object v0, Lcom/metamoji/dvm/DvmDriveType;->SharedDrive:Lcom/metamoji/dvm/DvmDriveType;

    invoke-super {p0, v0}, Lcom/metamoji/dvm/fw/DvmDriveOption;->initWithType(Lcom/metamoji/dvm/DvmDriveType;)V

    .line 17
    iput-object p1, p0, Lcom/metamoji/dvm/fw/DvmSharedDriveOption;->_driveId:Ljava/lang/String;

    return-object p0
.end method
