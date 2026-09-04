.class Lcom/metamoji/noteanytime/MainActivity$78$1$1;
.super Ljava/lang/Object;
.source "MainActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/metamoji/noteanytime/MainActivity$78$1;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/metamoji/noteanytime/MainActivity$78$1;


# direct methods
.method constructor <init>(Lcom/metamoji/noteanytime/MainActivity$78$1;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 5709
    iput-object p1, p0, Lcom/metamoji/noteanytime/MainActivity$78$1$1;->this$1:Lcom/metamoji/noteanytime/MainActivity$78$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 5712
    invoke-static {}, Lcom/metamoji/dm/impl/sync/DmDCSyncManager;->getInstance()Lcom/metamoji/dm/impl/sync/DmDCSyncManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/metamoji/dm/impl/sync/DmDCSyncManager;->startAllSharedDriveSyncWithAdditionOnlyOption()Z

    return-void
.end method
