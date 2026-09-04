.class public Lcom/metamoji/dvm/fw/DvmPrivateDriveOption;
.super Lcom/metamoji/dvm/fw/DvmDriveOption;
.source "DvmPrivateDriveOption.java"


# instance fields
.field private _userId:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 5
    invoke-direct {p0}, Lcom/metamoji/dvm/fw/DvmDriveOption;-><init>()V

    const/4 v0, 0x0

    .line 6
    iput-object v0, p0, Lcom/metamoji/dvm/fw/DvmPrivateDriveOption;->_userId:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getUserId()Ljava/lang/String;
    .locals 1

    .line 7
    iget-object v0, p0, Lcom/metamoji/dvm/fw/DvmPrivateDriveOption;->_userId:Ljava/lang/String;

    return-object v0
.end method

.method public initWithUserId(Ljava/lang/String;)Lcom/metamoji/dvm/fw/DvmPrivateDriveOption;
    .locals 1

    .line 15
    sget-object v0, Lcom/metamoji/dvm/DvmDriveType;->PrivateDrive:Lcom/metamoji/dvm/DvmDriveType;

    invoke-super {p0, v0}, Lcom/metamoji/dvm/fw/DvmDriveOption;->initWithType(Lcom/metamoji/dvm/DvmDriveType;)V

    .line 16
    iput-object p1, p0, Lcom/metamoji/dvm/fw/DvmPrivateDriveOption;->_userId:Ljava/lang/String;

    return-object p0
.end method
