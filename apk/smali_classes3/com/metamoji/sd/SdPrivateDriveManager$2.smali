.class Lcom/metamoji/sd/SdPrivateDriveManager$2;
.super Ljava/lang/Object;
.source "SdPrivateDriveManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/metamoji/sd/SdPrivateDriveManager;->handleChangeUserInfo(Lcom/metamoji/cs/dc/user/CsDCUserInfo;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic val$pdmgr:Lcom/metamoji/sd/SdPrivateDriveManager;


# direct methods
.method constructor <init>(Lcom/metamoji/sd/SdPrivateDriveManager;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 270
    iput-object p1, p0, Lcom/metamoji/sd/SdPrivateDriveManager$2;->val$pdmgr:Lcom/metamoji/sd/SdPrivateDriveManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 273
    iget-object v0, p0, Lcom/metamoji/sd/SdPrivateDriveManager$2;->val$pdmgr:Lcom/metamoji/sd/SdPrivateDriveManager;

    invoke-virtual {v0}, Lcom/metamoji/sd/SdPrivateDriveManager;->mergeMergingPrivateDrive()V

    return-void
.end method
