.class Lcom/metamoji/noteanytime/MainActivity$76;
.super Ljava/lang/Object;
.source "MainActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/metamoji/noteanytime/MainActivity;->displayParticipationCodeInner(Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic val$driveId:Ljava/lang/String;

.field final synthetic val$driveName:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 5652
    iput-object p1, p0, Lcom/metamoji/noteanytime/MainActivity$76;->val$driveId:Ljava/lang/String;

    iput-object p2, p0, Lcom/metamoji/noteanytime/MainActivity$76;->val$driveName:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 5655
    iget-object v0, p0, Lcom/metamoji/noteanytime/MainActivity$76;->val$driveId:Ljava/lang/String;

    new-instance v1, Lcom/metamoji/noteanytime/MainActivity$76$1;

    invoke-direct {v1, p0}, Lcom/metamoji/noteanytime/MainActivity$76$1;-><init>(Lcom/metamoji/noteanytime/MainActivity$76;)V

    const/4 v2, 0x0

    invoke-static {v0, v2, v1}, Lcom/metamoji/noteanytime/MainActivity;->updateDriveAllowToParticipateBoxCache(Ljava/lang/String;ZLcom/metamoji/noteanytime/MainActivity$IUpdateDriveAllowToParticipateBoxCacheCompletionAction;)V

    return-void
.end method
