.class public Lcom/metamoji/dvm/fw/DvmDriveOption;
.super Ljava/lang/Object;
.source "DvmDriveOption.java"


# instance fields
.field private type:Lcom/metamoji/dvm/DvmDriveType;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getType()Lcom/metamoji/dvm/DvmDriveType;
    .locals 1

    .line 7
    iget-object v0, p0, Lcom/metamoji/dvm/fw/DvmDriveOption;->type:Lcom/metamoji/dvm/DvmDriveType;

    return-object v0
.end method

.method protected initWithType(Lcom/metamoji/dvm/DvmDriveType;)V
    .locals 0

    .line 10
    iput-object p1, p0, Lcom/metamoji/dvm/fw/DvmDriveOption;->type:Lcom/metamoji/dvm/DvmDriveType;

    return-void
.end method
